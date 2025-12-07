void sub_2283EEC60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void sub_2283EED08(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      v8 = a2;
      sub_2283EED8C(v8);

      v7 = v8;
    }

    else
    {
      sub_22848E228(a3);
    }
  }
}

uint64_t sub_2283EED8C(void *a1)
{
  swift_getObjectType();
  v3 = sub_22855C85C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF29C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280DEB2E8);
  (*(v4 + 16))(v6, v12, v3);
  sub_2283EF310(0, &qword_280DE93F8, 0x277CCD5A8);
  sub_2283EF358();
  v13 = a1;
  sub_22855C88C();
  swift_getObjectType();
  v34 = v1;
  sub_2283FD424(&unk_280DEB2D0, v14, type metadata accessor for PregnancyStateInputSignal, &protocol conformance descriptor for PregnancyStateInputSignal);
  sub_22855C78C();
  if (HKShowSensitiveLogItems())
  {
    if (qword_280DEE800 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    __swift_project_value_buffer(v15, qword_280DEE808);
    v16 = v13;
    v17 = v1;
    v18 = sub_22855CA8C();
    v19 = sub_22855D6AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v20 = 138412802;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2080;
      v23 = v17;
      v34 = [v16 sample];
      sub_228465560(0, &qword_280DE9420, &qword_280DE9428, 0x277CCD0B0);
      sub_22855E19C();
      v24 = HKSensitiveLogItem();
      v33 = v8;
      swift_unknownObjectRelease();
      sub_22855DA7C();
      swift_unknownObjectRelease();
      v25 = sub_22855D1BC();
      v27 = sub_2283F8938(v25, v26, &v35);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2080;
      v34 = [v16 state];
      type metadata accessor for HKMCPregnancyState(0);
      sub_22855E19C();
      v28 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22855DA7C();
      swift_unknownObjectRelease();
      v29 = sub_22855D1BC();
      v31 = sub_2283F8938(v29, v30, &v35);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_2283ED000, v18, v19, "[%@] Received model update with sample: %s and state: %s", v20, 0x20u);
      sub_22841DC98(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v22, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);

      return (*(v9 + 8))(v11, v33);
    }
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_2283EF29C(uint64_t a1)
{
  if (!qword_280DE9E88)
  {
    sub_2283EF310(255, &qword_280DE93F8, 0x277CCD5A8);
    sub_2283EF358();
    v1 = sub_22855C89C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9E88);
    }
  }
}

uint64_t sub_2283EF310(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2283EF358()
{
  result = qword_280DE9400;
  if (!qword_280DE9400)
  {
    sub_2283EF310(255, &qword_280DE93F8, 0x277CCD5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9400);
  }

  return result;
}

Swift::Void __swiftcall LegacyGenerationProvider.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = v1;
  v3 = sub_22855C85C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2283EF6D4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855C9AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855D1AC();
  sub_22855C96C();

  v13 = sub_22855C98C() & 1;
  (*(v10 + 8))(v12, v9);
  v14 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock((v14 + 104));
  if (v13 == *(v14 + 16))
  {
    os_unfair_lock_unlock((v14 + 104));
  }

  else
  {
    *(v14 + 16) = v13;
    os_unfair_lock_unlock((v14 + 104));
    v15 = *(v2 + 24);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 24));
    if (v16 != 0.0)
    {
      swift_getObjectType();
      sub_22855C84C();
      Current = CFAbsoluteTimeGetCurrent();
      sub_22855C57C();
      Current = v16;
      type metadata accessor for LegacyGenerationInputSignal();
      sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal, &unk_22856A4F4);
      sub_22855C78C();
      (*(v6 + 8))(v8, v5);
    }
  }
}

void sub_2283EF6D4()
{
  if (!qword_280DE9F50)
  {
    v0 = sub_22855C58C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9F50);
    }
  }
}

uint64_t sub_2283EF774(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2283EF7BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v4 = sub_22855CABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2283EF894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2283EF94C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22855CABC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22855CA9C();
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

uint64_t sub_2283EFAB4(uint64_t a1)
{
  result = sub_2283EFB54();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2283EFB54()
{
  result = qword_280DED1B8;
  if (!qword_280DED1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED1B8);
  }

  return result;
}

uint64_t UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for UserDefault(0, a6, a3, a4);
  result = (*(*(a6 - 8) + 32))(&a7[*(v11 + 32)], a4, a6);
  a7[*(v11 + 36)] = a5;
  return result;
}

id sub_2283EFC58(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_2283EFCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncError(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2283EFD58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283EFDA4(uint64_t a1, uint64_t a2)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_2283EFE3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2283EFEB0(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_228443CF8(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2283EFFCC(uint64_t result, int a2, int a3)
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

void *sub_2283F001C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t _s14HealthPlatform26CloudSyncStatusInputSignalC6AnchorV2eeoiySbAE_AEtFZ_0(id *a1, void *a2)
{
  active = type metadata accessor for ActiveSyncState(0);
  v5 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  sub_2283F11A8(0, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  v15 = *(v11 + 56);
  v21 = a1;
  sub_2283F120C(a1 + v14, v13, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(a2 + v14, &v13[v15], qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v16 = *(v5 + 48);
  if (v16(v13, 1, active) == 1)
  {
    if (v16(&v13[v15], 1, active) == 1)
    {
      sub_2283F0474(v13, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2283F120C(v13, v9, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if (v16(&v13[v15], 1, active) == 1)
  {
    sub_22853D6C4(v9, type metadata accessor for ActiveSyncState);
LABEL_6:
    sub_22853EA34(v13, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    return 0;
  }

  v18 = v20;
  sub_22853FAF0(&v13[v15], v20, type metadata accessor for ActiveSyncState);
  v19 = _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(v9, v18);
  sub_22853D6C4(v18, type metadata accessor for ActiveSyncState);
  sub_22853D6C4(v9, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v13, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = (*v21 | *a2) == 0;
  if (*v21)
  {
    if (*a2)
    {
      return [*v21 isEqual_];
    }
  }

  return result;
}

uint64_t sub_2283F0474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2283F1134(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14HealthPlatform25PregnancyStateInputSignalC10identifier0A13Orchestration0eF10IdentifierVvg_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEB2E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HealthPlatformContextProvider.Context.description.getter()
{
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 16) profileIdentifier];
  if ([v5 type] == 1)
  {

    return 0xD000000000000012;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_22855DC6C();

    v15 = 0x747865746E6F433CLL;
    v16 = 0xEA0000000000203ALL;
    [v5 type];
    v7 = HKStringFromProfileType();
    v8 = sub_22855D1AC();
    v10 = v9;

    MEMORY[0x22AAB92A0](v8, v10);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    v11 = [v5 identifier];
    sub_22855C1BC();

    v12 = MEMORY[0x22AAB8200]();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    MEMORY[0x22AAB92A0](v12, v14);

    MEMORY[0x22AAB92A0](62, 0xE100000000000000);

    return v15;
  }
}

unint64_t sub_2283F07A4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_2283EFEB0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [v2 isEqual_];
  }

  return result;
}

uint64_t sub_2283F0810(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855C37C();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v47 - v8;
  sub_2283F0D04(0, &qword_280DE9388, sub_228409D54, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = (&v47 - v12);
  v53 = v13;
  v51 = v7;
  v14 = 0;
  v49 = a1;
  v15 = *(a1 + 64);
  v48 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v54 = v58 + 16;
  v55 = (v58 + 32);
  v50 = (v58 + 8);
  while (1)
  {
    v20 = v53;
    if (!v18)
    {
      break;
    }

    v56 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = *(*(v49 + 48) + 8 * v21);
    v28 = v57;
    v27 = v58;
    (*(v58 + 16))(v57, *(v49 + 56) + *(v58 + 72) * v21, v4);
    sub_228409D54(0);
    v30 = v29;
    v31 = *(v29 + 48);
    *v20 = v26;
    (*(v27 + 32))(&v20[v31], v28, v4);
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    v32 = v26;
LABEL_17:
    v33 = v20;
    v34 = v52;
    sub_228409DC8(v33, v52, &qword_280DE9388, sub_228409D54);
    sub_228409D54(0);
    v35 = (*(*(v30 - 8) + 48))(v34, 1, v30);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *v34;
    v38 = v51;
    (*v55)(v51, v34 + *(v30 + 48), v4);
    v39 = sub_228409E5C(v37);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      (*v50)(v38, v4);
      return 0;
    }

    v43 = v57;
    v42 = v58;
    (*(v58 + 16))(v57, *(a2 + 56) + *(v58 + 72) * v39, v4);
    sub_22840A300(&qword_280DE9FA0, 255, MEMORY[0x277D11290], MEMORY[0x277D112A0]);
    v44 = sub_22855D16C();
    v45 = *(v42 + 8);
    v45(v43, v4);
    result = (v45)(v38, v4);
    v18 = v56;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      sub_228409D54(0);
      v30 = v46;
      (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
      v56 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v48 + 8 * v24);
    ++v14;
    if (v25)
    {
      v56 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_2283F0D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283F0D74(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!v3)
    {
      if (a1 == a2)
      {
LABEL_34:
        LOBYTE(a1) = 1;
      }

      else
      {
        if (*(a1 + 16) == *(a2 + 16))
        {
          v7 = a2;
          v8 = 0;
          v9 = 1 << *(a1 + 32);
          v10 = -1;
          if (v9 < 64)
          {
            v10 = ~(-1 << v9);
          }

          v11 = v10 & *(a1 + 64);
          v12 = (v9 + 63) >> 6;
          while (v11)
          {
            v13 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
LABEL_31:
            v16 = v13 | (v8 << 6);
            v17 = *(*(v2 + 56) + 8 * v16);
            v18 = *(*(v2 + 48) + 8 * v16);
            v19 = v17;
            v20 = sub_228443BC4(v18);
            v22 = v21;

            if ((v22 & 1) == 0)
            {

              goto LABEL_36;
            }

            sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
            v23 = *(*(v7 + 56) + 8 * v20);
            v24 = sub_22855D9AC();

            a1 = 0;
            if ((v24 & 1) == 0)
            {
              return a1 & 1;
            }
          }

          v14 = v8;
          while (1)
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v8 >= v12)
            {
              goto LABEL_34;
            }

            v15 = *(v2 + 64 + 8 * v8);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_31;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

LABEL_36:
        LOBYTE(a1) = 0;
      }

      return a1 & 1;
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:
    sub_2283F0F8C(v5, a2, &unk_280DE9238, 0x277CCDAB0);
    return a1 & 1;
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v4 = a1;
  }

  if (!v3)
  {
    v5 = v4;
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v4;

  return MEMORY[0x2821FCF40](a1, a2);
}

void sub_2283F0F8C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = *(a2 + 16);
  if (v6 == sub_22855DB4C())
  {
    v7 = 0;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v12 | (v7 << 6);
      v16 = *(*(a2 + 56) + 8 * v15);
      v17 = *(*(a2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_22855DE8C();

      if (!v19)
      {

        return;
      }

      sub_2283EF310(0, a3, a4);
      swift_dynamicCast();
      v20 = sub_22855D9AC();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(a2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_2283F1134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2283F11A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2283F1134(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2283F120C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2283F1134(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2283F1278()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_280DED198 = v0;
}

uint64_t static DiskHealthExperienceStore.shared.getter()
{
  if (qword_280DEE210 != -1)
  {
    swift_once();
  }
}

void sub_2283F1380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *sub_2283F13E4()
{
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_22855C06C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for DiskHealthExperienceStore();
  v4 = swift_allocObject();
  result = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v2, 1);
  qword_280DEE220 = v4;
  return result;
}

uint64_t *DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(uint64_t a1, int a2)
{
  v3 = v2;
  v64 = a2;
  v65 = 0;
  v50 = *v2;
  sub_2283F1380(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v49 - v6;
  v55 = sub_22855D80C();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F2168(0);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855D81C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22855D7BC();
  MEMORY[0x28223BE20](v60);
  v12 = sub_22855CFEC();
  MEMORY[0x28223BE20](v12 - 8);
  v2[2] = 50;
  sub_2283F2234();
  v51 = v13;
  swift_allocObject();
  v2[3] = sub_22855CD0C();
  v2[5] = 0;
  type metadata accessor for DiskHealthExperienceStore.MutableState(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation;
  v16 = sub_22855C06C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable) = 0;
  v17 = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext) = 0;
  *(v14 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities) = 0;
  swift_beginAccess();
  v59 = a1;
  sub_2283F247C(a1, v14 + v15);
  swift_endAccess();
  sub_2283F2538(0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v14;
  v3[4] = v18;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);

  sub_22855CFDC();
  v68 = v17;
  sub_2283F2298(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v19 = MEMORY[0x277D85230];
  sub_2283F1380(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F4734(&qword_280DED240, &qword_280DED250, v19);
  sub_22855DA9C();
  (*(v62 + 104))(v61, *MEMORY[0x277D85260], v63);
  v20 = sub_22855D84C();
  v21 = v20;
  if (v64)
  {
    v68 = v3[3];

    v22 = v52;
    sub_22855D7FC();
    v66 = v21;
    v23 = sub_22855D7EC();
    v24 = v54;
    (*(*(v23 - 8) + 56))(v54, 1, 1, v23);
    sub_2283F2298(&qword_280DED2F0, sub_2283F2234, MEMORY[0x277CBCE20]);
    sub_2283F22E0();
    v25 = v56;
    sub_22855CF5C();
    sub_2283F4798(v24, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88], sub_2283F1380);
    (*(v53 + 8))(v22, v55);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_2284ECB00;
    *(v27 + 24) = v26;
    sub_2283F2298(qword_280DED320, sub_2283F2168, MEMORY[0x277CBCCF8]);
    v28 = v58;
    sub_22855CF8C();

    (*(v57 + 8))(v25, v28);
    v29 = v3[4];

    os_unfair_lock_lock((v29 + 24));
    v30 = v65;
    sub_2283F4920((v29 + 16));
    os_unfair_lock_unlock((v29 + 24));
  }

  else
  {
    v30 = v65;
  }

  if (((*(*v3 + 112))(v20) & 1) == 0)
  {
    sub_2283F4798(v59, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);

    return v3;
  }

  sub_2283F4964();
  if (!v30)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    v32 = sub_228400874();
    v33 = [v32 viewContext];

    [v33 setMergePolicy_];

    sub_2283F4798(v59, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
    return v3;
  }

  v68 = v30;
  v35 = v30;
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  if (swift_dynamicCast())
  {
    if (v67[0] == 1)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v36 = sub_22855CABC();
      __swift_project_value_buffer(v36, qword_280DEEC98);
      v37 = sub_22855CA8C();
      v38 = sub_22855D68C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v40;
        *v39 = 136315138;
        v41 = sub_228460FD8(v50);
        v43 = sub_2283F8938(v41, v42, &v66);

        *(v39 + 4) = v43;
        v44 = "[%s] Device locked while opening experience store: exiting";
LABEL_20:
        _os_log_impl(&dword_2283ED000, v37, v38, v44, v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AABAD40](v40, -1, -1);
        MEMORY[0x22AABAD40](v39, -1, -1);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (v67[0] == 2)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v45 = sub_22855CABC();
      __swift_project_value_buffer(v45, qword_280DEEC98);
      v37 = sub_22855CA8C();
      v38 = sub_22855D68C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v40;
        *v39 = 136315138;
        v46 = sub_228460FD8(v50);
        v48 = sub_2283F8938(v46, v47, &v66);

        *(v39 + 4) = v48;
        v44 = "[%s] Disk I/O Error (Disk Full?): exiting";
        goto LABEL_20;
      }

LABEL_21:

      exit(0);
    }
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_22855DC6C();
  v66 = v3;
  type metadata accessor for DiskHealthExperienceStore();
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD000000000000028, 0x8000000228571D30);
  v66 = v30;
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F20F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283F2130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2283F2168(uint64_t a1)
{
  if (!qword_280DED310)
  {
    sub_2283F2234();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283F2298(&qword_280DED2F0, sub_2283F2234, MEMORY[0x277CBCE20]);
    sub_2283F22E0();
    v1 = sub_22855CBFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED310);
    }
  }
}

void sub_2283F2234()
{
  if (!qword_280DED2E8)
  {
    v0 = sub_22855CD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED2E8);
    }
  }
}

uint64_t sub_2283F2298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2283F22E0()
{
  result = qword_280DED130;
  if (!qword_280DED130)
  {
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED130);
  }

  return result;
}

uint64_t type metadata accessor for DiskHealthExperienceStore.MutableState(uint64_t a1)
{
  result = qword_280DEE318;
  if (!qword_280DEE318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283F2394(uint64_t a1)
{
  sub_2283F1380(319, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2283F247C(uint64_t a1, uint64_t a2)
{
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2283F2538(uint64_t a1)
{
  if (!qword_280DED078)
  {
    type metadata accessor for DiskHealthExperienceStore.MutableState(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED078);
    }
  }
}

void sub_2283F25A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_2283F25F8(unsigned __int8 *a1, char a2)
{
  v4 = v3;
  v180 = *v2;
  v181 = v2;
  v5 = *a1;
  if (v5 == 2)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D6AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2283ED000, v7, v8, "The store version does not exist or does not match the current version. Deleting Database.", v9, 2u);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    sub_2284E9CC0();
  }

  if (qword_280DEDE38 != -1)
  {
    swift_once();
  }

  v10 = qword_280DF6A98;
  v11 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v12 = sub_22855D17C();
  v13 = [v11 initWithName:v12 managedObjectModel:v10];

  sub_2283F88E8(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228560690;
  v15 = v13;
  *(v14 + 32) = sub_2283F64E4();
  sub_2283EF310(0, &unk_280DED0D8, 0x277CBE4E0);
  v16 = sub_22855D39C();

  [v15 setPersistentStoreDescriptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  aBlock[4] = sub_2283F843C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283F83B0;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  [v15 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v18);
  swift_beginAccess();
  v19 = *(v17 + 16);
  if (!v19)
  {
    goto LABEL_61;
  }

  v20 = v19;
  v21 = [v20 code];
  if (v21 <= 134109)
  {
    if (v21 == 11)
    {
      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xB)
      {
        if ((a2 & 1) == 0)
        {
          v183 = 0;
          v184 = 0xE000000000000000;
          sub_22855DC6C();
          v186 = v181;
          type metadata accessor for DiskHealthExperienceStore();
          sub_22855DDDC();
          MEMORY[0x22AAB92A0](0xD000000000000065, 0x8000000228572160);
          goto LABEL_95;
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v52 = sub_22855CABC();
        __swift_project_value_buffer(v52, qword_280DEEC98);
        v53 = sub_22855CA8C();
        v54 = sub_22855D68C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v186 = v56;
          *v55 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v57 = sub_22855D1BC();
          v59 = sub_2283F8938(v57, v58, &v186);

          *(v55 + 4) = v59;
          _os_log_impl(&dword_2283ED000, v53, v54, "[%s] SQLITE_CORRUPT: CORRUPTION DETECTED", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x22AABAD40](v56, -1, -1);
          MEMORY[0x22AABAD40](v55, -1, -1);
        }

        v60 = sub_22855CA8C();
        v61 = sub_22855D68C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v186 = v63;
          *v62 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v64 = sub_22855D1BC();
          v66 = sub_2283F8938(v64, v65, &v186);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_2283ED000, v60, v61, "[%s] Attempting to recover by destroying persistent store and regenerating", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AABAD40](v63, -1, -1);
          MEMORY[0x22AABAD40](v62, -1, -1);
        }

        sub_2284E9CC0();
        LOBYTE(v183) = v5;
        v67 = sub_2283F25F8(&v183, 0);
        if (v3)
        {

          return v15;
        }

        v177 = v67;

        v101 = sub_22855CA8C();
        v102 = sub_22855D68C();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v183 = v104;
          *v103 = 136315138;
          v105 = sub_228460FD8(v180);
          v107 = sub_2283F8938(v105, v106, &v183);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_2283ED000, v101, v102, "[%s] Successfully recreated Core Data persistent store", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x22AABAD40](v104, -1, -1);
          MEMORY[0x22AABAD40](v103, -1, -1);
        }

        v4 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      if (v21 != 256)
      {
LABEL_40:
        if ((a2 & 1) == 0)
        {
          v183 = 0;
          v184 = 0xE000000000000000;
          sub_22855DC6C();
          v186 = v181;
          type metadata accessor for DiskHealthExperienceStore();
          sub_22855DDDC();
          MEMORY[0x22AAB92A0](0xD00000000000002CLL, 0x8000000228572110);
          v156 = [v20 description];
          v157 = sub_22855D1AC();
          v159 = v158;

          MEMORY[0x22AAB92A0](v157, v159);

          MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
          v160 = [v20 userInfo];
          sub_22855D0EC();

          v161 = sub_22855D0FC();
          v163 = v162;

          MEMORY[0x22AAB92A0](v161, v163);

          goto LABEL_95;
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v68 = sub_22855CABC();
        __swift_project_value_buffer(v68, qword_280DEEC98);
        v69 = v20;
        v70 = sub_22855CA8C();
        v71 = sub_22855D68C();

        v176 = v5;
        v173 = v69;
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v186 = v73;
          *v72 = 136315394;
          v183 = v180;
          swift_getMetatypeMetadata();
          v74 = sub_22855D1BC();
          v76 = sub_2283F8938(v74, v75, &v186);

          *(v72 + 4) = v76;
          *(v72 + 12) = 2082;
          v77 = v69;
          v78 = [v77 description];
          v79 = sub_22855D1AC();
          v81 = v80;

          v82 = sub_2283F8938(v79, v81, &v186);

          *(v72 + 14) = v82;
          _os_log_impl(&dword_2283ED000, v70, v71, "[%s] UNKNOWN CORE DATA ERROR DETECTED: %{public}s", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v73, -1, -1);
          MEMORY[0x22AABAD40](v72, -1, -1);
        }

        v83 = sub_22855CA8C();
        v84 = sub_22855D68C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v186 = v86;
          *v85 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v87 = sub_22855D1BC();
          v89 = sub_2283F8938(v87, v88, &v186);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_2283ED000, v83, v84, "[%s] Attempting to recover by destroying persistent store and regenerating", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x22AABAD40](v86, -1, -1);
          MEMORY[0x22AABAD40](v85, -1, -1);
        }

        v5 = v176;
        sub_2284E9CC0();
        LOBYTE(v183) = v176;
        v90 = sub_2283F25F8(&v183, 0);
        v4 = v3;
        if (v3)
        {

          return v15;
        }

        v155 = v90;

        v15 = v155;
LABEL_61:
        if ((v5 - 1) >= 2)
        {
          if (v5 != 3)
          {
LABEL_75:
            v132 = [v15 persistentStoreCoordinator];
            v133 = [v132 persistentStores];

            sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
            v134 = sub_22855D3AC();

            v135 = [v15 persistentStoreCoordinator];
            sub_2283F42F4(v134);

            v136 = sub_22855D39C();

            v137 = [v135 currentPersistentHistoryTokenFromStores_];

            v138 = *(v181 + 32);
            MEMORY[0x28223BE20](v139);
            os_unfair_lock_lock(v138 + 6);
            sub_228400410(&v138[4]);
            v140 = v138 + 6;
            if (!v4)
            {
              os_unfair_lock_unlock(v140);
              if (qword_280DEEC90 != -1)
              {
                swift_once();
              }

              v141 = sub_22855CABC();
              __swift_project_value_buffer(v141, qword_280DEEC98);
              v142 = sub_22855CA8C();
              v143 = sub_22855D6AC();
              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = v15;
                v146 = swift_slowAlloc();
                v186 = v146;
                *v144 = 136315394;
                v183 = v180;
                swift_getMetatypeMetadata();
                v147 = sub_22855D1BC();
                v149 = sub_2283F8938(v147, v148, &v186);

                *(v144 + 4) = v149;
                *(v144 + 12) = 2080;
                if (a2)
                {
                  v150 = 0x7972746572;
                }

                else
                {
                  v150 = 0x7972746572206F6ELL;
                }

                if (a2)
                {
                  v151 = 0xE500000000000000;
                }

                else
                {
                  v151 = 0xE800000000000000;
                }

                v152 = sub_2283F8938(v150, v151, &v186);

                *(v144 + 14) = v152;
                _os_log_impl(&dword_2283ED000, v142, v143, "[%s] unsafeMakePersistentContainer(retryOnFailure: %s)", v144, 0x16u);
                swift_arrayDestroy();
                v153 = v146;
                v15 = v145;
                MEMORY[0x22AABAD40](v153, -1, -1);
                MEMORY[0x22AABAD40](v144, -1, -1);
              }

              sub_22840044C(v15);

              return v15;
            }

            os_unfair_lock_unlock(v140);

            __break(1u);
            goto LABEL_90;
          }

          if (qword_280DEEC90 != -1)
          {
            swift_once();
          }

          v108 = sub_22855CABC();
          __swift_project_value_buffer(v108, qword_280DEEC98);
          v109 = sub_22855CA8C();
          v110 = sub_22855D6AC();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_2283ED000, v109, v110, "destroyStoreIfNeededAndMakePersistentContainer - removeAllFeedItemNotifications", v111, 2u);
            MEMORY[0x22AABAD40](v111, -1, -1);
          }

          sub_2284E9E64();
          v112 = sub_22855CA8C();
          v113 = sub_22855D6AC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v183 = v115;
            *v114 = 136315138;
            LOBYTE(v186) = 3;
            v116 = sub_22855D1BC();
            v118 = sub_2283F8938(v116, v117, &v183);

            *(v114 + 4) = v118;
            _os_log_impl(&dword_2283ED000, v112, v113, "destroyStoreIfNeededAndMakePersistentContainer - wiping data due to storeState %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            MEMORY[0x22AABAD40](v115, -1, -1);
            MEMORY[0x22AABAD40](v114, -1, -1);
          }

          v119 = [v15 newBackgroundContext];
          [v119 setAutomaticallyMergesChangesFromParent_];
          v120 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
          [v119 setMergePolicy_];

          v121 = [v15 managedObjectModel];
          v122 = [v121 entities];

          sub_2283EF310(0, &qword_27D840278, 0x277CBE408);
          v123 = sub_22855D3AC();

          sub_2284E98E4(v123, v119);
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v124 = sub_22855CABC();
        __swift_project_value_buffer(v124, qword_280DEEC98);
        v125 = sub_22855CA8C();
        v126 = sub_22855D6AC();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v183 = v128;
          *v127 = 136315138;
          LOBYTE(v186) = v5;
          v129 = sub_22855D1BC();
          v131 = sub_2283F8938(v129, v130, &v183);

          *(v127 + 4) = v131;
          _os_log_impl(&dword_2283ED000, v125, v126, "destroyStoreIfNeededAndMakePersistentContainer - updating metadata due to storeState %s", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x22AABAD40](v128, -1, -1);
          MEMORY[0x22AABAD40](v127, -1, -1);
        }

        sub_2284ED03C(v15);
        goto LABEL_75;
      }

      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x17)
      {
        sub_2284ECB98();
        swift_allocError();
        *v44 = 1;
        swift_willThrow();

        return v15;
      }

      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x120A || (sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xD)
      {
        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v91 = sub_22855CABC();
        __swift_project_value_buffer(v91, qword_280DEEC98);
        v92 = v20;
        v93 = sub_22855CA8C();
        v94 = sub_22855D68C();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v186 = v182;
          *v95 = 136315394;
          v183 = v180;
          swift_getMetatypeMetadata();
          v96 = sub_22855D1BC();
          v98 = sub_2283F8938(v96, v97, &v186);

          *(v95 + 4) = v98;
          *(v95 + 12) = 2112;
          *(v95 + 14) = v92;
          *v179 = v19;
          v99 = v92;
          _os_log_impl(&dword_2283ED000, v93, v94, "[%s] Received a CoreData error %@", v95, 0x16u);
          sub_22841DC98(v179);
          MEMORY[0x22AABAD40](v179, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v182);
          MEMORY[0x22AABAD40](v182, -1, -1);
          MEMORY[0x22AABAD40](v95, -1, -1);
        }

        sub_2284ECB98();
        swift_allocError();
        *v100 = 2;
        swift_willThrow();

        return v15;
      }
    }

    v183 = 0;
    v184 = 0xE000000000000000;
    sub_22855DC6C();
    v186 = v181;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000019, 0x8000000228572140);
    v164 = [v20 description];
    v165 = sub_22855D1AC();
    v167 = v166;

    MEMORY[0x22AAB92A0](v165, v167);

    MEMORY[0x22AAB92A0](0x203A65646F6320, 0xE700000000000000);
    v186 = [v20 code];
    v168 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v168);

    MEMORY[0x22AAB92A0](0x666E497265737520, 0xEB00000000203A6FLL);
    v169 = [v20 userInfo];
    sub_22855D0EC();

    v170 = sub_22855D0FC();
    v172 = v171;

    MEMORY[0x22AAB92A0](v170, v172);

    goto LABEL_95;
  }

  if (v21 != 134110 && v21 != 134190 && v21 != 134170)
  {
    goto LABEL_40;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v22 = sub_22855CABC();
  __swift_project_value_buffer(v22, qword_280DEEC98);
  v23 = v20;
  v24 = sub_22855CA8C();
  v25 = sub_22855D68C();

  v175 = v5;
  v174 = v23;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v186 = v27;
    *v26 = 136315394;
    v183 = v180;
    swift_getMetatypeMetadata();
    v28 = sub_22855D1BC();
    v30 = sub_2283F8938(v28, v29, &v186);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = [v23 userInfo];
    sub_22855D0EC();

    v32 = sub_22855D0FC();
    v34 = v33;

    v35 = sub_2283F8938(v32, v34, &v186);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_2283ED000, v24, v25, "[%s] Migration error when loading Core Data persistent store: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v26, -1, -1);
  }

  if (a2)
  {
    v36 = sub_22855CA8C();
    v37 = sub_22855D66C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v186 = v39;
      *v38 = 136315138;
      v183 = v180;
      swift_getMetatypeMetadata();
      v40 = sub_22855D1BC();
      v42 = sub_2283F8938(v40, v41, &v186);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2283ED000, v36, v37, "[%s] Attempting to recover by destroying persistent store and regenerating", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v38, -1, -1);
    }

    v5 = v175;
    sub_2284E9CC0();
    LOBYTE(v183) = v175;
    v43 = sub_2283F25F8(&v183, 0);
    v4 = v3;
    if (v3)
    {

      return v15;
    }

    v177 = v43;

    v45 = sub_22855CA8C();
    v46 = sub_22855D66C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v186 = v48;
      *v47 = 136315138;
      v183 = v180;
      swift_getMetatypeMetadata();
      v49 = sub_22855D1BC();
      v51 = sub_2283F8938(v49, v50, &v186);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2283ED000, v45, v46, "[%s] Successfully recreated Core Data persistent store", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AABAD40](v48, -1, -1);
      MEMORY[0x22AABAD40](v47, -1, -1);
    }

LABEL_60:
    v15 = v177;
    goto LABEL_61;
  }

LABEL_90:
  v183 = 0;
  v184 = 0xE000000000000000;
  sub_22855DC6C();
  v186 = v181;
  type metadata accessor for DiskHealthExperienceStore();
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD000000000000037, 0x80000002285721D0);
LABEL_95:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F42B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_2283F42F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2283F85B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAB9D20](i, a1);
        sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2283F85B8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_228400400(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2283F85B8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_228400400(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_2283F44F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &unk_280DECFF0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2283F461C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA2E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F466C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA3A0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F46D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283F4CD8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F4734(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283F1380(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F4798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2283F47F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F4858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F48B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F4920(uint64_t *a1)
{
  *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable) = v1;
}

id sub_2283F4964()
{
  v2 = *v0;
  v3 = type metadata accessor for FileMonitorPublisher(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v2 + 240))(v4);
  if (!v1)
  {
    v8 = v0[5];
    v0[5] = result;
    v13[1] = 0;

    v9 = [objc_opt_self() defaultCenter];
    v10 = *MEMORY[0x277CBE260];
    v11 = sub_228400874();
    v12 = [v11 persistentStoreCoordinator];

    [v9 addObserver:v0 selector:sel_mergeExternalChanges name:v10 object:v12];
    result = [objc_opt_self() isAppleInternalInstall];
    if (result)
    {
      sub_2283F6EA4();
      sub_22855D87C();
      *v6 = -1;
      *(v6 + 1) = 0;
      *(swift_allocObject() + 16) = v2;
      sub_2283F2298(qword_280DED868, type metadata accessor for FileMonitorPublisher, &protocol conformance descriptor for FileMonitorPublisher);
      sub_22855CE4C();

      return sub_2284ECB2C(v6);
    }
  }

  return result;
}

uint64_t type metadata accessor for FileMonitorPublisher(uint64_t a1)
{
  result = qword_280DED858;
  if (!qword_280DED858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283F4BFC(uint64_t a1)
{
  sub_2283F4CD8(319, &qword_280DED0F8, sub_2283F4D3C, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22855C06C();
    if (v2 <= 0x3F)
    {
      sub_22855D89C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2283F4CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2283F4D3C()
{
  result = qword_280DED100;
  if (!qword_280DED100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DED100);
  }

  return result;
}

void sub_2283F4DA0()
{
  v2 = v0;
  sub_2283F50B4(&v24);
  if (!v1)
  {
    v3 = v24;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEC98);
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      v21 = v3;
      v9 = sub_22855D1BC();
      v11 = sub_2283F8938(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "destroyStoreIfNeededAndMakePersistentContainer - storeState: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();
    v14 = os_log_type_enabled(v12, v13);
    if ((v3 - 1) > 1)
    {
      if (v14)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2283ED000, v12, v13, "destroyStoreIfNeededAndMakePersistentContainer - fast path", v19, 2u);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      v23 = v3;
      sub_2283F25F8(&v23, 1);
    }

    else
    {
      if (v14)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2283ED000, v12, v13, "destroyStoreIfNeededAndMakePersistentContainer - safe path", v15, 2u);
        MEMORY[0x22AABAD40](v15, -1, -1);
      }

      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2283ED000, v16, v17, "destroyStoreIfNeededAndMakePersistentContainer - removeAllFeedItemNotifications", v18, 2u);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      sub_2284E9E64();
      v22 = v3;
      (*(*v2 + 288))(&v22, 1);
    }
  }
}

void sub_2283F50B4(char *a1@<X8>)
{
  v2 = v1;
  v152 = *MEMORY[0x277D85DE8];
  v4 = sub_22855C29C();
  v144 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v143 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v137 - v7;
  v9 = sub_22855C06C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2283F64E4();
  v14 = [v13 URL];

  if (!v14)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v34 = sub_22855CABC();
    __swift_project_value_buffer(v34, qword_280DEEC98);
    v35 = sub_22855CA8C();
    v36 = sub_22855D68C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = a1;
      v39 = swift_slowAlloc();
      *&v150 = v39;
      *v37 = 136315138;
      *(v37 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
      _os_log_impl(&dword_2283ED000, v35, v36, "%s no url, store doesn't exist, storeState=.missing", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v37, -1, -1);

      *v38 = 1;
      return;
    }

    v55 = 1;
    goto LABEL_28;
  }

  v146 = v9;
  v147 = v10;
  sub_22855C00C();

  v15 = objc_opt_self();
  v16 = *MEMORY[0x277CBE2E8];
  v145 = v12;
  v17 = sub_22855BFBC();
  *&v150 = 0;
  v18 = [v15 metadataForPersistentStoreOfType:v16 URL:v17 options:0 error:&v150];

  v19 = v150;
  if (!v18)
  {
    v40 = v150;
    v41 = sub_22855BF3C();

    swift_willThrow();
    v42 = sub_22855BF2C();
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v43 = sub_22855CABC();
    __swift_project_value_buffer(v43, qword_280DEEC98);
    v44 = v42;
    v45 = sub_22855CA8C();
    v46 = sub_22855D68C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v150 = v49;
      *v47 = 136315394;
      *(v47 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v44;
      v50 = v44;
      _os_log_impl(&dword_2283ED000, v45, v46, "%s could not get metadata for store with error %@)", v47, 0x16u);
      sub_22841DC98(v48);
      MEMORY[0x22AABAD40](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AABAD40](v49, -1, -1);
      MEMORY[0x22AABAD40](v47, -1, -1);
    }

    v52 = v146;
    v51 = v147;
    v53 = v145;
    if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x17)
    {
      v54 = 1;
LABEL_32:
      sub_2284ECB98();
      swift_allocError();
      *v56 = v54;
      swift_willThrow();

      (*(v51 + 8))(v53, v52);
      return;
    }

    if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x120A || (sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xD)
    {
      v54 = 2;
      goto LABEL_32;
    }

    v78 = sub_22855CA8C();
    v79 = sub_22855D68C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v150 = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
      _os_log_impl(&dword_2283ED000, v78, v79, "%s no metadata, storeState=.needsUpgrade", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AABAD40](v81, -1, -1);
      MEMORY[0x22AABAD40](v80, -1, -1);
    }

    (*(v51 + 8))(v53, v52);
    v55 = 2;
LABEL_28:
    *a1 = v55;
    return;
  }

  v142 = a1;
  v20 = sub_22855D0EC();
  v21 = v19;

  if (!*(v20 + 16) || (v22 = sub_2283F6D18(0xD000000000000023, 0x800000022856E7D0), (v23 & 1) == 0) || (sub_2283F6E48(*(v20 + 56) + 32 * v22, &v150), (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v57 = sub_22855CABC();
    __swift_project_value_buffer(v57, qword_280DEEC98);

    v58 = sub_22855CA8C();
    v59 = sub_22855D6AC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v148 = v61;
      *v60 = 136315906;
      v62 = DiskHealthExperienceStore.debugDescription.getter();
      v64 = sub_2283F8938(v62, v63, &v148);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v148);
      *(v60 + 22) = 2080;
      if (*(v20 + 16))
      {
        v65 = sub_2283F6D18(0xD000000000000023, 0x800000022856E7D0);
        v66 = MEMORY[0x277D84F70];
        if (v67)
        {
          sub_2283F6E48(*(v20 + 56) + 32 * v65, &v150);
        }

        else
        {
          v150 = 0u;
          v151 = 0u;
        }

        v69 = v142;
      }

      else
      {
        v150 = 0u;
        v151 = 0u;
        v69 = v142;
        v66 = MEMORY[0x277D84F70];
      }

      sub_2283F88E8(0, &qword_280DECFD0, v66 + 8, MEMORY[0x277D83D88]);
      v70 = sub_22855D1BC();
      v72 = sub_2283F8938(v70, v71, &v148);

      *(v60 + 24) = v72;
      *(v60 + 32) = 2080;
      if (*(v20 + 16) && (v73 = sub_2283F6D18(0xD000000000000022, 0x8000000228571E20), (v74 & 1) != 0))
      {
        sub_2283F6E48(*(v20 + 56) + 32 * v73, &v150);
      }

      else
      {

        v150 = 0u;
        v151 = 0u;
      }

      v75 = sub_22855D1BC();
      v77 = sub_2283F8938(v75, v76, &v148);

      *(v60 + 34) = v77;
      _os_log_impl(&dword_2283ED000, v58, v59, "%s %s storeState=.needsUpgrade, storeVersion=%s, storeLocale=%s", v60, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v61, -1, -1);
      MEMORY[0x22AABAD40](v60, -1, -1);

      (*(v147 + 8))(v145, v146);
      *v69 = 2;
      return;
    }

    goto LABEL_40;
  }

  v24 = v149;
  if (!*(v20 + 16) || (v25 = v148, v26 = sub_2283F6D18(0xD000000000000022, 0x8000000228571E20), (v27 & 1) == 0) || (sub_2283F6E48(*(v20 + 56) + 32 * v26, &v150), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_34;
  }

  v28 = v149;
  v140 = v148;
  v141 = v24;
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  v29 = xmmword_280DEE230;
  v139 = v25;
  if ((v25 != xmmword_280DEE230 || v141 != *(&xmmword_280DEE230 + 1)) && (sub_22855E15C() & 1) == 0)
  {
    v144 = *(&v29 + 1);

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v114 = sub_22855CABC();
    __swift_project_value_buffer(v114, qword_280DEEC98);

    v115 = v141;

    v58 = sub_22855CA8C();
    v116 = sub_22855D6AC();

    if (os_log_type_enabled(v58, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v150 = v118;
      *v117 = 136315906;
      v119 = DiskHealthExperienceStore.debugDescription.getter();
      v121 = sub_2283F8938(v119, v120, &v150);

      *(v117 + 4) = v121;
      *(v117 + 12) = 2080;
      *(v117 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
      *(v117 + 22) = 2080;
      *(v117 + 24) = sub_2283F8938(v29, v144, &v150);
      *(v117 + 32) = 2080;
      v122 = sub_2283F8938(v139, v115, &v150);

      *(v117 + 34) = v122;
      _os_log_impl(&dword_2283ED000, v58, v116, "%s %s storeState=.needsUpgrade due to mismatch in storeVersion: requiredVersion=%s, currentVersion=%s", v117, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v118, -1, -1);
      MEMORY[0x22AABAD40](v117, -1, -1);

      goto LABEL_41;
    }

LABEL_40:

LABEL_41:
    (*(v147 + 8))(v145, v146);
    v68 = 2;
LABEL_42:
    *v142 = v68;
    return;
  }

  sub_22855C25C();
  v30 = sub_2283F79F8();
  v32 = v31;
  v144 = *(v144 + 8);
  (v144)(v8, v4);
  if (v140 == v30 && v28 == v32)
  {
  }

  else
  {
    v82 = sub_22855E15C();

    if ((v82 & 1) == 0)
    {

      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v123 = sub_22855CABC();
      __swift_project_value_buffer(v123, qword_280DEEC98);

      v124 = sub_22855CA8C();
      v125 = sub_22855D6AC();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v150 = v141;
        *v126 = 136315906;
        v127 = DiskHealthExperienceStore.debugDescription.getter();
        v129 = sub_2283F8938(v127, v128, &v150);

        *(v126 + 4) = v129;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
        *(v126 + 22) = 2080;
        v130 = sub_2283F8938(v140, v28, &v150);

        *(v126 + 24) = v130;
        *(v126 + 32) = 2080;
        v131 = v143;
        sub_22855C25C();
        v132 = sub_2283F79F8();
        v134 = v133;
        (v144)(v131, v4);
        v135 = sub_2283F8938(v132, v134, &v150);

        *(v126 + 34) = v135;
        _os_log_impl(&dword_2283ED000, v124, v125, "%s %s storeState=.needsDataWipe due to mismatch in locale: storeLocale=%s, Locale.current=%s", v126, 0x2Au);
        v136 = v141;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v136, -1, -1);
        MEMORY[0x22AABAD40](v126, -1, -1);
      }

      else
      {
      }

      (*(v147 + 8))(v145, v146);
LABEL_81:
      v68 = 3;
      goto LABEL_42;
    }
  }

  if (((*(*v2 + 112))(v33) & 1) == 0)
  {
    v83 = [objc_opt_self() sharedBehavior];
    if (!v83)
    {
      __break(1u);
      return;
    }

    v84 = v83;

    v85 = [v84 healthAppHiddenOrNotInstalled];

    if ((v85 & 1) == 0)
    {
      goto LABEL_64;
    }

    v86 = v147;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v87 = sub_22855CABC();
    __swift_project_value_buffer(v87, qword_280DEEC98);

    v88 = sub_22855CA8C();
    v89 = sub_22855D6AC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v150 = v91;
      *v90 = 136315394;
      v92 = DiskHealthExperienceStore.debugDescription.getter();
      v94 = sub_2283F8938(v92, v93, &v150);

      *(v90 + 4) = v94;
      *(v90 + 12) = 2080;
      *(v90 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
      _os_log_impl(&dword_2283ED000, v88, v89, "%s %s storeState=.needsDataWipe due health app installation state", v90, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v91, -1, -1);
      MEMORY[0x22AABAD40](v90, -1, -1);
    }

    (*(v86 + 8))(v145, v146);
    goto LABEL_81;
  }

LABEL_64:
  v95 = v28;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v96 = sub_22855CABC();
  __swift_project_value_buffer(v96, qword_280DEEC98);

  v97 = v141;

  v98 = sub_22855CA8C();
  v99 = sub_22855D6AC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v137 = v4;
    v101 = v95;
    v102 = v100;
    v138 = swift_slowAlloc();
    *&v150 = v138;
    *v102 = 136316162;
    v103 = DiskHealthExperienceStore.debugDescription.getter();
    v105 = sub_2283F8938(v103, v104, &v150);

    *(v102 + 4) = v105;
    *(v102 + 12) = 2080;
    *(v102 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v150);
    *(v102 + 22) = 2080;
    v106 = sub_2283F8938(v139, v97, &v150);

    *(v102 + 24) = v106;
    *(v102 + 32) = 2080;
    v107 = sub_2283F8938(v140, v101, &v150);

    *(v102 + 34) = v107;
    *(v102 + 42) = 2080;
    v108 = v143;
    sub_22855C25C();
    v109 = sub_2283F79F8();
    v111 = v110;
    (v144)(v108, v137);
    v112 = sub_2283F8938(v109, v111, &v150);

    *(v102 + 44) = v112;
    _os_log_impl(&dword_2283ED000, v98, v99, "%s %s storeState=.ready, storeVersion=%s, storeLocale=%s, Locale.current=%s", v102, 0x34u);
    v113 = v138;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v113, -1, -1);
    MEMORY[0x22AABAD40](v102, -1, -1);
  }

  else
  {
  }

  (*(v147 + 8))(v145, v146);
  *v142 = 0;
}

id sub_2283F64E4()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F66B0(v3);
  v4 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v5 = sub_22855BFBC();
  v6 = [v4 initWithURL_];

  (*(v1 + 8))(v3, v0);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  v7 = sub_22855D98C();
  [v6 setOption:v7 forKey:*MEMORY[0x277CBE210]];

  v8 = sub_22855D98C();
  [v6 setOption:v8 forKey:*MEMORY[0x277CBE268]];

  [v6 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];
  v9 = sub_22855D98C();
  [v6 setOption:v9 forKey:*MEMORY[0x277CBE2D8]];

  return v6;
}

uint64_t sub_2283F66B0@<X0>(uint64_t a1@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = sub_22855C06C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(v1 + 32);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  v18 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation;
  swift_beginAccess();
  sub_2283F6AF4(v17 + v18, v15);
  os_unfair_lock_unlock((v16 + 24));
  sub_2283F6AF4(v15, v13);
  if ((*(v4 + 48))(v13, 1, v3) != 1)
  {
    v9 = v13;
    goto LABEL_5;
  }

  sub_2283F4798(v13, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
  sub_2283F6EA4();
  v19 = [objc_opt_self() defaultManager];
  sub_22855BFFC();
  v20 = sub_22855BFBC();
  (*(v4 + 8))(v7, v3);
  v29 = 0;
  v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v29];

  if (v21)
  {
    v22 = v29;
LABEL_5:
    sub_2283F4798(v15, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
    return (*(v4 + 32))(a1, v9, v3);
  }

  v24 = v29;
  v25 = sub_22855BF3C();

  swift_willThrow();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22855DC6C();

  v29 = 0xD00000000000002ALL;
  v30 = 0x8000000228572280;
  v28 = v25;
  v26 = v25;
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  v27 = sub_22855D1CC();
  MEMORY[0x22AAB92A0](v27);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F6AF4(uint64_t a1, uint64_t a2)
{
  sub_2283F6B58(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2283F6B58(uint64_t a1)
{
  if (!qword_280DEE390)
  {
    sub_22855C06C();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEE390);
    }
  }
}

uint64_t static StorageLocations.homeMobileDirectory.getter()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22855D0EC();
  if (*(v2 + 16) && (sub_2283F6D18(0xD000000000000024, 0x800000022856FC60), (v3 & 1) != 0))
  {

    sub_22855BF8C();
  }

  else
  {

    return sub_22855BF8C();
  }
}

unint64_t sub_2283F6D18(uint64_t a1, uint64_t a2)
{
  sub_22855E22C();
  sub_22855D20C();
  v4 = sub_22855E27C();

  return sub_2283F6D90(a1, a2, v4);
}

unint64_t sub_2283F6D90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22855E15C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2283F6E48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2283F6EA4()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  type metadata accessor for StorageLocations();
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v13 = *(v1 + 8);
  v13(v4, v0);
  sub_22855BFCC();
  v13(v7, v0);
  sub_22855BFDC();
  v13(v10, v0);
  sub_22855BFEC();
  return (v13)(v12, v0);
}

uint64_t sub_2283F70B8()
{
  sub_2283F7120();
  *&v1 = 0xD00000000000001DLL;
  *(&v1 + 1) = 0x8000000228570620;
  MEMORY[0x22AAB92A0]();

  xmmword_280DEE230 = v1;
  return result;
}

void sub_2283F7120()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_53;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v4 = [v3 hermit];

  v57[0] = 0x74696D726548;
  v57[1] = 0xE600000000000000;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v5, v6);

  v7 = v57[0];
  v8 = v57[1];
  v9 = sub_2283F7678(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_2283F7678((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v13 = [v0 sharedBehavior];
  if (!v13)
  {
    goto LABEL_54;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = [v15 vrx];

  v57[0] = 5788246;
  v57[1] = 0xE300000000000000;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v16)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v17, v18);

  v19 = v57[0];
  v20 = v57[1];
  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  if (v22 >= v21 >> 1)
  {
    v9 = sub_2283F7678((v21 > 1), v22 + 1, 1, v9);
  }

  *(v9 + 2) = v22 + 1;
  v23 = &v9[16 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  v24 = [v0 sharedBehavior];
  if (!v24)
  {
    goto LABEL_56;
  }

  v25 = v24;
  v26 = [v24 features];

  if (!v26)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = [v26 chamomile];

  strcpy(v57, "Chamomile");
  WORD1(v57[1]) = 0;
  HIDWORD(v57[1]) = -385875968;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v27)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v28, v29);

  v30 = v57[0];
  v31 = v57[1];
  v33 = *(v9 + 2);
  v32 = *(v9 + 3);
  if (v33 >= v32 >> 1)
  {
    v9 = sub_2283F7678((v32 > 1), v33 + 1, 1, v9);
  }

  *(v9 + 2) = v33 + 1;
  v34 = &v9[16 * v33];
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  v35 = [v0 sharedBehavior];
  if (!v35)
  {
    goto LABEL_58;
  }

  v36 = v35;
  v37 = [v35 features];

  if (!v37)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v38 = [v37 simplifiedLogging];

  v57[0] = 0xD000000000000011;
  v57[1] = 0x8000000228570640;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v38)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v39, v40);

  v41 = v57[0];
  v42 = v57[1];
  v44 = *(v9 + 2);
  v43 = *(v9 + 3);
  if (v44 >= v43 >> 1)
  {
    v9 = sub_2283F7678((v43 > 1), v44 + 1, 1, v9);
  }

  *(v9 + 2) = v44 + 1;
  v45 = &v9[16 * v44];
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v46 = [v0 sharedBehavior];
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = v46;
  v48 = [v46 features];

  if (!v48)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v49 = [v48 sleepDetails];

  strcpy(v57, "SleepDetails");
  BYTE5(v57[1]) = 0;
  HIWORD(v57[1]) = -5120;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v49)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v50, v51);

  v52 = v57[0];
  v53 = v57[1];
  v55 = *(v9 + 2);
  v54 = *(v9 + 3);
  if (v55 >= v54 >> 1)
  {
    v9 = sub_2283F7678((v54 > 1), v55 + 1, 1, v9);
  }

  *(v9 + 2) = v55 + 1;
  v56 = &v9[16 * v55];
  *(v56 + 4) = v52;
  *(v56 + 5) = v53;
  v57[0] = v9;
  sub_2283F78D8();
  sub_2283F7928();
  sub_22855D15C();
}

char *sub_2283F7678(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_2283F779C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F77EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F783C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F788C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22855D47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2283F78D8()
{
  if (!qword_280DEE7C8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7C8);
    }
  }
}

unint64_t sub_2283F7928()
{
  result = qword_280DEE7C0;
  if (!qword_280DEE7C0)
  {
    sub_2283F779C(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE7C0);
  }

  return result;
}

unint64_t sub_2283F79A4()
{
  result = qword_280DED2B8;
  if (!qword_280DED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2B8);
  }

  return result;
}

uint64_t sub_2283F79F8()
{
  v0 = MEMORY[0x277D83D88];
  sub_2283F1380(0, &qword_280DEE368, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v30 - v2;
  v4 = sub_22855C27C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F1380(0, &qword_280DEE370, MEMORY[0x277CC9640], v0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = [objc_opt_self() preferredLanguages];
  v12 = sub_22855D3AC();

  if (v12[2])
  {
    v14 = v12[4];
    v13 = v12[5];
  }

  else
  {

    sub_22855C28C();
    sub_22855C26C();
    (*(v5 + 8))(v7, v4);
    v15 = sub_22855C21C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v10, 1, v15) == 1)
    {
      sub_2283F4798(v10, &qword_280DEE370, MEMORY[0x277CC9640], MEMORY[0x277D83D88], sub_2283F1380);
      v13 = 0xE200000000000000;
      v14 = 28261;
    }

    else
    {
      v14 = sub_22855C20C();
      v13 = v17;
      (*(v16 + 8))(v10, v15);
    }
  }

  sub_22855C24C();
  v18 = sub_22855C23C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v3, 1, v18) == 1)
  {
    sub_2283F4798(v3, &qword_280DEE368, MEMORY[0x277CC9698], MEMORY[0x277D83D88], sub_2283F1380);
    v20 = 0xE200000000000000;
    v21 = 21333;
  }

  else
  {
    v21 = sub_22855C20C();
    v20 = v22;
    (*(v19 + 8))(v3, v18);
  }

  v31 = v14;
  v32 = v13;
  v30[0] = 45;
  v30[1] = 0xE100000000000000;
  sub_2283F79A4();
  v23 = sub_22855DA5C();
  if (v23[2] < 2uLL)
  {
    goto LABEL_15;
  }

  v25 = v23[4];
  v24 = v23[5];
  v27 = v23[6];
  v26 = v23[7];

  if (v27 != v21 || v26 != v20)
  {
    v28 = sub_22855E15C();

    if (v28)
    {
      goto LABEL_14;
    }

LABEL_15:

    v31 = v14;
    v32 = v13;
    goto LABEL_16;
  }

LABEL_14:

  v31 = v25;
  v32 = v24;
LABEL_16:
  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  MEMORY[0x22AAB92A0](v21, v20);

  return v31;
}

uint64_t DiskHealthExperienceStore.debugDescription.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 24);
  if (v2)
  {
    v3 = [v2 description];
    v4 = sub_22855D1AC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  os_unfair_lock_unlock((v1 + 24));
  v7 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v7);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](10272, 0xE200000000000000);
  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x6E656B6F54206F4ELL;
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  MEMORY[0x22AAB92A0](v8, v9);

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return 0;
}

id sub_2283F8044()
{
  result = sub_2283F8064();
  qword_280DF6A98 = result;
  return result;
}

id sub_2283F8064()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  type metadata accessor for HealthExperienceStoreModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_22855D17C();
  v10 = sub_22855D17C();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_22855C00C();

    (*(v1 + 32))(v6, v4, v0);
    v12 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v13 = sub_22855BFBC();
    v14 = [v12 initWithContentsOfURL_];

    if (v14)
    {
      (*(v1 + 8))(v6, v0);

      return v14;
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_22855DC6C();

    v21 = 0xD00000000000002FLL;
    v22 = 0x8000000228573D90;
    sub_228518C50();
    v20 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v20);
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000036, 0x8000000228573D50);
    v16 = [v8 description];
    v17 = sub_22855D1AC();
    v19 = v18;

    MEMORY[0x22AAB92A0](v17, v19);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2283F83B0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_2283F8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_22855BF2C();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = v4;
}

char *sub_2283F85B8(char *a1, int64_t a2, char a3)
{
  result = sub_2283F44F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall OrchestrationRetryManager.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = v1;
  sub_2283F8840(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855CABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855C98C();
  v11 = v10 & 1;
  v12 = *(v2 + 24);
  os_unfair_lock_lock((v12 + 20));
  if (v11 == *(v12 + 16))
  {

    os_unfair_lock_unlock((v12 + 20));
  }

  else
  {
    *(v12 + 16) = v11;
    os_unfair_lock_unlock((v12 + 20));
    if (v10)
    {
      sub_22855C53C();
      v13 = sub_22855CA8C();
      v14 = sub_22855D6AC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2283ED000, v13, v14, "Health app has become foreground; retrying failed work criteria.", v15, 2u);
        MEMORY[0x22AABAD40](v15, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      v16 = sub_22855C63C();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      sub_22855C52C();
      sub_2283F9060(v5);
    }
  }
}

void sub_2283F8840(uint64_t a1)
{
  if (!qword_280DE9F28)
  {
    sub_22855C63C();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9F28);
    }
  }
}

void sub_2283F8898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F88E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2283F8938(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2283FC528(v11, 0, 0, 1, a1, a2);
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
    sub_2283F6E48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_2283F8A68()
{
  sub_2283F88E8(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228560690;
  type metadata accessor for LegacyGenerationExecutor.Planner.WorkPlan();
  *(v0 + 32) = swift_allocObject();
  return v0;
}

uint64_t sub_2283F8B24@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = sub_22855C63C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F8E08(0, &qword_280DE8F60, MEMORY[0x277D11BE0]);
  v10 = *(*(sub_22855C65C() - 8) + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228560570;
  sub_2283F8E08(0, &qword_280DE8F40, MEMORY[0x277D11C90]);
  sub_22855C9AC();
  v5 = swift_allocObject();
  v8 = xmmword_228560580;
  *(v5 + 16) = xmmword_228560580;
  sub_22855D1AC();
  sub_22855C96C();

  v6 = *(v2 + 104);
  v6(v4, *MEMORY[0x277D11BD0], v1);
  sub_22855C64C();
  *(swift_allocObject() + 16) = v8;
  sub_22855C97C();
  v6(v4, *MEMORY[0x277D11BC8], v1);
  sub_22855C64C();
  v6(v4, *MEMORY[0x277D11BD8], v1);
  return sub_22855C64C();
}

void sub_2283F8E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855E12C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OrchestrationWorkQueueStatusObserver.didEnqueue(count:context:queueLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DE9DF8);
  swift_unknownObjectRetain();
  v9 = sub_22855CA8C();
  v10 = sub_22855D66C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315650;
    sub_22842BFBC(0, &qword_280DE9F40, MEMORY[0x277D11BA0], 0);
    swift_unknownObjectRetain();
    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a4;
    _os_log_impl(&dword_2283ED000, v9, v10, "%s: Enqueued %ld work plans, %ld outstanding.", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  v16 = *(v5 + 16);
  os_unfair_lock_lock((v16 + 56));
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
    os_unfair_lock_unlock((v16 + 56));
  }
}

uint64_t sub_2283F9060(uint64_t a1)
{
  sub_2283F8840(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 56));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 56));
  return v2;
}

void HealthAppForegroundWorkManager.forceStart(within:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock((v1 + 32));
  sub_2283F98D0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2283F9178(_BYTE *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v63 = a2;
  v57 = a3;
  v6 = sub_22855CFBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22855D00C();
  v58 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v49 - v13;
  v14 = sub_22855CFAC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  if ((*a1 & 1) == 0)
  {
    v54 = v6;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v52 = v9;
    v53 = v7;
    v55 = v4;
    v22 = sub_22855CABC();
    __swift_project_value_buffer(v22, qword_280DEEC98);
    v23 = *(v15 + 16);
    v23(v21, v63, v14);
    v24 = sub_22855CA8C();
    v25 = sub_22855D6AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v50 = v25;
      v27 = v26;
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v27 = 136446466;
      v28 = sub_22855E34C();
      v30 = sub_2283F8938(v28, v29, aBlock);
      v49 = v24;
      v31 = v23;
      v32 = v30;

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v31(v18, v21, v14);
      v33 = sub_22855D1BC();
      v35 = v34;
      (*(v15 + 8))(v21, v14);
      v36 = v62;
      v37 = sub_2283F8938(v33, v35, aBlock);

      *(v27 + 14) = v37;
      v38 = v49;
      _os_log_impl(&dword_2283ED000, v49, v50, "[%{public}s] Not yet started, enqueueing a start deadline within %{public}s", v27, 0x16u);
      v39 = v51;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v27, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
      v36 = v62;
    }

    v40 = v56;
    v62 = *(v57 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_queue);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v40, v63);
    v63 = *(v58 + 8);
    v63(v40, v65);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v36;
    aBlock[4] = sub_2284D7240;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_82;
    v43 = _Block_copy(aBlock);

    v44 = v59;
    sub_22855CFDC();
    aBlock[8] = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v45 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v45);
    v46 = v61;
    v47 = v54;
    sub_22855DA9C();
    v48 = v64;
    MEMORY[0x22AAB9840](v64, v44, v46, v43);
    _Block_release(v43);
    (*(v53 + 8))(v46, v47);
    (*(v60 + 8))(v44, v52);
    v63(v48, v65);
  }

  return result;
}

uint64_t sub_2283F985C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283F9894()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void HealthAppForegroundWorkManager.foregroundWithFireOnceBarrier(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2283F9950(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_2283F9970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22855CFAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 8);
  }

  else
  {
    sub_2283F9B10(a2 + 16, v14);
    (*(v8 + 16))(v10, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v7);
    type metadata accessor for ForegroundTask(0);
    swift_allocObject();
    v11 = sub_2283F9BF0(v14, v10);
    *(a1 + 8) = v11;
  }

  sub_2283FB1A4();
  if (*a1 != 1)
  {
    goto LABEL_7;
  }

  v12 = *(v11 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v12 + 64));
  sub_2283FBBE4((v12 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v12 + 64));
LABEL_7:

    return;
  }

  os_unfair_lock_unlock((v12 + 64));
  __break(1u);
}

uint64_t sub_2283F9B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2283F9B94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2283F9BF0(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = sub_22855C1DC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855D81C();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855D7BC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22855CFEC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState;
  sub_2283FA00C(0, &unk_280DE9180, &type metadata for ForegroundTask.State);
  v13 = swift_allocObject();
  *(v13 + 64) = 0;
  *(v13 + 16) = 0;
  v14 = MEMORY[0x277D84F90];
  *(v13 + 24) = MEMORY[0x277D84F90];
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v2 + v12) = v13;
  v35 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue;
  v15 = sub_2283FA06C();
  v34[0] = "5644E4E314ForegroundTask";
  v34[1] = v15;
  sub_22855CFDC();
  v42 = v14;
  sub_2283FA190(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v16 = MEMORY[0x277D85230];
  sub_2283FA468(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED240, &qword_280DED250, v16);
  sub_22855DA9C();
  (*(v36 + 104))(v9, *MEMORY[0x277D85260], v37);
  *(v2 + v35) = sub_22855D84C();
  v17 = (v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier);
  sub_22855C1CC();
  v18 = sub_22855C17C();
  v20 = v19;
  (*(v38 + 8))(v6, v39);
  v21 = sub_2283FAD3C(6, v18, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x22AAB9260](v21, v23, v25, v27);
  v30 = v29;

  *v17 = v28;
  v17[1] = v30;
  sub_2283FAB3C(v40, v3 + 16);
  v31 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval;
  v32 = sub_22855CFAC();
  (*(*(v32 - 8) + 32))(v3 + v31, v41, v32);
  return v3;
}

void sub_2283FA00C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_22855DCFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2283FA06C()
{
  result = qword_280DED120;
  if (!qword_280DED120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED120);
  }

  return result;
}

uint64_t sub_2283FA0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FA100(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2283FA148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FA190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FA1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FA220(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284B2F68(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FA284(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA468(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283FA2E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855D47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2283FA33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DatabaseAccessibilityDispatchTarget.run(_:for:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v50 = a5;
  v51 = a2;
  v10 = sub_22855C8CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (!v16 || !a3)
  {
    __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
    return sub_22855C60C();
  }

  v17 = v16;
  v46 = v11;
  v47 = v10;
  v48 = a6;
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 24);
  swift_unknownObjectRetain();
  v19(&v56, ObjectType, v17);
  if (!v57)
  {
    sub_22849D268(&v56);
    v21 = v6;
LABEL_11:
    __swift_project_boxed_opaque_existential_1(v21 + 2, v21[5]);
    swift_unknownObjectRetain();
    sub_22855C60C();
    return swift_unknownObjectRelease_n();
  }

  sub_2283FAB3C(&v56, v58);
  v20 = (*(v17 + 16))(ObjectType, v17);
  v21 = v6;
  if (!v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v58);
    goto LABEL_11;
  }

  v22 = v20;
  sub_2283F9B10((v6 + 2), &v56);
  sub_2283F9B10(a1, v55);
  v23 = v46;
  v45 = v22;
  v24 = *(v46 + 16);
  v25 = v47;
  v24(v15, v51, v47);
  sub_2283F9B10(&v56, v54);
  sub_2283F9B10(v55, v53);
  v24(v49, v15, v25);
  v26 = (*(v23 + 80) + 96) & ~*(v23 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_2283FAB3C(&v56, v28 + 16);
  sub_2283FAB3C(v55, v28 + 56);
  v29 = (*(v23 + 32))(v28 + v26, v15, v25);
  v30 = (v28 + v27);
  *v30 = a3;
  v30[1] = v17;
  v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v45;
  v33 = v48;
  *v31 = v50;
  v31[1] = v33;
  v34 = v21[8];
  MEMORY[0x28223BE20](v29);
  *(&v44 - 4) = v32;
  *(&v44 - 3) = sub_22849D358;
  *(&v44 - 2) = v28;
  swift_unknownObjectRetain();

  os_unfair_lock_lock((v34 + 32));
  sub_2283FADD8((v34 + 16), &v52);
  os_unfair_lock_unlock((v34 + 32));
  if (!v52)
  {
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v43 = v49;
    sub_22855C60C();

    swift_unknownObjectRelease();

    (*(v46 + 8))(v43, v47);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v53);
    __swift_destroy_boxed_opaque_existential_0(v54);
    return __swift_destroy_boxed_opaque_existential_0(v58);
  }

  if (v52 != 1)
  {
    swift_unknownObjectRelease();

    (*(v46 + 8))(v49, v47);
    goto LABEL_14;
  }

  (*(v46 + 8))(v49, v47);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v54);
  v35 = v60;
  v51 = v59;
  v50 = __swift_project_boxed_opaque_existential_1(v58, v59);
  v36 = sub_22849D440(v32);
  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = a3;
  v39[3] = v17;
  v39[4] = v32;
  v39[5] = v21;
  v40 = *(v35 + 8);
  swift_unknownObjectRetain();
  v41 = v32;

  v40(v36, v38, sub_22849D4F0, v39, v51, v35, 10.0);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_2283FAB3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2283FAB54()
{
  v1 = sub_22855C8CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2283FAC50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2283FAC98@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  a1[4] = &protocol witness table for HKHealthStore;
  *a1 = v4;

  return v4;
}

id sub_2283FAD04()
{
  v1 = [*(v0 + 16) profileIdentifier];

  return v1;
}

uint64_t sub_2283FAD3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22855D21C();

    return sub_22855D2BC();
  }

  return result;
}

void *sub_2283FADF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22855DE8C();

    if (v4)
    {
      sub_2283EF310(0, &qword_280DE9258, 0x277CCD2B8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2283FB154(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_2283FAEBC(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_2283FADF8(a2, *a1);
  v11 = v10;
  if (v10 && [v10 isValid])
  {

    v12 = 0;
  }

  else
  {
    v13 = a1[1];
    if (*(v13 + 16) && (v14 = sub_2283FB154(a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_228426988(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_228426988((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      v20 = &v16[2 * v19];
      v20[4] = sub_228492FA4;
      v20[5] = v17;
      v21 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = a1[1];
      sub_22845B5A4(v16, v21, isUniquelyReferenced_nonNull_native);

      a1[1] = v27;
      v12 = 2;
    }

    else
    {
      sub_22849D65C(0, &qword_280DE8EC8, sub_2283FBB5C, MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_228560580;
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = a4;
      *(v23 + 32) = sub_228466000;
      *(v23 + 40) = v24;
      v25 = a2;

      v26 = swift_isUniquelyReferenced_nonNull_native();
      v28 = a1[1];
      sub_22845B5A4(v23, v25, v26);

      a1[1] = v28;
      v12 = 1;
    }
  }

  *a5 = v12;
}

uint64_t sub_2283FB118()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2283FB1A4()
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEC98);

  v2 = sub_22855CA8C();
  v3 = sub_22855D6AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v10 = v5;
    v6 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v6);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v7 = sub_2283F8938(91, 0xE100000000000000, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v2, v3, "%{public}s Requesting fire once barrier", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  v8 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock(v8 + 16);
  sub_2283FB4EC(&v8[4]);
  os_unfair_lock_unlock(v8 + 16);
}

unint64_t sub_2283FB3DC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2283EF310(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22855D9AC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2283FB50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22855CFBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CFEC();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 3) == 1)
  {
    v41 = a3;
    v42 = v14;
    v43 = v13;
    v45 = v8;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v44 = v9;
    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);

    v18 = sub_22855CA8C();
    v19 = sub_22855D6AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = v4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v39 = a4;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136446210;
      v24 = sub_228403430();
      v26 = sub_2283F8938(v24, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v18, v19, "%{public}s Fire once already completed before, calling barrier immediately", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v27 = v23;
      a4 = v39;
      MEMORY[0x22AABAD40](v27, -1, -1);
      MEMORY[0x22AABAD40](v21, -1, -1);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v41;
    *(v28 + 24) = a4;
    aBlock[4] = sub_2284D7214;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_73;
    v29 = _Block_copy(aBlock);

    sub_22855CFDC();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v30 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v30);
    v31 = v45;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v16, v11, v29);
    _Block_release(v29);
    (*(v44 + 8))(v11, v31);
    (*(v42 + 8))(v16, v43);
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = a3;
    *(v33 + 24) = a4;
    v34 = *(a1 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2283FBB3C(0, v34[2] + 1, 1, v34);
      v34 = result;
    }

    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      result = sub_2283FBB3C((v35 > 1), v36 + 1, 1, v34);
      v34 = result;
    }

    v34[2] = v36 + 1;
    v37 = &v34[2 * v36];
    v37[4] = sub_228405F1C;
    v37[5] = v33;
    *(a1 + 8) = v34;
  }

  return result;
}

void *sub_2283FBA04(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2283FBB5C();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_2283FBB5C()
{
  result = qword_280DECFC8;
  if (!qword_280DECFC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DECFC8);
  }

  return result;
}

_BYTE *sub_2283FBBAC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    *result = 1;
    return sub_2283FBBFC();
  }

  return result;
}

uint64_t sub_2283FBBFC()
{
  v1 = v0;
  v28[1] = *v0;
  v2 = sub_22855D00C();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = v28 - v6;
  v7 = sub_22855CFBC();
  MEMORY[0x28223BE20](v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v37 = sub_2284D7100;
  v38 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_228401F54;
  v36 = &block_descriptor_18;
  _Block_copy(&aBlock);
  v32 = MEMORY[0x277D84F90];
  sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v9 = MEMORY[0x277D85198];
  sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED260, &qword_280DED270, v9);

  sub_22855DA9C();
  sub_22855D03C();
  swift_allocObject();
  v10 = sub_22855D01C();

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DEEC98);

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v32 = v15;
    aBlock = 91;
    v34 = 0xE100000000000000;
    v16 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v16);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v17 = sub_2283F8938(aBlock, v34, &v32);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_2283ED000, v12, v13, "%{public}s Starting urgent work", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v19 = v1[5];
  v20 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 2) = v21;
  *(v22 + 3) = v10;
  v22[4] = Current;
  v23 = *(v20 + 8);

  v23(sub_228401B6C, v22, v19, v20);

  sub_22855CFFC();
  v24 = v29;
  MEMORY[0x22AAB90D0](v5, v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval);
  v25 = v31;
  v26 = *(v30 + 8);
  v26(v5, v31);
  sub_22855D7DC();

  return (v26)(v24, v25);
}

uint64_t *Atomic.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *(v1 + v4) = v5;
  *v6 = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t sub_2283FC25C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, &a1[v5]);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2283FC528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2283FC7CC(a5, a6);
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
    result = sub_22855DD0C();
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

void *sub_2283FC634(uint64_t a1, uint64_t a2)
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

  sub_2283FC818();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2283FC69C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2283FC634(v5, 0);
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

  result = sub_22855DD0C();
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
        v10 = sub_22855D23C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2283FC634(v10, 0);
        result = sub_22855DC4C();
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

void *sub_2283FC7CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2283FC69C(a1, a2);
  sub_2283FC868(&unk_283B7E7C8);
  return v3;
}

void sub_2283FC818()
{
  if (!qword_280DED010)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED010);
    }
  }
}

uint64_t sub_2283FC868(uint64_t result)
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

  result = sub_228418C00(result, v11, 1, v3);
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

uint64_t sub_2283FC9C0()
{
  sub_2283FCE60(0);
  v2 = v1;
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FCFBC(0, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
  v6 = v5;
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_2283FCEF4(0);
  v10 = v9;
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 64);
  v22 = MEMORY[0x277D84F90];
  v19 = v0;
  v20 = &v22;
  type metadata accessor for UnfairLock();
  sub_2283FD034(&qword_280DEDC00, type metadata accessor for UnfairLock, &protocol conformance descriptor for UnfairLock);

  sub_22855C3CC();

  if (*(v22 + 16))
  {
    v21 = v22;
    sub_2283FEE20(0);
    sub_2284AE35C(0, &qword_27D83FB58, sub_2283FEE20);
    sub_2283FD034(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
    sub_2284ACE0C(&qword_27D83FB60, &qword_27D83FB58, sub_2283FEE20, MEMORY[0x277D83970]);

    sub_22855CC2C();
    sub_2283FD034(&qword_27D83FB68, sub_2283FCE60, MEMORY[0x277CBCD48]);
    v13 = sub_22855CE6C();
    (*(v18 + 8))(v4, v2);
  }

  else
  {
    sub_2283EF310(0, &qword_280DE92E8, 0x277CE1FC0);
    sub_22855CDDC();
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_2283FED9C();
    sub_22855CF7C();
    (*(v16 + 8))(v8, v6);
    sub_2283FD034(&qword_280DE9BF0, sub_2283FCEF4, MEMORY[0x277CBCBA0]);
    v13 = sub_22855CE6C();
    (*(v17 + 8))(v12, v10);
  }

  return v13;
}

void sub_2283FCE60(uint64_t a1)
{
  if (!qword_280DE99B8)
  {
    sub_2283FEE20(255);
    sub_2283FD034(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
    v1 = sub_22855CC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99B8);
    }
  }
}

void sub_2283FCEF4(uint64_t a1)
{
  if (!qword_280DE9BE8)
  {
    sub_2283FCFBC(255, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_2283FED9C();
    v1 = sub_22855CB3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BE8);
    }
  }
}

void sub_2283FCFBC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2283FD034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FD07C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 72);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v34 = a1;
    v45 = MEMORY[0x277D84F90];

    sub_228427690(0, v4, 0);
    v38 = v45;
    v6 = v3 + 64;
    result = sub_22855DAAC();
    v8 = result;
    v9 = 0;
    v10 = *(v3 + 36);
    v36 = v4;
    v37 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_30;
      }

      if (v10 != *(v3 + 36))
      {
        goto LABEL_31;
      }

      v14 = (*(v3 + 48) + 16 * v8);
      v16 = *v14;
      v15 = v14[1];
      sub_2283F9B10(*(v3 + 56) + 40 * v8, &v42);
      v39[0] = v16;
      v39[1] = v15;
      sub_22844C570(&v42, v40);
      sub_2283F9B10(v40, v44);

      sub_2284AE954(v39);
      v17 = v38;
      v45 = v38;
      v19 = *(v38 + 16);
      v18 = *(v38 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_228427690((v18 > 1), v19 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v19 + 1;
      v38 = v17;
      result = sub_22844C570(v44, v17 + 40 * v19 + 32);
      v11 = 1 << *(v3 + 32);
      if (v8 >= v11)
      {
        goto LABEL_32;
      }

      v20 = *(v6 + 8 * v13);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_33;
      }

      v10 = v37;
      if (v37 != *(v3 + 36))
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v12 = v36;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v12 = v36;
        v24 = (v3 + 72 + 8 * v13);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_228416CB8(v8, v37, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v8, v37, 0);
      }

LABEL_4:
      ++v9;
      v8 = v11;
      if (v9 == v12)
      {

        a1 = v34;
        v5 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_21:
    v27 = *(v5 + 16);
    if (v27)
    {
      v28 = v5 + 32;
      do
      {
        sub_2283F9B10(v28, v41);
        v29 = *(&v42 + 1);
        v30 = v43;
        __swift_project_boxed_opaque_existential_1(v41, *(&v42 + 1));
        v31 = (*(v30 + 24))(v29, v30);
        if (v31)
        {
          v32 = v31;
          UNUserNotificationCenter.scheduleNotification(_:)(v31);

          MEMORY[0x22AAB9400](v33);
          if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
          {
            sub_22855D3EC();
          }

          sub_22855D43C();
        }

        __swift_destroy_boxed_opaque_existential_0(v41);
        v28 += 40;
        --v27;
      }

      while (v27);
    }

    *(a1 + 72) = MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2283FD424(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2283FD46C(uint64_t a1)
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

unint64_t sub_2283FD50C()
{
  result = qword_280DEDC00;
  if (!qword_280DEDC00)
  {
    type metadata accessor for UnfairLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDC00);
  }

  return result;
}

uint64_t sub_2283FD590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = [*(v2 + 16) profileIdentifier];
  v5 = [*(v3 + 16) profileIdentifier];
  v6 = sub_22855D9AC();

  return v6 & 1;
}

void OrchestrationWorkQueueStatusObserver.didFinish(workPlan:after:analytics:result:executor:context:remaining:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, double a8)
{
  v146 = a7;
  v140 = a6;
  v152 = a4;
  v153 = a2;
  v154 = a1;
  v138 = *v8;
  v12 = sub_22855C73C();
  v142 = *(v12 - 8);
  v143 = v12;
  MEMORY[0x28223BE20](v12);
  v141 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FEAB8(0);
  v133 = *(v14 - 8);
  v134 = v14;
  MEMORY[0x28223BE20](v14);
  v132 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FEB4C(0);
  v136 = *(v16 - 8);
  v137 = v16;
  MEMORY[0x28223BE20](v16);
  v135 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22855C77C();
  v150 = *(v18 - 8);
  v151 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v144 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v149 = &v130 - v21;
  v22 = sub_22855C6FC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22855C8CC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v30 = sub_22855CABC();
  __swift_project_value_buffer(v30, qword_280DE9DF8);
  (*(v27 + 16))(v29, v152, v26);
  sub_2283F9B10(v154, v160);
  v147 = a3;
  sub_2283FEC4C(a3, v158);
  (*(v23 + 16))(v25, v153, v22);
  swift_unknownObjectRetain();
  v31 = sub_22855CA8C();
  v32 = sub_22855D6AC();
  swift_unknownObjectRelease();
  v139 = v32;
  v33 = os_log_type_enabled(v31, v32);
  v34 = v25;
  v145 = a5;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v131 = v36;
    *v35 = 136316418;
    v155 = a5;
    v156 = v140;
    v157[0] = v36;
    sub_22842BFBC(0, &qword_280DE9F40, MEMORY[0x277D11BA0], 0);
    v140 = v31;
    swift_unknownObjectRetain();
    v37 = sub_22855D1BC();
    v39 = v22;
    v40 = v34;
    v41 = sub_2283F8938(v37, v38, v157);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    sub_2283FECA8(&qword_280DE9E78, MEMORY[0x277D11C68], MEMORY[0x277D11C70]);
    v42 = sub_22855E11C();
    v44 = v43;
    (*(v27 + 8))(v29, v26);
    v45 = sub_2283F8938(v42, v44, v157);

    *(v35 + 14) = v45;
    *(v35 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v160, v160[3]);
    v46 = v149;
    sub_22855CA2C();
    sub_2283FECA8(&qword_280DE9F10, MEMORY[0x277D11C08], MEMORY[0x277D11C10]);
    v47 = v151;
    v48 = sub_22855E11C();
    v50 = v49;
    (*(v150 + 8))(v46, v47);
    __swift_destroy_boxed_opaque_existential_0(v160);
    v51 = sub_2283F8938(v48, v50, v157);

    *(v35 + 24) = v51;
    *(v35 + 32) = 2080;
    v52 = sub_22855C67C();
    v54 = v53;
    sub_2283FED34(v158);
    v55 = sub_2283F8938(v52, v54, v157);

    *(v35 + 34) = v55;
    *(v35 + 42) = 2048;
    *(v35 + 44) = a8;
    *(v35 + 52) = 2080;
    sub_2283FECA8(&qword_280DE9F18, MEMORY[0x277D11BF8], MEMORY[0x277D11C00]);
    v56 = sub_22855E11C();
    v58 = v57;
    (*(v23 + 8))(v40, v39);
    v59 = sub_2283F8938(v56, v58, v157);

    *(v35 + 54) = v59;
    v60 = v140;
    _os_log_impl(&dword_2283ED000, v140, v139, "[%s] %s/%s: %s after %fs. %s", v35, 0x3Eu);
    v61 = v131;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v61, -1, -1);
    v62 = v35;
    v63 = v154;
    MEMORY[0x22AABAD40](v62, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v25, v22);
    sub_2283FED34(v158);
    (*(v27 + 8))(v29, v26);
    __swift_destroy_boxed_opaque_existential_0(v160);
    v63 = v154;
  }

  v65 = v147;
  v64 = v148;
  if (!v146)
  {
    type metadata accessor for HealthPlatformContextProvider.Context(0);
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      v67 = v66;
      swift_unknownObjectRetain();

      v68 = sub_2283FC9C0();

      v158[0] = v68;
      sub_2283FEE20(0);
      sub_2283FECA8(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
      v69 = v132;
      sub_22855CF1C();

      v70 = swift_allocObject();
      swift_weakInit();
      v71 = swift_allocObject();
      v71[2] = v70;
      v71[3] = v67;
      v71[4] = v138;
      swift_unknownObjectRetain();
      sub_22855CCBC();
      v72 = MEMORY[0x277D84F78];
      sub_2283FF03C(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
      sub_2283FECA8(&qword_280DE9A98, sub_2283FEAB8, MEMORY[0x277CBCCD0]);
      sub_2283FEF04(&qword_280DE9890, &qword_280DE9888, v72 + 8);
      v73 = v134;
      v74 = v135;
      sub_22855CF2C();

      v75 = v69;
      v63 = v154;
      (*(v133 + 8))(v75, v73);
      *(swift_allocObject() + 16) = v138;
      sub_2283FECA8(&qword_280DE9A28, sub_2283FEB4C, MEMORY[0x277CBCCE0]);
      v76 = v137;
      sub_22855CE5C();
      swift_unknownObjectRelease();

      (*(v136 + 8))(v74, v76);
    }
  }

  sub_2283FEC4C(v65, v158);
  if (v159)
  {
    if (v159 != 1)
    {
      v127 = v64[2];
      os_unfair_lock_lock((v127 + 56));
      v128 = *(v127 + 40);
      v80 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (!v80)
      {
        *(v127 + 40) = v129;
        os_unfair_lock_unlock((v127 + 56));
        return;
      }

      goto LABEL_22;
    }

    v77 = v158[0];
    v78 = v64[2];
    os_unfair_lock_lock((v78 + 56));
    v79 = *(v78 + 24);
    v80 = __OFADD__(v79, 1);
    v81 = v79 + 1;
    if (!v80)
    {
      *(v78 + 24) = v81;
      v82 = *(v78 + 48);
      v80 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (!v80)
      {
        *(v78 + 48) = v83;
        os_unfair_lock_unlock((v78 + 56));
        v84 = sub_22855BF2C();
        v153 = sub_22855D17C();
        sub_22840012C(0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228569C00;
        *(inited + 32) = 0x6E6F697461727564;
        v147 = inited + 32;
        *(inited + 40) = 0xE800000000000000;
        v86 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v148 = v77;
        *(inited + 48) = [v86 initWithDouble_];
        *(inited + 56) = 0x4464656B636F6C62;
        *(inited + 64) = 0xEF6E6F6974617275;
        sub_22855C6DC();
        *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        strcpy((inited + 80), "pausedDuration");
        *(inited + 95) = -18;
        sub_22855C6CC();
        *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 104) = 0xD000000000000010;
        *(inited + 112) = 0x8000000228573BA0;
        sub_22855C6EC();
        *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 128) = 0x74617275446E7572;
        *(inited + 136) = 0xEB000000006E6F69;
        sub_22855C6BC();
        *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 152) = 0x73736563637573;
        *(inited + 160) = 0xE700000000000000;
        *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        *(inited + 176) = 0x6D6F44726F727265;
        *(inited + 184) = 0xEB000000006E6961;
        v91 = [v84 domain];
        if (v91)
        {
          *(inited + 192) = v91;
          *(inited + 200) = 0x646F43726F727265;
          *(inited + 208) = 0xE900000000000065;
          v92 = [v84 code];
          *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(inited + 224) = 0x72656469766F7270;
          *(inited + 232) = 0xE800000000000000;
          sub_22855C8BC();
          v93 = sub_22855D17C();

          *(inited + 240) = v93;
          *(inited + 248) = 0x726F747563657865;
          *(inited + 256) = 0xE800000000000000;
          v94 = v141;
          sub_22855C8AC();
          sub_22855C70C();
          (*(v142 + 8))(v94, v143);
          v95 = sub_22855D17C();

          *(inited + 264) = v95;
          *(inited + 272) = 0x6E69616D6F64;
          *(inited + 280) = 0xE600000000000000;
          __swift_project_boxed_opaque_existential_1(v63, v63[3]);
          v96 = v149;
          sub_22855CA2C();
          sub_22855C76C();
          v97 = *(v150 + 8);
          v98 = v96;
          v99 = v151;
          v97(v98, v151);
          v100 = sub_22855D17C();

          *(inited + 288) = v100;
          *(inited + 296) = 1701080931;
          *(inited + 304) = 0xE400000000000000;
          __swift_project_boxed_opaque_existential_1(v63, v63[3]);
          v101 = v144;
          sub_22855CA2C();
          v102 = sub_22855C74C();
          v97(v101, v99);
          *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_228400184(inited);
          swift_setDeallocating();
          sub_228400378(0);
          swift_arrayDestroy();
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v103 = sub_22855D0DC();

          v104 = v153;
          AnalyticsSendEvent();

          return;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v105 = v64[2];
    os_unfair_lock_lock((v105 + 56));
    v106 = *(v105 + 24);
    v80 = __OFADD__(v106, 1);
    v107 = v106 + 1;
    if (!v80)
    {
      *(v105 + 24) = v107;
      v108 = *(v105 + 32);
      v80 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (!v80)
      {
        *(v105 + 32) = v109;
        os_unfair_lock_unlock((v105 + 56));
        v153 = sub_22855D17C();
        sub_22840012C(0);
        v110 = swift_initStackObject();
        *(v110 + 16) = xmmword_228569C10;
        *(v110 + 32) = 0x6E6F697461727564;
        v148 = (v110 + 32);
        *(v110 + 40) = 0xE800000000000000;
        *(v110 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v110 + 56) = 0x4464656B636F6C62;
        *(v110 + 64) = 0xEF6E6F6974617275;
        sub_22855C6DC();
        *(v110 + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        strcpy((v110 + 80), "pausedDuration");
        *(v110 + 95) = -18;
        sub_22855C6CC();
        *(v110 + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v110 + 104) = 0xD000000000000010;
        *(v110 + 112) = 0x8000000228573BA0;
        sub_22855C6EC();
        *(v110 + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v110 + 128) = 0x74617275446E7572;
        *(v110 + 136) = 0xEB000000006E6F69;
        sub_22855C6BC();
        *(v110 + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v110 + 152) = 0x73736563637573;
        *(v110 + 160) = 0xE700000000000000;
        *(v110 + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        *(v110 + 176) = 0x72656469766F7270;
        *(v110 + 184) = 0xE800000000000000;
        sub_22855C8BC();
        v115 = sub_22855D17C();

        *(v110 + 192) = v115;
        *(v110 + 200) = 0x726F747563657865;
        *(v110 + 208) = 0xE800000000000000;
        v116 = v141;
        sub_22855C8AC();
        sub_22855C70C();
        (*(v142 + 8))(v116, v143);
        v117 = sub_22855D17C();

        *(v110 + 216) = v117;
        *(v110 + 224) = 0x6E69616D6F64;
        *(v110 + 232) = 0xE600000000000000;
        __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        v118 = v149;
        sub_22855CA2C();
        sub_22855C76C();
        v119 = *(v150 + 8);
        v120 = v118;
        v121 = v151;
        v119(v120, v151);
        v122 = sub_22855D17C();

        *(v110 + 240) = v122;
        *(v110 + 248) = 1701080931;
        *(v110 + 256) = 0xE400000000000000;
        __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        v123 = v144;
        sub_22855CA2C();
        v124 = sub_22855C74C();
        v119(v123, v121);
        *(v110 + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_228400184(v110);
        swift_setDeallocating();
        sub_228400378(0);
        swift_arrayDestroy();
        sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
        v125 = sub_22855D0DC();

        v126 = v153;
        AnalyticsSendEvent();

        sub_2283FED34(v158);
        return;
      }

      goto LABEL_24;
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

uint64_t sub_2283FEA30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283FEA68()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2283FEAB8(uint64_t a1)
{
  if (!qword_280DE9A90)
  {
    sub_2283FEE20(255);
    sub_2283FECA8(&qword_280DE98A0, sub_2283FEE20, MEMORY[0x277CBCD90]);
    v1 = sub_22855CBDC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A90);
    }
  }
}

void sub_2283FEB4C(uint64_t a1)
{
  if (!qword_280DE9A20)
  {
    v1 = MEMORY[0x277D84F78];
    sub_2283FF03C(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEAB8(255);
    sub_2283FEF04(&qword_280DE9890, &qword_280DE9888, v1 + 8);
    sub_2283FECA8(&qword_280DE9A98, sub_2283FEAB8, MEMORY[0x277CBCCD0]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9A20);
    }
  }
}

uint64_t sub_2283FECA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283FECF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228546614(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2283FED9C()
{
  result = qword_280DE9800;
  if (!qword_280DE9800)
  {
    sub_2283FCFBC(255, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9800);
  }

  return result;
}

void sub_2283FEE20(uint64_t a1)
{
  if (!qword_280DE9898)
  {
    sub_2283EF310(255, &qword_280DE92E8, 0x277CE1FC0);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855CCCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9898);
    }
  }
}

uint64_t sub_2283FEEB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2283FEFCC(255, a2, MEMORY[0x277D84F78] + 8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FEF04(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283FF03C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FEF68(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22855B508(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283FEFCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_228418D44();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2283FF03C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_22842BFBC(255, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2283FF0C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228418D44();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_2283FF134@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v95 = a4;
  v97 = a3;
  v7 = MEMORY[0x277D84F78];
  sub_2283FF03C(0, &qword_280DE97E8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE88]);
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v84 - v9;
  v10 = sub_22855C1DC();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFBFC(0);
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v85 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFCB0();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FF03C(0, &qword_280DE8EB0, v7 + 8, MEMORY[0x277CBCF38]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - v22;
  v24 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22855CDCC();
    sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    sub_22855CD9C();
    (*(v16 + 8))(v18, v15);
    sub_228514C6C();
    v55 = sub_22855CE6C();
    result = (*(v21 + 8))(v23, v20);
LABEL_35:
    *a5 = v55;
    return result;
  }

  v26 = v24;
  v27 = v24 >> 62;
  v91 = Strong;
  if (v24 >> 62)
  {
    v83 = sub_22855DB4C();
    v26 = v24;
    v28 = v83;
  }

  else
  {
    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v26;
  v29 = MEMORY[0x277D84F90];
  v96 = a5;
  if (!v28)
  {
LABEL_14:
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v43 = sub_22855CABC();
    __swift_project_value_buffer(v43, qword_280DEEBF0);

    v44 = sub_22855CA8C();
    v45 = sub_22855D6AC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v99 = v47;
      *v46 = 136315394;
      v48 = sub_22855E34C();
      v50 = sub_2283F8938(v48, v49, &v99);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = MEMORY[0x22AAB9430](v29, MEMORY[0x277D837D0]);
      v53 = v52;

      v54 = sub_2283F8938(v51, v53, &v99);
      a5 = v96;

      *(v46 + 14) = v54;
      _os_log_impl(&dword_2283ED000, v44, v45, "[%s] Successfully scheduled all coalesced notifications: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v47, -1, -1);
      MEMORY[0x22AABAD40](v46, -1, -1);
    }

    else
    {
    }

    v56 = v98;
    v57 = *(v97 + 16);
    if (v27)
    {
      if (!sub_22855DB4C())
      {
        goto LABEL_26;
      }
    }

    else if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v58 = [v57 profileIdentifier];
    v59 = [objc_opt_self() primaryProfile];
    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v60 = sub_22855D9AC();

    if (v60)
    {
      v99 = sub_22851430C(v57);
      v61 = MEMORY[0x277D839B0];
      sub_2283FF03C(0, &qword_280DE98A8, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
      sub_2283FEF04(&qword_280DE98B0, &qword_280DE98A8, v61);
      v62 = v85;
      sub_22855CE8C();

      sub_2283FECA8(&qword_27D840680, sub_2283FFBFC, MEMORY[0x277CBCC08]);
      v63 = v87;
      v55 = sub_22855CE6C();

      result = (*(v86 + 8))(v62, v63);
      goto LABEL_35;
    }

LABEL_26:
    v64 = v27;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v43, qword_280DE9DF8);
    swift_bridgeObjectRetain_n();
    v65 = v57;
    v66 = sub_22855CA8C();
    v67 = sub_22855D6AC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v99 = v69;
      *v68 = 136315651;
      v70 = sub_22855E34C();
      v72 = sub_2283F8938(v70, v71, &v99);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2081;
      v73 = [v65 profileIdentifier];
      v74 = [v73 identifier];

      v75 = v88;
      sub_22855C1BC();

      v76 = sub_22855C17C();
      v78 = v77;
      (*(v89 + 8))(v75, v90);
      v79 = sub_2283F8938(v76, v78, &v99);

      *(v68 + 14) = v79;
      *(v68 + 22) = 2049;
      if (v64)
      {
        v80 = sub_22855DB4C();
      }

      else
      {
        v80 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v68 + 24) = v80;

      _os_log_impl(&dword_2283ED000, v66, v67, "[%s] No content to push for health store %{private}s where number of requests is %{private}ld", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v69, -1, -1);
      MEMORY[0x22AABAD40](v68, -1, -1);

      a5 = v96;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    v81 = v92;
    sub_22855CDDC();
    sub_2283FFD04();
    v82 = v94;
    v55 = sub_22855CE6C();

    result = (*(v93 + 8))(v81, v82);
    goto LABEL_35;
  }

  v99 = MEMORY[0x277D84F90];
  result = sub_2284272C0(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v84 = v24 >> 62;
    v31 = 0;
    v29 = v99;
    v32 = v24;
    v33 = v24 & 0xC000000000000001;
    do
    {
      if (v33)
      {
        v34 = MEMORY[0x22AAB9D20](v31, v32);
      }

      else
      {
        v34 = *(v32 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = [v34 identifier];
      v37 = sub_22855D1AC();
      v39 = v38;

      v99 = v29;
      v41 = *(v29 + 16);
      v40 = *(v29 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2284272C0((v40 > 1), v41 + 1, 1);
        v29 = v99;
      }

      ++v31;
      *(v29 + 16) = v41 + 1;
      v42 = v29 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v32 = v98;
    }

    while (v28 != v31);
    a5 = v96;
    v27 = v84;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_2283FFBFC(uint64_t a1)
{
  if (!qword_280DE9BB0)
  {
    v1 = MEMORY[0x277D839B0];
    sub_2283FF03C(255, &qword_280DE98A8, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    sub_2283FEF04(&qword_280DE98B0, &qword_280DE98A8, v1);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9BB0);
    }
  }
}

void sub_2283FFCB0()
{
  if (!qword_280DE9820)
  {
    v0 = sub_22855CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9820);
    }
  }
}

unint64_t sub_2283FFD04()
{
  result = qword_280DE97F0;
  if (!qword_280DE97F0)
  {
    sub_2283FF03C(255, &qword_280DE97E8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97F0);
  }

  return result;
}

void sub_2283FFD8C(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DE9DF8);
    v4 = v2;
    v5 = sub_22855CA8C();
    v6 = sub_22855D68C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315650;
      v9 = sub_22855E34C();
      v11 = sub_2283F8938(v9, v10, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_2283F8938(0xD000000000000028, 0x8000000228573C00, &v24);
      *(v7 + 22) = 2080;
      sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
      v12 = sub_22855D1CC();
      v14 = sub_2283F8938(v12, v13, &v24);

      *(v7 + 24) = v14;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%s] %s finished with error: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);

      return;
    }

    v22 = v2;
  }

  else
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    __swift_project_value_buffer(v15, qword_280DE9DF8);
    oslog = sub_22855CA8C();
    v16 = sub_22855D6AC();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315394;
      v19 = sub_22855E34C();
      v21 = sub_2283F8938(v19, v20, &v24);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2283F8938(0xD000000000000028, 0x8000000228573C00, &v24);
      _os_log_impl(&dword_2283ED000, oslog, v16, "[%s] %s completed successfully", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);

      return;
    }

    v22 = oslog;
  }
}

void sub_22840012C(uint64_t a1)
{
  if (!qword_280DE8F10)
  {
    sub_228400378(255);
    v1 = sub_22855E12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8F10);
    }
  }
}

unint64_t sub_228400184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_280DE9098, &qword_280DEEB30, 0x277D82BB8, sub_2283EF310);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2283F6D18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2284002A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DF7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22840030C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228400378(uint64_t a1)
{
  if (!qword_280DE9660)
  {
    sub_2283EF310(255, &qword_280DEEB30, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9660);
    }
  }
}

_OWORD *sub_228400400(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_228400410(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 24);
  *(*a1 + 24) = v2;
  v4 = v2;
}

void sub_22840044C(void *a1)
{
  v3 = sub_22855CFBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855CFEC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*v1 + 112))(v9) & 1) == 0)
  {
    return;
  }

  v12 = objc_opt_self();
  v13 = [v12 currentQueue];
  v14 = [v12 mainQueue];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      sub_2283EF310(0, &qword_280DE9418, 0x277CCABD8);
      v16 = sub_22855D9AC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v15 = v13;
LABEL_11:

LABEL_12:
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v25 = sub_22855D82C();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_2284ED8EC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_72_1;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    sub_22855CFDC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2283F2298(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v21 = v4;
    v22 = MEMORY[0x277D85198];
    sub_2283F1380(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    v24 = v7;
    sub_2283F4734(&qword_280DED260, &qword_280DED270, v22);
    sub_22855DA9C();
    v23 = v25;
    MEMORY[0x22AAB98B0](0, v11, v6, v19);
    _Block_release(v19);

    (*(v21 + 8))(v6, v3);
    (*(v8 + 8))(v11, v24);
    return;
  }

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_7:
  v25 = [a1 viewContext];
  [v25 setAutomaticallyMergesChangesFromParent_];
  v17 = v25;
}

id sub_228400874()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_2284EAFA0(v0);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t Atomic.value.getter()
{
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_2284009B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

void sub_228400A70()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_280DED1B0 = v0;
}

uint64_t Atomic.mutate(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3CC();
}

id sub_228400C48()
{
  v0 = sub_228400874();
  v1 = [v0 persistentStoreCoordinator];

  return v1;
}

uint64_t sub_228400D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_22855D17C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_228400E48();
  v8 = *(a1 + 16);
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a2, v9 ^ 1u, 1, v8);
}

void sub_228400E48()
{
  if (!qword_280DECFD0)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DECFD0);
    }
  }
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_22855DA2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  if (*(v2 + *(a1 + 36)) == 1 && ([objc_opt_self() isAppleInternalInstall] & 1) == 0)
  {
    v13 = *(*(v5 - 8) + 16);
    v14 = v2 + *(a1 + 32);

    return v13(a2, v14, v5);
  }

  else
  {
    sub_228400D54(a1, v9);
    v10 = *(v5 - 8);
    v11 = *(v10 + 48);
    if (v11(v9, 1, v5) == 1)
    {
      (*(v10 + 16))(a2, v2 + *(a1 + 32), v5);
      result = v11(v9, 1, v5);
      if (result != 1)
      {
        return (*(v7 + 8))(v9, v6);
      }
    }

    else
    {
      return (*(v10 + 32))(a2, v9, v5);
    }
  }

  return result;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x22AABAD40](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_228401318()
{
  if (MEMORY[0x277D85020])
  {
    sub_228401A70(0, &qword_27D83FF38, sub_2284D32E0, MEMORY[0x277D85458]);
  }
}

uint64_t PinnedContentManagerProvider.init(healthStore:)(uint64_t a1)
{
  v3 = sub_2284013C0(MEMORY[0x277D84F90]);
  *(v1 + 24) = 0;
  *(v1 + 32) = v3;
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_2284013C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2284033AC(0);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D0FCF8];
    while (1)
    {
      sub_22847F5E0(v4, v12, &qword_27D83F920, qword_280DED6C0, &protocol descriptor for PinnedContentManaging, v5);
      v6 = v12[0];
      result = sub_22840248C(v12[0]);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v6;
      result = sub_2283FAB3C(&v13, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22840153C(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 24));
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_22840248C(a1 & 1), (v8 & 1) != 0))
  {
    sub_2283F9B10(*(v6 + 56) + 40 * v7, &v22);
    sub_2283FAB3C(&v22, a2);
  }

  else
  {
    v9 = *(v3 + 16);
    type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
    v10 = swift_allocObject();
    sub_2283F2234();
    swift_allocObject();
    v11 = v9;
    *(v10 + 24) = sub_22855CD0C();
    sub_22855BCDC();
    v12 = objc_allocWithZone(MEMORY[0x277CCD570]);
    v13 = v11;
    v14 = sub_22855D17C();

    v15 = [v12 initWithCategory:1 domainName:v14 healthStore:v13];

    *(v10 + 16) = v15;
    [v15 startObservation_];

    v16 = objc_allocWithZone(sub_22855BCCC());
    v17 = v13;
    v18 = sub_22855BCBC();
    v19 = type metadata accessor for PinnedContentManager();
    v20 = swift_allocObject();
    v21 = sub_228401798(v18, v10, v20);
    v23 = v19;
    v24 = &protocol witness table for PinnedContentManager;
    *&v22 = v21;

    sub_228401F98(&v22, a1 & 1);
    a2[3] = v19;
    a2[4] = &protocol witness table for PinnedContentManager;
    *a2 = v21;
  }

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_228401798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = sub_22855BCCC();
  v12[4] = MEMORY[0x277D0FCF0];
  v12[0] = a1;
  v11[3] = type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v11[4] = &off_283B89880;
  v11[0] = a2;
  sub_228401AD4(0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(a3 + 16) = v6;
  *(a3 + 112) = 0;
  *(a3 + 64) = sub_22855BD6C() & 1;
  sub_2283F9B10(v12, a3 + 24);
  sub_2283F9B10(v11, a3 + 72);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2284D3388;
  *(v8 + 24) = v7;
  sub_2283F2234();
  sub_228401EFC();

  v9 = sub_22855CEAC();

  *(a3 + 112) = v9;

  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return a3;
}

uint64_t sub_228401948()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228401980()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2284019B8(uint64_t a1)
{
  if (!qword_280DED2E0)
  {
    sub_228401A70(255, &qword_280DEE3A8, MEMORY[0x277D0FCE8], MEMORY[0x277D83D88]);
    v1 = sub_22855CD4C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED2E0);
    }
  }
}

void sub_228401A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228401AD4(uint64_t a1)
{
  if (!qword_280DED068)
  {
    sub_228401A70(255, &qword_280DED2D8, sub_2284019B8, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED068);
    }
  }
}

uint64_t sub_228401B78(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_22855CFBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    *(v15 + 32) = v14;
    v20 = v14;
    aBlock[4] = sub_2284020DC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_28;
    v16 = _Block_copy(aBlock);

    sub_22855CFDC();
    v22 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v17 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    v19 = v9;
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v17);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v12, v8, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_228401EB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_228401EFC()
{
  result = qword_280DED2F0;
  if (!qword_280DED2F0)
  {
    sub_2283F2234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2F0);
  }

  return result;
}

uint64_t sub_228401F54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_228401F98(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2283FAB3C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_22840235C(v14, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2284D3398(a1, &unk_27D83FF40, qword_280DED6C0, &protocol descriptor for PinnedContentManaging, sub_22846F4D0);
    v7 = sub_22840248C(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_228448D80();
        v11 = v13;
      }

      sub_2283FAB3C((*(v11 + 56) + 40 * v9), v14);
      sub_2284D2F0C(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2284D3398(v14, &unk_27D83FF40, qword_280DED6C0, &protocol descriptor for PinnedContentManaging, sub_22846F4D0);
  }

  return result;
}

void sub_2284020EC(double a1, uint64_t a2, uint64_t *a3)
{
  sub_22855D02C();
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DEEC98);

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_8;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 136446466;
  v14 = v10;
  v11 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v11);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  MEMORY[0x22AAB92A0](*(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
  MEMORY[0x22AAB92A0](93, 0xE100000000000000);
  v12 = sub_2283F8938(91, 0xE100000000000000, &v14);

  *(v9 + 4) = v12;
  *(v9 + 12) = 2048;
  v13 = (Current - a1) * 1000.0;
  if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 < 9.22337204e18)
  {
    *(v9 + 14) = v13;
    _os_log_impl(&dword_2283ED000, v7, v8, "%{public}s Urgent work completed after %ldms", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
LABEL_8:

    sub_228402514();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_22840235C(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22840248C(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_228448D80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_228402CDC(v14, a3 & 1);
    v9 = sub_22840248C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2283FAB3C(a1, v20);
  }

  else
  {

    return sub_228403540(v9, a2 & 1, a1, v19);
  }
}

unint64_t sub_22840248C(char a1)
{
  sub_22855E22C();
  sub_22855BCDC();
  sub_22855D20C();

  v2 = sub_22855E27C();

  return sub_22840266C(a1 & 1, v2);
}

void sub_228402514()
{
  v1 = sub_22855D04C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22855D07C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    os_unfair_lock_lock(v7 + 16);
    sub_228402650(&v7[4]);
    os_unfair_lock_unlock(v7 + 16);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22840266C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22855BCDC();
      v8 = v7;
      if (v6 == sub_22855BCDC() && v8 == v9)
      {
        break;
      }

      v11 = sub_22855E15C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_228402770(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 1) & 1) == 0 && (*(a1 + 2) & 1) == 0)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEC98);

    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136446210;
      v9 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v9);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v10 = sub_2283F8938(91, 0xE100000000000000, &v32);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_2283ED000, v5, v6, "%{public}s Starting fire once", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    *(a1 + 2) = 1;
    v11 = a2[5];
    v12 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(v12 + 16);

    v14(sub_228403428, v13, v11, v12);

    v15 = *(a1 + 16);

    v16 = sub_22855CA8C();
    v17 = sub_22855D6AC();

    v18 = os_log_type_enabled(v16, v17);
    if (v15)
    {
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32 = v20;
        *v19 = 136446210;
        v21 = sub_22855E34C();
        MEMORY[0x22AAB92A0](v21);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v22 = sub_2283F8938(91, 0xE100000000000000, &v32);

        *(v19 + 4) = v22;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s Starting legacy generation", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AABAD40](v20, -1, -1);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      v23 = a2[5];
      v24 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v23);
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = *(v24 + 24);

      v27 = v26(sub_2284D7108, v25, v23, v24);

      *(a1 + 40) = v27;
    }

    else
    {
      if (v18)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v28 = 136446210;
        v30 = sub_22855E34C();
        MEMORY[0x22AAB92A0](v30);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v31 = sub_2283F8938(91, 0xE100000000000000, &v32);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s No requests for legacy generation", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x22AABAD40](v29, -1, -1);
        MEMORY[0x22AABAD40](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_228402CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2284033AC(0);
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_2283FAB3C(v21, v30);
      }

      else
      {
        sub_2283F9B10(v21, v30);
      }

      sub_22855E22C();
      sub_22855BCDC();
      sub_22855D20C();

      result = sub_22855E27C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_2283FAB3C(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228402F8C(uint64_t a1)
{
  v1 = sub_22855CFBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855CFEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v22 = v6;
    v23 = v5;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v24 = v2;
    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);

    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      v16 = sub_228403430();
      v18 = sub_2283F8938(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2283ED000, v12, v13, "%{public}s Fire once completed", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    aBlock[4] = sub_228403B18;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_33;
    v19 = _Block_copy(aBlock);

    sub_22855CFDC();
    v25 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v20);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v8, v4, v19);
    _Block_release(v19);
    (*(v24 + 8))(v4, v1);
    (*(v22 + 8))(v8, v23);
  }

  return result;
}

void sub_2284033AC(uint64_t a1)
{
  if (!qword_280DED058)
  {
    sub_2283F9B94(255, qword_280DED6C0, &protocol descriptor for PinnedContentManaging);
    sub_2284034EC();
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED058);
    }
  }
}

uint64_t sub_228403430()
{
  v1 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
  MEMORY[0x22AAB92A0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_2284034EC()
{
  result = qword_280DEE3A0;
  if (!qword_280DEE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE3A0);
  }

  return result;
}

uint64_t sub_228403540(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_2283FAB3C(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t LogCategory.logHandle.getter()
{
  sub_22840367C();
  LogCategory.rawValue.getter();
  return sub_22855D9FC();
}

unint64_t sub_22840367C()
{
  result = qword_280DEEB28;
  if (!qword_280DEEB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEEB28);
  }

  return result;
}

void sub_2284036C8()
{
  v1 = sub_22855D04C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22855D07C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    os_unfair_lock_lock(v7 + 16);
    sub_22840536C(&v7[4]);
    os_unfair_lock_unlock(v7 + 16);
  }

  else
  {
    __break(1u);
  }
}

unint64_t LogCategory.rawValue.getter()
{
  result = 0x636974796C616E61;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x72756F5361746164;
      break;
    case 4:
      result = 0x7375636F66;
      break;
    case 5:
      result = 0x6C6172656E6567;
      break;
    case 6:
      result = 0x69746172656E6567;
      break;
    case 7:
      result = 0x727473656863726FLL;
      break;
    case 8:
      result = 0x6C616E6F73726570;
      break;
    case 9:
      result = 0x6E6967756C70;
      break;
    case 0xA:
      result = 0x686372616573;
      break;
    case 0xB:
      result = 2003134838;
      break;
    case 0xC:
      result = 6516856;
      break;
    case 0xD:
      result = 0x79735F64756F6C63;
      break;
    case 0xE:
      result = 0x725F68746C616568;
      break;
    case 0xF:
      result = 0x676E6972616568;
      break;
    case 0x10:
      result = 0x7472616568;
      break;
    case 0x11:
      result = 0x6E6F6D616E6E6963;
      break;
    case 0x12:
      result = 0x697461636964656DLL;
      break;
    case 0x13:
      result = 0x6172656D6163;
      break;
    case 0x14:
      result = 0xD000000000000010;
      break;
    case 0x15:
      result = 0x685F6C61746E656DLL;
      break;
    case 0x16:
      result = 0x656C69666F7270;
      break;
    case 0x17:
      result = 0x7461726970736572;
      break;
    case 0x18:
      result = 0x7065656C73;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

id _s14HealthPlatform0A15AppPluginSourceC12knownBundlesSayAC11KnownBundleVGvgZ_0()
{
  v0 = sub_22855BF5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_22855C06C();
  v146 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v7 = result;
    LODWORD(v133) = [result isiPad];

    sub_228405990(0, &qword_280DED030, MEMORY[0x277D84560]);
    v8 = (type metadata accessor for HealthAppPluginSource.KnownBundle(0) - 8);
    v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v135 = *(*v8 + 72);
    v10 = v135;
    v11 = swift_allocObject();
    v128 = v11;
    *(v11 + 16) = xmmword_2285623A0;
    v12 = (v11 + v9);
    v132 = 0x800000022856F2A0;
    v130 = 0x800000022856D040;
    v136 = type metadata accessor for StorageLocations();
    static StorageLocations.rootDirectory.getter();
    v147 = 0x800000022856F190;
    v148 = 0xD000000000000026;
    v149 = 0x800000022856F190;
    v141 = *MEMORY[0x277CC91C0];
    v13 = *(v1 + 104);
    v142 = v1 + 104;
    v143 = v13;
    v13(v3);
    v144 = sub_2283F79A4();
    sub_22855C05C();
    v145 = *(v1 + 8);
    v145(v3, v0);
    v138 = *(v146 + 8);
    v146 += 8;
    v14 = v140;
    v138(v5, v140);
    v131 = 0xD00000000000001FLL;
    v139 = v12;
    v15 = v132;
    *v12 = 0xD00000000000001FLL;
    v12[1] = v15;
    v129 = 0xD000000000000023;
    v16 = v130;
    v12[2] = 0xD000000000000023;
    v12[3] = v16;
    *(v12 + v8[9]) = 0;
    *(v12 + v8[10]) = 0;
    *(v12 + v8[11]) = 0;
    v17 = (v12 + v10);
    v137 = v1 + 8;
    v132 = 0x800000022856F2C0;
    v130 = 0x800000022856F2E0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v134 = v0;
    v143(v3, v141, v0);
    sub_22855C05C();
    v145(v3, v0);
    v18 = v138;
    v138(v5, v14);
    v127 = 0xD00000000000001DLL;
    v19 = v132;
    *v17 = 0xD00000000000001DLL;
    v17[1] = v19;
    v132 = 0xD000000000000021;
    v20 = v130;
    v17[2] = 0xD000000000000021;
    v17[3] = v20;
    *(v17 + v8[9]) = v133;
    *(v17 + v8[10]) = 0;
    *(v17 + v8[11]) = 0;
    v21 = 2 * v135;
    v22 = (v139 + 2 * v135);
    v126 = 0x800000022856F310;
    v125 = 0x800000022856F330;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v23 = v134;
    v143(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v23);
    v18(v5, v140);
    v130 = 0xD00000000000001BLL;
    v24 = v126;
    *v22 = 0xD00000000000001BLL;
    v22[1] = v24;
    v25 = v125;
    v22[2] = v131;
    v22[3] = v25;
    *(v22 + v8[9]) = 0;
    *(v22 + v8[10]) = 0;
    *(v22 + v8[11]) = 0;
    v26 = v135;
    v27 = (v139 + v21 + v135);
    v131 = 0x800000022856F350;
    v126 = 0x800000022856F370;
    static StorageLocations.rootDirectory.getter();
    v28 = v147;
    v148 = 0xD000000000000026;
    v149 = v147;
    v29 = v141;
    v30 = v134;
    v143(v3, v141, v134);
    sub_22855C05C();
    v31 = v30;
    v32 = v145;
    v145(v3, v31);
    v33 = v140;
    v138(v5, v140);
    v34 = v131;
    v35 = v132;
    *v27 = v127;
    v27[1] = v34;
    v36 = v126;
    v27[2] = v35;
    v27[3] = v36;
    *(v27 + v8[9]) = 0;
    *(v27 + v8[10]) = 0;
    *(v27 + v8[11]) = 0;
    v127 = 4 * v26;
    v37 = (v139 + 4 * v26);
    v131 = 0x800000022856F3A0;
    v126 = 0x800000022856F3C0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v28;
    v38 = v134;
    v39 = v143;
    v143(v3, v29, v134);
    sub_22855C05C();
    v32(v3, v38);
    v138(v5, v33);
    v40 = v131;
    *v37 = 0xD000000000000012;
    v37[1] = v40;
    v131 = 0xD000000000000016;
    v41 = v126;
    v37[2] = 0xD000000000000016;
    v37[3] = v41;
    *(v37 + v8[9]) = 0;
    *(v37 + v8[10]) = 1;
    *(v37 + v8[11]) = 0;
    v42 = (v139 + v127 + v135);
    v127 = 0x800000022856F3E0;
    v125 = 0x800000022856F400;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v43 = v141;
    v44 = v134;
    v39(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v44);
    v45 = v140;
    v138(v5, v140);
    v126 = 0xD00000000000001CLL;
    v46 = v127;
    *v42 = 0xD00000000000001CLL;
    v42[1] = v46;
    v123 = 0xD000000000000020;
    v47 = v125;
    v42[2] = 0xD000000000000020;
    v42[3] = v47;
    *(v42 + v8[9]) = 0;
    *(v42 + v8[10]) = 0;
    *(v42 + v8[11]) = 0;
    v48 = (v139 + 6 * v135);
    v127 = 0x800000022856F430;
    v124 = 0x800000022856F450;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v143(v3, v43, v44);
    sub_22855C05C();
    v49 = v145;
    v145(v3, v44);
    v138(v5, v45);
    v125 = 0xD000000000000017;
    v50 = v127;
    *v48 = 0xD000000000000017;
    v48[1] = v50;
    v51 = v124;
    v48[2] = v130;
    v48[3] = v51;
    *(v48 + v8[9]) = 0;
    *(v48 + v8[10]) = 0;
    *(v48 + v8[11]) = 0;
    v130 = 8 * v135;
    v52 = v139;
    v53 = (v139 + 7 * v135);
    v127 = 0x800000022856F470;
    v122 = 0x800000022856F4A0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v54 = v141;
    v143(v3, v141, v44);
    sub_22855C05C();
    v49(v3, v44);
    v55 = v138;
    v138(v5, v140);
    v124 = 0xD000000000000027;
    v56 = v127;
    *v53 = 0xD000000000000027;
    v53[1] = v56;
    v57 = v122;
    v53[2] = 0xD00000000000002BLL;
    v53[3] = v57;
    LOBYTE(v29) = v133;
    *(v53 + v8[9]) = v133;
    *(v53 + v8[10]) = 1;
    *(v53 + v8[11]) = 0;
    v58 = (v52 + v130);
    v122 = 0x800000022856F4D0;
    v121 = 0x800000022856F500;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v59 = v54;
    v60 = v134;
    v143(v3, v59, v134);
    sub_22855C05C();
    v145(v3, v60);
    v55(v5, v140);
    v127 = 0xD000000000000025;
    v61 = v122;
    *v58 = 0xD000000000000025;
    v58[1] = v61;
    v62 = v121;
    v58[2] = v123;
    v58[3] = v62;
    *(v58 + v8[9]) = v29;
    *(v58 + v8[10]) = 1;
    *(v58 + v8[11]) = 0;
    v63 = (v139 + v130 + v135);
    v123 = 0x800000022856F530;
    v122 = 0x800000022856F560;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v64 = v134;
    v65 = v143;
    v143(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v64);
    v138(v5, v140);
    v130 = 0xD000000000000022;
    v66 = v123;
    *v63 = 0xD000000000000022;
    v63[1] = v66;
    v63[2] = 0xD000000000000026;
    v63[3] = v122;
    *(v63 + v8[9]) = v133;
    *(v63 + v8[10]) = 1;
    *(v63 + v8[11]) = 0;
    v67 = v135;
    v68 = (v139 + 10 * v135);
    v123 = 0x800000022856F590;
    v122 = 0x800000022856F5B0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v69 = v134;
    v65(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v69);
    v70 = v140;
    v71 = v138;
    v138(v5, v140);
    v72 = v123;
    *v68 = 0xD00000000000001ELL;
    v68[1] = v72;
    v73 = v122;
    v68[2] = v130;
    v68[3] = v73;
    *(v68 + v8[9]) = 0;
    *(v68 + v8[10]) = 1;
    *(v68 + v8[11]) = 0;
    v74 = v139;
    v75 = (v139 + 11 * v67);
    v123 = 0x800000022856F5E0;
    v122 = 0x800000022856F600;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v76 = v134;
    v143(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v76);
    v71(v5, v70);
    v77 = v123;
    *v75 = 0xD000000000000015;
    v75[1] = v77;
    v78 = v122;
    v75[2] = 0xD000000000000019;
    v75[3] = v78;
    *(v75 + v8[9]) = v133;
    *(v75 + v8[10]) = 1;
    *(v75 + v8[11]) = 0;
    v79 = v135;
    v80 = (v74 + 12 * v135);
    v123 = 0x800000022856F620;
    v122 = 0x800000022856F640;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v81 = v141;
    v143(v3, v141, v76);
    sub_22855C05C();
    v145(v3, v76);
    v82 = v140;
    v138(v5, v140);
    v83 = v123;
    *v80 = 0xD000000000000018;
    v80[1] = v83;
    v84 = v122;
    v80[2] = v129;
    v80[3] = v84;
    *(v80 + v8[9]) = 0;
    *(v80 + v8[10]) = 0;
    *(v80 + v8[11]) = 0;
    v85 = (v74 + 13 * v79);
    v129 = 0x800000022856F670;
    v123 = 0x800000022856F6A0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v86 = v81;
    v87 = v134;
    v88 = v143;
    v143(v3, v86, v134);
    sub_22855C05C();
    v145(v3, v87);
    v89 = v82;
    v90 = v138;
    v138(v5, v89);
    v91 = v129;
    *v85 = v124;
    v85[1] = v91;
    v92 = v123;
    v85[2] = v126;
    v85[3] = v92;
    *(v85 + v8[9]) = 0;
    *(v85 + v8[10]) = 1;
    *(v85 + v8[11]) = 0;
    v93 = (v74 + 14 * v135);
    v129 = 0x800000022856F6C0;
    v126 = 0x800000022856F6E0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v94 = v134;
    v88(v3, v141, v134);
    sub_22855C05C();
    v145(v3, v94);
    v95 = v140;
    v90(v5, v140);
    v96 = v129;
    *v93 = 0xD000000000000013;
    v93[1] = v96;
    v97 = v126;
    v93[2] = v125;
    v93[3] = v97;
    *(v93 + v8[9]) = 0;
    *(v93 + v8[10]) = 0;
    *(v93 + v8[11]) = 0;
    v129 = 16 * v135;
    v98 = v139;
    v99 = (v139 + 15 * v135);
    v126 = 0x800000022856F700;
    v125 = 0x800000022856F730;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v143(v3, v141, v94);
    sub_22855C05C();
    v145(v3, v94);
    v100 = v138;
    v138(v5, v95);
    v101 = v126;
    *v99 = v132;
    v99[1] = v101;
    v102 = v125;
    v99[2] = v131;
    v99[3] = v102;
    *(v99 + v8[9]) = v133;
    *(v99 + v8[10]) = 1;
    *(v99 + v8[11]) = 0;
    v103 = (v98 + v129);
    v132 = 0x800000022856F750;
    v126 = 0x800000022856F770;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v143(v3, v141, v94);
    sub_22855C05C();
    v104 = v94;
    v105 = v145;
    v145(v3, v104);
    v100(v5, v140);
    v106 = v132;
    *v103 = v131;
    v103[1] = v106;
    v132 = 0xD00000000000001ALL;
    v107 = v126;
    v103[2] = 0xD00000000000001ALL;
    v103[3] = v107;
    *(v103 + v8[9]) = 1;
    *(v103 + v8[10]) = 1;
    *(v103 + v8[11]) = 0;
    v108 = v135;
    v109 = (v139 + v129 + v135);
    v131 = 0x800000022856F790;
    v129 = 0x800000022856F7B0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v110 = v141;
    v111 = v134;
    v143(v3, v141, v134);
    sub_22855C05C();
    v105(v3, v111);
    v112 = v140;
    v113 = v138;
    v138(v5, v140);
    v114 = v131;
    *v109 = v132;
    v109[1] = v114;
    v115 = v129;
    v109[2] = v127;
    v109[3] = v115;
    *(v109 + v8[9]) = v133;
    *(v109 + v8[10]) = 1;
    *(v109 + v8[11]) = 1;
    v116 = (v139 + 18 * v108);
    v132 = 0x800000022856F810;
    v133 = 0x800000022856F7E0;
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v117 = v110;
    v118 = v134;
    v143(v3, v117, v134);
    sub_22855C05C();
    v145(v3, v118);
    v113(v5, v112);
    v119 = v133;
    *v116 = v130;
    v116[1] = v119;
    v116[2] = 0xD000000000000026;
    v116[3] = v132;
    *(v116 + v8[9]) = 0;
    *(v116 + v8[10]) = 0;
    *(v116 + v8[11]) = 0;
    v120 = (v139 + 19 * v135);
    static StorageLocations.rootDirectory.getter();
    v148 = 0xD000000000000026;
    v149 = v147;
    v143(v3, v141, v118);
    sub_22855C05C();
    v145(v3, v118);
    v138(v5, v140);
    *v120 = 0xD000000000000029;
    v120[1] = 0x800000022856F840;
    v120[2] = 0xD00000000000002DLL;
    v120[3] = 0x800000022856F870;
    *(v120 + v8[9]) = 0;
    *(v120 + v8[10]) = 1;
    *(v120 + v8[11]) = 0;
    return v128;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228405388(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22855CFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  result = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 1) & 1) == 0 && (*(a1 + 3) & 1) == 0)
  {
    v31 = v10;
    v32 = v5;
    v33 = result;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEC98);

    v14 = sub_22855CA8C();
    v15 = sub_22855D6AC();

    if (os_log_type_enabled(v14, v15))
    {
      v28 = swift_slowAlloc();
      v29 = v14;
      v16 = v28;
      v30 = swift_slowAlloc();
      v40 = v30;
      *v16 = 136446210;
      aBlock = 91;
      v35 = 0xE100000000000000;
      v17 = sub_22855E34C();
      v18 = v15;
      MEMORY[0x22AAB92A0](v17);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v19 = sub_2283F8938(aBlock, v35, &v40);

      v20 = v28;
      *(v28 + 4) = v19;
      v21 = v18;
      v14 = v29;
      _os_log_impl(&dword_2283ED000, v29, v21, "%{public}s Calling all fire once barriers", v20, 0xCu);
      v22 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AABAD40](v22, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    *(a1 + 3) = 1;
    v23 = MEMORY[0x277D84F90];
    v24 = *(a1 + 8);
    *(a1 + 8) = MEMORY[0x277D84F90];
    v30 = *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v38 = sub_2284059F0;
    v39 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_228401F54;
    v37 = &block_descriptor_39;
    v26 = _Block_copy(&aBlock);
    sub_22855CFDC();
    v40 = v23;
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v27 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v27);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v12, v7, v26);
    _Block_release(v26);
    (*(v32 + 8))(v7, v4);
    (*(v31 + 8))(v12, v33);
  }

  return result;
}

uint64_t sub_228405854()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840588C()
{
  v0 = _s14HealthPlatform0A15AppPluginSourceC12knownBundlesSayAC11KnownBundleVGvgZ_0();
  v1 = _s14HealthPlatform0A15AppPluginSourceC25disabledBundleIdentifiersShySSGyFZ_0();
  v2 = _s14HealthPlatform0A15AppPluginSourceC24allowedBundleIdentifiersShySSGSgyFZ_0();
  type metadata accessor for HealthAppPluginSource();
  v3 = swift_allocObject();
  result = HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(0, 0, v0, v1, v2);
  qword_280DEDF10 = v3;
  return result;
}

uint64_t sub_228405908(uint64_t a1)
{
  result = sub_22855C06C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_228405990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HealthAppPluginSource.KnownBundle(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228405A10(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = a2;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t static StorageLocations.rootDirectory.getter()
{
  sub_2283F6B58(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22855BF5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 environment];

  v9 = sub_22855D0EC();
  if (*(v9 + 16) && (sub_2283F6D18(0x4F54414C554D4953, 0xEE00544F4F525F52), (v10 & 1) != 0))
  {

    (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
    v11 = sub_22855C06C();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  }

  else
  {

    (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
    v12 = sub_22855C06C();
    (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  }

  return sub_22855C04C();
}

id _s14HealthPlatform0A15AppPluginSourceC25disabledBundleIdentifiersShySSGyFZ_0()
{
  v15 = MEMORY[0x277D84F90];
  v0 = objc_opt_self();
  result = [v0 sharedBehavior];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result isiPad];

  if (v3)
  {
    sub_228405F48(byte_283B7ECF0);
  }

  result = [v0 sharedBehavior];
  if (!result)
  {
    goto LABEL_15;
  }

  v4 = result;
  v5 = [result isAppleInternalInstall];

  if (v5)
  {
    sub_22855D1AC();
    v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v7 = sub_22855D17C();

    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      v9 = sub_22855D17C();
      v10 = [v8 arrayForKey_];

      v11 = MEMORY[0x277D84F90];
      if (v10)
      {
        v12 = sub_22855D3AC();

        v13 = sub_228464940(v12);

        if (v13)
        {
          v11 = v13;
        }
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_228405F48(v11);
  }

  v14 = sub_228406280(v15);

  return v14;
}

char *sub_228405F48(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2283F7678(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didStartForegroundSession(planCount:duration:)(Swift::Int planCount, Swift::Double duration)
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DE9DF8);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = planCount;
    *(v7 + 12) = 2048;
    *(v7 + 14) = duration;
    _os_log_impl(&dword_2283ED000, v5, v6, "Started foreground session with initial %ld plans over %fs.", v7, 0x16u);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v8 = sub_22855D17C();
  sub_22840012C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0x736E616C70;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228400378(0);
  swift_arrayDestroy();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v10 = sub_22855D0DC();

  AnalyticsSendEvent();
}

uint64_t sub_228406280(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAB95B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_228406318(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_228406318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22855E22C();
  sub_22855D20C();
  v8 = sub_22855E27C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22855E15C() & 1) != 0)
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

    sub_228406B98(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_228406468(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855CFBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  result = MEMORY[0x28223BE20](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + 2;
  v14 = a1[2];
  if (v14)
  {
    v56 = v4;
    v57 = v13;
    v58 = v11;
    v60 = result;
    v61 = v6;
    v62 = v5;
    v16 = a1[3];
    v17 = a1[4];

    if (v17)
    {
      v54 = sub_2284D5F74();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v54 = 7104878;
    }

    v63 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v20 = sub_22855CABC();
    v21 = __swift_project_value_buffer(v20, qword_280DEEC98);

    v55 = v21;
    v22 = sub_22855CA8C();
    v23 = sub_22855D6AC();

    v24 = os_log_type_enabled(v22, v23);
    v59 = v8;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v53 = v14;
      v26 = v25;
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v64 = v27;
      aBlock = 91;
      v66 = 0xE100000000000000;
      v28 = sub_22855E34C();
      v52 = v16;
      MEMORY[0x22AAB92A0](v28);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v29 = sub_2283F8938(aBlock, v66, &v64);

      *(v26 + 4) = v29;
      v16 = v52;
      *(v26 + 12) = 2080;
      v30 = sub_2283F8938(v54, v19, &v64);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_2283ED000, v22, v23, "%{public}s Cancelling legacy generation for progress %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v27, -1, -1);
      v31 = v26;
      v14 = v53;
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    else
    {
    }

    sub_228416CF8(v14, v16);
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
    v32 = v63;
    v33 = v63[5];
    if (v33)
    {

      v34 = v33;
      v35 = sub_22855CA8C();
      v36 = sub_22855D6AC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v14;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 136446210;
        v64 = v39;
        aBlock = 91;
        v66 = 0xE100000000000000;
        v40 = sub_22855E34C();
        v41 = v16;
        MEMORY[0x22AAB92A0](v40);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v42 = sub_2283F8938(aBlock, v66, &v64);

        *(v38 + 4) = v42;
        v16 = v41;
        _os_log_impl(&dword_2283ED000, v35, v36, "%{public}s Cancelling original legacy generation progress", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v43 = v39;
        v32 = v63;
        MEMORY[0x22AABAD40](v43, -1, -1);
        v44 = v38;
        v14 = v37;
        MEMORY[0x22AABAD40](v44, -1, -1);
      }

      v32[5] = 0;
      [v34 cancel];
    }

    v45 = swift_allocObject();
    *(v45 + 16) = v14;
    *(v45 + 24) = v16;
    v69 = sub_2284D70D4;
    v70 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_228401F54;
    v68 = &block_descriptor_18;
    v46 = _Block_copy(&aBlock);

    v47 = v57;
    sub_22855CFDC();
    v64 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v48 = v14;
    v49 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v49);
    v50 = v59;
    v51 = v62;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v47, v50, v46);
    _Block_release(v46);
    sub_228416CF8(v48, v16);
    (*(v61 + 8))(v50, v51);
    (*(v58 + 8))(v47, v60);
  }

  return result;
}

uint64_t sub_228406B60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228406B98(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2284856A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2284896F4();
      goto LABEL_16;
    }

    sub_22848A8E0(v8 + 1);
  }

  v10 = *v4;
  sub_22855E22C();
  sub_22855D20C();
  v11 = sub_22855E27C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22855E15C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22855E1AC();
  __break(1u);
}
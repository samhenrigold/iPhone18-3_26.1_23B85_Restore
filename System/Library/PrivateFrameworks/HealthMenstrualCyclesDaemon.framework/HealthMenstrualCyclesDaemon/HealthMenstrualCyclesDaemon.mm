void sub_2293D2E78(void *a1)
{
  v2 = [a1 entitlements];
  v3 = [v2 hasEntitlement_];

  v4 = [a1 entitlements];
  v5 = [v4 hasPrivateAccessEntitlementWithIdentifier_];

  if ((v5 & 1) == 0 && !v3)
  {
    v6 = objc_opt_self();
    sub_22944FC84();

    v7 = sub_22944F894();
    MEMORY[0x22AACB740](v7);

    MEMORY[0x22AACB740](544370464, 0xE400000000000000);
    v8 = sub_22944F894();
    MEMORY[0x22AACB740](v8);

    v9 = sub_22944F864();

    [v6 hk:4 error:v9 description:{0xD00000000000001DLL, 0x80000002294589D0}];

    swift_willThrow();
  }
}

uint64_t sub_2293D30DC(uint64_t a1, unint64_t *a2, void *a3)
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

id static HDMCPregnancyStateQueryServer.createTaskServer(with:configuration:client:delegate:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v54 = a4;
  v51 = a1;
  v8 = sub_22944F0B4();
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 profile];
  v13 = [v12 profileType];

  if (v13 != 1)
  {
    v18 = objc_opt_self();
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_22944FC84();
    MEMORY[0x22AACB740](0xD000000000000016, 0x8000000229458780);
    v19 = sub_22944FF44();
    MEMORY[0x22AACB740](v19);

    MEMORY[0x22AACB740](0xD00000000000001BLL, 0x80000002294587A0);
    v20 = [a3 profile];
    v21 = [v20 profileType];

    *&v57 = v21;
    v22 = sub_22944FDF4();
    MEMORY[0x22AACB740](v22);

    v23 = sub_22944F864();

    v24 = [v18 hk:3 error:v23 description:?];
LABEL_15:
    v24;

    swift_willThrow();
    return v23;
  }

  v14 = v5;
  v15 = [a3 profile];
  v16 = *MEMORY[0x277D11920];
  v17 = [v15 profileExtensionWithIdentifier_];

  if (v17)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  v23 = v14;
  if (!*(&v58 + 1))
  {
    sub_229415AF0(&v59);
    goto LABEL_14;
  }

  v25 = sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v32 = objc_opt_self();
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_22944FC84();

    *&v59 = 0xD00000000000001FLL;
    *(&v59 + 1) = 0x80000002294587C0;
    v33 = sub_22944FF44();
    MEMORY[0x22AACB740](v33);

    v23 = sub_22944F864();

    v24 = [v32 hk:3 error:v23 description:?];
    goto LABEL_15;
  }

  v49 = v25;
  v26 = v61;
  v50 = [v61 pregnancyManager];
  v56 = &unk_283CE3008;
  v27 = swift_dynamicCastObjCProtocolConditional();
  if (v27)
  {
    if (a2 && (v28 = v27, objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) != 0))
    {
      v48 = v29;
      (*(v53 + 16))(v11, v51, v52);
      v47 = objc_allocWithZone(v14);
      v51 = a2;
      swift_unknownObjectRetain();
      v30 = [a3 profile];
      v31 = [v30 profileExtensionWithIdentifier_];

      if (v31)
      {
        sub_22944FB34();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0u;
        v58 = 0u;
      }

      v39 = v50;
      v59 = v57;
      v60 = v58;
      v50 = v26;
      if (*(&v58 + 1))
      {
        v40 = swift_dynamicCast();
        v41 = v61;
        if (!v40)
        {
          v41 = 0;
        }
      }

      else
      {
        sub_229415AF0(&v59);
        v41 = 0;
      }

      v42 = v47;
      *&v47[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v41;
      *&v42[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = v39;
      v43 = v39;
      v44 = sub_22944F074();
      v55.receiver = v42;
      v55.super_class = v14;
      v23 = objc_msgSendSuper2(&v55, sel_initWithUUID_configuration_client_delegate_, v44, v48, a3, v28);

      v45 = v51;
      swift_unknownObjectRelease();

      (*(v53 + 8))(v11, v52);
    }

    else
    {
      v35 = objc_opt_self();
      v23 = v54;
      swift_unknownObjectRetain();
      v36 = sub_22944F864();
      [v35 hk:3 error:v36 description:?];

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v37 = objc_opt_self();
    v38 = sub_22944F864();
    [v37 hk:3 error:v38 description:?];

    swift_willThrow();
  }

  return v23;
}

void sub_2293D3AA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2293D3AF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22944FE04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2293D3B3C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22944FBD4())
    {
LABEL_3:
      sub_2293D3E20(0);
      v3 = sub_22944FC54();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22944FBD4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AACBB00](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_22944FAF4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_22944FB04();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_22944FAF4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_22944FB04();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_2293D3E20(uint64_t a1)
{
  if (!qword_2813DBDD0)
  {
    sub_2293D30DC(255, &qword_2813DBEE0, 0x277CCD720);
    sub_2293D3E94();
    v1 = sub_22944FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DBDD0);
    }
  }
}

unint64_t sub_2293D3E94()
{
  result = qword_2813DBED8;
  if (!qword_2813DBED8)
  {
    sub_2293D30DC(255, &qword_2813DBEE0, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DBED8);
  }

  return result;
}

Swift::Void __swiftcall HDMCPregnancyStateQueryServer._queue_start()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22944F0B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel__queue_start);
  v7 = [v1 clientProxy];
  if (v7 && (v8 = [v7 remoteObjectProxy], swift_unknownObjectRelease(), sub_22944FB34(), swift_unknownObjectRelease(), sub_2293D4260(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v18[1];
    v10 = [v1 configuration];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 isRunningForMaintenance];
      v13 = *&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager];
      [*(v13 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) registerObserver_];
      if (v12)
      {
        v14 = 2;
      }

      else
      {
        [*(v13 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) registerObserver_];
        v14 = 1;
      }

      sub_2293D42C4(v14, 4u);
      swift_unknownObjectRelease();
    }

    else
    {

      v15 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
      v16 = sub_22944EF64();

      v17 = [v1 queryUUID];
      sub_22944F094();

      v10 = sub_22944F074();
      (*(v4 + 8))(v6, v3);
      [v9 client:v16 deliverError:v10 forQuery:?];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22944FD44();
    __break(1u);
  }
}

unint64_t sub_2293D4260()
{
  result = qword_2813DBE20;
  if (!qword_2813DBE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DBE20);
  }

  return result;
}

void sub_2293D42C4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v41[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_22944F174();
  __swift_project_value_buffer(v7, qword_2813DBFB8);
  v8 = sub_22944F154();
  v9 = sub_22944FA84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = ObjectType;
    v41[0] = v11;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_2293D47B8();
    v14 = sub_2293D4824(v12, v13, v41);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2 <= 2u)
    {
      v20 = 0xEB00000000646564;
      v21 = 0x6441656C706D6153;
      if (a2 != 1)
      {
        v21 = 0x6544656C706D6153;
        v20 = 0xED0000646574656CLL;
      }

      if (a2)
      {
        v18 = v21;
      }

      else
      {
        v18 = 0x696C616974696E49;
      }

      if (a2)
      {
        v19 = v20;
      }

      else
      {
        v19 = 0xEE006E6F6974617ALL;
      }
    }

    else
    {
      v15 = 0xD000000000000015;
      v16 = 0x8000000229459650;
      if (a2 != 5)
      {
        v15 = 0x6974736575716552;
        v16 = 0xEF6E69616741676ELL;
      }

      v17 = 0x8000000229459690;
      if (a2 != 3)
      {
        v17 = 0x8000000229459670;
      }

      if (a2 <= 4u)
      {
        v18 = 0xD000000000000015;
      }

      else
      {
        v18 = v15;
      }

      if (a2 <= 4u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }
    }

    v22 = sub_2293D4824(v18, v19, v41);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_2293D1000, v8, v9, "[%s] Requesting protected data operation, reason: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v11, -1, -1);
    MEMORY[0x22AACCC00](v10, -1, -1);
  }

  else
  {
  }

  v23 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_protectedDataOperation);
  v40 = 0;
  if ([v23 requestWorkWithPriority:a1 error:&v40])
  {
    v24 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
    v25 = v40;
    os_unfair_lock_lock((v24 + 20));
    *(v24 + 16) = 1;
    os_unfair_lock_unlock((v24 + 20));
  }

  else
  {
    v26 = v40;
    v27 = sub_22944EF74();

    swift_willThrow();
    v28 = v27;
    v29 = sub_22944F154();
    v30 = sub_22944FA64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = ObjectType;
      v41[0] = v33;
      *v31 = 136315394;
      swift_getMetatypeMetadata();
      v34 = sub_2293D47B8();
      v36 = sub_2293D4824(v34, v35, v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      v37 = v27;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&dword_2293D1000, v29, v30, "[%s] Failed to request protected data operation error: %@", v31, 0x16u);
      sub_2294423D4(v32);
      MEMORY[0x22AACCC00](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x22AACCC00](v33, -1, -1);
      MEMORY[0x22AACCC00](v31, -1, -1);
    }

    v39 = *(v3 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
    os_unfair_lock_lock((v39 + 20));
    *(v39 + 16) = 0;
    os_unfair_lock_unlock((v39 + 20));
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

uint64_t sub_2293D47B8()
{
  sub_22944FE14();
  v0 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22944FB34();
  swift_unknownObjectRelease();
  return sub_22944F8A4();
}

unint64_t sub_2293D4824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2293D48F0(v11, 0, 0, 1, a1, a2);
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
    sub_2293D5F68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2293D48F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_229423A7C(a5, a6);
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
    result = sub_22944FCC4();
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

uint64_t sub_2293D4AC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void sub_2293D4B44(uint64_t (*a1)(void))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
  os_unfair_lock_lock((v5 + 20));
  *(v5 + 16) = 2;
  os_unfair_lock_unlock((v5 + 20));
  sub_2293D4E68(aBlock);
  v6 = LOBYTE(aBlock[0]);
  os_unfair_lock_lock((v5 + 20));
  *(v5 + 16) = v6;
  os_unfair_lock_unlock((v5 + 20));
  if (v6 == 3)
  {
    v8 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_2293D8588((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers);
    aBlock[4] = sub_2294411CC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2293D89A8;
    aBlock[3] = &block_descriptor_3;
    v10 = _Block_copy(aBlock);
    [v9 notifyObservers_];
    _Block_release(v10);
  }

  v11 = a1();
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock((v5 + 20));
  sub_2293D8A08((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  v12 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork;
  if (*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork) == 1)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_22944F174();
    __swift_project_value_buffer(v13, qword_2813DBFB8);
    v14 = sub_22944F154();
    v15 = sub_22944FA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v18 = sub_2293D47B8();
      v20 = sub_2293D4824(v18, v19, &v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2293D1000, v14, v15, "[%s] Re-requesting work", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AACCC00](v17, -1, -1);
      MEMORY[0x22AACCC00](v16, -1, -1);
    }

    sub_2293D42C4(1, 6u);
    *(v2 + v12) = 0;
  }
}

void sub_2293D4E68(char *a1@<X8>)
{
  v110 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_22944F054();
  v104 = *(v2 - 8);
  v105 = v2;
  MEMORY[0x28223BE20](v2);
  v103 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HDMCPregnancyStateFactory(0);
  v5 = MEMORY[0x28223BE20](v4);
  v107 = (v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v99 = v98 - v7;
  v8 = sub_22944F0C4();
  v112 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v102 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22944F134();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v98 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = v98 - v18;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v20 = sub_22944F174();
  v109 = __swift_project_value_buffer(v20, qword_2813DBFB8);
  v21 = sub_22944F154();
  v22 = sub_22944FA84();
  v23 = os_log_type_enabled(v21, v22);
  v108 = v10;
  v106 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = v11;
    v116[0] = v100;
    *v24 = 136315138;
    *&v113 = ObjectType;
    swift_getMetatypeMetadata();
    v25 = sub_2293D47B8();
    v27 = v8;
    v28 = v17;
    v29 = v4;
    v30 = v19;
    v31 = sub_2293D4824(v25, v26, v116);

    *(v24 + 4) = v31;
    v19 = v30;
    v4 = v29;
    v17 = v28;
    v8 = v27;
    _os_log_impl(&dword_2293D1000, v21, v22, "[%s] Starting derivation work", v24, 0xCu);
    v32 = v100;
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    v11 = v101;
    MEMORY[0x22AACCC00](v32, -1, -1);
    MEMORY[0x22AACCC00](v24, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v101 = ObjectType;
    v35 = v112;
    v36 = v102;
    (v112[13])(v102, *MEMORY[0x277CC9830], v8);
    sub_22944F0D4();
    (v35)[1](v36, v8);
    v37 = type metadata accessor for HDMCExperienceDaemonStore();
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    v39 = v19;
    v40 = objc_allocWithZone(MEMORY[0x277D10718]);
    v41 = v34;
    v42 = sub_22944F864();
    v43 = [v40 initWithCategory:100 domainName:v42 profile:v41];

    *(v38 + 24) = v43;
    v114 = v37;
    v115 = sub_2293D5CA4(&qword_2813DC470, type metadata accessor for HDMCExperienceDaemonStore, &protocol conformance descriptor for HDMCExperienceDaemonStore);
    *&v113 = v38;
    v112 = v41;

    v44 = sub_22944F0F4();
    v45 = HKMCTodayIndex();

    v46 = [*(v111 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_calendarCache) currentCalendar];
    sub_22944F104();

    v47 = *(v11 + 16);
    v102 = v39;
    v100 = v17;
    v47(v106, v39, v108);
    *(v107 + *(v4 + 36)) = 0x4167124000000000;
    v48 = objc_opt_self();
    v49 = sub_22944F0F4();
    v50 = [v48 hk:v45 dateOnDayIndex:12 atHour:v49 calendar:?];

    v51 = v4;
    v52 = v103;
    sub_22944F014();

    sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
    _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(v45);
    v54 = v53;
    v63 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(v112, v53);
    v98[1] = v38;
    v64 = v100;

    v65 = v107;
    *v107 = v63;
    v66 = _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(v52);
    v67 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(v112, v66);
    (*(v104 + 8))(v52, v105);

    *(v65 + 8) = v67;
    sub_2293D78F8(&v113, v65 + 16);
    v68 = *(v11 + 32);
    v69 = v108;
    v68(v65 + *(v51 + 28), v64, v108);
    v68(v65 + *(v51 + 32), v106, v69);
    v70 = v99;
    v71 = sub_2293D7910(v65, v99);
    v73 = HDMCPregnancyStateFactory.deriveState()(v71, v72);
    v74 = HKShowSensitiveLogItems();
    if (v74)
    {
      v75 = sub_22944F154();
      v76 = sub_22944FA84();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v116[0] = v78;
        *v77 = 136315138;
        *&v113 = v101;
        swift_getMetatypeMetadata();
        v79 = sub_2293D47B8();
        v81 = sub_2293D4824(v79, v80, v116);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_2293D1000, v75, v76, "[%s] Updating pregnancy state", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x22AACCC00](v78, -1, -1);
        MEMORY[0x22AACCC00](v77, -1, -1);

        sub_2293D84A8(v99);
      }

      else
      {

        sub_2293D84A8(v70);
      }

      (*(v11 + 8))(v102, v108);
    }

    else
    {

      sub_2293D84A8(v70);
      (*(v11 + 8))(v102, v69);
    }

    v82 = HKShowSensitiveLogItems();
    if (v82)
    {
      v83 = v73;
      v84 = sub_22944F154();
      v85 = sub_22944FA84();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v113 = v87;
        *v86 = 136446466;
        v88 = sub_22944FF44();
        v90 = v73;
        v91 = sub_2293D4824(v88, v89, &v113);

        *(v86 + 4) = v91;
        *(v86 + 12) = 2080;
        v92 = [v83 description];
        v93 = sub_22944F894();
        v95 = v94;

        v96 = sub_2293D4824(v93, v95, &v113);
        v73 = v90;

        *(v86 + 14) = v96;
        _os_log_impl(&dword_2293D1000, v84, v85, "[%{public}s] Updating model: %s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v87, -1, -1);
        MEMORY[0x22AACCC00](v86, -1, -1);
      }
    }

    v97 = *(v111 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
    MEMORY[0x28223BE20](v82);
    v98[-2] = v73;
    os_unfair_lock_lock((v97 + 24));
    sub_2293D8544((v97 + 16));
    os_unfair_lock_unlock((v97 + 24));

    v62 = 3;
  }

  else
  {
    v55 = sub_22944F154();
    v56 = sub_22944FA84();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v116[0] = v58;
      *v57 = 136315138;
      *&v113 = ObjectType;
      swift_getMetatypeMetadata();
      v59 = sub_2293D47B8();
      v61 = sub_2293D4824(v59, v60, v116);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_2293D1000, v55, v56, "[%s] Profile not available", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x22AACCC00](v58, -1, -1);
      MEMORY[0x22AACCC00](v57, -1, -1);
    }

    v62 = 5;
  }

  *v110 = v62;
}

uint64_t type metadata accessor for HDMCPregnancyStateFactory(uint64_t a1)
{
  result = qword_2813DC390;
  if (!qword_2813DC390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2293D5C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2293D5CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(uint64_t a1)
{
  v2 = sub_22944F054();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() hk:a1 latestPossibleDateWithDayIndex:?];
  v7 = HDSampleEntityPredicateForStartDate();
  sub_22944EFB4();
  v8 = sub_22944EFD4();
  (*(v3 + 8))(v5, v2);
  v9 = HDSampleEntityPredicateForEndDate();

  sub_2293D5EC8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_229455370;
  v11 = sub_2293D5F1C();
  *(v10 + 32) = v7;
  *(v10 + 88) = v11;
  *(v10 + 56) = v11;
  *(v10 + 64) = v9;
  v12 = v7;
  v13 = v9;
  v14 = sub_22944F924();

  v15 = [objc_opt_self() predicateMatchingAllPredicates_];

  if (v15)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_2293D5EC8()
{
  if (!qword_2813DBD98)
  {
    v0 = sub_22944FE04();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBD98);
    }
  }
}

unint64_t sub_2293D5F1C()
{
  result = qword_2813DBEA8;
  if (!qword_2813DBEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBEA8);
  }

  return result;
}

uint64_t sub_2293D5F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2293D5FC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2293D65A4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229454440;
  sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
  sub_2293D65F8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
  sub_2293D6A34(&qword_2813DBED8, &qword_2813DBEE0, 0x277CCD720);
  v10 = sub_22944F9A4();

  aBlock[0] = 0;
  v11 = [ObjCClassFromMetadata entityEnumeratorWithTypes:v10 profile:a1 error:aBlock];

  if (v11)
  {
    v12 = aBlock[0];
    v13 = v11;
    [v13 setPredicate_];
    v14 = sub_22944F994();
    [v13 setEncodingOption:v14 forKey:*MEMORY[0x277D10400]];

    [v13 setLimitCount_];
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a5;
    aBlock[4] = sub_229433DF0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229432B6C;
    aBlock[3] = &block_descriptor_0;
    v16 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v17 = [v13 enumerateIncludingDeletedObjects:a3 & 1 error:aBlock handler:v16];
    _Block_release(v16);
    v18 = aBlock[0];
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    if (v17)
    {

      return;
    }

    v20 = sub_22944EF74();

    swift_willThrow();
  }

  else
  {
    v19 = aBlock[0];
    v20 = sub_22944EF74();

    swift_willThrow();
  }

  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v21 = sub_22944F174();
  __swift_project_value_buffer(v21, qword_2813DBFB8);
  v22 = v20;
  v23 = sub_22944F154();
  v24 = sub_22944FA64();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    v27 = sub_22944FF44();
    v29 = sub_2293D4824(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v30 = sub_22944FE64();
    v32 = sub_2293D4824(v30, v31, aBlock);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_2293D1000, v23, v24, "[%{public}s] Error enumerating entities: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v26, -1, -1);
    MEMORY[0x22AACCC00](v25, -1, -1);
  }

  swift_willThrow();
}

void *static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v5[2] = &v7;
  sub_2293D5FC4(a1, a2, 0, sub_229433B64, v5);
  if (v2)
  {
  }

  v6 = sub_2293D6D18(v4);
  sub_2293D6DAC(sub_22943297C, 0);

  return v6;
}

void sub_2293D65A4()
{
  if (!qword_2813DBDA0)
  {
    v0 = sub_22944FE04();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDA0);
    }
  }
}

unint64_t *sub_2293D6628(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22944FBD4())
  {
    v12 = sub_2293D30DC(0, a2, a3);
    v13 = sub_2293D6A84(a4, a2, a3, MEMORY[0x277D85378]);
    result = MEMORY[0x22AACB840](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AACBB00](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22944FBD4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2293D6794(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22944FBE4();

    if (v17)
    {

      sub_2293D30DC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22944FBD4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_229424644(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_229424ACC(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_2294254D0(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2293D30DC(0, a3, a4);
    v19 = sub_22944FAF4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22944FB04();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2293D6AC8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2293D6A34(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2293D30DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2293D6A84(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2293D30DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2293D6AC8(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_229424ACC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229425DF8(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_229426640(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_22944FAF4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2293D30DC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22944FB04();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22944FE44();
  __break(1u);
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

void *sub_2293D6D18(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_22944FBD4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_229432BEC(v3, 0);
  sub_2294339B0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2293D6DAC(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_2293D6E44(v6);
  }

  sub_2293D6E58(a1, a2);
  return sub_22944FCE4();
}

void sub_2293D6E58(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_22944FDE4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
        v9 = sub_22944F964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_229432D68(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_229432C68(0, v5, 1, a1);
  }
}

char *_sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(void *a1)
{
  v2 = sub_22944F124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v52 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v48 = sub_22944F134();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() latestTimeZoneCalendar];
  sub_22944F104();

  (*(v3 + 104))(v5, *MEMORY[0x277CC9998], v2);
  v49 = a1;
  sub_22944F114();
  (*(v3 + 8))(v5, v2);
  v22 = v12[6];
  v23 = v11;
  if (v22(v10, 1, v11) != 1)
  {
    v24 = v12[4];
    v24(v18, v10, v23);
    v47 = v18;
    v25 = v23;
    v26 = sub_22944EFD4();
    v49 = HDSampleEntityPredicateForEndDate();

    v27 = v50;
    sub_22944F044();
    v28 = v51;
    v45 = v20;
    sub_2293D75E8(v51);
    v29 = v12[1];
    v50 = (v12 + 1);
    v44 = v29;
    v29(v27, v25);
    if (v22(v28, 1, v25) == 1)
    {
      sub_2294312E4(v28);
      goto LABEL_8;
    }

    v30 = v52;
    v24(v52, v28, v25);
    v31 = sub_22944EFD4();
    v32 = HDSampleEntityPredicateForEndDate();

    sub_2293D5EC8();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_229455370;
    v34 = sub_2293D5F1C();
    v35 = v49;
    *(v33 + 32) = v49;
    *(v33 + 88) = v34;
    *(v33 + 56) = v34;
    *(v33 + 64) = v32;
    v36 = v35;
    v37 = v32;
    v38 = sub_22944F924();

    v10 = [objc_opt_self() predicateMatchingAllPredicates_];

    if (v10)
    {

      v39 = v30;
      v40 = v44;
      v44(v39, v25);
      v40(v47, v25);
      (*(v46 + 8))(v45, v48);
      return v10;
    }

    __break(1u);
  }

  sub_2294312E4(v10);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_22944FC84();

  v53 = 0xD000000000000021;
  v54 = 0x8000000229459200;
  sub_22943DDBC();
  v42 = sub_22944FDF4();
  MEMORY[0x22AACB740](v42);

LABEL_8:
  result = sub_22944FD44();
  __break(1u);
  return result;
}

void sub_2293D7594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FB14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2293D75E8@<X0>(uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_22944F124();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22944F054();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v24 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *MEMORY[0x277CC9968];
  v23 = *(v4 + 104);
  v23(v6, v16, v3);
  v26 = v2;
  sub_22944F114();
  v17 = *(v4 + 8);
  v25 = v3;
  v17(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2294312E4(v9);
    return (*(v11 + 56))(v27, 1, 1, v10);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v19 = v24;
    sub_22944F0E4();
    v20 = v25;
    v23(v6, *MEMORY[0x277CC99A8], v25);
    sub_22944F114();
    v17(v6, v20);
    v21 = *(v11 + 8);
    v21(v19, v10);
    return (v21)(v15, v10);
  }
}

uint64_t sub_2293D78F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2293D7910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HDMCPregnancyStateFactory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HDMCPregnancyStateFactory.deriveState()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22944F0B4();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for HDMCPregnancyStateFactory(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v67 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = (&v67 - v20);
  if (!HKShowSensitiveLogItems())
  {
    goto LABEL_14;
  }

  v72 = v6;
  v73 = v16;
  v71 = v10;
  if (qword_2813DBFB0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v22 = sub_22944F174();
    __swift_project_value_buffer(v22, qword_2813DBFB8);
    sub_229433B6C(v3, v21);
    v23 = sub_22944F154();
    v24 = sub_22944FA84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v70 = v12;
      v26 = v25;
      v68 = swift_slowAlloc();
      v69 = v4;
      v78 = v68;
      *v26 = 136446466;
      *(v26 + 4) = sub_2293D4824(0xD000000000000019, 0x80000002294550D0, &v78);
      *(v26 + 12) = 2080;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_22944FC84();

      v75 = 0xD000000000000015;
      v76 = 0x8000000229458DD0;
      v27.isa = v21->isa;
      v28 = sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
      v29 = MEMORY[0x22AACB7B0](v27.isa, v28);
      MEMORY[0x22AACB740](v29);

      sub_22944FE34();
      v30 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v31 = sub_22944F8A4();
      v33 = v32;
      sub_2293D8448(v21, type metadata accessor for HDMCPregnancyStateFactory);
      v34 = sub_2293D4824(v31, v33, &v78);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_2293D1000, v23, v24, "[%{public}s] %s", v26, 0x16u);
      v35 = v68;
      swift_arrayDestroy();
      v4 = v69;
      MEMORY[0x22AACCC00](v35, -1, -1);
      v36 = v26;
      v12 = v70;
      MEMORY[0x22AACCC00](v36, -1, -1);
    }

    else
    {

      sub_2293D8448(v21, type metadata accessor for HDMCPregnancyStateFactory);
    }

    sub_229433B6C(v3, v19);
    v37 = v73;
    sub_229433B6C(v3, v73);
    v21 = sub_22944F154();
    v38 = sub_22944FA84();
    if (os_log_type_enabled(v21, v38))
    {
      v39 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v39 = 136446722;
      *(v39 + 4) = sub_2293D4824(0xD000000000000019, 0x80000002294550D0, &v78);
      *(v39 + 12) = 2080;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_22944FC84();

      v75 = 0xD00000000000001BLL;
      v76 = 0x8000000229458D80;
      v40 = *v19 >> 62 ? sub_22944FBD4() : *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v40;
      v41 = sub_22944FDF4();
      MEMORY[0x22AACB740](v41);

      sub_22944FE34();
      v42 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v43 = sub_22944F8A4();
      v45 = v44;
      sub_2293D8448(v19, type metadata accessor for HDMCPregnancyStateFactory);
      v46 = sub_2293D4824(v43, v45, &v78);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2080;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_22944FC84();

      v75 = 0xD000000000000022;
      v76 = 0x8000000229458DA0;
      v47 = *v73 >> 62 ? sub_22944FBD4() : *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v47;
      v48 = sub_22944FDF4();
      MEMORY[0x22AACB740](v48);

      sub_22944FE34();
      v49 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v19 = MEMORY[0x277D84F70];
      v50 = sub_22944F8A4();
      v52 = v51;
      sub_2293D8448(v73, type metadata accessor for HDMCPregnancyStateFactory);
      v53 = sub_2293D4824(v50, v52, &v78);

      *(v39 + 24) = v53;
      _os_log_impl(&dword_2293D1000, v21, v38, "[%{public}s] %s, %s", v39, 0x20u);
      v54 = v70;
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v54, -1, -1);
      MEMORY[0x22AACCC00](v39, -1, -1);
    }

    else
    {

      sub_2293D8448(v19, type metadata accessor for HDMCPregnancyStateFactory);
      sub_2293D8448(v37, type metadata accessor for HDMCPregnancyStateFactory);
    }

    v10 = v71;
    v6 = v72;
LABEL_14:
    v55 = *v3;
    if (*v3 >> 62)
    {
      break;
    }

    if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_16:
    if ((v55 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x22AACBB00](0, v55);
      goto LABEL_19;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = *(v55 + 32);
LABEL_19:
      v57 = v56;
      v58 = [v56 UUID];
      sub_22944F094();

      sub_229431F24(v6, v12);
      (*(v74 + 8))(v6, v4);
      v59 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:v57 state:1];
      v60 = sub_22944FAD4();

      goto LABEL_30;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  if (sub_22944FBD4())
  {
    goto LABEL_16;
  }

LABEL_21:
  v61 = v3[1];
  if (!(v61 >> 62))
  {
    result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_23;
    }

LABEL_29:
    v59 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:0 state:0];
    v66 = sub_22944F054();
    (*(*(v66 - 8) + 56))(v12, 1, 1, v66);
    v60 = sub_22944FAD4();
LABEL_30:

    sub_2293D8448(v12, sub_2293D7574);
    return v60;
  }

  result = sub_22944FBD4();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_23:
  if ((v61 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x22AACBB00](0, v61);
    goto LABEL_26;
  }

  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *(v61 + 32);
LABEL_26:
    v64 = v63;
    v65 = [v63 UUID];
    sub_22944F094();

    sub_229431F24(v6, v10);
    (*(v74 + 8))(v6, v4);
    if ((sub_229432574(v64) & 1) == 0)
    {
      sub_2293D8448(v10, sub_2293D7574);

      goto LABEL_29;
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:v64 state:2];
    v60 = sub_22944FAD4();

    v12 = v10;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_2293D83E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2293D8448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2293D84A8(uint64_t a1)
{
  v2 = type metadata accessor for HDMCPregnancyStateFactory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HDMCExperienceDaemonStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2293D8544(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

void sub_2293D85A4(id *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = qword_2813DBFB0;
    v6 = *a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_22944F174();
    __swift_project_value_buffer(v7, qword_2813DBFB8);
    v8 = a2;
    v9 = sub_22944F154();
    v10 = sub_22944FA84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      aBlock[0] = a3;
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315394;
      swift_getMetatypeMetadata();
      v13 = sub_2293D47B8();
      v15 = sub_2293D4824(v13, v14, &v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      v16 = [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers] count];

      *(v11 + 14) = v16;
      _os_log_impl(&dword_2293D1000, v9, v10, "[%s] Notifying %ld observers", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AACCC00](v12, -1, -1);
      MEMORY[0x22AACCC00](v11, -1, -1);
    }

    else
    {
    }

    v25 = *&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers];
    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    aBlock[4] = sub_2293D8A2C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2293D89A8;
    aBlock[3] = &block_descriptor_14_0;
    v27 = _Block_copy(aBlock);
    v28 = v6;

    [v25 notifyObservers_];
    _Block_release(v27);
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v17 = sub_22944F174();
    __swift_project_value_buffer(v17, qword_2813DBFB8);
    v18 = sub_22944F154();
    v19 = sub_22944FA64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      aBlock[0] = a3;
      swift_getMetatypeMetadata();
      v22 = sub_2293D47B8();
      v24 = sub_2293D4824(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2293D1000, v18, v19, "[%s] Not notifying clients due to nil model with .complete state", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AACCC00](v21, -1, -1);
      MEMORY[0x22AACCC00](v20, -1, -1);
    }
  }
}

uint64_t sub_2293D8950()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293D89A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

_BYTE *sub_2293D8A08(_BYTE *result)
{
  if (!*result)
  {
    *(*(v1 + 16) + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork) = 1;
  }

  return result;
}

void HDMCPregnancyStateQueryServer.pregnancyModelDidUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22944F0B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 clientProxy];
  if (v9 && (v10 = [v9 remoteObjectProxy], swift_unknownObjectRelease(), sub_22944FB34(), swift_unknownObjectRelease(), sub_2293D4260(), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v14[1];
    v12 = [v3 queryUUID];
    sub_22944F094();

    v13 = sub_22944F074();
    (*(v6 + 8))(v8, v5);
    [v11 client:a1 deliverPregnancyModel:v13 queryUUID:?];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22944FD44();
    __break(1u);
  }
}

uint64_t sub_2293D8DB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2293D8E60(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [a1 state];
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    sub_2293D9118(2);
  }

  else
  {
    if (v3 == 1)
    {
      if (!HKShowSensitiveLogItems())
      {
        return;
      }

      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v5 = sub_22944F174();
      __swift_project_value_buffer(v5, qword_2813DBFB8);
      oslog = sub_22944F154();
      v6 = sub_22944FA84();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19 = v8;
        *v7 = 136315138;
        v9 = sub_22944FF44();
        v11 = sub_2293D4824(v9, v10, &v19);

        *(v7 + 4) = v11;
LABEL_19:
        _os_log_impl(&dword_2293D1000, oslog, v6, v12, v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x22AACCC00](v8, -1, -1);
        MEMORY[0x22AACCC00](v7, -1, -1);

        return;
      }
    }

    else
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v13 = sub_22944F174();
      __swift_project_value_buffer(v13, qword_2813DBFB8);
      oslog = sub_22944F154();
      v6 = sub_22944FA64();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18 = v8;
        v19 = ObjectType;
        *v7 = 136315138;
        swift_getMetatypeMetadata();
        v14 = sub_2293D47B8();
        v16 = sub_2293D4824(v14, v15, &v18);

        *(v7 + 4) = v16;
        v12 = "[%s] Received an unexpected state.";
        goto LABEL_19;
      }
    }
  }
}

void sub_2293D9118(uint64_t a1)
{
  v2 = v1;
  v43[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = [objc_opt_self() sharedBehavior];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v6 = [v4 isiPad];

  v7 = HKShowSensitiveLogItems();
  if (v6)
  {
    if (v7)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v8 = sub_22944F174();
      __swift_project_value_buffer(v8, qword_2813DBFB8);
      oslog = sub_22944F154();
      v9 = sub_22944FA84();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v43[0] = v11;
        *v10 = 136315138;
        v12 = sub_22944FF44();
        v14 = sub_2293D4824(v12, v13, v43);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_2293D1000, oslog, v9, "[%s] Should not request work since this is an iPad", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x22AACCC00](v11, -1, -1);
        MEMORY[0x22AACCC00](v10, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (v7)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v15 = sub_22944F174();
      __swift_project_value_buffer(v15, qword_2813DBFB8);
      v16 = sub_22944F154();
      v17 = sub_22944FA84();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v43[0] = v19;
        *v18 = 136315138;
        v20 = sub_22944FF44();
        v22 = sub_2293D4824(v20, v21, v43);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_2293D1000, v16, v17, "[%s] Requesting protected data operation", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x22AACCC00](v19, -1, -1);
        MEMORY[0x22AACCC00](v18, -1, -1);
      }
    }

    v23 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation);
    v43[0] = 0;
    v24 = [v23 requestWorkWithPriority:a1 error:v43];
    v25 = v43[0];
    if (v24)
    {

      v26 = v25;
    }

    else
    {
      v27 = v43[0];
      v28 = sub_22944EF74();

      swift_willThrow();
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v29 = sub_22944F174();
        __swift_project_value_buffer(v29, qword_2813DBFB8);
        v30 = v28;
        v31 = sub_22944F154();
        v32 = sub_22944FA64();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v43[0] = v34;
          *v33 = 136315394;
          v35 = sub_22944FF44();
          v37 = sub_2293D4824(v35, v36, v43);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v38 = v28;
          sub_22942B194(0, &qword_2813DBD90, MEMORY[0x277D84948]);
          v39 = sub_22944F8A4();
          v41 = sub_2293D4824(v39, v40, v43);

          *(v33 + 14) = v41;
          _os_log_impl(&dword_2293D1000, v31, v32, "[%s] Failed to request protected data operation error: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AACCC00](v34, -1, -1);
          MEMORY[0x22AACCC00](v33, -1, -1);

          return;
        }
      }
    }
  }
}

uint64_t sub_2293D96AC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22944F054();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = objc_opt_self();
  [a1 featureAvailabilityRequirement:objc_msgSend(v15 didUpdateSatisfaction:{sel_noOngoingPregnancy), objc_msgSend(a3, sel_state) != 1}];
  swift_unknownObjectRelease();
  v16 = [v15 isNotInPostPregnancy];
  v17 = [a3 physiologicalWashoutEndDate];
  if (v17)
  {
    v18 = v17;
    sub_22944F014();

    (*(v6 + 32))(v14, v12, v5);
    sub_22944F044();
    v19 = sub_22944EFF4();
    v20 = *(v6 + 8);
    v20(v9, v5);
    v20(v14, v5);
  }

  else
  {
    v19 = 1;
  }

  [a1 featureAvailabilityRequirement:v16 didUpdateSatisfaction:v19 & 1];
  return swift_unknownObjectRelease();
}

uint64_t sub_2293D999C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293D99DC(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_22944F174();
    __swift_project_value_buffer(v4, qword_2813DBFB8);
    v5 = sub_22944F154();
    v6 = sub_22944FA84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_22944FF44();
      v11 = sub_2293D4824(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2293D1000, v5, v6, "[%s] Performing requested work", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x22AACCC00](v8, -1, -1);
      MEMORY[0x22AACCC00](v7, -1, -1);
    }
  }

  return sub_2293D9B7C(a1, a2, 0, 0, 0, 0);
}

uint64_t sub_2293D9B7C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v12 = sub_22944F174();
    __swift_project_value_buffer(v12, qword_2813DBFB8);
    v13 = sub_22944F154();
    v14 = sub_22944FA84();
    if (os_log_type_enabled(v13, v14))
    {
      bufa = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *bufa = 136315138;
      v15 = sub_22944FF44();
      v17 = a1;
      v18 = a2;
      v19 = sub_2293D4824(v15, v16, &v59);

      *(bufa + 4) = v19;
      a2 = v18;
      a1 = v17;
      _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Updating adjusted features", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x22AACCC00](v57, -1, -1);
      MEMORY[0x22AACCC00](bufa, -1, -1);
    }
  }

  v20 = [*&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] getCurrentPregnancyModel];
  if (v20)
  {
    v58 = v20;
    Strong = swift_unknownObjectUnownedLoadStrong();
    type metadata accessor for HDMCExperienceDaemonStore();
    v22 = swift_allocObject();
    *(v22 + 16) = Strong;
    v23 = objc_allocWithZone(MEMORY[0x277D10718]);
    v24 = Strong;
    v25 = sub_22944F864();
    v26 = [v23 initWithCategory:100 domainName:v25 profile:v24];

    *(v22 + 24) = v26;
    v52 = v7;
    buf = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
    sub_2294364B8();
    v36 = sub_22944320C();

    v37 = [v36 pregnancyModeSetupCompletionSet];
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    v38 = sub_22944F9B4();

    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = sub_22944FBD4();
    }

    else
    {
      v39 = *(v38 + 16);
    }

    if (v39)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = a3;
      *(v40 + 24) = a4;
      *(v40 + 32) = v52;
      *(v40 + 40) = v22;
      *(v40 + 48) = v36;
      *(v40 + 56) = buf;
      *(v40 + 64) = a5;
      *(v40 + 72) = a6;
      *(v40 + 80) = a1;
      *(v40 + 88) = a2;
      v41 = buf;
      v42 = v36;
      sub_229428914(a3, a4);
      v43 = v52;

      sub_229428914(a5, a6);

      sub_229417FF8(v58, v22, v42, v41, sub_229428884, v40);
    }

    else
    {
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v44 = sub_22944F174();
        __swift_project_value_buffer(v44, qword_2813DBFB8);
        v45 = sub_22944F154();
        v46 = sub_22944FA64();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59 = v48;
          *v47 = 136315138;
          v49 = sub_22944FF44();
          v51 = sub_2293D4824(v49, v50, &v59);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_2293D1000, v45, v46, "[%s] No completion records, so no need for clean up maintenance", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x22AACCC00](v48, -1, -1);
          MEMORY[0x22AACCC00](v47, -1, -1);
        }
      }

      a1();
    }
  }

  else
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v27 = sub_22944F174();
      __swift_project_value_buffer(v27, qword_2813DBFB8);
      v28 = sub_22944F154();
      v29 = sub_22944FA64();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59 = v31;
        *v30 = 136315138;
        v32 = sub_22944FF44();
        v34 = sub_2293D4824(v32, v33, &v59);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_2293D1000, v28, v29, "[%s] Could not get pregnancy state from pregnancy manager", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x22AACCC00](v31, -1, -1);
        MEMORY[0x22AACCC00](v30, -1, -1);
      }
    }

    return a1();
  }
}

uint64_t sub_2293DA598()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_2293DA69C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_22944F174();
  __swift_project_value_buffer(v6, qword_2813DBFB8);
  v7 = sub_22944F154();
  v8 = sub_22944FA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    v16[2] = a2;
    swift_getMetatypeMetadata();
    v11 = sub_2293D47B8();
    v13 = sub_2293D4824(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2293D1000, v7, v8, "[%s] Returning currently cached model", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AACCC00](v10, -1, -1);
    MEMORY[0x22AACCC00](v9, -1, -1);
  }

  v14 = *a1;
  *a3 = *a1;
  return v14;
}

id HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()()
{
  result = HDMCExperienceDaemonStore.fetchLocallyPersistedData()();
  if (!v0 && !result)
  {
    sub_2293D6628(MEMORY[0x277D84F90], &qword_2813DBE38, 0x277D119C0, &qword_2813DBE30, sub_229423F44);
    v2 = objc_allocWithZone(MEMORY[0x277D119A0]);
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A84(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0, MEMORY[0x277D85378]);
    v3 = sub_22944F9A4();

    v4 = [v2 initWithPregnancyModeSetupCompletionSet_];

    sub_2293D30DC(0, &qword_2813DBE18, 0x277D10638);
    v5 = HDCodableMenstrualCyclesExperienceModel.init(model:)(v4);
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_22944F174();
    __swift_project_value_buffer(v6, qword_2813DBFB8);
    v7 = sub_22944F154();
    v8 = sub_22944FA84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      v11 = sub_22944FF44();
      v13 = sub_2293D4824(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2293D1000, v7, v8, "[%{public}s] No model persisted locally, returning default model", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x22AACCC00](v10, -1, -1);
      MEMORY[0x22AACCC00](v9, -1, -1);
    }

    return v5;
  }

  return result;
}

id HDMCExperienceDaemonStore.fetchLocallyPersistedData()()
{
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = sub_22944F864();
  v62[0] = 0;
  v3 = [v1 dataForKey:v2 error:v62];

  v4 = v62[0];
  if (v3)
  {
    v5 = v62[0];
    v6 = sub_22944EF94();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277D10638]);
    sub_229449288(v6, v8);
    v10 = sub_22944EF84();
    sub_22943A0D8(v6, v8);
    v4 = [v9 initWithData_];

    if (v4)
    {
      v61 = v8;
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v11 = sub_22944F174();
      __swift_project_value_buffer(v11, qword_2813DBFB8);
      v12 = v4;
      v13 = sub_22944F154();
      v14 = sub_22944FA84();

      if (os_log_type_enabled(v13, v14))
      {
        v60 = v5;
        v15 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62[0] = v59;
        *v15 = 136446466;
        v16 = sub_22944FF44();
        v18 = sub_2293D4824(v16, v17, v62);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        v19 = HDCodableMenstrualCyclesExperienceModel.logDescription.getter();
        v21 = sub_2293D4824(v19, v20, v62);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_2293D1000, v13, v14, "[%{public}s] Fetched content from local store: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v59, -1, -1);
        MEMORY[0x22AACCC00](v15, -1, -1);
        sub_22943A0D8(v6, v61);
      }

      else
      {
        sub_22943A0D8(v6, v61);
      }

      return v4;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v40 = sub_22944F174();
    __swift_project_value_buffer(v40, qword_2813DBFB8);
    v41 = sub_22944F154();
    v42 = sub_22944FA64();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446210;
      v45 = sub_22944FF44();
      v4 = v46;
      v47 = v8;
      v48 = sub_2293D4824(v45, v46, v62);

      *(v43 + 4) = v48;
      v8 = v47;
      _os_log_impl(&dword_2293D1000, v41, v42, "[%{public}s] Error decoding persisted state", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AACCC00](v44, -1, -1);
      MEMORY[0x22AACCC00](v43, -1, -1);
    }

    sub_2294491CC();
    swift_allocError();
    *v49 = 0;
    v49[1] = 0;
    swift_willThrow();
    sub_22943A0D8(v6, v8);
LABEL_19:

    return v4;
  }

  v22 = qword_2813DBFB0;
  if (v62[0])
  {
    v5 = v62[0];
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_22944F174();
    __swift_project_value_buffer(v23, qword_2813DBFB8);
    v24 = sub_22944F154();
    v25 = sub_22944FA64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62[0] = v27;
      *v26 = 136446466;
      v28 = sub_22944FF44();
      v30 = sub_2293D4824(v28, v29, v62);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      sub_229449220(0);
      v31 = v5;
      v32 = sub_22944F8A4();
      v34 = sub_2293D4824(v32, v33, v62);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_2293D1000, v24, v25, "[%{public}s] Error trying to fetch data from local kvd: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v27, -1, -1);
      MEMORY[0x22AACCC00](v26, -1, -1);
    }

    v35 = [v5 localizedDescription];
    v36 = sub_22944F894();
    v38 = v37;

    sub_2294491CC();
    swift_allocError();
    *v39 = v36;
    v39[1] = v38;
    swift_willThrow();
    goto LABEL_19;
  }

  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v50 = sub_22944F174();
  __swift_project_value_buffer(v50, qword_2813DBFB8);
  v51 = sub_22944F154();
  v52 = sub_22944FA84();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62[0] = v54;
    *v53 = 136446210;
    v55 = sub_22944FF44();
    v57 = sub_2293D4824(v55, v56, v62);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_2293D1000, v51, v52, "[%{public}s] No data persisted locally", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x22AACCC00](v54, -1, -1);
    MEMORY[0x22AACCC00](v53, -1, -1);
  }

  return 0;
}

id HDCodableMenstrualCyclesExperienceModel.init(model:)(void *a1)
{
  v46 = sub_22944F5A4();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22944F7D4();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818(0);
  v10 = v9;
  v41 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v42)
  {
    v38 = a1;
    v15 = [a1 pregnancyModeSetupCompletionSet];
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A84(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0, MEMORY[0x277D85378]);
    v16 = sub_22944F9B4();

    v17 = sub_229435B90(v16);
    v37 = v1;

    type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);
    v45 = swift_allocObject();
    sub_2293DB9D8(0);
    sub_22943ABE0(&qword_2813DBF70, sub_2293DB9D8, MEMORY[0x277CFB6B8]);
    sub_22943ABE0(&qword_2813DBF68, sub_2293DB9D8, MEMORY[0x277CFB6C8]);
    sub_22944F544();
    *&v8[*(v6 + 20)] = MEMORY[0x277D84F98];
    sub_22944F7C4();
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_2294558D8);
    v18 = sub_22944F744();
    MEMORY[0x28223BE20](v18);
    *(&v37 - 2) = v17;
    v19 = v10;
    v20 = v37;
    sub_22944F724();
    v8 = v20;
    if (!v20)
    {
      v21 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
      v22 = v41;
      v23 = v45;
      (*(v41 + 32))(v45 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule, v14, v19);

      sub_22944F7B4();
      v24 = sub_22944F7A4();
      v25 = v43;
      v26 = v44;
      (*(v44 + 104))(v43, *MEMORY[0x277CFB5F0], v46);
      swift_beginAccess();
      v27 = v23 + v21;
      v28 = v40;
      (*(v22 + 16))(v40, v27, v19);
      v29 = sub_22944F6F4();
      v30 = v28;
      v32 = v31;
      (*(v22 + 8))(v30, v19);
      v33 = v25;
      v34 = sub_22944EF84();
      sub_22943A0D8(v29, v32);
      v35 = v42;
      [v42 setMenstrualCyclesExperienceModelData_];

      (*(v26 + 8))(v33, v46);
      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_2293DB818(uint64_t a1)
{
  if (!qword_2813DBF50)
  {
    type metadata accessor for CoherentExperienceSetupRecordDatabase(255);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_2294558D8);
    v1 = sub_22944F734();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DBF50);
    }
  }
}

uint64_t sub_2293DB8CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2293DB924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2293DB96C()
{
  result = qword_2813DBE38;
  if (!qword_2813DBE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBE38);
  }

  return result;
}

void sub_2293DB9D8(uint64_t a1)
{
  if (!qword_2813DBF60)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_2293D5C5C(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454EB4);
    v1 = sub_22944F5C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DBF60);
    }
  }
}

void sub_2293DBA80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2293DBB38(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_2293DBB58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2293DB9D8(255);
    v7 = v6;
    v8 = sub_2293D5C5C(&qword_2813DBF70, sub_2293DB9D8, MEMORY[0x277CFB6B8]);
    v9 = sub_2293D5C5C(&qword_2813DBF68, sub_2293DB9D8, MEMORY[0x277CFB6C8]);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2293DBC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2293DBB38(0);
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

uint64_t sub_2293DBCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_229455888);

  return MEMORY[0x28214D7B0](a1, a2, v4);
}

uint64_t sub_2293DBD78()
{
  if (qword_2813DC160 != -1)
  {
    swift_once();
  }

  v0 = qword_2813DD238;

  return v0;
}

uint64_t sub_2293DBE04(uint64_t a1, uint64_t a2)
{
  sub_2293DC254(0, &qword_2813DBF48, MEMORY[0x277CFB7B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v28 - v5;
  v32 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v6 = *(v32 - 8);
  v7 = MEMORY[0x28223BE20](v32);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  sub_2293DB9D8(0);
  v30 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v34[0] = MEMORY[0x277D84F90];
    v28[0] = a1;
    sub_22943F24C(0, v15, 0);
    v16 = v34[0];
    v17 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    v28[2] = v12 + 32;
    v29 = v18;
    do
    {
      sub_229445C70(v17, v10);
      v19 = v31;
      sub_229445C70(v10, v31);
      v20 = sub_22944F7D4();
      v21 = v33;
      (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
      v22 = sub_2293DB924(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454EB4);

      MEMORY[0x22AACB440](v23, v19, v21, v32, v22);
      sub_229445FCC(v10, type metadata accessor for CoherentExperienceSetupRecord);
      v34[0] = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22943F24C((v24 > 1), v25 + 1, 1);
        v16 = v34[0];
      }

      *(v16 + 16) = v25 + 1;
      (*(v12 + 32))(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v14, v30);
      v17 += v29;
      --v15;
    }

    while (v15);
  }

  swift_getKeyPath();
  v34[5] = v16;
  v26 = sub_22944F704();
  sub_2293DBB38(0);
  sub_2293DC2B8(0);
  sub_2293DB924(&qword_2813DBF28, sub_2293DC2B8, MEMORY[0x277D83970]);
  sub_22944F504();
  v26(v34, 0);
}

void sub_2293DC254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2293DC2EC(uint64_t a1)
{
  v2 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_229455888);

  return MEMORY[0x28214D7D8](a1, v2);
}

uint64_t sub_2293DC3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22944F894();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2293DC428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2293DC488()
{
  v1 = *(v0 + 16);
  sub_2293D7574(0);
  v14 = v1;
  v15 = *(*(v2 - 8) + 80);
  v3 = (v15 + 48) & ~v15;
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v10 = (*(v6 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  (*(v7 + 8))(v0 + v9, v14);
  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v15 | v8 | 7);
}

uint64_t sub_2293DC68C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22942B554();
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_14:

    return v10(v11, a2, v9);
  }

  sub_22942B5AC(0, v7);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = a3[5];
LABEL_13:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_14;
  }

  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = a3[6];
    goto LABEL_13;
  }

  sub_22942B6F0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v13 = *(v16 - 8);
    v14 = a3[8];
    goto LABEL_13;
  }

  sub_22942B750(0, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v13 = *(v17 - 8);
    v14 = a3[9];
    goto LABEL_13;
  }

  sub_22942B8A4(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v13 = *(v18 - 8);
    v14 = a3[10];
    goto LABEL_13;
  }

  v20 = *(a1 + a3[11]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_2293DC928(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22942B554();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    sub_22942B5AC(0, v9);
    if (*(*(v14 - 8) + 84) == a3)
    {
      v11 = v14;
      v15 = *(v14 - 8);
      v16 = a4[5];
    }

    else
    {
      sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
      if (*(*(v17 - 8) + 84) == a3)
      {
        v11 = v17;
        v15 = *(v17 - 8);
        v16 = a4[6];
      }

      else
      {
        sub_22942B6F0();
        if (*(*(v18 - 8) + 84) == a3)
        {
          v11 = v18;
          v15 = *(v18 - 8);
          v16 = a4[8];
        }

        else
        {
          sub_22942B750(0, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
          if (*(*(v19 - 8) + 84) == a3)
          {
            v11 = v19;
            v15 = *(v19 - 8);
            v16 = a4[9];
          }

          else
          {
            sub_22942B8A4(0);
            if (*(*(v20 - 8) + 84) != a3)
            {
              *(a1 + a4[11]) = (a2 - 1);
              return;
            }

            v11 = v20;
            v15 = *(v20 - 8);
            v16 = a4[10];
          }
        }
      }
    }

    v12 = *(v15 + 56);
    v13 = a1 + v16;
  }

  v12(v13, a2, a2, v11);
}

uint64_t sub_2293DCBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22944F054();
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

uint64_t sub_2293DCC7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22944F054();
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

uint64_t sub_2293DCD64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22944F134();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2293DCE10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22944F134();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2293DCEB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCF04()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2293DCF4C()
{
  MEMORY[0x22AACCC90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCF84()
{
  MEMORY[0x22AACCC90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCFBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

void sub_2293DD7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293DE674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_2293E1914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293E3844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293E4F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293E5588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293E78A8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x478], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Unwind_Resume(a1);
}

id _UserCharacteristicOfType(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userCharacteristicsManager];
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v3];
  v10 = 0;
  v6 = [v4 userCharacteristicForType:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      _UserCharacteristicOfType_cold_1();
    }
  }

  return v6;
}

uint64_t _UserCharacteristicModificationDayOfType(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 userCharacteristicsManager];
  v8 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v5];
  v14 = 0;
  v9 = [v7 modificationDateForCharacteristicWithType:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      _UserCharacteristicModificationDayOfType_cold_1();
    }
  }

  v12 = [v9 hk_dayIndexWithCalendar:v6];

  return v12;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_2_1(id a1, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;

  return a1;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v3;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2293EA66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293ED06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_6_0(uint64_t a1, void *a2)
{

  return a2;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_2293F2D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293F334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293F5268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void sub_2293F685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_3_1(uint64_t a1, void *a2)
{

  return a2;
}

void sub_2293FAB3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHDMCOvulationConfirmationNotificationState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"FeatureOff";
  }

  else
  {
    return off_27865AE80[a1 - 1];
  }
}

void sub_2293FC734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293FD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293FE3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293FFDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229403FC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2294046C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2294048A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27865A678, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22940527C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void sub_229406448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22940DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22940EDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDMCPregnancyStateQueryServer.objectTypes.getter()
{
  sub_2293D3AA0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229454440;
  sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
  sub_2293D3B3C(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

id HDMCPregnancyStateQueryServer.__allocating_init(uuid:configuration:client:delegate:pregnancyManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = [a3 profile];
  v14 = [v13 profileExtensionWithIdentifier_];

  if (v14)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
    v15 = swift_dynamicCast();
    v16 = v22;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {
    sub_229415AF0(v26);
    v16 = 0;
  }

  *&v12[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v16;
  *&v12[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = a5;
  v17 = a5;
  v18 = sub_22944F074();
  v23.receiver = v12;
  v23.super_class = v6;
  v19 = objc_msgSendSuper2(&v23, sel_initWithUUID_configuration_client_delegate_, v18, a2, a3, a4);

  swift_unknownObjectRelease();
  v20 = sub_22944F0B4();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

id HDMCPregnancyStateQueryServer.init(uuid:configuration:client:delegate:pregnancyManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = [a3 profile];
  v14 = [v13 profileExtensionWithIdentifier_];

  if (v14)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
    v15 = swift_dynamicCast();
    v16 = v22;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {
    sub_229415AF0(v26);
    v16 = 0;
  }

  *&v6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v16;
  *&v6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = a5;
  v17 = a5;
  v18 = sub_22944F074();
  v23.receiver = v6;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_initWithUUID_configuration_client_delegate_, v18, a2, a3, a4);

  swift_unknownObjectRelease();
  v20 = sub_22944F0B4();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

Swift::Void __swiftcall HDMCPregnancyStateQueryServer._queue_stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager);
  [*(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) unregisterObserver_];
  v2 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers);

  [v2 unregisterObserver_];
}

id HDMCPregnancyStateQueryServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229415668(uint64_t a1, id *a2)
{
  result = sub_22944F874();
  *a2 = 0;
  return result;
}

uint64_t sub_2294156E0(uint64_t a1, id *a2)
{
  v3 = sub_22944F884();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_229415760@<X0>(uint64_t *a2@<X8>)
{
  sub_22944F894();
  v3 = sub_22944F864();

  *a2 = v3;
  return result;
}

uint64_t sub_2294157A4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22944F864();

  *a2 = v3;
  return result;
}

uint64_t sub_2294157EC(uint64_t a1)
{
  v2 = sub_229415CA4(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v3 = sub_229415CA4(&qword_27D86E508, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945458C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2294158A8(uint64_t a1)
{
  v2 = sub_229415CA4(&qword_27D86E4F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_2294546E4);
  v3 = sub_229415CA4(&qword_27D86E4F8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_22945468C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_229415964()
{
  v0 = sub_22944F894();
  v1 = MEMORY[0x22AACB760](v0);

  return v1;
}

uint64_t sub_2294159A0(uint64_t a1)
{
  sub_22944F894();
  sub_22944F8C4();
}

uint64_t sub_2294159F4(uint64_t a1)
{
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v1 = sub_22944FEE4();

  return v1;
}

uint64_t sub_229415A68(void *a1, uint64_t *a2)
{
  v2 = sub_22944F894();
  v4 = v3;
  if (v2 == sub_22944F894() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22944FE24();
  }

  return v7 & 1;
}

uint64_t sub_229415AF0(uint64_t a1)
{
  sub_2293D3AA0(0, &qword_2813DBD88, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229415CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229415E1C(uint64_t a1, int a2)
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

uint64_t sub_229415E3C(uint64_t result, int a2, int a3)
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

uint64_t sub_229415EDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_229415F8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *HDMCPregnancyFeatureAdjustmentManager.__allocating_init(pregnancyManager:profile:experienceModelProvider:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();
  v8 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D10800]);
  v11 = a1;
  v12 = a2;
  v13 = sub_22944F864();
  v14 = [v10 initWithProfile:v12 debugIdentifier:v13 delegate:0];

  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v14;
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = 0;
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = 0;
  sub_229428480(v22, &v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v21.receiver = v9;
  v21.super_class = v8;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;

    v18 = [v17 isiPad];
    if (v18)
    {
      sub_229428944(v22, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = *&v15[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v20 = v15;
      [v19 setDelegate_];
      [*&v20[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v20 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      sub_229428944(v22, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    swift_deallocPartialClassInstance();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *HDMCPregnancyFeatureAdjustmentManager.init(pregnancyManager:profile:experienceModelProvider:)(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  v6 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v8 = objc_allocWithZone(MEMORY[0x277D10800]);
  v9 = a1;
  v10 = a2;
  v11 = sub_22944F864();
  v12 = [v8 initWithProfile:v10 debugIdentifier:v11 delegate:0];

  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v12;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = 0;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = 0;
  sub_229428480(v20, &v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v19.receiver = v7;
  v19.super_class = v6;
  v13 = objc_msgSendSuper2(&v19, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v15 = result;

    v16 = [v15 isiPad];
    if (v16)
    {
      sub_229428944(v20, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v18 = v13;
      [v17 setDelegate_];
      [*&v18[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v18 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      sub_229428944(v20, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    swift_deallocPartialClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229416768(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v91 = a1;
  v92 = a3;
  ObjectType = swift_getObjectType();
  v87 = sub_22944F0B4();
  v83 = *(v87 - 8);
  v7 = MEMORY[0x28223BE20](v87);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - v9;
  v10 = sub_22944F054();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v79 - v15;
  v99 = MEMORY[0x277D84FA0];
  v98 = MEMORY[0x277D84F90];
  v89 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(a2, v17);
  sub_22944F044();
  sub_22944F034();
  v18 = [a2 pregnancyModeSetupCompletionSet];
  v19 = sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  v20 = sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v88 = v19;
  v84 = v20;
  v21 = sub_22944F9B4();

  v94 = v14;
  v95 = ObjectType;
  v90 = ObjectType;
  sub_22941F490(sub_22942B4F8, v93, v21);
  v23 = v22;
  v24 = *(v11 + 8);
  v24(v16, v10);
  v82 = v10;
  v24(v14, v10);
  v100 = v89;
  v25 = v91;
  sub_229423E54(v23);
  sub_22941CC08(v100, v25, v92);

  sub_2294364B8();
  v26 = sub_22944320C();

  v81 = v4;
  v28 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(v26, v27);
  sub_22944F044();
  sub_22944F034();
  v80 = v26;
  v29 = [v26 pregnancyModeSetupCompletionSet];
  v30 = sub_22944F9B4();

  MEMORY[0x28223BE20](v31);
  v32 = v90;
  *(&v79 - 2) = v14;
  *(&v79 - 1) = v32;
  sub_22941F490(sub_22942B4F8, (&v79 - 4), v30);
  v34 = v33;
  v35 = v82;
  v24(v16, v82);
  v24(v14, v35);
  v100 = v28;
  sub_229423E54(v34);
  v36 = sub_22944919C(v100);

  if ((v36 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    v37 = v88;
    sub_22944FA04();
    v36 = v100;
    v38 = v101;
    v39 = v102;
    v40 = v103;
    v41 = v104;
  }

  else
  {
    v40 = 0;
    v42 = -1 << *(v36 + 32);
    v38 = v36 + 56;
    v39 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v36 + 56);
    v37 = v88;
  }

  v84 = v39;
  v45 = (v39 + 64) >> 6;
  v89 = (v83 + 8);
  v46 = MEMORY[0x277D84F90];
LABEL_8:
  v88 = v46;
  while (v36 < 0)
  {
    v53 = sub_22944FC04();
    if (!v53)
    {
      goto LABEL_25;
    }

    v96 = v53;
    swift_dynamicCast();
    v52 = v97[0];
    if (!v97[0])
    {
      goto LABEL_25;
    }

LABEL_19:
    v54 = [v52 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
    v55 = sub_22944F9B4();

    v56 = *(v55 + 16);

    if (v56)
    {
      v57 = _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(v52);
      if ((sub_22944FB04() & 1) == 0)
      {
        v58 = v57;
        MEMORY[0x22AACB780]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22944F954();
        }

        sub_22944F974();

        v46 = v98;
        goto LABEL_8;
      }
    }

    else
    {
      v47 = [v52 sampleUUID];
      v48 = v86;
      sub_22944F094();

      v49 = v85;
      sub_229424114(v85, v48);

      (*v89)(v49, v87);
    }
  }

  v50 = v40;
  v51 = v41;
  if (!v41)
  {
    while (1)
    {
      v40 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
        goto LABEL_25;
      }

      v51 = *(v38 + 8 * v40);
      ++v50;
      if (v51)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_15:
  v41 = (v51 - 1) & v51;
  v52 = *(*(v36 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v51)))));
  if (v52)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_229429864(v36);
  v38 = v88;
  v37 = v88 >> 62;
  if (!(v88 >> 62))
  {
    v60 = v91;
    v59 = v92;
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_46:
  v78 = sub_22944FBD4();
  v60 = v91;
  v59 = v92;
  if (!v78)
  {
    goto LABEL_36;
  }

LABEL_27:
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v61 = sub_22944F174();
    __swift_project_value_buffer(v61, qword_2813DBFB8);
    swift_bridgeObjectRetain_n();
    v62 = sub_22944F154();
    v63 = sub_22944FA84();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v97[0] = v65;
      *v64 = 136315394;
      v66 = sub_22944FF44();
      v68 = sub_2293D4824(v66, v67, v97);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2048;
      v38 = v88;
      if (v37)
      {
        v69 = sub_22944FBD4();
      }

      else
      {
        v69 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v64 + 14) = v69;

      _os_log_impl(&dword_2293D1000, v62, v63, "[%s] Cleaning %ld records", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AACCC00](v65, -1, -1);
      MEMORY[0x22AACCC00](v64, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  sub_22941DC8C(v38, v59, v60);
LABEL_36:

  if (*(v99 + 16))
  {
    sub_229428B04(v99, v59, v60);
  }

  else
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v70 = sub_22944F174();
      __swift_project_value_buffer(v70, qword_2813DBFB8);
      v71 = sub_22944F154();
      v72 = sub_22944FA84();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v97[0] = v74;
        *v73 = 136315138;
        v75 = sub_22944FF44();
        v77 = sub_2293D4824(v75, v76, v97);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_2293D1000, v71, v72, "[%s] No records meeting the deletion requirements", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        MEMORY[0x22AACCC00](v74, -1, -1);
        MEMORY[0x22AACCC00](v73, -1, -1);
      }
    }
  }
}

void HDMCPregnancyFeatureAdjustmentManager.cleanUpRecords<A>(experienceStore:experienceModel:codableExperienceModel:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v96 = a4;
  v97 = a5;
  v98 = a1;
  v99 = a3;
  ObjectType = swift_getObjectType();
  v92 = sub_22944F0B4();
  v88 = *(v92 - 8);
  v9 = MEMORY[0x28223BE20](v92);
  v91 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v84 - v11;
  v12 = sub_22944F054();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v106 = MEMORY[0x277D84FA0];
  v105 = MEMORY[0x277D84F90];
  v94 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(a2, v19);
  sub_22944F044();
  sub_22944F034();
  v20 = [a2 pregnancyModeSetupCompletionSet];
  v21 = sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  v22 = sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v93 = v21;
  v89 = v22;
  v23 = sub_22944F9B4();

  v101 = v16;
  v102 = ObjectType;
  v95 = ObjectType;
  sub_22941F490(sub_229428924, v100, v23);
  v25 = v24;
  v26 = *(v13 + 8);
  v26(v18, v12);
  v87 = v12;
  v86 = v13 + 8;
  v26(v16, v12);
  v107 = v94;
  sub_229423E54(v25);
  HDMCPregnancyFeatureAdjustmentManager.updateRecordsForManualFeatureAdjustments<A>(records:experienceStore:codableExperienceModel:)(v107, v98, v99, v96);

  sub_2294364B8();
  v27 = sub_22944320C();

  v85 = v6;
  v29 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(v27, v28);
  sub_22944F044();
  sub_22944F034();
  v84 = v27;
  v30 = [v27 pregnancyModeSetupCompletionSet];
  v31 = sub_22944F9B4();

  MEMORY[0x28223BE20](v32);
  v33 = v95;
  *(&v84 - 2) = v16;
  *(&v84 - 1) = v33;
  sub_22941F490(sub_22942B4F8, (&v84 - 4), v31);
  v35 = v34;
  v36 = v87;
  v26(v18, v87);
  v26(v16, v36);
  v107 = v29;
  sub_229423E54(v35);
  v37 = sub_22944919C(v107);

  if ((v37 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_22944FA04();
    v37 = v107;
    v38 = v108;
    v39 = v109;
    v40 = v110;
    v41 = v111;
  }

  else
  {
    v40 = 0;
    v42 = -1 << *(v37 + 32);
    v38 = v37 + 56;
    v39 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v37 + 56);
  }

  v89 = v39;
  v45 = (v39 + 64) >> 6;
  v94 = (v88 + 8);
  v46 = MEMORY[0x277D84F90];
LABEL_8:
  v93 = v46;
  while (1)
  {
    v50 = v40;
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    v54 = sub_22944FC04();
    if (!v54)
    {
      goto LABEL_25;
    }

    v103 = v54;
    swift_dynamicCast();
    v53 = v104[0];
    if (!v104[0])
    {
      goto LABEL_25;
    }

LABEL_19:
    v55 = [v53 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
    v56 = sub_22944F9B4();

    v57 = *(v56 + 16);

    if (v57)
    {
      v58 = _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(v53);
      if ((sub_22944FB04() & 1) == 0)
      {
        v59 = v58;
        MEMORY[0x22AACB780]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22944F954();
        }

        sub_22944F974();

        v46 = v105;
        goto LABEL_8;
      }
    }

    else
    {
      v47 = [v53 sampleUUID];
      v48 = v91;
      sub_22944F094();

      v49 = v90;
      sub_229424114(v90, v48);

      (*v94)(v49, v92);
    }
  }

  v51 = v40;
  v52 = v41;
  if (!v41)
  {
    while (1)
    {
      v40 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
        goto LABEL_25;
      }

      v52 = *(v38 + 8 * v40);
      ++v51;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_15:
  v41 = (v52 - 1) & v52;
  v53 = *(*(v37 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v52)))));
  if (v53)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_229429864(v37);
  v40 = v93;
  v50 = v93 >> 62;
  if (!(v93 >> 62))
  {
    v60 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_27;
  }

LABEL_47:
  v60 = sub_22944FBD4();
LABEL_27:
  v62 = v96;
  v61 = v97;
  v63 = v85;
  v64 = v98;
  v65 = v99;
  if (v60)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v66 = sub_22944F174();
      __swift_project_value_buffer(v66, qword_2813DBFB8);
      swift_bridgeObjectRetain_n();
      v67 = sub_22944F154();
      v68 = sub_22944FA84();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v104[0] = v70;
        *v69 = 136315394;
        v71 = sub_22944FF44();
        v73 = sub_2293D4824(v71, v72, v104);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2048;
        if (v50)
        {
          v74 = v93;
          v75 = sub_22944FBD4();
        }

        else
        {
          v74 = v93;
          v75 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v65 = v99;

        *(v69 + 14) = v75;

        _os_log_impl(&dword_2293D1000, v67, v68, "[%s] Cleaning %ld records", v69, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        MEMORY[0x22AACCC00](v70, -1, -1);
        MEMORY[0x22AACCC00](v69, -1, -1);

        v64 = v98;
        v40 = v74;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(v40, v65, v64, v62);
  }

  if (*(v106 + 16))
  {
    sub_2294291B8(v106, v65, v64, v63, v62, v61);
  }

  else
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v76 = sub_22944F174();
      __swift_project_value_buffer(v76, qword_2813DBFB8);
      v77 = sub_22944F154();
      v78 = sub_22944FA84();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v104[0] = v80;
        *v79 = 136315138;
        v81 = sub_22944FF44();
        v83 = sub_2293D4824(v81, v82, v104);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_2293D1000, v77, v78, "[%s] No records meeting the deletion requirements", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x22AACCC00](v80, -1, -1);
        MEMORY[0x22AACCC00](v79, -1, -1);
      }
    }
  }
}

void sub_229417FF8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void), void (*a6)(void))
{
  v202 = a6;
  v203 = a5;
  v198 = a2;
  v199 = a4;
  ObjectType = swift_getObjectType();
  sub_22942A804(0);
  v189 = v9;
  MEMORY[0x28223BE20](v9);
  v191 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  v196 = v11;
  v197 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v194 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v195 = &v182 - v15;
  sub_2293D7574(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v190 = &v182 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v193 = &v182 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v192 = &v182 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v182 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v182 - v29;
  v31 = sub_22944F0B4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v6;
  v204 = sub_22941B6F8();
  if (!v204 || (v35 = [v204 objectForKeyedSubscript_], v36 = objc_msgSend(v35, sel_areAllRequirementsSatisfied), v35, !v36))
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v46 = sub_22944F174();
      __swift_project_value_buffer(v46, qword_2813DBFB8);
      v38 = sub_22944F154();
      v39 = sub_22944FA84();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_15;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v205[0] = v41;
      *v40 = 136315138;
      v47 = sub_22944FF44();
      v49 = sub_2293D4824(v47, v48, v205);

      *(v40 + 4) = v49;
      v45 = "[%s] LCF Notifications are either not available or currently active. Not making adjustment";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([a1 state] == 1)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v37 = sub_22944F174();
      __swift_project_value_buffer(v37, qword_2813DBFB8);
      v38 = sub_22944F154();
      v39 = sub_22944FA84();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_15;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v205[0] = v41;
      *v40 = 136315138;
      v42 = sub_22944FF44();
      v44 = sub_2293D4824(v42, v43, v205);

      *(v40 + 4) = v44;
      v45 = "[%s] Pregnancy state is ongoing. Not making adjustment";
LABEL_14:
      _os_log_impl(&dword_2293D1000, v38, v39, v45, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x22AACCC00](v41, -1, -1);
      MEMORY[0x22AACCC00](v40, -1, -1);
LABEL_15:
    }

LABEL_16:
    v203();
LABEL_17:
    v50 = v204;

    return;
  }

  if (![a1 state])
  {
    sub_22942986C(*MEMORY[0x277D11930], a3);
    if (v88 >> 62)
    {
      v176 = v88;
      v177 = sub_22944FBD4();
      v88 = v176;
      if (v177)
      {
        goto LABEL_37;
      }
    }

    else if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_37:
      sub_22941B9A8(v88, v198, v199, v203, v202);

      return;
    }

    if ((HKShowSensitiveLogItems() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v178 = sub_22944F174();
    __swift_project_value_buffer(v178, qword_2813DBFB8);
    v38 = sub_22944F154();
    v39 = sub_22944FA84();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_15;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v205[0] = v41;
    *v40 = 136315138;
    v179 = sub_22944FF44();
    v181 = sub_2293D4824(v179, v180, v205);

    *(v40 + 4) = v181;
    v45 = "[%s] Pregnancy state is none and we don't have any setup records needing an update. Not making adjustment";
    goto LABEL_14;
  }

  if ([a1 state] != 2)
  {
    goto LABEL_17;
  }

  v51 = [a1 sample];
  if (!v51)
  {
    if ((HKShowSensitiveLogItems() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v89 = sub_22944F174();
    __swift_project_value_buffer(v89, qword_2813DBFB8);
    v38 = sub_22944F154();
    v39 = sub_22944FA64();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_15;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v205[0] = v41;
    *v40 = 136315138;
    v90 = sub_22944FF44();
    v92 = sub_2293D4824(v90, v91, v205);

    *(v40 + 4) = v92;
    v45 = "[%s] Pregnancy state is in post pregnancy but we do not have a sample. This should not happen. Not making adjustment";
    goto LABEL_14;
  }

  v188 = v51;
  v52 = [v51 UUID];
  sub_22944F094();

  v53 = [a3 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v54 = sub_22944F9B4();

  MEMORY[0x28223BE20](v55);
  *(&v182 - 2) = v34;
  sub_22941EDE4(sub_22942B514, (&v182 - 4), v54);
  v57 = v56;

  (*(v32 + 8))(v34, v31);
  if (!v57)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v93 = sub_22944F174();
      __swift_project_value_buffer(v93, qword_2813DBFB8);
      v94 = sub_22944F154();
      v95 = sub_22944FA84();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v205[0] = v97;
        *v96 = 136315138;
        v98 = sub_22944FF44();
        v100 = sub_2293D4824(v98, v99, v205);

        *(v96 + 4) = v100;
        _os_log_impl(&dword_2293D1000, v94, v95, "[%s] Pregnancy state is in post pregnancy but we do not have a corresponding setup record, not making adjustment", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        MEMORY[0x22AACCC00](v97, -1, -1);
        MEMORY[0x22AACCC00](v96, -1, -1);
      }
    }

    v203();

    return;
  }

  v187 = v57;
  v58 = [v57 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v59 = sub_22944F9B4();

  v60 = *MEMORY[0x277D11930];
  LOBYTE(v58) = sub_22941BFE8(*MEMORY[0x277D11930], v59);

  v61 = v196;
  if ((v58 & 1) == 0)
  {
    v62 = [v187 postPregnancyFeatureAdjustmentCompletionLog];
    v63 = sub_22944F7F4();

    if (!*(v63 + 16) || (v64 = sub_22942707C(v60), (v65 & 1) == 0))
    {

      (*(v197 + 56))(v30, 1, 1, v61);
      sub_2293D83E8(v30, sub_2293D7574);
      v101 = HKShowSensitiveLogItems();
      v102 = v187;
      if (v101)
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v103 = sub_22944F174();
        __swift_project_value_buffer(v103, qword_2813DBFB8);
        v104 = sub_22944F154();
        v105 = sub_22944FA84();
        if (!os_log_type_enabled(v104, v105))
        {
          goto LABEL_66;
        }

        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v205[0] = v107;
        *v106 = 136315138;
        v108 = sub_22944FF44();
        v110 = sub_2293D4824(v108, v109, v205);

        *(v106 + 4) = v110;
        v111 = "[%s] Does not require the cardio fitness adjustment, not making adjustment";
        goto LABEL_65;
      }

LABEL_67:
      v203();

      return;
    }

    v66 = v197;
    (*(v197 + 16))(v30, *(v63 + 56) + *(v197 + 72) * v64, v61);

    (*(v66 + 56))(v30, 0, 1, v61);
    sub_2293D83E8(v30, sub_2293D7574);
  }

  v67 = [a1 physiologicalWashoutEndDate];
  if (!v67)
  {
LABEL_58:
    v102 = v187;
    v112 = [v187 postPregnancyFeatureAdjustmentCompletionLog];
    v113 = sub_22944F7F4();

    if (!*(v113 + 16) || (v114 = sub_22942707C(v60), (v115 & 1) == 0))
    {

      (*(v197 + 56))(v19, 1, 1, v61);
      sub_2293D83E8(v19, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v122 = sub_22944F174();
        __swift_project_value_buffer(v122, qword_2813DBFB8);
        v123 = sub_22944F154();
        v124 = sub_22944FA84();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v205[0] = v126;
          *v125 = 136315138;
          v127 = sub_22944FF44();
          v129 = sub_2293D4824(v127, v128, v205);

          *(v125 + 4) = v129;
          _os_log_impl(&dword_2293D1000, v123, v124, "[%s)] Physiological washout date has passed, but we have not yet adjusted features, making adjustment", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v126);
          v130 = v126;
          v102 = v187;
          MEMORY[0x22AACCC00](v130, -1, -1);
          MEMORY[0x22AACCC00](v125, -1, -1);
        }
      }

      sub_2293D3AF0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_229454440;
      *(v131 + 32) = v102;
      v132 = v102;
      sub_22941B9A8(v131, v198, v199, v203, v202);

      return;
    }

    v116 = v197;
    (*(v197 + 16))(v19, *(v113 + 56) + *(v197 + 72) * v114, v61);

    (*(v116 + 56))(v19, 0, 1, v61);
    sub_2293D83E8(v19, sub_2293D7574);
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v117 = sub_22944F174();
      __swift_project_value_buffer(v117, qword_2813DBFB8);
      v104 = sub_22944F154();
      v105 = sub_22944FA84();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_66;
      }

      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v205[0] = v107;
      *v106 = 136315138;
      v118 = sub_22944FF44();
      v120 = sub_2293D4824(v118, v119, v205);

      *(v106 + 4) = v120;
      v111 = "[%s] Physiological washout date has passed, and we have a post pregnancy adjustment date. No more work needed here.";
LABEL_65:
      _os_log_impl(&dword_2293D1000, v104, v105, v111, v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      v121 = v107;
      v102 = v187;
      MEMORY[0x22AACCC00](v121, -1, -1);
      MEMORY[0x22AACCC00](v106, -1, -1);
LABEL_66:

      goto LABEL_67;
    }

    goto LABEL_67;
  }

  v186 = v60;
  v68 = v195;
  v69 = v67;
  sub_22944F014();

  v70 = v194;
  sub_22944F044();
  LOBYTE(v69) = sub_22944EFE4();
  v72 = v197 + 8;
  v71 = *(v197 + 8);
  v71(v70, v61);
  if ((v69 & 1) == 0)
  {
    v71(v68, v61);
    v60 = v186;
    goto LABEL_58;
  }

  v184 = v72;
  v185 = v71;
  v73 = [v187 postPregnancyFeatureAdjustmentCompletionLog];
  v74 = sub_22944F7F4();

  if (*(v74 + 16))
  {
    v75 = sub_22942707C(v186);
    if (v76)
    {
      v77 = *(v74 + 56);
      v78 = v197;
      v182 = *(v197 + 72);
      v79 = v187;
      v183 = *(v197 + 16);
      v183(v28, v77 + v182 * v75, v61);

      v80 = v61;
      v81 = *(v78 + 56);
      v82 = 1;
      v81(v28, 0, 1, v80);
      sub_2293D83E8(v28, sub_2293D7574);
      v83 = [v79 postPregnancyFeatureAdjustmentCompletionLog];
      v84 = sub_22944F7F4();

      if (*(v84 + 16))
      {
        v85 = sub_22942707C(v186);
        v86 = v193;
        if (v87)
        {
          v183(v192, *(v84 + 56) + v85 * v182, v196);
          v82 = 0;
        }
      }

      else
      {
        v86 = v193;
      }

      v144 = v192;
      v145 = v82;
      v146 = v196;
      v81(v192, v145, 1, v196);
      sub_22944EFA4();
      v81(v86, 0, 1, v146);
      v147 = v146;
      v148 = *(v189 + 48);
      v149 = v191;
      sub_22942A888(v144, v191);
      sub_22942A888(v86, v149 + v148);
      v150 = *(v197 + 48);
      v151 = v150(v149, 1, v146);
      v152 = v190;
      if (v151 == 1)
      {
        sub_2293D83E8(v86, sub_2293D7574);
        sub_2293D83E8(v144, sub_2293D7574);
        if (v150(v149 + v148, 1, v146) == 1)
        {
          sub_2293D83E8(v149, sub_2293D7574);
LABEL_97:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v168 = sub_22944F174();
            __swift_project_value_buffer(v168, qword_2813DBFB8);
            v169 = sub_22944F154();
            v170 = sub_22944FA84();
            if (os_log_type_enabled(v169, v170))
            {
              v171 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v205[0] = v172;
              *v171 = 136315138;
              v173 = sub_22944FF44();
              v175 = sub_2293D4824(v173, v174, v205);

              *(v171 + 4) = v175;
              v147 = v196;
              _os_log_impl(&dword_2293D1000, v169, v170, "[%s] Physiological washout date has not yet passed, but the user has adjusted their notifications to be on again", v171, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v172);
              MEMORY[0x22AACCC00](v172, -1, -1);
              MEMORY[0x22AACCC00](v171, -1, -1);
            }
          }

          v203();

LABEL_104:
          v185(v195, v147);
          return;
        }
      }

      else
      {
        sub_22942A888(v149, v190);
        if (v150(v149 + v148, 1, v146) != 1)
        {
          v164 = v194;
          (*(v197 + 32))(v194, v149 + v148, v146);
          sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v165 = sub_22944F854();
          v166 = v164;
          v167 = v185;
          v185(v166, v147);
          sub_2293D83E8(v193, sub_2293D7574);
          sub_2293D83E8(v144, sub_2293D7574);
          v167(v152, v147);
          sub_2293D83E8(v149, sub_2293D7574);
          if (v165)
          {
            goto LABEL_97;
          }

LABEL_89:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v153 = sub_22944F174();
            __swift_project_value_buffer(v153, qword_2813DBFB8);
            v154 = sub_22944F154();
            v155 = sub_22944FA84();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              v157 = swift_slowAlloc();
              v205[0] = v157;
              *v156 = 136315138;
              v158 = sub_22944FF44();
              v160 = sub_2293D4824(v158, v159, v205);

              *(v156 + 4) = v160;
              v147 = v196;
              _os_log_impl(&dword_2293D1000, v154, v155, "[%s)] Physiological washout date has not passed, but we have an adjustment date! We made a mistake - reverting adjustment", v156, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v157);
              MEMORY[0x22AACCC00](v157, -1, -1);
              MEMORY[0x22AACCC00](v156, -1, -1);
            }
          }

          sub_2293D3AF0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8);
          v161 = swift_allocObject();
          *(v161 + 16) = xmmword_229454440;
          v162 = v187;
          *(v161 + 32) = v187;
          v163 = v162;
          sub_22941C13C(v161, v198, v199, v203, v202);

          goto LABEL_104;
        }

        sub_2293D83E8(v193, sub_2293D7574);
        sub_2293D83E8(v144, sub_2293D7574);
        v185(v152, v146);
      }

      sub_2293D83E8(v149, sub_22942A804);
      goto LABEL_89;
    }
  }

  (*(v197 + 56))(v28, 1, 1, v61);
  sub_2293D83E8(v28, sub_2293D7574);
  v133 = HKShowSensitiveLogItems();
  v134 = v187;
  if (v133)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v135 = sub_22944F174();
    __swift_project_value_buffer(v135, qword_2813DBFB8);
    v136 = sub_22944F154();
    v137 = sub_22944FA84();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v205[0] = v139;
      *v138 = 136315138;
      v140 = sub_22944FF44();
      v142 = sub_2293D4824(v140, v141, v205);
      v68 = v195;

      *(v138 + 4) = v142;
      v61 = v196;
      _os_log_impl(&dword_2293D1000, v136, v137, "[%s] Physiological washout date has not yet passed, and we do not have a post pregnancy adjustment date. No adjustment needed yet.", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v139);
      v143 = v139;
      v134 = v187;
      MEMORY[0x22AACCC00](v143, -1, -1);
      MEMORY[0x22AACCC00](v138, -1, -1);
    }
  }

  v203();

  v185(v68, v61);
}

void HDMCPregnancyFeatureAdjustmentManager.updateCardioFitnessSettingsIfNecessary<A>(for:experienceStore:experienceModel:codableExperienceModel:completion:)(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void), void (*a6)(void), uint64_t a7, char *a8)
{
  v194 = a7;
  v195 = a8;
  v198 = a6;
  v199 = a5;
  v192 = a2;
  v193 = a4;
  ObjectType = swift_getObjectType();
  sub_22942A804(0);
  v184 = v11;
  MEMORY[0x28223BE20](v11);
  v186 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22944F054();
  v14 = *(v13 - 8);
  v190 = v13;
  v191 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v188 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v189 = &v176 - v17;
  sub_2293D7574(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v183 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v187 = &v176 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v185 = &v176 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v176 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v176 - v31;
  v33 = sub_22944F0B4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v8;
  v200 = sub_22941B6F8();
  if (!v200 || (v37 = [v200 objectForKeyedSubscript_], v38 = objc_msgSend(v37, sel_areAllRequirementsSatisfied), v37, !v38))
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v48 = sub_22944F174();
      __swift_project_value_buffer(v48, qword_2813DBFB8);
      v40 = sub_22944F154();
      v41 = sub_22944FA84();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v201[0] = v43;
      *v42 = 136315138;
      v49 = sub_22944FF44();
      v51 = sub_2293D4824(v49, v50, v201);

      *(v42 + 4) = v51;
      v47 = "[%s] LCF Notifications are either not available or currently active. Not making adjustment";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([a1 state] == 1)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v39 = sub_22944F174();
      __swift_project_value_buffer(v39, qword_2813DBFB8);
      v40 = sub_22944F154();
      v41 = sub_22944FA84();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v201[0] = v43;
      *v42 = 136315138;
      v44 = sub_22944FF44();
      v46 = sub_2293D4824(v44, v45, v201);

      *(v42 + 4) = v46;
      v47 = "[%s] Pregnancy state is ongoing. Not making adjustment";
LABEL_14:
      _os_log_impl(&dword_2293D1000, v40, v41, v47, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AACCC00](v43, -1, -1);
      MEMORY[0x22AACCC00](v42, -1, -1);
LABEL_15:
    }

LABEL_16:
    v199();
LABEL_17:
    v52 = v200;

    return;
  }

  if (![a1 state])
  {
    sub_22942986C(*MEMORY[0x277D11930], a3);
    if (v89 >> 62)
    {
      v170 = v89;
      v171 = sub_22944FBD4();
      v89 = v170;
      if (v171)
      {
        goto LABEL_37;
      }
    }

    else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_37:
      sub_22941BE80(v89, v192, v193, v199, v198, v194, v195);

      return;
    }

    if (!HKShowSensitiveLogItems())
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v172 = sub_22944F174();
    __swift_project_value_buffer(v172, qword_2813DBFB8);
    v40 = sub_22944F154();
    v41 = sub_22944FA84();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_15;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v201[0] = v43;
    *v42 = 136315138;
    v173 = sub_22944FF44();
    v175 = sub_2293D4824(v173, v174, v201);

    *(v42 + 4) = v175;
    v47 = "[%s] Pregnancy state is none and we don't have any setup records needing an update. Not making adjustment";
    goto LABEL_14;
  }

  if ([a1 state] != 2)
  {
    goto LABEL_17;
  }

  v53 = [a1 sample];
  if (!v53)
  {
    if (!HKShowSensitiveLogItems())
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v90 = sub_22944F174();
    __swift_project_value_buffer(v90, qword_2813DBFB8);
    v40 = sub_22944F154();
    v41 = sub_22944FA64();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_15;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v201[0] = v43;
    *v42 = 136315138;
    v91 = sub_22944FF44();
    v93 = sub_2293D4824(v91, v92, v201);

    *(v42 + 4) = v93;
    v47 = "[%s] Pregnancy state is in post pregnancy but we do not have a sample. This should not happen. Not making adjustment";
    goto LABEL_14;
  }

  v182 = v53;
  v54 = [v53 UUID];
  sub_22944F094();

  v55 = [a3 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v56 = sub_22944F9B4();

  MEMORY[0x28223BE20](v57);
  *(&v176 - 2) = v36;
  sub_22941EDE4(sub_22942A868, (&v176 - 4), v56);
  v59 = v58;

  (*(v34 + 8))(v36, v33);
  if (!v59)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v94 = sub_22944F174();
      __swift_project_value_buffer(v94, qword_2813DBFB8);
      v95 = sub_22944F154();
      v96 = sub_22944FA84();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v201[0] = v98;
        *v97 = 136315138;
        v99 = sub_22944FF44();
        v101 = sub_2293D4824(v99, v100, v201);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_2293D1000, v95, v96, "[%s] Pregnancy state is in post pregnancy but we do not have a corresponding setup record, not making adjustment", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
        MEMORY[0x22AACCC00](v98, -1, -1);
        MEMORY[0x22AACCC00](v97, -1, -1);
      }
    }

    v199();

    v102 = v182;
    goto LABEL_68;
  }

  v181 = v59;
  v60 = [v59 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v61 = sub_22944F9B4();

  v180 = *MEMORY[0x277D11930];
  LOBYTE(v60) = sub_22941BFE8(v180, v61);

  v62 = v190;
  v63 = v191;
  if ((v60 & 1) == 0)
  {
    v64 = [v181 postPregnancyFeatureAdjustmentCompletionLog];
    v65 = sub_22944F7F4();

    if (!*(v65 + 16) || (v66 = sub_22942707C(v180), (v67 & 1) == 0))
    {

      (*(v63 + 56))(v32, 1, 1, v62);
      sub_2293D83E8(v32, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v103 = sub_22944F174();
        __swift_project_value_buffer(v103, qword_2813DBFB8);
        v104 = sub_22944F154();
        v105 = sub_22944FA84();
        if (!os_log_type_enabled(v104, v105))
        {
          goto LABEL_66;
        }

        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v201[0] = v107;
        *v106 = 136315138;
        v108 = sub_22944FF44();
        v110 = sub_2293D4824(v108, v109, v201);

        *(v106 + 4) = v110;
        v111 = "[%s] Does not require the cardio fitness adjustment, not making adjustment";
        goto LABEL_65;
      }

LABEL_67:
      v199();

      v102 = v181;
LABEL_68:

      return;
    }

    (*(v63 + 16))(v32, *(v65 + 56) + *(v63 + 72) * v66, v62);

    (*(v63 + 56))(v32, 0, 1, v62);
    sub_2293D83E8(v32, sub_2293D7574);
  }

  v68 = [a1 physiologicalWashoutEndDate];
  if (v68)
  {
    v69 = v189;
    v70 = v68;
    sub_22944F014();

    v71 = v188;
    sub_22944F044();
    LOBYTE(v70) = sub_22944EFE4();
    v72 = *(v63 + 8);
    v179 = v63 + 8;
    v72(v71, v62);
    if (v70)
    {
      v178 = v72;
      v73 = [v181 postPregnancyFeatureAdjustmentCompletionLog];
      v74 = sub_22944F7F4();

      if (!*(v74 + 16) || (v75 = sub_22942707C(v180), (v76 & 1) == 0))
      {

        (*(v191 + 56))(v30, 1, 1, v62);
        sub_2293D83E8(v30, sub_2293D7574);
        if (HKShowSensitiveLogItems())
        {
          if (qword_2813DBFB0 != -1)
          {
            swift_once();
          }

          v131 = sub_22944F174();
          __swift_project_value_buffer(v131, qword_2813DBFB8);
          v132 = sub_22944F154();
          v133 = sub_22944FA84();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v201[0] = v135;
            *v134 = 136315138;
            v136 = sub_22944FF44();
            v138 = sub_2293D4824(v136, v137, v201);
            v62 = v190;

            *(v134 + 4) = v138;
            _os_log_impl(&dword_2293D1000, v132, v133, "[%s] Physiological washout date has not yet passed, and we do not have a post pregnancy adjustment date. No adjustment needed yet.", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v135);
            v139 = v135;
            v69 = v189;
            MEMORY[0x22AACCC00](v139, -1, -1);
            MEMORY[0x22AACCC00](v134, -1, -1);
          }
        }

        v199();

        goto LABEL_107;
      }

      v77 = *(v74 + 56);
      v78 = v191;
      v176 = *(v191 + 72);
      v79 = v181;
      v177 = *(v191 + 16);
      v177(v30, v77 + v176 * v75, v62);

      v80 = *(v78 + 56);
      v81 = 1;
      v80(v30, 0, 1, v62);
      sub_2293D83E8(v30, sub_2293D7574);
      v82 = v79;
      v83 = [v79 postPregnancyFeatureAdjustmentCompletionLog];
      v84 = sub_22944F7F4();

      if (*(v84 + 16))
      {
        v85 = sub_22942707C(v180);
        v86 = v185;
        v87 = v187;
        if (v88)
        {
          v177(v185, *(v84 + 56) + v85 * v176, v190);
          v81 = 0;
        }

        else
        {
          v81 = 1;
        }

        v140 = v82;
      }

      else
      {
        v140 = v82;
        v86 = v185;
        v87 = v187;
      }

      v62 = v190;
      v80(v86, v81, 1, v190);
      sub_22944EFA4();
      v80(v87, 0, 1, v62);
      v141 = *(v184 + 48);
      v142 = v186;
      sub_22942A888(v86, v186);
      sub_22942A888(v87, v142 + v141);
      v143 = *(v191 + 48);
      if (v143(v142, 1, v62) == 1)
      {
        sub_2293D83E8(v87, sub_2293D7574);
        sub_2293D83E8(v86, sub_2293D7574);
        v144 = v143(v142 + v141, 1, v62);
        v69 = v189;
        if (v144 == 1)
        {
          sub_2293D83E8(v142, sub_2293D7574);
LABEL_100:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v161 = sub_22944F174();
            __swift_project_value_buffer(v161, qword_2813DBFB8);
            v162 = sub_22944F154();
            v163 = sub_22944FA84();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              v201[0] = v165;
              *v164 = 136315138;
              v166 = sub_22944FF44();
              v168 = sub_2293D4824(v166, v167, v201);
              v62 = v190;

              *(v164 + 4) = v168;
              _os_log_impl(&dword_2293D1000, v162, v163, "[%s] Physiological washout date has not yet passed, but the user has adjusted their notifications to be on again", v164, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v165);
              v169 = v165;
              v69 = v189;
              MEMORY[0x22AACCC00](v169, -1, -1);
              MEMORY[0x22AACCC00](v164, -1, -1);
            }
          }

          v199();

LABEL_107:
          v178(v69, v62);
          return;
        }
      }

      else
      {
        v145 = v183;
        sub_22942A888(v142, v183);
        if (v143(v142 + v141, 1, v62) != 1)
        {
          v157 = v188;
          (*(v191 + 32))(v188, v142 + v141, v62);
          sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v158 = sub_22944F854();
          v159 = v157;
          v160 = v178;
          v178(v159, v62);
          sub_2293D83E8(v187, sub_2293D7574);
          sub_2293D83E8(v86, sub_2293D7574);
          v160(v145, v62);
          sub_2293D83E8(v142, sub_2293D7574);
          v69 = v189;
          if (v158)
          {
            goto LABEL_100;
          }

LABEL_92:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v146 = sub_22944F174();
            __swift_project_value_buffer(v146, qword_2813DBFB8);
            v147 = sub_22944F154();
            v148 = sub_22944FA84();
            if (os_log_type_enabled(v147, v148))
            {
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              v201[0] = v150;
              *v149 = 136315138;
              v151 = sub_22944FF44();
              v153 = sub_2293D4824(v151, v152, v201);
              v62 = v190;

              *(v149 + 4) = v153;
              _os_log_impl(&dword_2293D1000, v147, v148, "[%s)] Physiological washout date has not passed, but we have an adjustment date! We made a mistake - reverting adjustment", v149, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v150);
              v154 = v150;
              v69 = v189;
              MEMORY[0x22AACCC00](v154, -1, -1);
              MEMORY[0x22AACCC00](v149, -1, -1);
            }
          }

          sub_2293D3AF0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8);
          v155 = swift_allocObject();
          *(v155 + 16) = xmmword_229454440;
          *(v155 + 32) = v140;
          v156 = v140;
          sub_22941C614(v155, v192, v193, v199, v198, v194, v195);

          goto LABEL_107;
        }

        sub_2293D83E8(v187, sub_2293D7574);
        sub_2293D83E8(v86, sub_2293D7574);
        v178(v145, v62);
        v69 = v189;
      }

      sub_2293D83E8(v142, sub_22942A804);
      goto LABEL_92;
    }

    v72(v69, v62);
  }

  v112 = [v181 postPregnancyFeatureAdjustmentCompletionLog];
  v113 = sub_22944F7F4();

  if (*(v113 + 16))
  {
    v114 = sub_22942707C(v180);
    if (v115)
    {
      (*(v63 + 16))(v21, *(v113 + 56) + *(v63 + 72) * v114, v62);

      (*(v63 + 56))(v21, 0, 1, v62);
      sub_2293D83E8(v21, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v116 = sub_22944F174();
        __swift_project_value_buffer(v116, qword_2813DBFB8);
        v104 = sub_22944F154();
        v105 = sub_22944FA84();
        if (!os_log_type_enabled(v104, v105))
        {
          goto LABEL_66;
        }

        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v201[0] = v107;
        *v106 = 136315138;
        v117 = sub_22944FF44();
        v119 = sub_2293D4824(v117, v118, v201);

        *(v106 + 4) = v119;
        v111 = "[%s] Physiological washout date has passed, and we have a post pregnancy adjustment date. No more work needed here.";
LABEL_65:
        _os_log_impl(&dword_2293D1000, v104, v105, v111, v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x22AACCC00](v107, -1, -1);
        MEMORY[0x22AACCC00](v106, -1, -1);
LABEL_66:

        goto LABEL_67;
      }

      goto LABEL_67;
    }
  }

  (*(v63 + 56))(v21, 1, 1, v62);
  sub_2293D83E8(v21, sub_2293D7574);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v120 = sub_22944F174();
    __swift_project_value_buffer(v120, qword_2813DBFB8);
    v121 = sub_22944F154();
    v122 = sub_22944FA84();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v201[0] = v124;
      *v123 = 136315138;
      v125 = sub_22944FF44();
      v127 = sub_2293D4824(v125, v126, v201);

      *(v123 + 4) = v127;
      _os_log_impl(&dword_2293D1000, v121, v122, "[%s)] Physiological washout date has passed, but we have not yet adjusted features, making adjustment", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v124);
      MEMORY[0x22AACCC00](v124, -1, -1);
      MEMORY[0x22AACCC00](v123, -1, -1);
    }
  }

  sub_2293D3AF0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_229454440;
  v129 = v181;
  *(v128 + 32) = v181;
  v130 = v129;
  sub_22941BE80(v128, v192, v193, v199, v198, v194, v195);
}

id HDMCPregnancyFeatureAdjustmentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDMCPregnancyFeatureAdjustmentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HDMCPregnancyFeatureAdjustmentManager.experienceModelManagerDidUpdateModel()()
{
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v0 = sub_22944F174();
    __swift_project_value_buffer(v0, qword_2813DBFB8);
    v1 = sub_22944F154();
    v2 = sub_22944FA84();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136315138;
      v5 = sub_22944FF44();
      v7 = sub_2293D4824(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_2293D1000, v1, v2, "[%s] Received experience model update", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      MEMORY[0x22AACCC00](v4, -1, -1);
      MEMORY[0x22AACCC00](v3, -1, -1);
    }
  }

  sub_2293D9118(2);
}

id sub_22941B6F8()
{
  v19[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager))
  {
    v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager);
    goto LABEL_5;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v3)
  {
    v4 = swift_unknownObjectUnownedLoadStrong();
    v5 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v3 healthDataSource:v4 currentCountryCode:0];
    swift_unknownObjectRelease();

    v1 = v5;
LABEL_5:
    v19[0] = 0;
    swift_unknownObjectRetain_n();
    v6 = [v1 featureStatusWithError_];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = v19[0];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = v19[0];
      v9 = sub_22944EF74();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    return v6;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v10 = sub_22944F174();
    __swift_project_value_buffer(v10, qword_2813DBFB8);
    v11 = sub_22944F154();
    v12 = sub_22944FA84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v15 = sub_22944FF44();
      v17 = sub_2293D4824(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2293D1000, v11, v12, "[%s] Not making LCF Feature Adjustment: Could not get cardio fitness feature availability provider", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AACCC00](v14, -1, -1);
      MEMORY[0x22AACCC00](v13, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_22941B9A8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v58 = a5;
  v59 = a4;
  v60 = a1;
  ObjectType = swift_getObjectType();
  sub_2293D7574(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  sub_22944F044();
  v18 = sub_22944F054();
  v19 = *(*(v18 - 8) + 56);
  v61 = v16;
  v19(v16, 0, 1, v18);
  v20 = *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  if (v20)
  {
    v53 = v6;
    v54 = v20;
    v55 = a3;
    v56 = a2;
    v57 = ObjectType;
    v21 = v17;
LABEL_5:
    v52 = *MEMORY[0x277CCC120];
    sub_22942A888(v61, v14);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v60;
    *(v30 + 16) = v21;
    *(v30 + 24) = v31;
    sub_22942AD9C(v14, v30 + v24);
    v32 = v53;
    *(v30 + v25) = v53;
    v33 = v55;
    v34 = v56;
    *(v30 + v26) = v55;
    *(v30 + v27) = v34;
    v35 = (v30 + v28);
    v36 = v58;
    v37 = v59;
    *v35 = v59;
    v35[1] = v36;
    *(v30 + v29) = v57;
    aBlock[4] = sub_22942B53C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor_28;
    v38 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v39 = v52;
    v40 = v21;

    v41 = v32;
    v42 = v33;

    sub_229428914(v37, v36);

    [v54 setFeatureSettingNumber:v40 forKey:v39 completion:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);

    swift_unknownObjectRelease();
    v17 = v39;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v53 = v6;
    v54 = v23;
    v55 = a3;
    v56 = a2;
    v57 = ObjectType;
    v21 = v17;
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_22944F174();
    __swift_project_value_buffer(v44, qword_2813DBFB8);
    v45 = sub_22944F154();
    v46 = sub_22944FA64();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      v49 = sub_22944FF44();
      v51 = sub_2293D4824(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2293D1000, v45, v46, "[%s] Could not get cardio fitness feature availability provider", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AACCC00](v48, -1, -1);
      MEMORY[0x22AACCC00](v47, -1, -1);
    }
  }

  if (v59)
  {
    v59();
  }

LABEL_6:

  return sub_2293D83E8(v61, sub_2293D7574);
}

uint64_t sub_22941BE80(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, char *a7)
{
  sub_2293D7574(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  sub_22944F044();
  v18 = sub_22944F054();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  sub_229420134(a1, a2, a3, v17, v16, a4, a5, a6, a7);

  return sub_2293D83E8(v16, sub_2293D7574);
}

uint64_t sub_22941BFE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_22944F894(), sub_22944FEC4(), sub_22944F8C4(), v3 = sub_22944FEE4(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_22944F894();
      v9 = v8;
      if (v7 == sub_22944F894() && v9 == v10)
      {
        break;
      }

      v12 = sub_22944FE24();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22941C13C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v56 = a5;
  v57 = a1;
  v59 = a4;
  ObjectType = swift_getObjectType();
  sub_2293D7574(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  v18 = sub_22944F054();
  v19 = *(*(v18 - 8) + 56);
  v58 = v16;
  v19(v16, 1, 1, v18);
  v20 = *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  if (v20)
  {
    v51 = v6;
    v52 = v20;
    v53 = a3;
    v54 = a2;
    v55 = ObjectType;
    v21 = v17;
LABEL_5:
    v50 = *MEMORY[0x277CCC120];
    sub_22942A888(v58, v14);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v57;
    *(v29 + 16) = v21;
    *(v29 + 24) = v30;
    sub_22942AD9C(v14, v29 + v24);
    v31 = v51;
    *(v29 + v25) = v51;
    v32 = v53;
    v33 = v54;
    *(v29 + v26) = v53;
    *(v29 + v27) = v33;
    v34 = (v29 + v28);
    v35 = v56;
    *v34 = v59;
    v34[1] = v35;
    *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
    aBlock[4] = sub_22942B27C;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor_21;
    v36 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v37 = v50;
    v38 = v21;

    v39 = v31;
    v40 = v32;

    sub_229428914(v59, v35);

    [v52 setFeatureSettingNumber:v38 forKey:v37 completion:v36];
    swift_unknownObjectRelease();
    _Block_release(v36);

    swift_unknownObjectRelease();
    v17 = v37;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v51 = v6;
    v52 = v23;
    v53 = a3;
    v54 = a2;
    v55 = ObjectType;
    v21 = v17;
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v42 = sub_22944F174();
    __swift_project_value_buffer(v42, qword_2813DBFB8);
    v43 = sub_22944F154();
    v44 = sub_22944FA64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315138;
      v47 = sub_22944FF44();
      v49 = sub_2293D4824(v47, v48, aBlock);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2293D1000, v43, v44, "[%s] Could not get cardio fitness feature availability provider", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AACCC00](v46, -1, -1);
      MEMORY[0x22AACCC00](v45, -1, -1);
    }
  }

  if (v59)
  {
    v59();
  }

LABEL_6:

  return sub_2293D83E8(v58, sub_2293D7574);
}

uint64_t sub_22941C614(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, char *a7)
{
  sub_2293D7574(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  v18 = sub_22944F054();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_229420134(a1, a2, a3, v17, v16, a4, a5, a6, a7);

  return sub_2293D83E8(v16, sub_2293D7574);
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(void *a1, uint64_t a2)
{
  v22 = a1;
  v21 = sub_22944F0B4();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = HDMCPregnancyFeatureAdjustmentManager.queryDeletedPregnancySamples()();
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v24 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_19:
      v23 = sub_22944FBD4();
    }

    else
    {
      v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v18 = (v2 + 8);
    v19 = v4 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F90];
    v7 = v20;
    while (v23 != v6)
    {
      if (v19)
      {
        v8 = MEMORY[0x22AACBB00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v17 = v6 + 1;
      v10 = [v8 UUID];
      sub_22944F094();

      v11 = [v22 pregnancyModeSetupCompletionSet];
      sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
      sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
      v12 = sub_22944F9B4();

      MEMORY[0x28223BE20](v13);
      *(&v16 - 2) = v7;
      sub_22941EDE4(sub_22942B514, (&v16 - 4), v12);
      v2 = v14;

      v15 = (*v18)(v7, v21);
      ++v6;
      if (v2)
      {
        MEMORY[0x22AACB780](v15);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22944F954();
        }

        sub_22944F974();
        v16 = v24;
        v6 = v17;
      }
    }

    return v16;
  }

  return result;
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.getStaleRecords(experienceModel:today:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22944F054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22944F034();
  v7 = [a1 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v8 = sub_22944F9B4();

  v13 = v6;
  v14 = ObjectType;
  sub_22941F490(sub_22942B4F8, v12, v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_22941CC08(unint64_t a1, uint64_t a2, void *a3)
{
  v67 = a3;
  v68 = a2;
  sub_2293D7574(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v60 - v9;
  v66 = sub_22944F0B4();
  v10 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22944F054();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x277D84F90];
  v78 = *MEMORY[0x277D11930];
  v84 = sub_22941E7F4(v78);
  v15 = *MEMORY[0x277D11938];
  v16 = *MEMORY[0x277D11938];
  v69 = v3;
  v83 = sub_22941E7F4(v16);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_38:
    v19 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  result = sub_22944FBD4();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_3:
  v65 = result - 1;
  if (result >= 1)
  {
    v73 = v8;
    v18 = 0;
    v81 = result;
    v82 = a1 & 0xC000000000000001;
    v80 = a1;
    v76 = a1 + 32;
    v77 = v15;
    v71 = (v13 + 48);
    v72 = (v13 + 56);
    v64 = (v13 + 8);
    v63 = (v10 + 8);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v70 = v19;
      v20 = v18;
      while (1)
      {
        if (v82)
        {
          v21 = MEMORY[0x22AACBB00](v20, v80);
        }

        else
        {
          v21 = *(v76 + 8 * v20);
        }

        v22 = v21;
        v23 = [v21 pregnancyAdjustedFeaturesSet];
        type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
        sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
        v24 = sub_22944F9B4();

        v86 = v24;
        v25 = [v22 postPregnancyFeatureAdjustmentCompletionLog];
        v26 = sub_22944F7F4();

        if (v84)
        {
          v27 = v78;
          if (sub_22941BFE8(v78, v24))
          {

            v28 = v79;
            sub_22944EFA4();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = v26;
            sub_229427B14(v28, v27, isUniquelyReferenced_nonNull_native);
            v26 = v85;
          }
        }

        v30 = v86;
        if (v83)
        {
          v31 = v77;
          if (sub_22941BFE8(v77, v86))
          {

            v32 = v79;
            sub_22944EFA4();
            v33 = swift_isUniquelyReferenced_nonNull_native();
            v85 = v26;
            sub_229427B14(v32, v31, v33);
            v30 = v86;
          }
        }

        v34 = *(v30 + 16);
        v35 = [v22 pregnancyAdjustedFeaturesSet];
        v36 = sub_22944F9B4();

        v37 = *(v36 + 16);

        if (v34 != v37)
        {
          break;
        }

        ++v20;

        if (v81 == v20)
        {
          v19 = v70;
          goto LABEL_33;
        }
      }

      v70 = [v22 version];
      v38 = [v22 sampleUUID];
      sub_22944F094();

      v39 = [v22 educationalStepsReviewDate];
      v40 = v74;
      if (v39)
      {
        v41 = v39;
        sub_22944F014();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = *v72;
      (*v72)(v40, v42, 1, v12);
      v44 = [v22 configurationStepsReviewDate];
      if (v44)
      {
        v45 = v44;
        v46 = v73;
        sub_22944F014();

        v47 = 0;
      }

      else
      {
        v46 = v73;
        v47 = 1;
      }

      v43(v46, v47, 1, v12);
      v61 = sub_22944F074();
      v48 = *v71;
      v49 = v74;
      if ((*v71)(v74, 1, v12) == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = sub_22944EFD4();
        (*v64)(v49, v12);
      }

      v50 = v73;
      if (v48(v73, 1, v12) == 1)
      {
        v51 = 0;
      }

      else
      {
        v51 = sub_22944EFD4();
        (*v64)(v50, v12);
      }

      v52 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v53 = sub_22944F9A4();
      v54 = sub_22944F7E4();

      v55 = v52;
      v56 = v70;
      v57 = v61;
      v58 = v62;
      v60 = [v55 initWithVersion:v70 sampleUUID:v61 educationalStepsReviewDate:v62 configurationStepsReviewDate:v51 pregnancyAdjustedFeaturesSet:v53 postPregnancyFeatureAdjustmentCompletionLog:v54];

      (*v63)(v75, v66);
      v59 = v60;
      MEMORY[0x22AACB780]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22944F954();
      }

      v18 = v20 + 1;
      sub_22944F974();

      v19 = v87;
    }

    while (v65 != v20);
LABEL_33:
    if (!(v19 >> 62))
    {
LABEL_34:
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

LABEL_35:
      sub_22941DC8C(v19, v67, v68);
    }

LABEL_39:
    if (!sub_22944FBD4())
    {
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.updateRecordsForManualFeatureAdjustments<A>(records:experienceStore:codableExperienceModel:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v80 = a4;
  v78 = a3;
  v79 = a2;
  sub_2293D7574(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v77 = sub_22944F0B4();
  v12 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22944F054();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v91 = &v68 - v18;
  v101 = MEMORY[0x277D84F90];
  v90 = *MEMORY[0x277D11930];
  v97 = sub_22941E7F4(v90);
  v19 = *MEMORY[0x277D11938];
  v20 = *MEMORY[0x277D11938];
  v81 = v4;
  result = sub_22941E7F4(v20);
  v96 = result;
  if (!(a1 >> 62))
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_38:
    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  result = sub_22944FBD4();
  v22 = result;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_3:
  v76 = v22 - 1;
  if (v22 >= 1)
  {
    v85 = v11;
    v86 = v9;
    v23 = 0;
    v93 = a1;
    v94 = a1 & 0xC000000000000001;
    v88 = a1 + 32;
    v89 = (v15 + 32);
    v83 = (v15 + 48);
    v84 = (v15 + 56);
    v75 = (v15 + 8);
    v74 = (v12 + 8);
    v24 = MEMORY[0x277D84F90];
    v95 = v19;
    v98 = v14;
    do
    {
      v82 = v24;
      v25 = v23;
      while (1)
      {
        if (v94)
        {
          v26 = MEMORY[0x22AACBB00](v25, v93);
        }

        else
        {
          v26 = *(v88 + 8 * v25);
        }

        v27 = v26;
        v28 = [v26 pregnancyAdjustedFeaturesSet];
        type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
        sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
        v29 = sub_22944F9B4();

        v100 = v29;
        v30 = [v27 postPregnancyFeatureAdjustmentCompletionLog];
        v31 = sub_22944F7F4();

        if (v97)
        {
          v32 = v90;
          if (sub_22941BFE8(v90, v29))
          {

            v33 = v91;
            sub_22944EFA4();
            v34 = v32;
            v35 = v92;
            (*v89)(v92, v33, v98);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v99 = v31;
            v37 = v34;
            v14 = v98;
            sub_229427B14(v35, v37, isUniquelyReferenced_nonNull_native);
            v31 = v99;
          }
        }

        v38 = v100;
        if (v96 & 1) != 0 && (sub_22941BFE8(v19, v100))
        {

          v39 = v91;
          sub_22944EFA4();
          v40 = v92;
          (*v89)(v92, v39, v14);
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v99 = v31;
          sub_229427B14(v40, v19, v41);
          v38 = v100;
        }

        v42 = *(v38 + 16);
        v43 = [v27 pregnancyAdjustedFeaturesSet];
        v44 = sub_22944F9B4();

        v45 = *(v44 + 16);

        if (v42 != v45)
        {
          break;
        }

        ++v25;

        v19 = v95;
        v14 = v98;
        if (v22 == v25)
        {
          v24 = v82;
          goto LABEL_33;
        }
      }

      v73 = [v27 version];
      v46 = [v27 sampleUUID];
      sub_22944F094();

      v47 = [v27 educationalStepsReviewDate];
      if (v47)
      {
        v48 = v85;
        v49 = v47;
        sub_22944F014();

        v50 = 0;
      }

      else
      {
        v50 = 1;
        v48 = v85;
      }

      v51 = *v84;
      (*v84)(v48, v50, 1, v98);
      v52 = [v27 configurationStepsReviewDate];
      if (v52)
      {
        v53 = v52;
        v54 = v86;
        sub_22944F014();

        v55 = 0;
      }

      else
      {
        v54 = v86;
        v55 = 1;
      }

      v56 = v54;
      v14 = v98;
      v51(v56, v55, 1, v98);
      v72 = sub_22944F074();
      v57 = *v83;
      v58 = v85;
      if ((*v83)(v85, 1, v14) == 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = sub_22944EFD4();
        (*v75)(v58, v14);
      }

      v59 = v86;
      if (v57(v86, 1, v14) == 1)
      {
        v70 = 0;
      }

      else
      {
        v70 = sub_22944EFD4();
        (*v75)(v59, v14);
      }

      v60 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v82 = sub_22944F9A4();
      v61 = sub_22944F7E4();

      v62 = v60;
      v63 = v73;
      v64 = v72;
      v65 = v71;
      v66 = v70;
      v69 = [v62 initWithVersion:v73 sampleUUID:v72 educationalStepsReviewDate:v71 configurationStepsReviewDate:v70 pregnancyAdjustedFeaturesSet:v82 postPregnancyFeatureAdjustmentCompletionLog:v61];

      (*v74)(v87, v77);
      v67 = v69;
      MEMORY[0x22AACB780]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22944F954();
      }

      v23 = v25 + 1;
      sub_22944F974();

      v24 = v101;

      v19 = v95;
    }

    while (v76 != v25);
LABEL_33:
    if (!(v24 >> 62))
    {
LABEL_34:
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

LABEL_35:
      HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(v24, v78, v79, v80);
    }

LABEL_39:
    if (!sub_22944FBD4())
    {
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_22941DC8C(unint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_22942A8EC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = a3;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    HDMCExperienceDaemonStore.setModel(_:)(a2);
    return;
  }

  v11 = sub_22944FBD4();
  v30 = a3;
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    *&v8 = 136315394;
    v31 = v8;
    v34 = a1;
    v35 = a2;
    v32 = a1 & 0xC000000000000001;
    v33 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AACBB00](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = sub_22944F0B4();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
      HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(v14, v10);
      sub_2293D83E8(v10, sub_22942A8EC);

      ++v12;
    }

    while (v11 != v12);
    goto LABEL_11;
  }

  __break(1u);
  swift_once();
  v16 = sub_22944F174();
  __swift_project_value_buffer(v16, qword_2813DBFB8);
  v17 = v3;
  v18 = sub_22944F154();
  v19 = sub_22944FA64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136315394;
    v22 = sub_22944FF44();
    v24 = sub_2293D4824(v22, v23, v38);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v37 = v3;
    v25 = v3;
    sub_22942B194(0, &qword_2813DBD90, MEMORY[0x277D84948]);
    v26 = sub_22944F8A4();
    v28 = sub_2293D4824(v26, v27, v38);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_2293D1000, v18, v19, "[%s] Unable to update the experience store with latest codable experience model: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v21, -1, -1);
    MEMORY[0x22AACCC00](v20, -1, -1);
  }

  else
  {
  }
}

void HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_22942A8EC(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  (*(v13 + 16))(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v15 = v43;
  }

  else
  {
    v15 = 0;
  }

  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v15;
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v35)
    {

      HDMCExperienceDaemonStore.setModel(_:)(a2);
    }

    return;
  }

  v16 = sub_22944FBD4();
  v35 = v15;
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v16 >= 1)
  {
    v17 = 0;
    *&v14 = 136315394;
    v36 = v14;
    v39 = a1;
    v40 = a2;
    v37 = a1 & 0xC000000000000001;
    v38 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AACBB00](v17, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = sub_22944F0B4();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
      HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(v19, v11);
      sub_2293D83E8(v11, sub_22942A8EC);

      ++v17;
    }

    while (v16 != v17);
    goto LABEL_14;
  }

  __break(1u);
  swift_once();
  v21 = sub_22944F174();
  __swift_project_value_buffer(v21, qword_2813DBFB8);
  v22 = a3;
  v23 = sub_22944F154();
  v24 = sub_22944FA64();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315394;
    v27 = sub_22944FF44();
    v29 = sub_2293D4824(v27, v28, &v43);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v42 = a3;
    v30 = a3;
    sub_22942B194(0, &qword_2813DBD90, MEMORY[0x277D84948]);
    v31 = sub_22944F8A4();
    v33 = sub_2293D4824(v31, v32, &v43);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_2293D1000, v23, v24, "[%s] Unable to update the experience store with latest codable experience model: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v26, -1, -1);
    MEMORY[0x22AACCC00](v25, -1, -1);
  }

  else
  {
  }
}

id sub_22941E7F4(uint64_t a1)
{
  v1 = sub_22944F894();
  v3 = v2;
  if (v1 == sub_22944F894() && v3 == v4)
  {

LABEL_13:
    result = sub_22941B6F8();
    if (result)
    {
      v14 = result;
      v15 = [result objectForKeyedSubscript_];
      v16 = [v15 areAllRequirementsSatisfied];

      return v16;
    }

    return result;
  }

  v6 = sub_22944FE24();

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = sub_22944F894();
  v9 = v8;
  if (v7 == sub_22944F894() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_22944FE24();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v17) = HDMCPregnancyFeatureAdjustmentManager.getMedicalIDContainsPregnancy()();
  return ((v17 != 2) & (v17 ^ 1u));
}

Swift::Bool_optional __swiftcall HDMCPregnancyFeatureAdjustmentManager.getMedicalIDContainsPregnancy()()
{
  swift_getObjectType();
  sub_2293D7574(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229428480(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager, &v24);
  if (v25)
  {
    sub_2293D78F8(&v24, v23);
    sub_2293D78F8(v23, &v24);
    v4 = v25;
    v5 = v26;
  }

  else
  {
    sub_229428944(&v24, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = [objc_allocWithZone(MEMORY[0x277D10750]) initWithProfile_];

    v4 = sub_2293D30DC(0, &qword_2813DBE68, 0x277D10750);
    v5 = &protocol witness table for HDMedicalIDDataManager;
    v25 = v4;
    v26 = &protocol witness table for HDMedicalIDDataManager;
    *&v24 = v7;
  }

  __swift_project_boxed_opaque_existential_1(&v24, v4);
  v8 = (v5[1])(v4, v5);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 pregnancyEstimatedDueDate];
    if (v10)
    {
      sub_22944F014();

      v11 = 0;
      v9 = v10;
    }

    else
    {
      v11 = 1;
    }

    v20 = v10 != 0;

    v21 = sub_22944F054();
    (*(*(v21 - 8) + 56))(v3, v11, 1, v21);
    sub_2293D83E8(v3, sub_2293D7574);
    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  }

  else
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v12 = sub_22944F174();
      __swift_project_value_buffer(v12, qword_2813DBFB8);
      v13 = sub_22944F154();
      v14 = sub_22944FA64();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v23[0] = v16;
        *v15 = 136315138;
        v17 = sub_22944FF44();
        v19 = sub_2293D4824(v17, v18, v23);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Error retrieving medical ID data", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x22AACCC00](v16, -1, -1);
        MEMORY[0x22AACCC00](v15, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
    return 2;
  }

  return v20;
}

uint64_t sub_22941ECD8(id *a1, uint64_t a2)
{
  v3 = sub_22944F0B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 sampleUUID];
  sub_22944F094();

  v8 = sub_22944F084();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void sub_22941EDE4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22944FB94();
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    sub_22944FA04();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_22944FC04())
        {
          goto LABEL_20;
        }

        sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_229429864(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_229429864(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22941F040@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v29 = a3;
  sub_2293DB9D8(0);
  v5 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7594(0, &unk_27D86E710, sub_2293DB9D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_2293DBB38(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AC3C(0);
  v17 = v16;
  v30 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v37, v12);
  v20 = v31;
  sub_2293D5C5C(&qword_27D86E728, sub_2293DBB38, MEMORY[0x277CFB588]);
  sub_22944F904();
  v21 = sub_2293D5C5C(&qword_27D86E730, sub_22942AC3C, MEMORY[0x277CFB560]);
  v36 = v19;
  v37 = v17;
  v32 = v21;
  sub_22944FB24();
  v22 = *(v20 + 48);
  if (v22(v10, 1, v5) == 1)
  {
LABEL_6:
    (*(v30 + 8))(v36, v37);
    v25 = 1;
    v26 = v29;
  }

  else
  {
    v33 = *(v20 + 32);
    v23 = (v20 + 8);
    while (1)
    {
      v33(v7, v10, v5);
      v24 = v34(v7);
      if (v3)
      {
        (*v23)(v7, v5);
        return (*(v30 + 8))(v36, v37);
      }

      if (v24)
      {
        break;
      }

      (*v23)(v7, v5);
      sub_22944FB24();
      if (v22(v10, 1, v5) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v30 + 8))(v36, v37);
    v28 = v29;
    v33(v29, v7, v5);
    v26 = v28;
    v25 = 0;
  }

  return (*(v31 + 56))(v26, v25, 1, v5);
}

void sub_22941F490(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v22[7] = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    sub_22944FA04();
    v4 = v22[1];
    v5 = v22[2];
    v6 = v22[3];
    v7 = v22[4];
    v8 = v22[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v20 = v4;
  while (v4 < 0)
  {
    if (!sub_22944FC04())
    {
      goto LABEL_22;
    }

    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    swift_dynamicCast();
    v17 = v21;
    v15 = v7;
    v16 = v8;
    if (!v21)
    {
LABEL_23:
      v4 = v20;
LABEL_22:
      sub_229429864(v4);
      return;
    }

LABEL_19:
    v22[0] = v17;
    v18 = a1(v22);
    if (v3)
    {

      sub_229429864(v20);

      return;
    }

    if (v18)
    {
      sub_22944FCD4();
      sub_22944FD04();
      sub_22944FD14();
      sub_22944FCE4();
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v20;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_22941F718(void *a1, void *a2)
{
  swift_getObjectType();
  sub_22942A8EC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22944F0B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(a1, v6);
  sub_2293D83E8(v6, sub_22942A8EC);
  HDMCExperienceDaemonStore.setModel(_:)(a2);
}

uint64_t sub_22941FBA8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  sub_22942A8EC(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  (*(v13 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v14 = v17[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22944F0B4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(a1, v11);
  result = sub_2293D83E8(v11, sub_22942A8EC);
  if (v14)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return result;
}

void sub_229420134(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, char *a9)
{
  v61 = a5;
  v62 = a2;
  v65 = a4;
  v66 = a1;
  v63 = a3;
  ObjectType = swift_getObjectType();
  v14 = *(a8 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](ObjectType);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  v64 = v20;
  if (v21)
  {
    v57 = v9;
    v58 = ObjectType;
    v59 = a6;
    v60 = a7;
    v55 = v21;
    v56 = v21;
LABEL_5:
    v53 = a9;
    v54 = *MEMORY[0x277CCC120];
    sub_22942A888(v61, v20);
    (v14[2])(v16, v62, a8);
    v24 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v14 + 80) + v26 + 8) & ~*(v14 + 80);
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 2) = a8;
    *(v29 + 3) = v30;
    v31 = v66;
    *(v29 + 4) = v65;
    *(v29 + 5) = v31;
    v62 = a8;
    sub_22942AD9C(v64, &v29[v24]);
    v32 = v57;
    *&v29[v25] = v57;
    v33 = v62;
    v34 = v63;
    *&v29[v26] = v63;
    v35 = v34;
    (v14[4])(&v29[v27], v16, v33);
    v36 = &v29[v28];
    v38 = v59;
    v37 = v60;
    *v36 = v59;
    v36[1] = v37;
    *&v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8] = v58;
    aBlock[4] = sub_22942AE00;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor;
    v39 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v40 = v54;
    v41 = v65;

    v42 = v32;
    v43 = v35;
    sub_229428914(v38, v37);

    [v56 setFeatureSettingNumber:v41 forKey:v40 completion:v39];
    swift_unknownObjectRelease();
    _Block_release(v39);
    swift_unknownObjectRelease();

    return;
  }

  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v57 = v9;
    v58 = ObjectType;
    v59 = a6;
    v60 = a7;
    v56 = v23;
    swift_unknownObjectRetain();
    v55 = 0;
    v16 = v53;
    v14 = v54;
    v20 = v64;
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_22944F174();
    __swift_project_value_buffer(v44, qword_2813DBFB8);
    v45 = sub_22944F154();
    v46 = sub_22944FA64();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      v49 = sub_22944FF44();
      v51 = sub_2293D4824(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2293D1000, v45, v46, "[%s] Could not get cardio fitness feature availability provider", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AACCC00](v48, -1, -1);
      MEMORY[0x22AACCC00](v47, -1, -1);
    }
  }

  if (a6)
  {
    a6();
  }
}

void sub_229420620(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10, void *a11)
{
  v210 = a7;
  v211 = a8;
  v209 = a6;
  v183 = a5;
  v212 = a4;
  v213 = a11;
  v208 = sub_22944F0B4();
  v13 = *(v208 - 8);
  v14 = MEMORY[0x28223BE20](v208);
  v202 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v215 = &v181 - v16;
  v17 = sub_22944F054();
  v189 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v186 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942A804(0);
  v188 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v181 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v201 = &v181 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v194 = (&v181 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v214 = &v181 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v185 = &v181 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v187 = &v181 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v181 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v181 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v197 = &v181 - v46;
  MEMORY[0x28223BE20](v45);
  v193 = &v181 - v47;
  v48 = HKShowSensitiveLogItems();
  if ((a1 & 1) == 0)
  {
    if (v48)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v125 = sub_22944F174();
      __swift_project_value_buffer(v125, qword_2813DBFB8);
      v126 = a2;
      v127 = sub_22944F154();
      v128 = sub_22944FA64();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v219 = v130;
        *v129 = 136315394;
        v131 = sub_22944FF44();
        v133 = sub_2293D4824(v131, v132, &v219);

        *(v129 + 4) = v133;
        *(v129 + 12) = 2080;
        v218 = a2;
        v134 = a2;
        sub_2294289A0(0, &qword_27D86E750, &qword_2813DBD90, MEMORY[0x277D84948], sub_22942B194);
        v135 = sub_22944F8A4();
        v137 = sub_2293D4824(v135, v136, &v219);

        *(v129 + 14) = v137;
        _os_log_impl(&dword_2293D1000, v127, v128, "[%s] Error updating Low Cardio Fitness Notifications feature settings: %s", v129, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v130, -1, -1);
        MEMORY[0x22AACCC00](v129, -1, -1);
      }
    }

    goto LABEL_79;
  }

  v182 = v41;
  v203 = v25;
  v200 = v28;
  v216 = v17;
  if (v48)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v49 = sub_22944F174();
    __swift_project_value_buffer(v49, qword_2813DBFB8);
    v50 = sub_22944F154();
    v51 = sub_22944FA84();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v219 = v53;
      *v52 = 136315138;
      v54 = sub_22944FF44();
      v56 = sub_2293D4824(v54, v55, &v219);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2293D1000, v50, v51, "[%s] Successfully adjusted Low Cardio Fitness Notification settings. Attempting to update pregnancy setup record", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x22AACCC00](v53, -1, -1);
      MEMORY[0x22AACCC00](v52, -1, -1);
    }
  }

  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v57 = sub_22944FAE4();
  v58 = sub_22944FB04();

  v59 = v212;
  v60 = v212 >> 62;
  if (v58)
  {
    if (v60)
    {
      v61 = sub_22944FBD4();
      v59 = v212;
      if (v61)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v61 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
LABEL_11:
        if (v61 >= 1)
        {
          v62 = 0;
          v191 = v59 & 0xC000000000000001;
          v198 = (v189 + 16);
          v200 = *MEMORY[0x277D11930];
          v63 = (v189 + 56);
          v207 = (v189 + 48);
          v184 = (v189 + 32);
          v199 = (v189 + 8);
          v190 = (v13 + 8);
          v196 = v21;
          v195 = v44;
          v201 = (v189 + 56);
          v192 = v61;
          while (1)
          {
            v206 = v62;
            v71 = v191 ? MEMORY[0x22AACBB00](v62) : *(v59 + 8 * v62 + 32);
            v72 = v71;
            v73 = [v71 pregnancyAdjustedFeaturesSet];
            type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
            v75 = v74;
            v76 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
            v77 = sub_22944F9B4();

            v219 = v77;
            v78 = v200;

            v79 = [v72 postPregnancyFeatureAdjustmentCompletionLog];
            v204 = v76;
            v205 = v75;
            v80 = sub_22944F7F4();

            v218 = v80;
            v81 = v80[2];
            v213 = v72;
            if (!v81)
            {
              break;
            }

            v82 = sub_22942707C(v78);
            if ((v83 & 1) == 0)
            {
              break;
            }

            v84 = v189;
            v85 = v80[7] + *(v189 + 72) * v82;
            v86 = v193;
            v87 = v216;
            (*(v189 + 16))(v193, v85, v216);
            v88 = *(v84 + 56);
            v88(v86, 0, 1, v87);
            sub_2293D83E8(v86, sub_2293D7574);
            v89 = v194;
LABEL_37:
            v203 = [v72 version];
            v114 = [v72 sampleUUID];
            sub_22944F094();

            v115 = [v72 educationalStepsReviewDate];
            v116 = v214;
            if (v115)
            {
              v117 = v115;
              sub_22944F014();

              v118 = 0;
            }

            else
            {
              v118 = 1;
            }

            v119 = 1;
            v88(v116, v118, 1, v216);
            v120 = [v72 configurationStepsReviewDate];
            if (v120)
            {
              v121 = v120;
              sub_22944F014();

              v119 = 0;
            }

            v122 = v216;
            v88(v89, v119, 1, v216);
            v202 = sub_22944F074();
            v123 = *v207;
            if ((*v207)(v214, 1, v122) == 1)
            {
              v124 = 0;
            }

            else
            {
              v124 = sub_22944EFD4();
              (*v199)(v214, v122);
            }

            if (v123(v89, 1, v122) == 1)
            {
              v64 = 0;
            }

            else
            {
              v64 = sub_22944EFD4();
              (*v199)(v89, v122);
            }

            v62 = v206 + 1;
            v65 = objc_allocWithZone(MEMORY[0x277D119C0]);
            v66 = sub_22944F9A4();

            v67 = sub_22944F7E4();
            v69 = v202;
            v68 = v203;
            v70 = [v65 initWithVersion:v203 sampleUUID:v202 educationalStepsReviewDate:v124 configurationStepsReviewDate:v64 pregnancyAdjustedFeaturesSet:v66 postPregnancyFeatureAdjustmentCompletionLog:v67];

            (*v190)(v215, v208);
            sub_22941F718(v70, v210);

            v59 = v212;
            v21 = v196;
            v44 = v195;
            v63 = v201;
            if (v192 == v62)
            {
              goto LABEL_79;
            }
          }

          v88 = *v63;
          v90 = 1;
          v91 = v193;
          (*v63)(v193, 1, 1, v216);
          sub_2293D83E8(v91, sub_2293D7574);
          v92 = [v72 educationalStepsReviewDate];
          v93 = v197;
          if (v92)
          {
            v94 = v92;
            sub_22944F014();

            v90 = 0;
          }

          v95 = v216;
          v88(v93, v90, 1, v216);
          if (qword_27D86E1E0 != -1)
          {
            swift_once();
          }

          v96 = __swift_project_value_buffer(v95, qword_27D86E640);
          v97 = *v198;
          v203 = v96;
          (v97)(v44);
          v88(v44, 0, 1, v95);
          v98 = *(v188 + 48);
          sub_22942A888(v93, v21);
          sub_22942A888(v44, &v21[v98]);
          v99 = *v207;
          if ((*v207)(v21, 1, v95) == 1)
          {
            sub_2293D83E8(v44, sub_2293D7574);
            sub_2293D83E8(v93, sub_2293D7574);
            if (v99(&v21[v98], 1, v95) == 1)
            {
              v202 = v97;
              sub_2293D83E8(v21, sub_2293D7574);
              v100 = v187;
              v101 = v200;
LABEL_34:
              v103 = v216;
              (v202)(v100, v203, v216);
              v88(v100, 0, 1, v103);
              v89 = v194;
              goto LABEL_35;
            }
          }

          else
          {
            v102 = v182;
            sub_22942A888(v21, v182);
            if (v99(&v21[v98], 1, v95) != 1)
            {
              v202 = v97;
              v107 = v186;
              (*v184)(v186, &v21[v98], v95);
              sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              v108 = sub_22944F854();
              v109 = *v199;
              (*v199)(v107, v95);
              sub_2293D83E8(v195, sub_2293D7574);
              sub_2293D83E8(v197, sub_2293D7574);
              v109(v102, v95);
              sub_2293D83E8(v196, sub_2293D7574);
              v100 = v187;
              v101 = v200;
              if (v108)
              {
                goto LABEL_34;
              }

LABEL_31:
              sub_22942A888(v183, v100);
              v103 = v216;
              v104 = v99(v100, 1, v216);
              v89 = v194;
              if (v104 == 1)
              {
                v105 = v101;
                sub_2293D83E8(v100, sub_2293D7574);
                v106 = v185;
                sub_229427410(v105, v185);

                sub_2293D83E8(v106, sub_2293D7574);
LABEL_36:
                v72 = v213;
                goto LABEL_37;
              }

LABEL_35:
              v110 = v186;
              (*v184)(v186, v100, v103);
              v111 = v101;
              v112 = v218;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v217 = v112;
              sub_229427B14(v110, v111, isUniquelyReferenced_nonNull_native);

              v218 = v217;
              goto LABEL_36;
            }

            sub_2293D83E8(v44, sub_2293D7574);
            sub_2293D83E8(v197, sub_2293D7574);
            (*v199)(v102, v95);
          }

          sub_2293D83E8(v21, sub_22942A804);
          v100 = v187;
          v101 = v200;
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_83;
      }
    }
  }

  else
  {
    if (v60)
    {
      v138 = sub_22944FBD4();
      v59 = v212;
      if (!v138)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v138 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v138)
      {
        goto LABEL_79;
      }
    }

    if (v138 < 1)
    {
LABEL_83:
      __break(1u);
      return;
    }

    v139 = 0;
    v198 = (v59 & 0xC000000000000001);
    v193 = (v189 + 16);
    v197 = *MEMORY[0x277D11930];
    v140 = (v189 + 56);
    v215 = (v189 + 48);
    v195 = (v189 + 8);
    v194 = (v13 + 8);
    v199 = v138;
    v196 = (v189 + 56);
    do
    {
      v214 = v139;
      if (v198)
      {
        v148 = MEMORY[0x22AACBB00](v139);
      }

      else
      {
        v148 = *(v59 + 8 * v139 + 32);
      }

      v149 = v148;
      v150 = v203;
      v151 = [v148 pregnancyAdjustedFeaturesSet];
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      v153 = v152;
      v154 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
      v155 = sub_22944F9B4();

      v219 = v155;
      v156 = v197;
      sub_229423F68(&v218, v156);

      v157 = [v149 postPregnancyFeatureAdjustmentCompletionLog];
      v205 = v153;
      v207 = v154;
      v158 = sub_22944F7F4();

      v218 = v158;
      if (v158[2] && (v159 = sub_22942707C(v156), (v160 & 1) != 0))
      {
        v161 = v189;
        v162 = v158[7] + *(v189 + 72) * v159;
        v163 = v201;
        v164 = v216;
        (*(v189 + 16))(v201, v162, v216);
        v165 = *(v161 + 56);
        v165(v163, 0, 1, v164);
        sub_2293D83E8(v163, sub_2293D7574);
        v166 = v185;
        sub_229427410(v156, v185);
        v167 = v166;
        v150 = v203;
      }

      else
      {
        v165 = *v140;
        v168 = v201;
        v164 = v216;
        (*v140)(v201, 1, 1, v216);
        v167 = v168;
      }

      v169 = v200;
      sub_2293D83E8(v167, sub_2293D7574);
      v206 = [v149 version];
      v170 = [v149 sampleUUID];
      sub_22944F094();

      v171 = [v149 educationalStepsReviewDate];
      if (v171)
      {
        v172 = v171;
        sub_22944F014();

        v173 = 0;
      }

      else
      {
        v173 = 1;
      }

      v174 = 1;
      v165(v169, v173, 1, v164);
      v175 = [v149 configurationStepsReviewDate];
      v213 = v149;
      if (v175)
      {
        v176 = v175;
        sub_22944F014();

        v174 = 0;
      }

      v165(v150, v174, 1, v164);
      v204 = sub_22944F074();
      v177 = *v215;
      if ((*v215)(v169, 1, v164) == 1)
      {
        v178 = 0;
      }

      else
      {
        v179 = sub_22944EFD4();
        v180 = v169;
        v178 = v179;
        (*v195)(v180, v164);
      }

      if (v177(v150, 1, v164) == 1)
      {
        v141 = 0;
      }

      else
      {
        v141 = sub_22944EFD4();
        (*v195)(v150, v164);
      }

      v139 = v214 + 1;
      v142 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v143 = sub_22944F9A4();

      v144 = sub_22944F7E4();
      v145 = v206;
      v146 = v204;
      v147 = [v142 initWithVersion:v206 sampleUUID:v204 educationalStepsReviewDate:v178 configurationStepsReviewDate:v141 pregnancyAdjustedFeaturesSet:v143 postPregnancyFeatureAdjustmentCompletionLog:v144];

      (*v194)(v202, v208);
      sub_22941F718(v147, v210);

      v59 = v212;
      v140 = v196;
    }

    while (v199 != v139);
  }

LABEL_79:
  if (a9)
  {
    a9();
  }
}

void sub_229421C3C(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v219 = a7;
  v220 = a8;
  v218 = a6;
  v188 = a5;
  v221 = a4;
  v222 = a11;
  v217 = sub_22944F0B4();
  v15 = *(v217 - 8);
  v16 = MEMORY[0x28223BE20](v217);
  v18 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v186 - v19;
  v223 = sub_22944F054();
  v195 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v191 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942A804(0);
  v194 = v22;
  MEMORY[0x28223BE20](v22);
  v193 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v205 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v186 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v204 = (&v186 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v186 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v186 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v190 = &v186 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v192 = &v186 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v187 = &v186 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = (&v186 - v45);
  v47 = MEMORY[0x28223BE20](v44);
  v203 = &v186 - v48;
  MEMORY[0x28223BE20](v47);
  v202 = &v186 - v49;
  v50 = HKShowSensitiveLogItems();
  if ((a1 & 1) == 0)
  {
    if (v50)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v134 = sub_22944F174();
      __swift_project_value_buffer(v134, qword_2813DBFB8);
      v135 = a2;
      v136 = sub_22944F154();
      v137 = sub_22944FA64();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v226 = v139;
        *v138 = 136315394;
        v140 = sub_22944FF44();
        v142 = sub_2293D4824(v140, v141, &v226);

        *(v138 + 4) = v142;
        *(v138 + 12) = 2080;
        v225 = a2;
        v143 = a2;
        sub_2294289A0(0, &qword_27D86E750, &qword_2813DBD90, MEMORY[0x277D84948], sub_22942B194);
        v144 = sub_22944F8A4();
        v146 = sub_2293D4824(v144, v145, &v226);

        *(v138 + 14) = v146;
        _os_log_impl(&dword_2293D1000, v136, v137, "[%s] Error updating Low Cardio Fitness Notifications feature settings: %s", v138, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v139, -1, -1);
        MEMORY[0x22AACCC00](v138, -1, -1);
      }
    }

    goto LABEL_80;
  }

  v214 = a12;
  v215 = a13;
  v207 = v34;
  v200 = v37;
  v201 = v46;
  v216 = v29;
  if (v50)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v51 = sub_22944F174();
    __swift_project_value_buffer(v51, qword_2813DBFB8);
    v52 = sub_22944F154();
    v53 = sub_22944FA84();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v226 = v55;
      *v54 = 136315138;
      v56 = sub_22944FF44();
      v58 = sub_2293D4824(v56, v57, &v226);

      *(v54 + 4) = v58;
      v29 = v216;
      _os_log_impl(&dword_2293D1000, v52, v53, "[%s] Successfully adjusted Low Cardio Fitness Notification settings. Attempting to update pregnancy setup record", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x22AACCC00](v55, -1, -1);
      MEMORY[0x22AACCC00](v54, -1, -1);
    }
  }

  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v59 = sub_22944FAE4();
  v60 = sub_22944FB04();

  v61 = v221;
  v62 = v221 >> 62;
  if (v60)
  {
    if (v62)
    {
      v63 = sub_22944FBD4();
      v61 = v221;
      if (v63)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v63 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
LABEL_11:
        if (v63 >= 1)
        {
          v64 = 0;
          v198 = v61 & 0xC000000000000001;
          v204 = (v195 + 16);
          v65 = *MEMORY[0x277D11930];
          v66 = (v195 + 56);
          v216 = (v195 + 48);
          v189 = (v195 + 32);
          v205 = (v195 + 8);
          v196 = (v15 + 8);
          v206 = v20;
          v197 = v65;
          v208 = v195 + 56;
          v199 = v63;
          while (1)
          {
            v213 = v64;
            v76 = v198 ? MEMORY[0x22AACBB00](v64) : *(v61 + 8 * v64 + 32);
            v77 = v76;
            v78 = v207;
            v79 = [v76 pregnancyAdjustedFeaturesSet];
            type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
            v81 = v80;
            v82 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
            v83 = sub_22944F9B4();

            v226 = v83;
            v84 = [v77 postPregnancyFeatureAdjustmentCompletionLog];
            v211 = v82;
            v212 = v81;
            v85 = sub_22944F7F4();

            v225 = v85;
            v86 = v85[2];
            v222 = v77;
            if (!v86)
            {
              break;
            }

            v87 = sub_22942707C(v65);
            if ((v88 & 1) == 0)
            {
              break;
            }

            v89 = v85[7];
            v90 = v195;
            v91 = v202;
            v92 = v223;
            (*(v195 + 16))(v202, v89 + *(v195 + 72) * v87, v223);
            v93 = *(v90 + 56);
            v93(v91, 0, 1, v92);
            sub_2293D83E8(v91, sub_2293D7574);
LABEL_38:
            v120 = v200;
            v210 = [v77 version];
            v121 = [v77 sampleUUID];
            sub_22944F094();

            v122 = [v77 educationalStepsReviewDate];
            v123 = v216;
            if (v122)
            {
              v124 = v122;
              sub_22944F014();

              v125 = 0;
            }

            else
            {
              v125 = 1;
            }

            v126 = 1;
            v93(v120, v125, 1, v223);
            v127 = [v222 configurationStepsReviewDate];
            if (v127)
            {
              v128 = v127;
              sub_22944F014();

              v126 = 0;
            }

            v129 = v223;
            v93(v78, v126, 1, v223);
            v209 = sub_22944F074();
            v130 = *v123;
            if ((*v123)(v120, 1, v129) == 1)
            {
              v131 = 0;
            }

            else
            {
              v132 = sub_22944EFD4();
              v133 = v120;
              v131 = v132;
              (*v205)(v133, v129);
            }

            if (v130(v78, 1, v129) == 1)
            {
              v67 = 0;
            }

            else
            {
              v67 = sub_22944EFD4();
              (*v205)(v78, v129);
            }

            v68 = v213 + 1;
            v69 = objc_allocWithZone(MEMORY[0x277D119C0]);
            v70 = sub_22944F9A4();

            v71 = sub_22944F7E4();
            v73 = v209;
            v72 = v210;
            v74 = [v69 initWithVersion:v210 sampleUUID:v209 educationalStepsReviewDate:v131 configurationStepsReviewDate:v67 pregnancyAdjustedFeaturesSet:v70 postPregnancyFeatureAdjustmentCompletionLog:v71];

            (*v196)(v206, v217);
            sub_22941FBA8(v74, v219, v220, v214);

            v64 = v68;
            v75 = v199 == v68;
            v61 = v221;
            v65 = v197;
            v66 = v208;
            if (v75)
            {
              goto LABEL_80;
            }
          }

          v93 = *v66;
          v94 = 1;
          v95 = v202;
          (*v66)(v202, 1, 1, v223);
          sub_2293D83E8(v95, sub_2293D7574);
          v96 = [v77 educationalStepsReviewDate];
          if (v96)
          {
            v97 = v203;
            v98 = v96;
            sub_22944F014();

            v94 = 0;
            v99 = v201;
          }

          else
          {
            v99 = v201;
            v97 = v203;
          }

          v100 = v223;
          v93(v97, v94, 1, v223);
          if (qword_27D86E1E0 != -1)
          {
            swift_once();
          }

          v101 = __swift_project_value_buffer(v100, qword_27D86E640);
          v102 = *v204;
          v209 = v101;
          v210 = v102;
          v102(v99);
          v93(v99, 0, 1, v100);
          v103 = *(v194 + 48);
          v104 = v193;
          sub_22942A888(v97, v193);
          sub_22942A888(v99, v104 + v103);
          v105 = *v216;
          if ((*v216)(v104, 1, v100) == 1)
          {
            sub_2293D83E8(v99, sub_2293D7574);
            sub_2293D83E8(v97, sub_2293D7574);
            v106 = v105(v104 + v103, 1, v100);
            v77 = v222;
            if (v106 == 1)
            {
              sub_2293D83E8(v104, sub_2293D7574);
LABEL_35:
              v108 = v192;
              v109 = v223;
              (v210)(v192, v209, v223);
              v93(v108, 0, 1, v109);
              goto LABEL_36;
            }
          }

          else
          {
            v107 = v187;
            sub_22942A888(v104, v187);
            if (v105(v104 + v103, 1, v100) != 1)
            {
              v112 = v104 + v103;
              v113 = v191;
              (*v189)(v191, v112, v100);
              sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              v114 = sub_22944F854();
              v115 = *v205;
              (*v205)(v113, v100);
              sub_2293D83E8(v201, sub_2293D7574);
              sub_2293D83E8(v203, sub_2293D7574);
              v115(v107, v100);
              sub_2293D83E8(v104, sub_2293D7574);
              v77 = v222;
              if (v114)
              {
                goto LABEL_35;
              }

LABEL_32:
              v108 = v192;
              sub_22942A888(v188, v192);
              v109 = v223;
              if (v105(v108, 1, v223) == 1)
              {
                v110 = v65;
                sub_2293D83E8(v108, sub_2293D7574);
                v111 = v190;
                sub_229427410(v110, v190);

                sub_2293D83E8(v111, sub_2293D7574);
LABEL_37:
                v78 = v207;
                goto LABEL_38;
              }

LABEL_36:
              v116 = v191;
              (*v189)(v191, v108, v109);
              v117 = v65;
              v118 = v225;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v224 = v118;
              sub_229427B14(v116, v117, isUniquelyReferenced_nonNull_native);

              v225 = v224;
              goto LABEL_37;
            }

            sub_2293D83E8(v201, sub_2293D7574);
            sub_2293D83E8(v203, sub_2293D7574);
            (*v205)(v107, v100);
            v77 = v222;
          }

          sub_2293D83E8(v104, sub_22942A804);
          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_84;
      }
    }
  }

  else
  {
    if (v62)
    {
      v147 = sub_22944FBD4();
      v61 = v221;
      if (!v147)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v147 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v147)
      {
        goto LABEL_80;
      }
    }

    if (v147 < 1)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v148 = 0;
    v206 = v61 & 0xC000000000000001;
    v200 = (v195 + 16);
    v203 = *MEMORY[0x277D11930];
    v222 = (v195 + 56);
    v213 = (v195 + 48);
    v202 = (v195 + 8);
    v201 = (v15 + 8);
    v199 = v18;
    v207 = v147;
    do
    {
      v212 = v148;
      if (v206)
      {
        v156 = MEMORY[0x22AACBB00](v148);
      }

      else
      {
        v156 = *(v61 + 8 * v148 + 32);
      }

      v157 = v156;
      v158 = v205;
      v159 = [v156 pregnancyAdjustedFeaturesSet];
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      v160 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
      v161 = sub_22944F9B4();

      v226 = v161;
      v162 = v203;
      sub_229423F68(&v225, v162);

      v163 = [v157 postPregnancyFeatureAdjustmentCompletionLog];
      v164 = v223;
      v210 = v160;
      v165 = sub_22944F7F4();

      v225 = v165;
      if (v165[2] && (v166 = sub_22942707C(v162), (v167 & 1) != 0))
      {
        v168 = v165[7];
        v169 = v195;
        v170 = v204;
        (*(v195 + 16))(v204, v168 + *(v195 + 72) * v166, v223);
        v171 = *(v169 + 56);
        v171(v170, 0, 1, v223);
        sub_2293D83E8(v170, sub_2293D7574);
        v172 = v190;
        sub_229427410(v162, v190);
        v173 = v172;
        v164 = v223;
      }

      else
      {
        v171 = *v222;
        v174 = v204;
        (*v222)(v204, 1, 1, v164);
        v173 = v174;
      }

      sub_2293D83E8(v173, sub_2293D7574);
      v209 = [v157 version];
      v175 = [v157 sampleUUID];
      sub_22944F094();

      v176 = [v157 educationalStepsReviewDate];
      if (v176)
      {
        v177 = v176;
        sub_22944F014();

        v178 = 0;
      }

      else
      {
        v178 = 1;
      }

      v179 = 1;
      v171(v29, v178, 1, v164);
      v180 = [v157 configurationStepsReviewDate];
      v211 = v157;
      if (v180)
      {
        v181 = v180;
        sub_22944F014();

        v179 = 0;
      }

      v171(v158, v179, 1, v164);
      v208 = sub_22944F074();
      v182 = v164;
      v183 = *v213;
      v184 = v216;
      if ((*v213)(v216, 1, v182) == 1)
      {
        v185 = 0;
      }

      else
      {
        v185 = sub_22944EFD4();
        (*v202)(v184, v182);
      }

      if (v183(v158, 1, v182) == 1)
      {
        v149 = 0;
      }

      else
      {
        v149 = sub_22944EFD4();
        (*v202)(v158, v182);
      }

      v148 = v212 + 1;
      v150 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v151 = sub_22944F9A4();

      v152 = sub_22944F7E4();
      v154 = v208;
      v153 = v209;
      v155 = [v150 initWithVersion:v209 sampleUUID:v208 educationalStepsReviewDate:v185 configurationStepsReviewDate:v149 pregnancyAdjustedFeaturesSet:v151 postPregnancyFeatureAdjustmentCompletionLog:v152];

      (*v201)(v199, v217);
      sub_22941FBA8(v155, v219, v220, v214);

      v61 = v221;
      v29 = v216;
    }

    while (v207 != v148);
  }

LABEL_80:
  if (a9)
  {
    a9();
  }
}
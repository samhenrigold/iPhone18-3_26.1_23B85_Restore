uint64_t sub_22CF64FC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  result = sub_22D016C3C();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF651E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_22D015E7C();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  result = sub_22D016C3C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
    result = sub_22D01661C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_22CF65528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CF65598()
{
  result = qword_28143F9D8;
  if (!qword_28143F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F9D8);
  }

  return result;
}

uint64_t sub_22CF65648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF65898(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_22D014E3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01637C();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  (*(v6 + 104))(v9, *a3, v5);
  return sub_22D01634C();
}

uint64_t sub_22CF659BC()
{
  v1 = sub_22D01697C();
  v11 = *(v1 - 8);
  v12 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v10 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D01691C();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_22D01653C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  *(v0 + 24) = -1;
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2800, qword_22D019178);
  swift_allocObject();
  *(v0 + 32) = sub_22D01644C();
  v9[1] = sub_22CEEC38C();
  sub_22D0164FC();
  v13 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v11 + 104))(v10, *MEMORY[0x277D85268], v12);
  *(v0 + 48) = sub_22D0169BC();
  v13 = *(v0 + 32);
  sub_22CEE8394(&qword_28143FA68, &unk_27D9F2800, qword_22D019178, MEMORY[0x277CBCE48]);
  *(v0 + 16) = sub_22D01646C();
  *(v0 + 40) = 0;
  sub_22CF65C98();
  sub_22CEF26D0();
  return v0;
}

void sub_22CF65C98()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22CEF2670;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22CEF261C;
  v9[3] = &block_descriptor_2;
  v3 = _Block_copy(v9);

  v4 = sub_22D0166AC();
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 24), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_281444420);
    v6 = sub_22D01636C();
    v7 = sub_22D0168EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "Could not register for lock state notifications", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }
  }
}

uint64_t sub_22CF65E74()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22CF65F4C()
{
  result = qword_28143FA20;
  if (!qword_28143FA20)
  {
    sub_22D01691C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA20);
  }

  return result;
}

id sub_22CF65FA4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B9C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014B8C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF660D0(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014B8C();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CF66444;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_0;
  v10 = _Block_copy(&v22);
  v11 = &unk_2840409C0;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22CF66F9C;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22CF66FC4;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_0;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

id sub_22CF66444(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CF664BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v12 = sub_22D01636C();
  v13 = sub_22D0168EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22CEE1000, v12, v13, a4, v14, 2u);
    MEMORY[0x2318C6860](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(*(a2 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v15);
  swift_beginAccess();
  sub_22CFB3298(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v15);
}

id sub_22CF667EC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
  v7 = sub_22D0149FC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ProminenceObservationServiceClient(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_22CF66940(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for ProminenceObservationServiceClient(uint64_t a1)
{
  result = qword_28143DC90;
  if (!qword_28143DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF66A4C(uint64_t a1, uint64_t a2)
{
  sub_22CF66B14(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22CF66B14(uint64_t a1, uint64_t a2)
{
  if (!qword_28143F690)
  {
    sub_22D0149FC();
    v2 = sub_22D016A8C();
    if (!v3)
    {
      atomic_store(v2, &qword_28143F690);
    }
  }
}

void sub_22CF66BA4(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 remoteProcess];
  v10 = sub_22D01666C();
  v11 = [v9 hasEntitlement_];

  if (v11)
  {
    v12 = objc_allocWithZone(type metadata accessor for ProminenceObservationServiceClient(0));
    v13 = a1;
    v14 = sub_22CF667EC(v13);
    v15 = [v13 remoteProcess];
    v16 = [v15 pid];

    *&v14[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_delegate + 8] = &off_284029A00;
    swift_unknownObjectWeakAssign();
    v17 = *(*&v2[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v17);
    v18 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients;
    swift_beginAccess();
    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *&v2[v18];
    *&v2[v18] = 0x8000000000000000;
    sub_22CFBED70(v19, v16, isUniquelyReferenced_nonNull_native);
    *&v2[v18] = v32;
    swift_endAccess();
    os_unfair_lock_unlock(v17);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v2;
    *(v21 + 32) = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_22CF66F90;
    *(v22 + 24) = v21;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44;
    v23 = _Block_copy(aBlock);
    v24 = v19;
    v25 = v2;

    [v13 configureConnection_];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v13 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v27 = sub_22D01636C();
    v28 = sub_22D0168EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "Process is not entitled to listen to the prominence service", v29, 2u);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    [a1 invalidate];
  }
}

_DWORD *sub_22CF670D4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  result = swift_slowAlloc();
  *(v3 + 16) = result;
  *result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_22CF67138()
{
  v0 = sub_22D01697C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_22CEEC38C();
  sub_22D01652C();
  v10[1] = MEMORY[0x277D84F90];
  sub_22CF68800(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_22D0169BC();
  qword_281441AD0 = result;
  return result;
}

void sub_22CF67370()
{
  if ((*(v0 + 16) & 1) == 0 && *(v0 + 24))
  {
    os_state_remove_handler();
    if (qword_281440B18 != -1)
    {
      swift_once();
    }

    v1 = *(off_281440B20[0] + 16);
    os_unfair_lock_lock(v1);
    if (qword_2814402D0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 24);
    swift_beginAccess();
    sub_22CFBC9C8(v2);
    swift_endAccess();

    os_unfair_lock_unlock(v1);
  }
}

void *sub_22CF674A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_28143FB68 != -1)
  {
    swift_once();
  }

  v12 = sub_22D01637C();
  __swift_project_value_buffer(v12, qword_2814444C8);

  v13 = sub_22D01636C();
  v14 = sub_22D01690C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22CEEE31C(a1, a2, &v18);
    _os_log_impl(&dword_22CEE1000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318C6860](v16, -1, -1);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_22CF67618()
{

  return swift_deallocClassInstance();
}

double sub_22CF67684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  aBlock[4] = sub_22CF687C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CF681C4;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  v14 = os_state_add_handler();
  _Block_release(v13);
  if (v14)
  {
    if (qword_281440B18 != -1)
    {
      swift_once();
    }

    v15 = *(off_281440B20[0] + 16);
    os_unfair_lock_lock(v15);
    type metadata accessor for StateCaptureEntry();
    v16 = swift_allocObject();

    sub_22CF674A0(a3, a4, a5, a1, a2);
    if (qword_2814402D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = qword_2814402D8;
    qword_2814402D8 = 0x8000000000000000;
    sub_22CFBED84(v16, v14, isUniquelyReferenced_nonNull_native);
    qword_2814402D8 = v25;
    swift_endAccess();

    os_unfair_lock_unlock(v15);
    v18 = type metadata accessor for StateCaptureInvalidator();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = v14;
    *(a6 + 24) = v18;
    *(a6 + 32) = &off_284029BA0;
    *a6 = v19;
  }

  else
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);
    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] os_state_add_handler() failed to return a handle", v24, 2u);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

char *sub_22CF679B0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2(a1);
  v8 = sub_22CF67C44(a4, a5, v7);
  v10 = v9;
  v11 = v8;

  if (v10 < 0x8000)
  {
    return v11;
  }

  if (qword_28143FB68 != -1)
  {
    swift_once();
  }

  v13 = sub_22D01637C();
  __swift_project_value_buffer(v13, qword_2814444C8);
  v14 = sub_22D01636C();
  v15 = sub_22D0168EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, v14, v15, "[state-capture] cannot capture state data larger than 32KB", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }

  return 0;
}

char *sub_22CF67C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = sub_22D01405C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = objc_opt_self();
  v11 = sub_22D0165CC();
  *v51 = 0;
  v12 = [v10 dataWithPropertyList:v11 format:200 options:0 error:v51];

  v13 = *v51;
  if (!v12)
  {
    v19 = v13;
    sub_22D01416C();

    swift_willThrow();
    return v12;
  }

  v14 = sub_22D0141EC();
  v16 = v15;

  v50 = v16;
  v17 = v16 >> 62;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (!v22)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v18) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v18 = v18;
    goto LABEL_13;
  }

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = BYTE6(v50);
LABEL_13:
  if (__OFADD__(v18, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v23 = malloc(v18 + 200);
  if (v23)
  {
    v12 = v23;
    *v51 = 1;
    memset(&v51[4], 0, 196);
    sub_22CF68214(a1, a2, &v51[136], &v52);
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_32;
      }

      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      v22 = __OFSUB__(v32, v33);
      v34 = v32 - v33;
      v24 = v50;
      if (!v22)
      {
LABEL_25:
        if ((v34 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v34))
          {
            *&v51[4] = v34;
            v35 = *&v51[176];
            v12[10] = *&v51[160];
            v12[11] = v35;
            *(v12 + 24) = *&v51[192];
            v36 = *&v51[112];
            v12[6] = *&v51[96];
            v12[7] = v36;
            v37 = *&v51[144];
            v12[8] = *&v51[128];
            v12[9] = v37;
            v38 = *&v51[48];
            v12[2] = *&v51[32];
            v12[3] = v38;
            v39 = *&v51[80];
            v12[4] = *&v51[64];
            v12[5] = v39;
            v40 = *&v51[16];
            *v12 = *v51;
            v12[1] = v40;
            if (v17 != 2)
            {
              if (__OFSUB__(HIDWORD(v14), v14))
              {
                goto LABEL_46;
              }

              v25 = HIDWORD(v14) - v14;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v14 + 24), *(v14 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_22D0141FC();
            v42 = *(v14 + 16);
            v41 = *(v14 + 24);
            sub_22CEE7524(v14, v24);
            v22 = __OFSUB__(v41, v42);
            v25 = v41 - v42;
            if (!v22)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v24 = v50;
            *&v51[4] = 0;
            v43 = *&v51[176];
            v12[10] = *&v51[160];
            v12[11] = v43;
            *(v12 + 24) = *&v51[192];
            v44 = *&v51[112];
            v12[6] = *&v51[96];
            v12[7] = v44;
            v45 = *&v51[144];
            v12[8] = *&v51[128];
            v12[9] = v45;
            v46 = *&v51[48];
            v12[2] = *&v51[32];
            v12[3] = v46;
            v47 = *&v51[80];
            v12[4] = *&v51[64];
            v12[5] = v47;
            v48 = *&v51[16];
            *v12 = *v51;
            v12[1] = v48;
            sub_22D0141FC();
            v25 = 0;
LABEL_36:
            sub_22CEE7524(v14, v24);
LABEL_37:
            if (!__OFADD__(v25, 200))
            {
              return v12;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v24 = v50;
      v25 = BYTE6(v50);
      *&v51[4] = BYTE6(v50);
      v26 = *&v51[176];
      v12[10] = *&v51[160];
      v12[11] = v26;
      *(v12 + 24) = *&v51[192];
      v27 = *&v51[112];
      v12[6] = *&v51[96];
      v12[7] = v27;
      v28 = *&v51[144];
      v12[8] = *&v51[128];
      v12[9] = v28;
      v29 = *&v51[48];
      v12[2] = *&v51[32];
      v12[3] = v29;
      v30 = *&v51[80];
      v12[4] = *&v51[64];
      v12[5] = v30;
      v31 = *&v51[16];
      *v12 = *v51;
      v12[1] = v31;
LABEL_35:
      sub_22D0141FC();
      goto LABEL_36;
    }

    LODWORD(v34) = HIDWORD(v14) - v14;
    v24 = v50;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v34 = v34;
    goto LABEL_25;
  }

  *v51 = 12;
  sub_22CF11C44(MEMORY[0x277D84F90]);
  sub_22CF68800(&qword_27D9F29C8, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  sub_22D01414C();
  v12 = v9;
  sub_22D01404C();
  (*(v6 + 8))(v9, v5);
  swift_willThrow();
  sub_22CEE7524(v14, v50);
  return v12;
}

uint64_t sub_22CF681C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_22CF68214(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_22D016C5C();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_22D016C5C();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_22CF682B0()
{
  sub_22CEEB6DC(v0 + 64, v2, &qword_27D9F29C0, &qword_22D019428);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_22CF67370();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_22CF6875C(v2);
  }

  sub_22CF6875C(v0 + 64);
  return swift_deallocClassInstance();
}

void *sub_22CF68374()
{
  v11[0] = sub_22D01697C();
  v1 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0], v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v9;
  sub_22CEEC38C();
  sub_22D0164DC();
  v11[1] = MEMORY[0x277D84F90];
  sub_22CF68800(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v11[0]);
  v0[4] = sub_22D0169BC();
  return v0;
}

uint64_t sub_22CF685BC(uint64_t a1, uint64_t a2)
{
  if (qword_281441CE0 != -1)
  {
    swift_once();
  }

  v5 = *(off_281441CE8[0] + 16);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_22CEEC698(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5);
  return v9;
}

uint64_t sub_22CF686A0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22CF686F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CF6875C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29C0, &qword_22D019428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_22CF687D0(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF68800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22CF68848()
{
  result = qword_28143FA40;
  if (!qword_28143FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F3990, &unk_22D0189A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA40);
  }

  return result;
}

unint64_t sub_22CF688AC()
{
  result = qword_27D9F29D0;
  if (!qword_27D9F29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F29D0);
  }

  return result;
}

uint64_t sub_22CF68910@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_22CF68940(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RunningBoardError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RunningBoardError(uint64_t result, int a2, int a3)
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

uint64_t sub_22CF689C0(uint64_t a1)
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

uint64_t sub_22CF689DC(uint64_t result, int a2)
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

uint64_t sub_22CF68B60(uint64_t a1)
{
  result = MEMORY[0x2318C59E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_22CEE54CC(&v13, v11, v12);
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

uint64_t sub_22CF68CE4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v28 = a7;
  v31 = a6;
  v35 = a1;
  v36 = a2;
  v10 = a4(0);
  v34 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12, v14);
  v17 = &v27 - v16;
  v32 = *(a3 + 16);
  if (v32)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v29 = a5;
    v30 = a3;
    while (v18 < *(a3 + 16))
    {
      v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v21 = *(v34 + 72);
      sub_22CF07D60(a3 + v20 + v21 * v18, v17, a5);
      v22 = v35(v17);
      if (v7)
      {
        sub_22CF1CB18(v17, v31);

        goto LABEL_15;
      }

      if (v22)
      {
        sub_22CF7BE5C(v17, v33, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          v28(v24 > 1, v25 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + v20 + v25 * v21;
        a5 = v29;
        result = sub_22CF7BE5C(v33, v26, v29);
        a3 = v30;
      }

      else
      {
        result = sub_22CF1CB18(v17, v31);
      }

      if (v32 == ++v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
LABEL_15:

    return v19;
  }

  return result;
}

void sub_22CF68F3C()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v4 = *((*(v3 + 8))(v2, v3) + 16);

  if (v4)
  {
    if (qword_281441818 != -1)
    {
      swift_once();
    }

    if (*(off_281441820 + 16))
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v5 = sub_22D01637C();
      __swift_project_value_buffer(v5, qword_2814443A8);
      v6 = sub_22D01636C();
      v7 = sub_22D01690C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_22CEE1000, v6, v7, "Assertions are obsolete; purging", v8, 2u);
        MEMORY[0x2318C6860](v8, -1, -1);
      }

      v9 = v1[19];
      v10 = v1[20];
      __swift_project_boxed_opaque_existential_1(v1 + 16, v9);
      (*(v10 + 40))(v9, v10);
    }

    else
    {

      sub_22CF38E78();
    }
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_2814443A8);
    oslog = sub_22D01636C();
    v12 = sub_22D01690C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, oslog, v12, "No assertions to restore", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }
  }
}

uint64_t sub_22CF691C8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  return v0;
}

uint64_t sub_22CF69270()
{
  sub_22CF691C8();

  return swift_deallocClassInstance();
}

void sub_22CF692C8(void *a1, uint64_t a2)
{
  v115 = sub_22D01555C();
  v111 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v4);
  v114 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v12 = MEMORY[0x28223BE20](v126, v11);
  v125 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v124 = &v109 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v123 = &v109 - v18;
  v110 = type metadata accessor for Assertion(0);
  v134 = *(v110 - 8);
  v20 = MEMORY[0x28223BE20](v110, v19);
  v128 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v122 = &v109 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v109 - v26;
  v28 = a1[19];
  v29 = a1[20];
  __swift_project_boxed_opaque_existential_1(a1 + 16, v28);
  v30 = (*(v29 + 8))(v28, v29);
  v112 = a2;
  v31 = sub_22CF79C10(v30, a2);

  v32 = v31[2];
  v129 = 0;
  v136 = v27;
  if (v32)
  {
    v109 = v10;
    *&v138[0] = MEMORY[0x277D84F90];
    sub_22CF44084(0, v32, 0);
    v135 = *&v138[0];
    v33 = (v31 + 8);
    v34 = sub_22D016AEC();
    v35 = 0;
    v121 = v7 + 16;
    v120 = v7 + 32;
    v127 = v7;
    v119 = v7 + 8;
    v113 = (v31 + 9);
    v117 = a1;
    v116 = v32;
    v118 = (v31 + 8);
    do
    {
      if (v34 < 0 || v34 >= 1 << *(v31 + 32))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return;
      }

      v37 = v34 >> 6;
      if ((*&v33[8 * (v34 >> 6)] & (1 << v34)) == 0)
      {
        goto LABEL_48;
      }

      v130 = v35;
      v131 = *(v31 + 9);
      v132 = 1 << v34;
      v38 = v31;
      v39 = v126;
      v40 = *(v126 + 48);
      v41 = v127;
      v42 = v123;
      (*(v127 + 16))(v123, v38[6] + *(v127 + 72) * v34, v6);
      v43 = v38[7];
      v133 = *(v134 + 72);
      sub_22CF07D60(v43 + v133 * v34, &v42[v40], type metadata accessor for Assertion);
      v44 = v6;
      v45 = v124;
      (*(v41 + 32))(v124, v42, v44);
      v46 = &v42[v40];
      v47 = v122;
      sub_22CF7BE5C(v46, v45 + *(v39 + 48), type metadata accessor for Assertion);
      v48 = v125;
      sub_22CEF0368(v45, v125, &qword_27D9F2600, &qword_22D018B60);
      sub_22CF7BE5C(v48 + *(v39 + 48), v47, type metadata accessor for Assertion);
      v6 = v44;
      (*(v41 + 8))(v48, v44);
      v49 = v135;
      *&v138[0] = v135;
      v51 = *(v135 + 16);
      v50 = *(v135 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_22CF44084((v50 > 1), v51 + 1, 1);
        v49 = *&v138[0];
      }

      *(v49 + 16) = v51 + 1;
      v52 = *(v134 + 80);
      v135 = v49;
      sub_22CF7BE5C(v47, v49 + ((v52 + 32) & ~v52) + v51 * v133, type metadata accessor for Assertion);
      v36 = 1 << *(v38 + 32);
      if (v34 >= v36)
      {
        goto LABEL_49;
      }

      v33 = v118;
      v53 = *&v118[8 * v37];
      if ((v53 & v132) == 0)
      {
        goto LABEL_50;
      }

      v31 = v38;
      if (v131 != *(v38 + 9))
      {
        goto LABEL_51;
      }

      v54 = v53 & (-2 << (v34 & 0x3F));
      if (v54)
      {
        v36 = __clz(__rbit64(v54)) | v34 & 0x7FFFFFFFFFFFFFC0;
        a1 = v117;
        v27 = v136;
      }

      else
      {
        v55 = v37 << 6;
        v56 = v37 + 1;
        v57 = &v113[8 * v37];
        a1 = v117;
        v27 = v136;
        while (v56 < (v36 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_22CF44CF8(v34, v131, 0);
            v36 = __clz(__rbit64(v58)) + v55;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v34, v131, 0);
      }

LABEL_4:
      v35 = v130 + 1;
      v34 = v36;
    }

    while (v130 + 1 != v116);
    v60 = v6;

    v10 = v109;
    v61 = v135;
    v7 = v127;
    v62 = *(v135 + 16);
    if (v62)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v60 = v6;

    v61 = MEMORY[0x277D84F90];
    v62 = *(MEMORY[0x277D84F90] + 16);
    if (v62)
    {
LABEL_20:
      v63 = v61 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v134 = *(v134 + 72);
      v135 = v61;
      v132 = v7 + 8;
      v133 = (v7 + 16);
      v64 = v63;
      v65 = v62;
      do
      {
        sub_22CF07D60(v64, v27, type metadata accessor for Assertion);
        v66 = a1[19];
        v67 = a1[20];
        __swift_project_boxed_opaque_existential_1(a1 + 16, v66);
        (*v133)(v10, v136, v60);
        sub_22CF1CB18(v136, type metadata accessor for Assertion);
        v68 = *(v67 + 32);
        v69 = v67;
        v27 = v136;
        v68(v10, v66, v69);
        (*v132)(v10, v60);
        v64 += v134;
        --v65;
      }

      while (v65);
      v136 = *(v110 + 40);
      v70 = (v111 + 16);
      v71 = (v111 + 88);
      LODWORD(v133) = *MEMORY[0x277D4D4D8];
      v131 = v111 + 96;
      v132 = v111 + 8;
      v72 = MEMORY[0x277D84F90];
      v73 = v115;
      v74 = v114;
      v75 = v134;
      do
      {
        v76 = v128;
        sub_22CF07D60(v63, v128, type metadata accessor for Assertion);
        (*v70)(v74, v76 + v136, v73);
        sub_22CF1CB18(v76, type metadata accessor for Assertion);
        v77 = (*v71)(v74, v73);
        if (v77 == v133)
        {
          (*v131)(v74, v73);
          v78 = *v74;
          v79 = v74[1];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v80 = v72;
          }

          else
          {
            v80 = sub_22CFCE000(0, *(v72 + 2) + 1, 1, v72);
          }

          v82 = *(v80 + 2);
          v81 = *(v80 + 3);
          if (v82 >= v81 >> 1)
          {
            v80 = sub_22CFCE000((v81 > 1), v82 + 1, 1, v80);
          }

          *(v80 + 2) = v82 + 1;
          v72 = v80;
          v83 = &v80[16 * v82];
          *(v83 + 4) = v78;
          *(v83 + 5) = v79;
          v73 = v115;
          v74 = v114;
          v75 = v134;
        }

        else
        {
          (*v132)(v74, v73);
        }

        v63 += v75;
        --v62;
      }

      while (v62);

      goto LABEL_35;
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_35:
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  swift_beginAccess();
  sub_22CFB32AC(v138, v112);
  swift_endAccess();
  v133 = v72;
  v84 = *(v72 + 2);
  if (!v84)
  {
    goto LABEL_46;
  }

  v85 = a1[6];
  v86 = a1[3];
  v135 = a1[2];
  v136 = v85;
  v134 = v86;
  swift_beginAccess();
  v87 = (v133 + 40);
  while (1)
  {
    v89 = *(v87 - 1);
    v90 = *v87;

    sub_22CF69F70(v89, v90);
    v92 = v91;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = a1[8];
    a1[8] = 0x8000000000000000;
    sub_22CFBE74C(v92, v89, v90, isUniquelyReferenced_nonNull_native);

    v94 = v137;
    a1[8] = v137;
    swift_endAccess();
    *&v138[0] = v94;

    sub_22D01643C();

    sub_22CF3A490();
    a1[13] = v95;

    *&v138[0] = a1[13];

    sub_22D01643C();

    os_unfair_lock_assert_owner(*(v136 + 16));
    v96 = a1[19];
    v97 = a1[20];
    __swift_project_boxed_opaque_existential_1(a1 + 16, v96);
    v98 = (*(v97 + 8))(v96, v97);
    sub_22CF39DE8(v98);
    v100 = v99;

    v101 = sub_22CF3A374(v100);
    a1[9] = v101;

    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = sub_22CEE561C(*(v101 + 16), 0);
      v104 = sub_22CEE56A4(v138, v103 + 4, v102, v101);
      sub_22CEE57FC(*&v138[0]);
      if (v104 != v102)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v103 = MEMORY[0x277D84F90];
    }

    *&v138[0] = v103;
    sub_22D01643C();

    sub_22CF6A5DC();
    v106 = v105;
    a1[14] = v105;

    v107 = *(v106 + 16);
    if (v107)
    {
      break;
    }

    v88 = MEMORY[0x277D84F90];
LABEL_38:
    *&v138[0] = v88;
    sub_22D01643C();

    v87 += 2;
    if (!--v84)
    {
      goto LABEL_46;
    }
  }

  v88 = sub_22CEE561C(*(v106 + 16), 0);
  v108 = sub_22CEE56A4(v138, v88 + 4, v107, v106);
  sub_22CEE57FC(*&v138[0]);
  if (v108 == v107)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_46:

  sub_22CF3B060();
}

void sub_22CF69F70(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v67 = a1;
  v64 = sub_22D01555C();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22D0154EC();
  v6 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v7);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v73 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v78 = &v58 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58 - v17;
  v19 = v2[19];
  v20 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v23 = v21 + 64;
  v22 = *(v21 + 64);
  v24 = *(v21 + 32);
  v68 = 1;
  v25 = 1 << v24;
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v71 = (v6 + 16);
  v70 = (v6 + 88);
  v69 = *MEMORY[0x277D4D4B0];
  v61 = (v6 + 96);
  v62 = (v6 + 8);
  v29 = v9;
  v60 = (v3 + 16);
  v59 = (v3 + 8);
  v75 = v21;

  v30 = 0;
  v77 = v18;
  v72 = v23;
  while (v27)
  {
    v32 = v76;
LABEL_14:
    v34 = __clz(__rbit64(v27)) | (v30 << 6);
    v35 = v75;
    v36 = *(v75 + 48);
    v37 = sub_22D01534C();
    v79 = *(v37 - 8);
    v38 = v36 + v79[9] * v34;
    v39 = v79[2];
    v80 = v37;
    v39(v18, v38);
    v40 = *(v35 + 56);
    v41 = type metadata accessor for Assertion(0);
    sub_22CF07D60(v40 + *(*(v41 - 8) + 72) * v34, &v18[*(v29 + 48)], type metadata accessor for Assertion);
    v42 = v78;
    sub_22CEEB6DC(v18, v78, &qword_27D9F2600, &qword_22D018B60);
    v43 = v42 + *(v29 + 48);
    v44 = v74;
    (*v71)(v74, v43 + *(v41 + 20), v32);
    sub_22CF1CB18(v43, type metadata accessor for Assertion);
    v45 = (*v70)(v44, v32);
    if (v45 != v69)
    {
      sub_22CEEC3D8(v18, &qword_27D9F2600, &qword_22D018B60);
      (*v62)(v44, v32);
      v31 = v79[1];
LABEL_5:
      v23 = v72;
      goto LABEL_6;
    }

    (*v61)(v44, v32);
    v66 = *v44;
    v46 = v73;
    sub_22CEEB6DC(v18, v73, &qword_27D9F2600, &qword_22D018B60);
    v47 = v46 + *(v29 + 48);
    v48 = v47 + *(v41 + 40);
    v49 = v63;
    v50 = v64;
    (*v60)(v63, v48, v64);
    sub_22CF1CB18(v47, type metadata accessor for Assertion);
    v51 = sub_22D01554C();
    v53 = v52;
    (*v59)(v49, v50);
    if (v51 == v67 && v53 == v65)
    {

      v31 = v79[1];
      v31(v73, v80);
    }

    else
    {
      v54 = sub_22D016DFC();

      v31 = v79[1];
      v31(v73, v80);
      if ((v54 & 1) == 0)
      {
        sub_22CEEC3D8(v77, &qword_27D9F2600, &qword_22D018B60);
        goto LABEL_5;
      }
    }

    v23 = v72;
    v55 = v66;
    v56 = v68;
    v57 = sub_22D014BBC();
    sub_22CEEC3D8(v77, &qword_27D9F2600, &qword_22D018B60);
    if ((v57 & 1) == 0)
    {
      v56 = v55;
    }

    v68 = v56;
LABEL_6:
    v27 &= v27 - 1;
    v31(v78, v80);
    v18 = v77;
  }

  v32 = v76;
  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v28)
    {

      return;
    }

    v27 = *(v23 + 8 * v33);
    ++v30;
    if (v27)
    {
      v30 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22CF6A5DC()
{
  v1 = sub_22D0154EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  MEMORY[0x28223BE20](v34, v6);
  v36 = &v30 - v7;
  os_unfair_lock_assert_owner(*(v0[6] + 16));
  v37[2] = MEMORY[0x277D84FA0];
  v8 = v0[19];
  v9 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v32 = (v2 + 88);
  v33 = (v2 + 16);
  v31 = *MEMORY[0x277D4D4A0];
  v30 = (v2 + 8);
  v35 = v10;

  v16 = 0;
  v17 = v36;
  while (v14)
  {
LABEL_11:
    v19 = __clz(__rbit64(v14)) | (v16 << 6);
    v20 = v35;
    v21 = *(v35 + 48);
    v22 = sub_22D01534C();
    (*(*(v22 - 8) + 16))(v17, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    v24 = type metadata accessor for Assertion(0);
    v25 = v23 + *(*(v24 - 8) + 72) * v19;
    v26 = v17 + *(v34 + 48);
    sub_22CF07D60(v25, v26, type metadata accessor for Assertion);
    (*v33)(v5, v26 + *(v24 + 20), v1);
    v27 = (*v32)(v5, v1);
    if (v27 == v31)
    {
      v28 = sub_22D01554C();
      sub_22CEE54CC(v37, v28, v29);
    }

    else
    {
      (*v30)(v5, v1);
    }

    v14 &= v14 - 1;
    sub_22CEEC3D8(v36, &qword_27D9F2600, &qword_22D018B60);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22CF6A944@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = sub_22D01430C();
  v157 = *(v3 - 8);
  v158 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v156 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v155 = &v147 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v154 = &v147 - v11;
  v12 = sub_22D01534C();
  v170 = *(v12 - 8);
  v171 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v168 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Assertion(0);
  v16 = MEMORY[0x28223BE20](v161, v15);
  v148 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v150 = &v147 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v159 = &v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v149 = &v147 - v25;
  v26 = sub_22D01555C();
  v169 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v167 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = (&v147 - v31);
  v33 = sub_22D0154EC();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v153 = &v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v151 = &v147 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v164 = &v147 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v147 - v45;
  v47 = a1[3];
  v172 = a1;
  v48 = __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_22D01545C();
  sub_22CF6BC48();
  v165 = v34;
  v166 = v33;
  v152 = *(v34 + 8);
  v152(v46, v33);
  v49 = *(*v48 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection);
  v50 = &off_278748000;
  v51 = [v49 remoteProcess];
  v52 = sub_22D01666C();

  LODWORD(a1) = [v51 hasEntitlement_];

  if (!a1)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v56 = sub_22D01637C();
    __swift_project_value_buffer(v56, qword_2814443A8);
    sub_22CEE3A84(v172, v173);
    v57 = sub_22D01636C();
    v58 = sub_22D0168EC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v175 = v60;
      *v59 = 136380675;
      v61 = [*(*__swift_project_boxed_opaque_existential_1(v173 v174) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v62 = v160;
      sub_22CEE4E5C();
      if (v62)
      {
        v65 = 0x6E776F6E6B6E753CLL;

        v66 = 0xE90000000000003ELL;
      }

      else
      {
        v65 = v63;
        v66 = v64;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v135 = sub_22CEEE31C(v65, v66, &v175);

      *(v59 + 4) = v135;
      _os_log_impl(&dword_22CEE1000, v57, v58, "Client %{private}s is not entitled to request assertion", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x2318C6860](v60, -1, -1);
      MEMORY[0x2318C6860](v59, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    v77 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    swift_allocError();
    v79 = v136;
    v80 = MEMORY[0x277CB95C8];
    goto LABEL_41;
  }

  sub_22D01542C();
  v53 = v169;
  v54 = (*(v169 + 88))(v32, v26);
  v55 = v54 == *MEMORY[0x277D4D4D0];
  v147 = v26;
  if (v55)
  {
    (*(v53 + 8))(v32, v26);
  }

  else
  {
    if (v54 != *MEMORY[0x277D4D4D8])
    {
      result = sub_22D016CFC();
      __break(1u);
      return result;
    }

    (*(v53 + 96))(v32, v26);
    v67 = *v32;
    v68 = v32[1];
    v69 = v163[30];
    v70 = v163[31];
    __swift_project_boxed_opaque_existential_1(v163 + 27, v69);
    v71 = v149;
    (*(v70 + 16))(v67, v68, v69, v70);

    v72 = type metadata accessor for Activity(0);
    LODWORD(v67) = (*(*(v72 - 8) + 48))(v71, 1, v72);
    sub_22CEEC3D8(v71, &qword_27D9F3810, &unk_22D018FA0);
    v50 = &off_278748000;
    if (v67 == 1)
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v73 = sub_22D01637C();
      __swift_project_value_buffer(v73, qword_2814443A8);
      v74 = sub_22D01636C();
      v75 = sub_22D0168EC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_22CEE1000, v74, v75, "Assertion targets an activity that does not exist", v76, 2u);
        MEMORY[0x2318C6860](v76, -1, -1);
      }

      v77 = sub_22D014C3C();
      sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
      swift_allocError();
      v79 = v78;
      v80 = MEMORY[0x277CB95D0];
LABEL_41:
      (*(*(v77 - 8) + 104))(v79, *v80, v77);
      return swift_willThrow();
    }
  }

  getpid();
  v81 = [*(*__swift_project_boxed_opaque_existential_1(v172 v172[3]) + OBJC:v50[416] IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  [v81 pid];

  sub_22D01532C();
  v82 = v162;
  sub_22D01533C();
  (*(v170 + 16))(v168, v82, v171);
  sub_22D01542C();
  sub_22D01545C();
  v83 = v151;
  sub_22D01545C();
  v84 = v165;
  v85 = v166;
  v86 = v153;
  (*(v165 + 16))(v153, v83, v166);
  v87 = (*(v84 + 88))(v86, v85);
  if (v87 == *MEMORY[0x277D4D4B0])
  {
    v86 = v83;
    v88 = v159;
    v89 = v154;
    v90 = v152;
LABEL_19:
    v90(v86, v85);
LABEL_20:
    v91 = sub_22D01539C();
    (*(*(v91 - 8) + 56))(v89, 1, 1, v91);
    goto LABEL_24;
  }

  v88 = v159;
  v89 = v154;
  v90 = v152;
  if (v87 == *MEMORY[0x277D4D498])
  {
    sub_22D01551C();
    v90(v83, v85);
    v92 = *MEMORY[0x277D4D470];
    v93 = sub_22D01539C();
    v94 = *(v93 - 8);
    (*(v94 + 104))(v89, v92, v93);
    (*(v94 + 56))(v89, 0, 1, v93);
  }

  else
  {
    if (v87 == *MEMORY[0x277D4D490])
    {
      v152(v83, v85);
      goto LABEL_19;
    }

    if (v87 == *MEMORY[0x277D4D4A8])
    {
      v86 = v83;
      goto LABEL_19;
    }

    v143 = v83;
    v144 = *MEMORY[0x277D4D4A0];
    v145 = v87;
    v152(v143, v85);
    if (v145 == v144)
    {
      goto LABEL_20;
    }

    v146 = sub_22D01539C();
    (*(*(v146 - 8) + 56))(v89, 1, 1, v146);
    v90(v86, v85);
  }

LABEL_24:
  v95 = sub_22D0153FC();
  v97 = v96;
  v98 = v161;
  v99 = v88;
  sub_22D01540C();
  v100 = sub_22D01543C();
  v102 = v101;
  v103 = v101 & 1;
  (*(v170 + 32))(v99, v168, v171);
  (*(v165 + 32))(v99 + v98[5], v164, v166);
  v104 = v89;
  v105 = v99;
  sub_22CEF0368(v104, v99 + v98[6], &qword_27D9F2680, &qword_22D019670);
  v106 = (v99 + v98[7]);
  *v106 = v95;
  v106[1] = v97;
  v107 = v99 + v98[9];
  *v107 = v100;
  *(v107 + 8) = v103;
  (*(v169 + 32))(v99 + v98[10], v167, v147);
  v108 = v155;
  if (v102)
  {
    sub_22D01423C();
  }

  else
  {
    sub_22D01425C();
  }

  v109 = v156;
  sub_22D0142DC();
  v110 = sub_22D01428C();
  v111 = *(v157 + 8);
  v112 = v109;
  v113 = v158;
  v111(v112, v158);
  v111(v108, v113);
  if (v110)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v114 = sub_22D01637C();
    __swift_project_value_buffer(v114, qword_2814443A8);
    v115 = sub_22D01636C();
    v116 = sub_22D0168EC();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_22CEE1000, v115, v116, "Assertion has already expired", v117, 2u);
      MEMORY[0x2318C6860](v117, -1, -1);
    }

    v118 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    swift_allocError();
    (*(*(v118 - 8) + 104))(v119, *MEMORY[0x277CB95D0], v118);
    swift_willThrow();
    sub_22CF1CB18(v105, type metadata accessor for Assertion);
    return (*(v170 + 8))(v162, v171);
  }

  else
  {
    v121 = v163[19];
    v122 = v163[20];
    __swift_project_boxed_opaque_existential_1(v163 + 16, v121);
    (*(v122 + 24))(v105, v121, v122);
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v123 = sub_22D01637C();
    __swift_project_value_buffer(v123, qword_2814443A8);
    sub_22CEE3A84(v172, v173);
    v124 = v150;
    sub_22CF07D60(v105, v150, type metadata accessor for Assertion);
    v125 = sub_22D01636C();
    v126 = sub_22D01690C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v175 = v128;
      *v127 = 136380931;
      v129 = [*(*__swift_project_boxed_opaque_existential_1(v173 v174) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v130 = v160;
      sub_22CEE4E5C();
      if (v130)
      {
        v133 = 0x6E776F6E6B6E753CLL;

        v134 = 0xE90000000000003ELL;
      }

      else
      {
        v133 = v131;
        v134 = v132;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v137 = sub_22CEEE31C(v133, v134, &v175);

      *(v127 + 4) = v137;
      *(v127 + 12) = 2081;
      v138 = v150;
      sub_22CF07D60(v150, v148, type metadata accessor for Assertion);
      v139 = sub_22D01669C();
      v141 = v140;
      sub_22CF1CB18(v138, type metadata accessor for Assertion);
      v142 = sub_22CEEE31C(v139, v141, &v175);

      *(v127 + 14) = v142;
      _os_log_impl(&dword_22CEE1000, v125, v126, "Client %{private}s has acquired assertion: %{private}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v128, -1, -1);
      MEMORY[0x2318C6860](v127, -1, -1);
    }

    else
    {

      sub_22CF1CB18(v124, type metadata accessor for Assertion);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    sub_22CF6BE6C(v105);
    return sub_22CF1CB18(v105, type metadata accessor for Assertion);
  }
}

uint64_t sub_22CF6BC48()
{
  v1 = v0;
  v2 = sub_22D0154EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D4D4B0])
  {
    return 0xD000000000000032;
  }

  if (v7 == *MEMORY[0x277D4D498])
  {
    return 0xD00000000000002FLL;
  }

  if (v7 == *MEMORY[0x277D4D490])
  {
    (*(v3 + 8))(v6, v2);
    return 0xD00000000000003BLL;
  }

  else if (v7 == *MEMORY[0x277D4D4A8])
  {
    return 0xD000000000000044;
  }

  else if (v7 == *MEMORY[0x277D4D4A0])
  {
    return 0xD000000000000035;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF6BE6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D0154EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Assertion(0);
  (*(v5 + 16))(v8, a1 + *(v9 + 20), v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x277D4D4B0])
  {
    v11 = sub_22D01554C();
    v13 = v12;
    v14 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v14);
    sub_22CF6FBE4(v2, v11, v13);
LABEL_3:

    v15 = v14;
LABEL_4:
    os_unfair_lock_unlock(v15);
LABEL_13:
    sub_22CF3B060();
    return;
  }

  if (v10 == *MEMORY[0x277D4D498])
  {
    v16 = sub_22D01554C();
    v18 = v17;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v19 = sub_22D01637C();
    __swift_project_value_buffer(v19, qword_2814443A8);

    v20 = sub_22D01636C();
    v21 = sub_22D01690C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_22CEEE31C(v16, v18, &v35);
      _os_log_impl(&dword_22CEE1000, v20, v21, "Fake foreground assertions have changed for bundle identifier: %{private}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2318C6860](v23, -1, -1);
      MEMORY[0x2318C6860](v22, -1, -1);
    }

    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D4D490])
  {
    sub_22D01554C();

    v24 = *(v2 + 48);
    v25 = *(v24 + 16);
    os_unfair_lock_lock(v25);
    sub_22CF70790(v2);
    os_unfair_lock_unlock(v25);
    v26 = sub_22D01554C();
    v28 = v27;
    v29 = *(v24 + 16);
    os_unfair_lock_lock(v29);
    sub_22CF6FBE4(v2, v26, v28);

    os_unfair_lock_unlock(v29);
    (*(v5 + 8))(v8, v4);
    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D4D4A8])
  {
    v30 = sub_22D01554C();
    v32 = v31;
    v14 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v14);
    sub_22CF6FD1C(v2, v30, v32);
    goto LABEL_3;
  }

  if (v10 == *MEMORY[0x277D4D4A0])
  {
    sub_22D01554C();

    v33 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v33);
    sub_22CF709D0(v2);
    v15 = v33;
    goto LABEL_4;
  }

  sub_22D016CFC();
  __break(1u);
}

uint64_t sub_22CF6C29C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_22D01534C();
  v100 = *(v7 - 8);
  v101 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v98 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v11);
  v97 = &v95 - v12;
  v13 = type metadata accessor for Assertion(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v99 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v103 = &v95 - v23;
  v24 = [*(*__swift_project_boxed_opaque_existential_1(a2 a2[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  v25 = [v24 pid];

  v102 = a1;
  if (v25 == sub_22D01531C())
  {
    v96 = v3;
    v27 = v4[19];
    v26 = v4[20];
    __swift_project_boxed_opaque_existential_1(v4 + 16, v27);
    v28 = (*(v26 + 8))(v27, v26);
    if (*(v28 + 16))
    {
      v29 = v102;
      v30 = sub_22CFB606C(v102);
      v31 = v103;
      if (v32)
      {
        sub_22CF07D60(*(v28 + 56) + *(v14 + 72) * v30, v103, type metadata accessor for Assertion);

        (*(v14 + 56))(v31, 0, 1, v13);
      }

      else
      {

        (*(v14 + 56))(v31, 1, 1, v13);
      }
    }

    else
    {

      v31 = v103;
      (*(v14 + 56))(v103, 1, 1, v13);
      v29 = v102;
    }

    sub_22CEEB6DC(v31, v21, &qword_27D9F26A0, &qword_22D019700);
    if ((*(v14 + 48))(v21, 1, v13) == 1)
    {
      sub_22CEEC3D8(v21, &qword_27D9F26A0, &qword_22D019700);
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v43 = sub_22D01637C();
      __swift_project_value_buffer(v43, qword_2814443A8);
      v44 = v100;
      v45 = v101;
      v46 = v98;
      (*(v100 + 16))(v98, v29, v101);
      v47 = sub_22D01636C();
      v48 = sub_22D0168EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v104[0] = v50;
        *v49 = 136446210;
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
        v51 = sub_22D016DEC();
        v53 = v52;
        (*(v44 + 8))(v46, v45);
        v54 = sub_22CEEE31C(v51, v53, v104);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_22CEE1000, v47, v48, "Invalidated assertion does not exist: %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x2318C6860](v50, -1, -1);
        MEMORY[0x2318C6860](v49, -1, -1);

        v55 = v103;
      }

      else
      {

        (*(v44 + 8))(v46, v45);
        v55 = v31;
      }

      return sub_22CEEC3D8(v55, &qword_27D9F26A0, &qword_22D019700);
    }

    else
    {
      v98 = v4;
      v56 = v99;
      sub_22CF7BE5C(v21, v99, type metadata accessor for Assertion);
      v57 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_22CF6BC48();
      v58 = [*(*v57 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteProcess];
      v59 = sub_22D01666C();

      v60 = [v58 hasEntitlement_];

      if (v60)
      {
        if (qword_28143FAF0 != -1)
        {
          swift_once();
        }

        v61 = sub_22D01637C();
        __swift_project_value_buffer(v61, qword_2814443A8);
        v62 = v100;
        v63 = v97;
        v64 = v29;
        v65 = v101;
        (*(v100 + 16))(v97, v64, v101);
        v66 = sub_22D01636C();
        v67 = sub_22D01690C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v104[0] = v95;
          *v68 = 136446210;
          sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
          v69 = sub_22D016DEC();
          v71 = v70;
          (*(v62 + 8))(v63, v65);
          v72 = sub_22CEEE31C(v69, v71, v104);
          v31 = v103;

          *(v68 + 4) = v72;
          _os_log_impl(&dword_22CEE1000, v66, v67, "Invalidated: %{public}s", v68, 0xCu);
          v73 = v95;
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          MEMORY[0x2318C6860](v73, -1, -1);
          MEMORY[0x2318C6860](v68, -1, -1);
        }

        else
        {

          (*(v62 + 8))(v63, v65);
        }

        v90 = v98[19];
        v91 = v98[20];
        __swift_project_boxed_opaque_existential_1(v98 + 16, v90);
        (*(v91 + 32))(v102, v90, v91);
        sub_22CF6BE6C(v56);
      }

      else
      {
        if (qword_28143FAF0 != -1)
        {
          swift_once();
        }

        v75 = sub_22D01637C();
        __swift_project_value_buffer(v75, qword_2814443A8);
        sub_22CEE3A84(a2, v104);
        v76 = sub_22D01636C();
        v77 = sub_22D0168EC();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = v56;
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v106 = v80;
          *v79 = 136380675;
          v81 = [*(*__swift_project_boxed_opaque_existential_1(v104 v105) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
          v82 = v96;
          sub_22CEE4E5C();
          if (v82)
          {
            v85 = 0x6E776F6E6B6E753CLL;

            v86 = 0xE90000000000003ELL;
          }

          else
          {
            v85 = v83;
            v86 = v84;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v104);
          v92 = sub_22CEEE31C(v85, v86, &v106);

          *(v79 + 4) = v92;
          _os_log_impl(&dword_22CEE1000, v76, v77, "Client %{private}s is not entitled to invalidate assertion", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x2318C6860](v80, -1, -1);
          MEMORY[0x2318C6860](v79, -1, -1);

          v31 = v103;
          v56 = v78;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v104);
        }

        v93 = sub_22D014C3C();
        sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
        swift_allocError();
        (*(*(v93 - 8) + 104))(v94, *MEMORY[0x277CB95C8], v93);
        swift_willThrow();
      }

      sub_22CF1CB18(v56, type metadata accessor for Assertion);
      return sub_22CEEC3D8(v31, &qword_27D9F26A0, &qword_22D019700);
    }
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_2814443A8);
    sub_22CEE3A84(a2, v104);
    v34 = sub_22D01636C();
    v35 = sub_22D0168EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v106 = v37;
      *v36 = 136380675;
      v38 = [*(*__swift_project_boxed_opaque_existential_1(v104 v105) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      sub_22CEE4E5C();
      if (v3)
      {
        v41 = 0x6E776F6E6B6E753CLL;

        v42 = 0xE90000000000003ELL;
      }

      else
      {
        v41 = v39;
        v42 = v40;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v87 = sub_22CEEE31C(v41, v42, &v106);

      *(v36 + 4) = v87;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Client %{private}s is not permitted to invalidate another client's assertion", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x2318C6860](v37, -1, -1);
      MEMORY[0x2318C6860](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
    }

    v88 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    swift_allocError();
    (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277CB95C8], v88);
    return swift_willThrow();
  }
}

void sub_22CF6CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v78 = &v68 - v9;
  v77 = sub_22D0154AC();
  v10 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v11);
  v88 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Assertion(0);
  v71 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v13);
  v70 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01534C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v85 = &v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v82 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v81 = &v68 - v28;
  v29 = v3[19];
  v30 = v3[20];
  __swift_project_boxed_opaque_existential_1(v3 + 16, v29);
  v31 = (*(v30 + 8))(v29, v30);

  v32 = sub_22CF7BBF8(v31, a1, a2);

  v33 = *(v32 + 64);
  v80 = v32 + 64;
  v72 = v32;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v89 = v4;
  swift_beginAccess();
  v37 = 0;
  v38 = (v34 + 63) >> 6;
  v84 = (v16 + 16);
  v83 = (v16 + 32);
  v75 = (v10 + 8);
  v69 = v16;
  v74 = (v16 + 8);
  v86 = v15;
  v87 = v20;
  v73 = v38;
  while (v36)
  {
    v43 = v37;
LABEL_16:
    v48 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v49 = v48 | (v43 << 6);
    v50 = v72;
    v51 = v69;
    v52 = v85;
    v53 = v86;
    (*(v69 + 16))(v85, *(v72 + 48) + *(v69 + 72) * v49, v86);
    v54 = v70;
    sub_22CF07D60(*(v50 + 56) + *(v71 + 72) * v49, v70, type metadata accessor for Assertion);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    v56 = *(v55 + 48);
    v57 = *(v51 + 32);
    v15 = v53;
    v46 = v82;
    v57(v82, v52, v15);
    sub_22CF7BE5C(v54, v46 + v56, type metadata accessor for Assertion);
    (*(*(v55 - 8) + 56))(v46, 0, 1, v55);
    v47 = v81;
LABEL_17:
    sub_22CEF0368(v46, v47, &qword_27D9F29F0, &unk_22D019678);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    if ((*(*(v58 - 8) + 48))(v47, 1, v58) == 1)
    {

      return;
    }

    v59 = v47 + *(v58 + 48);
    v60 = v87;
    (*v83)(v87, v47, v15);
    (*v84)(v85, v60, v15);
    sub_22CEEB6DC(v59 + *(v76 + 24), v78, &qword_27D9F2680, &qword_22D019670);
    sub_22CF1CB18(v59, type metadata accessor for Assertion);
    sub_22D01547C();
    v61 = v89;
    v62 = *(v89[6] + 16);
    os_unfair_lock_lock(v62);
    v63 = sub_22D01531C();
    v64 = v61[7];
    if (*(v64 + 16))
    {
      v65 = sub_22CEE637C(v63);
      v38 = v73;
      if (v66)
      {
        sub_22CEE3A84(*(v64 + 56) + 40 * v65, &v93);
      }

      else
      {
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
      }
    }

    else
    {
      v95 = 0;
      v93 = 0u;
      v94 = 0u;
      v38 = v73;
    }

    os_unfair_lock_unlock(v62);
    sub_22CEEB6DC(&v93, &v90, &qword_27D9F29F8, &qword_22D019688);
    if (v91)
    {
      sub_22CEF44D4(&v90, v92);
      __swift_project_boxed_opaque_existential_1(v92, v92[3]);
      v39 = v88;
      sub_22D006D8C(v88);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
    }

    else
    {
      sub_22CEEC3D8(&v90, &qword_27D9F29F8, &qword_22D019688);
      v39 = v88;
    }

    v40 = v89[19];
    v41 = v89[20];
    __swift_project_boxed_opaque_existential_1(v89 + 16, v40);
    v42 = v87;
    (*(v41 + 32))(v87, v40, v41);
    sub_22CEEC3D8(&v93, &qword_27D9F29F8, &qword_22D019688);
    (*v75)(v39, v77);
    v15 = v86;
    (*v74)(v42, v86);
  }

  if (v38 <= v37 + 1)
  {
    v44 = v37 + 1;
  }

  else
  {
    v44 = v38;
  }

  v45 = v44 - 1;
  v46 = v82;
  v47 = v81;
  while (1)
  {
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v43 >= v38)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      (*(*(v67 - 8) + 56))(v46, 1, 1, v67);
      v36 = 0;
      v37 = v45;
      goto LABEL_17;
    }

    v36 = *(v80 + 8 * v43);
    ++v37;
    if (v36)
    {
      v37 = v43;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_22CF6D860@<X0>(char *__ptr32 *a1@<X0>, char *__ptr32 *a2@<X1>, uint64_t a3@<X8>)
{
  v295 = a1;
  v260 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B8, &qword_22D018F70);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v263 = v255 - v6;
  v7 = sub_22D01555C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v275 = v255 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01430C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v274 = v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_22D0154EC();
  v259 = *(v279 - 8);
  MEMORY[0x28223BE20](v279, v13);
  v297 = v255 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_22D01546C();
  v258 = *(v293 - 8);
  v16 = MEMORY[0x28223BE20](v293, v15);
  v273 = v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v272 = v255 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v271 = v255 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v270 = v255 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v278 = v255 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v298 = v255 - v31;
  v309 = sub_22D0154DC();
  v32 = *(v309 - 1);
  v34 = MEMORY[0x28223BE20](v309, v33);
  v265 = v255 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v299 = v255 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v269 = v255 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v262 = v255 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v282 = v255 - v46;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v48 = MEMORY[0x28223BE20](v292, v47);
  v291 = v255 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v290 = (v255 - v52);
  MEMORY[0x28223BE20](v51, v53);
  v289 = v255 - v54;
  v55 = sub_22D01534C();
  v308 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55, v56);
  v267 = v255 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v280 = v255 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v266 = v255 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v261 = v255 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v264 = v255 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v268 = v255 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v276 = v255 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v80 = v255 - v79;
  MEMORY[0x28223BE20](v78, v81);
  *&v288 = v255 - v82;
  v83 = sub_22D01538C();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v85);
  v87 = v255 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28143FAF0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v88 = sub_22D01637C();
    v89 = __swift_project_value_buffer(v88, qword_2814443A8);
    v294 = a2;
    sub_22CEE3A84(a2, v312);
    (*(v84 + 16))(v87, v295, v83);
    v296 = v89;
    v90 = sub_22D01636C();
    LODWORD(v307) = sub_22D01690C();
    v91 = os_log_type_enabled(v90, v307);
    v283 = v80;
    if (v91)
    {
      v305 = v90;
      v92 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      v313 = v304;
      *v92 = 136380931;
      v93 = [*(*__swift_project_boxed_opaque_existential_1(v312 v312[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v94 = v311;
      sub_22CEE4E5C();
      v306 = v83;
      if (v94)
      {

        v311 = 0;
        v97 = 0xE90000000000003ELL;
        v80 = 0x6E776F6E6B6E753CLL;
      }

      else
      {
        v80 = v95;
        v97 = v96;
        v311 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v312);
      v98 = sub_22CEEE31C(v80, v97, &v313);

      *(v92 + 4) = v98;
      *(v92 + 12) = 2082;
      sub_22D01536C();
      v99 = MEMORY[0x2318C5950]();
      v101 = v100;

      (*(v84 + 8))(v87, v306);
      v102 = sub_22CEEE31C(v99, v101, &v313);

      *(v92 + 14) = v102;
      v103 = v305;
      _os_log_impl(&dword_22CEE1000, v305, v307, "Client %{private}s reconnecting assertions: %{public}s", v92, 0x16u);
      v104 = v304;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v104, -1, -1);
      MEMORY[0x2318C6860](v92, -1, -1);
    }

    else
    {

      (*(v84 + 8))(v87, v83);
      __swift_destroy_boxed_opaque_existential_1Tm(v312);
    }

    v105 = *(v281 + 152);
    v106 = *(v281 + 160);
    __swift_project_boxed_opaque_existential_1((v281 + 128), v105);
    v83 = (*(v106 + 8))(v105, v106);
    MEMORY[0x28223BE20](v83, v107);
    v255[-2] = v294;
    v108 = v311;
    v109 = sub_22CEE9DF8(sub_22CF7C2F8, &v255[-4], v83, sub_22CF06DB0, sub_22CF06DB0);
    v311 = v108;

    v110 = *(v109 + 2);
    v84 = v299;
    if (!v110)
    {
      break;
    }

    v300 = v32;
    v312[0] = MEMORY[0x277D84F90];
    a2 = v312;
    v284 = v110;
    sub_22CF441B0(0, v110, 0);
    v306 = (v109 + 64);
    v307 = v312[0];
    v87 = sub_22D016AEC();
    v111 = 0;
    v112 = v308;
    v287 = (v308 + 16);
    v286 = (v308 + 32);
    v277 = (v109 + 72);
    v32 = v109;
    *&v285 = v109;
    while ((v87 & 0x8000000000000000) == 0 && v87 < 1 << *(v32 + 32))
    {
      if ((*(v306 + (v87 >> 6)) & (1 << v87)) == 0)
      {
        goto LABEL_69;
      }

      v303 = 1 << v87;
      v304 = v87 >> 6;
      v114 = *(v32 + 36);
      v301 = v111;
      *&v302 = v114;
      v115 = v292;
      v116 = v32;
      isa_low = SLODWORD(v292[6].isa);
      v118 = *(v116 + 48);
      v305 = *(v112 + 72);
      v119 = v289;
      (*(v112 + 16))(v289, v118 + v305 * v87, v55);
      v120 = *(v116 + 56);
      v121 = type metadata accessor for Assertion(0);
      sub_22CF07D60(v120 + *(*(v121 - 8) + 72) * v87, &v119[isa_low], type metadata accessor for Assertion);
      v122 = *(v112 + 32);
      v123 = v290;
      v80 = v286;
      v122(v290, v119, v55);
      sub_22CF7BE5C(&v119[isa_low], v123 + SLODWORD(v115[6].isa), type metadata accessor for Assertion);
      v124 = v291;
      sub_22CEF0368(v123, v291, &qword_27D9F2600, &qword_22D018B60);
      v125 = SLODWORD(v115[6].isa);
      v84 = v288;
      v122(v288, v124, v55);
      sub_22CF1CB18(&v124[v125], type metadata accessor for Assertion);
      a2 = v307;
      v312[0] = v307;
      v127 = *(v307 + 2);
      v126 = *(v307 + 3);
      if (v127 >= v126 >> 1)
      {
        sub_22CF441B0((v126 > 1), v127 + 1, 1);
        a2 = v312[0];
      }

      *(a2 + 2) = v127 + 1;
      v122((a2 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + v127 * v305), v84, v55);
      v32 = v285;
      v83 = 1 << *(v285 + 32);
      if (v87 >= v83)
      {
        goto LABEL_70;
      }

      v128 = *(v306 + v304);
      if ((v128 & v303) == 0)
      {
        goto LABEL_71;
      }

      if (v302 != *(v285 + 36))
      {
        goto LABEL_72;
      }

      v129 = v128 & (-2 << (v87 & 0x3F));
      v307 = a2;
      if (v129)
      {
        v83 = __clz(__rbit64(v129)) | v87 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v130 = v304 << 6;
        v131 = v304 + 1;
        v132 = (v277 + 8 * v304);
        while (v131 < (v83 + 63) >> 6)
        {
          v134 = *v132++;
          v133 = v134;
          v130 += 64;
          ++v131;
          if (v134)
          {
            sub_22CF44CF8(v87, v302, 0);
            v83 = __clz(__rbit64(v133)) + v130;
            goto LABEL_11;
          }
        }

        sub_22CF44CF8(v87, v302, 0);
      }

LABEL_11:
      v111 = (v301 + 1);
      v87 = v83;
      v112 = v308;
      v113 = v309;
      v83 = v298;
      v84 = v299;
      a2 = v295;
      if ((v301 + 1) == v284)
      {

        v32 = v300;
        v135 = v307;
        goto LABEL_28;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

  v135 = MEMORY[0x277D84F90];
  v83 = v298;
  v113 = v309;
LABEL_28:
  v136 = sub_22CF7BEC4(v135);

  v312[0] = v136;
  v137 = sub_22D01536C();
  v80 = *(v137 + 16);
  a2 = &off_22D018000;
  v310 = v55;
  v87 = v297;
  if (v80)
  {
    v141 = *(v32 + 16);
    v140 = v32 + 16;
    v139 = v141;
    v142 = (*(v140 + 64) + 32) & ~*(v140 + 64);
    v255[1] = v137;
    v143 = (v137 + v142);
    *&v302 = v308 + 8;
    v303 = *(v140 + 56);
    v304 = v140 - 8;
    v295 = (v258 + 8);
    v292 = v259 + 1;
    v284 = (v308 + 32);
    v287 = MEMORY[0x277D84F98];
    v286 = (v308 + 16);
    *&v138 = 136446466;
    v256 = v138;
    *&v138 = 136446210;
    v288 = v138;
    *&v138 = 136380675;
    v285 = v138;
    v300 = v140;
    v144 = v282;
    v306 = v141;
    while (1)
    {
      v307 = v143;
      v146 = v139;
      v147 = (v139)(v144);
      MEMORY[0x28223BE20](v147, v148);
      v255[-2] = v144;
      v149 = v311;
      sub_22CF4CDBC(sub_22CF7C318, &v255[-4], v150);
      v311 = v149;
      if (v151)
      {
        v152 = __swift_project_boxed_opaque_existential_1(v294, v294[3]);
        sub_22D0154CC();
        sub_22D01545C();
        v301 = *v295;
        (v301)(v83, v293);
        sub_22CF6BC48();
        (v292->isa)(v87, v279);
        v153 = [*(*v152 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteProcess];
        v154 = sub_22D01666C();

        v155 = [v153 hasEntitlement_];

        if (v155)
        {
          v305 = v80;
          v156 = *(v281 + 152);
          v157 = *(v281 + 160);
          __swift_project_boxed_opaque_existential_1((v281 + 128), v156);
          v158 = v283;
          sub_22D0154BC();
          (*(v157 + 32))(v158, v156, v157);
          v291 = *v302;
          (v291)(v158, v310);
          sub_22D0154CC();
          sub_22D01545C();
          v159 = v293;
          v160 = v301;
          (v301)(v83, v293);
          v161 = v270;
          sub_22D0154CC();
          v290 = sub_22D0153FC();
          v289 = v162;
          v160(v161, v159);
          v163 = v271;
          sub_22D0154CC();
          sub_22D01540C();
          v160(v163, v159);
          v164 = v272;
          sub_22D0154CC();
          sub_22D01542C();
          v160(v164, v159);
          v165 = v273;
          sub_22D0154CC();
          sub_22D01543C();
          v160(v165, v159);
          v87 = v297;
          sub_22D01544C();
          v166 = v268;
          v167 = v311;
          sub_22CF6A944(v294, v268);
          v311 = v167;
          if (!v167)
          {
            v208 = v276;
            v55 = v310;
            (*v284)(v276, v166, v310);
            v209 = v262;
            v113 = v309;
            v306(v262, v144, v309);
            v210 = v264;
            v289 = *v286;
            (v289)(v264, v208, v55);
            v211 = sub_22D01636C();
            v212 = sub_22D01690C();
            if (os_log_type_enabled(v211, v212))
            {
              v213 = swift_slowAlloc();
              v277 = swift_slowAlloc();
              v313 = v277;
              *v213 = v256;
              v214 = v283;
              v259 = v211;
              sub_22D0154BC();
              sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
              v215 = sub_22D016DEC();
              v217 = v216;
              LODWORD(v258) = v212;
              v218 = v291;
              (v291)(v214, v310);
              v290 = *v304;
              v290(v209, v309);
              v219 = sub_22CEEE31C(v215, v217, &v313);
              v87 = v297;

              v257 = v213;
              *(v213 + 4) = v219;
              *(v213 + 12) = 2082;
              v220 = v264;
              v221 = sub_22D016DEC();
              v223 = v222;
              v218(v220, v310);
              v224 = sub_22CEEE31C(v221, v223, &v313);
              v55 = v310;

              v225 = v257;
              *(v257 + 14) = v224;
              v226 = v259;
              _os_log_impl(&dword_22CEE1000, v259, v258, "Mapped %{public}s to %{public}s", v225, 0x16u);
              v227 = v277;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v227, -1, -1);
              v113 = v309;
              MEMORY[0x2318C6860](v225, -1, -1);
            }

            else
            {

              (v291)(v210, v55);
              v290 = *v304;
              v290(v209, v113);
              v214 = v283;
            }

            sub_22D0154BC();
            v228 = v261;
            (v289)(v261, v276, v55);
            v229 = v287;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v313 = v229;
            sub_22CFBF04C(v228, v214, isUniquelyReferenced_nonNull_native);
            v231 = v291;
            (v291)(v214, v55);
            v287 = v313;
            sub_22D0154BC();
            v232 = v263;
            sub_22CF608AC(v214, v263);
            v231(v214, v55);
            sub_22CEEC3D8(v232, &qword_27D9F26B8, &qword_22D018F70);
            v231(v276, v55);
            v144 = v282;
            (v301)(v278, v293);
            v83 = v298;
            v84 = v299;
            v80 = v305;
            v290(v144, v113);
            goto LABEL_32;
          }

          v168 = v265;
          v113 = v309;
          v306(v265, v144, v309);
          v169 = sub_22D01636C();
          v170 = sub_22D0168EC();
          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v289 = v171;
            v290 = swift_slowAlloc();
            v313 = v290;
            *v171 = v288;
            v172 = v283;
            sub_22D0154BC();
            sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
            v55 = v310;
            v173 = sub_22D016DEC();
            v175 = v174;
            (v291)(v172, v55);
            v176 = *v304;
            (*v304)(v168, v309);
            v177 = sub_22CEEE31C(v173, v175, &v313);
            v113 = v309;

            v178 = v289;
            *(v289 + 4) = v177;
            v145 = v176;
            _os_log_impl(&dword_22CEE1000, v169, v170, "Failed tried to reconnect assertion: %{public}s", v178, 0xCu);
            v179 = v290;
            __swift_destroy_boxed_opaque_existential_1Tm(v290);
            MEMORY[0x2318C6860](v179, -1, -1);
            MEMORY[0x2318C6860](v178, -1, -1);

            (v301)(v278, v293);
            v311 = 0;
          }

          else
          {

            v145 = *v304;
            (*v304)(v168, v113);
            v160(v278, v293);
            v311 = 0;
            v55 = v310;
          }

          v87 = v297;
          v83 = v298;
          v84 = v299;
          v80 = v305;
        }

        else
        {
          v194 = v269;
          v113 = v309;
          v306(v269, v144, v309);
          v195 = sub_22D01636C();
          v196 = sub_22D0168EC();
          v197 = os_log_type_enabled(v195, v196);
          v55 = v310;
          if (v197)
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v305 = v80;
            v301 = v199;
            v313 = v199;
            *v198 = v285;
            v200 = v283;
            sub_22D0154BC();
            sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
            v201 = sub_22D016DEC();
            v203 = v202;
            (*v302)(v200, v310);
            v204 = *v304;
            (*v304)(v194, v309);
            v205 = sub_22CEEE31C(v201, v203, &v313);
            v55 = v310;

            *(v198 + 4) = v205;
            v145 = v204;
            _os_log_impl(&dword_22CEE1000, v195, v196, "Process is not entitled to reconnect assertion: %{private}s", v198, 0xCu);
            v206 = v301;
            __swift_destroy_boxed_opaque_existential_1Tm(v301);
            v80 = v305;
            MEMORY[0x2318C6860](v206, -1, -1);
            v207 = v198;
            v113 = v309;
            MEMORY[0x2318C6860](v207, -1, -1);
          }

          else
          {

            v145 = *v304;
            (*v304)(v194, v113);
          }

          v87 = v297;
          v83 = v298;
          v84 = v299;
        }
      }

      else
      {
        v146(v84, v144, v113);
        v180 = v84;
        v181 = sub_22D01636C();
        v182 = sub_22D0168EC();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v305 = v80;
          v301 = v184;
          v313 = v184;
          *v183 = v288;
          v185 = v283;
          sub_22D0154BC();
          sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
          v186 = sub_22D016DEC();
          v188 = v187;
          (*v302)(v185, v310);
          v189 = *v304;
          (*v304)(v180, v309);
          v190 = sub_22CEEE31C(v186, v188, &v313);
          v55 = v310;

          *(v183 + 4) = v190;
          v191 = v189;
          _os_log_impl(&dword_22CEE1000, v181, v182, "Process tried to reconnect an assertion that does not exist: %{public}s", v183, 0xCu);
          v192 = v301;
          __swift_destroy_boxed_opaque_existential_1Tm(v301);
          v80 = v305;
          MEMORY[0x2318C6860](v192, -1, -1);
          v193 = v183;
          v113 = v309;
          MEMORY[0x2318C6860](v193, -1, -1);

          v87 = v297;
          v84 = v180;
          v144 = v282;
          v191(v282, v113);
          goto LABEL_32;
        }

        v145 = *v304;
        (*v304)(v180, v113);
        v87 = v297;
        v84 = v180;
        v144 = v282;
        v55 = v310;
      }

      v145(v144, v113);
LABEL_32:
      v139 = v306;
      v143 = (v307 + v303);
      if (!--v80)
      {

        v136 = v312[0];
        a2 = &off_22D018000;
        goto LABEL_52;
      }
    }
  }

  v287 = MEMORY[0x277D84F98];
LABEL_52:
  v234 = 0;
  v83 = v136 + 56;
  v235 = 1 << *(v136 + 32);
  v236 = -1;
  if (v235 < 64)
  {
    v236 = ~(-1 << v235);
  }

  v32 = v236 & *(v136 + 56);
  v237 = ((v235 + 63) >> 6);
  v306 = (v308 + 16);
  v304 = v308 + 32;
  v309 = (v308 + 8);
  *&v233 = *(a2 + 236);
  v302 = v233;
  v305 = v237;
  v307 = v136;
  while (v32)
  {
LABEL_61:
    v239 = v308;
    v240 = *(v136 + 48) + *(v308 + 72) * (__clz(__rbit64(v32)) | (v234 << 6));
    v241 = *(v308 + 16);
    v242 = v266;
    v80 = v55;
    v241(v266, v240, v55);
    v243 = v280;
    (*(v239 + 32))(v280, v242, v55);
    v84 = v267;
    v241(v267, v243, v55);
    v244 = sub_22D01636C();
    v245 = sub_22D01690C();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      v313 = v303;
      *v246 = v302;
      sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
      v247 = sub_22D016DEC();
      v248 = v84;
      v84 = v249;
      v80 = *v309;
      (*v309)(v248, v310);
      v250 = sub_22CEEE31C(v247, v84, &v313);

      *(v246 + 4) = v250;
      _os_log_impl(&dword_22CEE1000, v244, v245, "Removing unclaimed assertion: %{public}s", v246, 0xCu);
      v251 = v303;
      __swift_destroy_boxed_opaque_existential_1Tm(v303);
      MEMORY[0x2318C6860](v251, -1, -1);
      v252 = v246;
      v55 = v310;
      MEMORY[0x2318C6860](v252, -1, -1);

      v87 = v80;
    }

    else
    {

      v87 = *v309;
      (*v309)(v84, v55);
    }

    a2 = v281;
    v253 = v311;
    sub_22CF6C29C(v280, v294);
    v136 = v307;
    if (v253)
    {
    }

    v311 = 0;
    v32 &= v32 - 1;
    (v87)(v280, v55);
    v237 = v305;
  }

  while (1)
  {
    v238 = v234 + 1;
    if (__OFADD__(v234, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v238 >= v237)
    {
      break;
    }

    v32 = *(v83 + 8 * v238);
    ++v234;
    if (v32)
    {
      v234 = v238;
      goto LABEL_61;
    }
  }

  return sub_22D0153BC();
}

BOOL sub_22CF6F8F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v7 = v6 - 8;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20 - v13;
  v15 = sub_22D01534C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  sub_22CF07D60(a2, &v14[*(v7 + 56)], type metadata accessor for Assertion);
  sub_22CEEB6DC(v14, v11, &qword_27D9F2600, &qword_22D018B60);
  v17 = *(v7 + 56);
  LODWORD(v7) = sub_22D01531C();
  (*(v16 + 8))(v11, v15);
  v18 = [*(*__swift_project_boxed_opaque_existential_1(a3 a3[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  LODWORD(a3) = [v18 pid];

  sub_22CEEC3D8(v14, &qword_27D9F2600, &qword_22D018B60);
  sub_22CF1CB18(&v11[v17], type metadata accessor for Assertion);
  return v7 == a3;
}

uint64_t sub_22CF6FAF8(uint64_t a1)
{
  v1 = sub_22D01534C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0154BC();
  v6 = sub_22D01530C();
  (*(v2 + 8))(v5, v1);
  return v6 & 1;
}

double sub_22CF6FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22CF69F70(a2, a3);
  v7 = v6;
  swift_beginAccess();
  if (!*(*(a1 + 64) + 16))
  {
    goto LABEL_6;
  }

  sub_22CEEC698(a2, a3);
  if ((v8 & 1) == 0)
  {

    goto LABEL_6;
  }

  v9 = sub_22D014BCC();
  if (v9 != sub_22D014BCC())
  {
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_22CFBE74C(v7, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + 64) = v12;
    swift_endAccess();

    sub_22D01643C();
  }

  return result;
}

double sub_22CF6FD1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_22CF7015C(a2, a3);
  v7 = v6;
  swift_beginAccess();
  v9 = 0;
  v10 = *(a1 + 72);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_9:
    v16 = (*(v10 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v13)))));
    if (*v16 != a2 || v16[1] != a3)
    {
      v13 &= v13 - 1;
      if ((sub_22D016DFC() & 1) == 0)
      {
        continue;
      }
    }

    if ((v7 & 1) == 0)
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v18 = sub_22D01637C();
      __swift_project_value_buffer(v18, qword_2814443A8);

      v19 = sub_22D01636C();
      v20 = sub_22D01690C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_22CEEE31C(a2, a3, &v34);
        _os_log_impl(&dword_22CEE1000, v19, v20, "Activity is no longer prominently presented: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x2318C6860](v22, -1, -1);
        MEMORY[0x2318C6860](v21, -1, -1);
      }

      swift_beginAccess();
      sub_22CF3C4B0(a2, a3);
      swift_endAccess();
      goto LABEL_25;
    }

    return result;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_22;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 56 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  if ((v7 & 1) == 0)
  {
    return result;
  }

  if (qword_28143FAF0 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v23 = sub_22D01637C();
  __swift_project_value_buffer(v23, qword_2814443A8);

  v24 = sub_22D01636C();
  v25 = sub_22D01690C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_22CEEE31C(a2, a3, &v34);
    _os_log_impl(&dword_22CEE1000, v24, v25, "Activity is prominently presented: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2318C6860](v27, -1, -1);
    MEMORY[0x2318C6860](v26, -1, -1);
  }

  swift_beginAccess();

  sub_22CEE54CC(&v33, a2, a3);
  swift_endAccess();
LABEL_25:

  v28 = *(a1 + 72);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_22CEE561C(*(v28 + 16), 0);
    v31 = sub_22CEE56A4(&v34, v30 + 4, v29, v28);
    v32 = v34;

    sub_22CEE57FC(v32);
    if (v31 != v29)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
LABEL_28:
    v30 = MEMORY[0x277D84F90];
  }

  v34 = v30;
  sub_22D01643C();

  return result;
}

void sub_22CF7015C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v67 = a1;
  v65 = sub_22D01555C();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22D0154EC();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v7);
  v72 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v56 - v18;
  v20 = v2[19];
  v21 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = *(v22 + 64);
  v58 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v57 = (v24 + 63) >> 6;
  v69 = (v6 + 88);
  v70 = (v6 + 16);
  v68 = *MEMORY[0x277D4D4A8];
  v62 = (v3 + 16);
  v63 = (v6 + 8);
  v61 = (v3 + 8);
  v74 = v22;

  v27 = 0;
  v59 = v19;
  v60 = v16;
  while (v26)
  {
LABEL_10:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = v29 | (v27 << 6);
    v31 = v74;
    v32 = *(v74 + 48);
    v33 = sub_22D01534C();
    v75 = *(v33 - 8);
    v34 = v32 + *(v75 + 72) * v30;
    v35 = *(v75 + 16);
    v76 = v33;
    v35(v19, v34);
    v36 = *(v31 + 56);
    v37 = type metadata accessor for Assertion(0);
    sub_22CF07D60(v36 + *(*(v37 - 8) + 72) * v30, &v19[*(v9 + 48)], type metadata accessor for Assertion);
    sub_22CEEB6DC(v19, v16, &qword_27D9F2600, &qword_22D018B60);
    v38 = &v16[*(v9 + 48)];
    v40 = v72;
    v39 = v73;
    (*v70)(v72, v38 + *(v37 + 20), v73);
    sub_22CF1CB18(v38, type metadata accessor for Assertion);
    v41 = (*v69)(v40, v39);
    if (v41 == v68)
    {
      v42 = v75;
      v43 = v71;
      sub_22CEEB6DC(v19, v71, &qword_27D9F2600, &qword_22D018B60);
      v44 = v43 + *(v9 + 48);
      v45 = v44 + *(v37 + 40);
      v46 = v64;
      v47 = v65;
      (*v62)(v64, v45, v65);
      sub_22CF1CB18(v44, type metadata accessor for Assertion);
      v48 = sub_22D01554C();
      v50 = v49;
      (*v61)(v46, v47);
      if (v48 == v67 && v50 == v66)
      {

        sub_22CEEC3D8(v59, &qword_27D9F2600, &qword_22D018B60);
        v54 = *(v42 + 8);
        v55 = v76;
        v54(v71, v76);
        v54(v60, v55);
LABEL_17:

        return;
      }

      v51 = sub_22D016DFC();

      v19 = v59;
      sub_22CEEC3D8(v59, &qword_27D9F2600, &qword_22D018B60);
      v52 = *(v42 + 8);
      v53 = v76;
      v52(v71, v76);
      v16 = v60;
      v52(v60, v53);
      if (v51)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22CEEC3D8(v19, &qword_27D9F2600, &qword_22D018B60);
      (*v63)(v40, v39);
      (*(v75 + 8))(v16, v76);
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v57)
    {
      goto LABEL_17;
    }

    v26 = *(v58 + 8 * v28);
    ++v27;
    if (v26)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_22CF70790(uint64_t a1)
{
  sub_22CF3A490();
  v3 = v2;
  v4 = *(a1 + 104);

  v5 = sub_22CF7594C(v3, v4, MEMORY[0x277CB9780], &qword_28143F658, MEMORY[0x277CB9780], MEMORY[0x277CB9788]);

  if (v5)
  {
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_2814443A8);

    v8 = sub_22D01636C();
    v9 = sub_22D01690C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = sub_22D014E7C();
      v13 = MEMORY[0x2318C5950](v3, v12);
      v15 = sub_22CEEE31C(v13, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_22CEE1000, v8, v9, "Activity presenters have changed: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2318C6860](v11, -1, -1);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    *(a1 + 104) = v3;

    v16 = v3;
    sub_22D01643C();
  }
}

double sub_22CF709D0(uint64_t a1)
{
  sub_22CF6A5DC();
  v3 = v2;
  v4 = *(a1 + 112);

  v5 = sub_22CF75B44(v3, v4);

  if ((v5 & 1) == 0)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_2814443A8);

    v8 = sub_22D01636C();
    v9 = sub_22D01690C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      v12 = sub_22D01686C();
      v14 = sub_22CEEE31C(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22CEE1000, v8, v9, "Unthrottled activities have changed: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2318C6860](v11, -1, -1);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    *(a1 + 112) = v3;

    v15 = *(v3 + 16);
    if (v15)
    {
      v16 = sub_22CEE561C(*(v3 + 16), 0);
      v17 = sub_22CEE56A4(&v18, v16 + 4, v15, v3);
      sub_22CEE57FC(v18);
      if (v17 == v15)
      {
LABEL_13:
        v18 = v16;
        sub_22D01643C();

        return result;
      }

      __break(1u);
    }

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return result;
}

void sub_22CF70C2C(uint64_t a1)
{
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v1 = sub_22D01637C();
  __swift_project_value_buffer(v1, qword_2814443A8);
  v2 = sub_22D01636C();
  v3 = sub_22D01690C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22CEE1000, v2, v3, "Expiration timer fired", v4, 2u);
    MEMORY[0x2318C6860](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF70DC4();
    sub_22CF3B060();
  }

  else
  {
    v5 = sub_22D01636C();
    v6 = sub_22D01690C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22CEE1000, v5, v6, "Client has disappeared", v7, 2u);
      MEMORY[0x2318C6860](v7, -1, -1);
    }
  }
}

uint64_t sub_22CF70DC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v71 = v57 - v4;
  v70 = sub_22D01534C();
  v66 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v5);
  v69 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22D0154AC();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v7);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Assertion(0);
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01430C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v57 - v21;
  sub_22D0142DC();
  sub_22D01425C();
  v24 = *(v15 + 8);
  v23 = v15 + 8;
  v62 = v24;
  v24(v19, v14);
  v25 = v1[19];
  v26 = v1[20];
  v63 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v25);
  v27 = (*(v26 + 8))(v25, v26);
  v28 = *(v27 + 16);
  v73 = v9;
  v60 = v10;
  if (v28)
  {
    v29 = sub_22CF75FC8(v28, 0, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
    v30 = sub_22CF7B348(v77, v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v28, v27, type metadata accessor for Assertion, type metadata accessor for Assertion);
    result = sub_22CEE57FC(*&v77[0]);
    if (v30 != v28)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](result, v32);
  v57[-2] = v22;
  v33 = sub_22CF68CE4(sub_22CF7B584, &v57[-4], v29, type metadata accessor for Assertion, type metadata accessor for Assertion, type metadata accessor for Assertion, sub_22CF44084);
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v34 = sub_22D01637C();
  __swift_project_value_buffer(v34, qword_2814443A8);

  v35 = sub_22D01636C();
  v36 = sub_22D01690C();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v33;
  v61 = v23;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v77[0] = v40;
    *v39 = 136446210;
    v41 = MEMORY[0x2318C5950](v38, v72);
    v43 = sub_22CEEE31C(v41, v42, v77);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_22CEE1000, v35, v36, "Invalidating expired assertions: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x2318C6860](v40, -1, -1);
    MEMORY[0x2318C6860](v39, -1, -1);
  }

  v44 = *(v38 + 16);
  if (v44)
  {
    v58 = v22;
    v59 = v14;
    v45 = v63;
    v67 = v63[6];
    v46 = v60;
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v57[1] = v38;
    v48 = v38 + v47;
    swift_beginAccess();
    v65 = (v66 + 16);
    ++v64;
    v66 = *(v46 + 72);
    do
    {
      sub_22CF07D60(v48, v13, type metadata accessor for Assertion);
      (*v65)(v69, v13, v70);
      sub_22CEEB6DC(&v13[*(v72 + 24)], v71, &qword_27D9F2680, &qword_22D019670);
      sub_22D01547C();
      v52 = *(v67 + 16);
      os_unfair_lock_lock(v52);
      v53 = sub_22D01531C();
      v54 = v45[7];
      if (*(v54 + 16) && (v55 = sub_22CEE637C(v53), (v56 & 1) != 0))
      {
        sub_22CEE3A84(*(v54 + 56) + 40 * v55, v77);
      }

      else
      {
        v78 = 0;
        memset(v77, 0, sizeof(v77));
      }

      os_unfair_lock_unlock(v52);
      sub_22CEEB6DC(v77, &v74, &qword_27D9F29F8, &qword_22D019688);
      if (v75)
      {
        sub_22CEF44D4(&v74, v76);
        __swift_project_boxed_opaque_existential_1(v76, v76[3]);
        v49 = v73;
        sub_22D006D8C(v73);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
      }

      else
      {
        sub_22CEEC3D8(&v74, &qword_27D9F29F8, &qword_22D019688);
        v49 = v73;
      }

      v51 = v45[19];
      v50 = v45[20];
      __swift_project_boxed_opaque_existential_1(v45 + 16, v51);
      (*(v50 + 32))(v13, v51, v50);
      sub_22CEEC3D8(v77, &qword_27D9F29F8, &qword_22D019688);
      (*v64)(v49, v68);
      sub_22CF1CB18(v13, type metadata accessor for Assertion);
      v48 += v66;
      --v44;
    }

    while (v44);

    v14 = v59;
    v22 = v58;
  }

  else
  {
  }

  sub_22CF38E78();
  return v62(v22, v14);
}

BOOL sub_22CF71670(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D01430C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Assertion(0) + 36) + 8))
  {
    sub_22D01423C();
  }

  else
  {
    sub_22D01425C();
  }

  sub_22CF7C4D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v8 = sub_22D01663C();
  (*(v4 + 8))(v7, v3);
  return (v8 & 1) == 0;
}

uint64_t sub_22CF717D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  sub_22CEE8394(&qword_28143FA80, &qword_27D9F29E8, &qword_22D019668, MEMORY[0x277CBCE48]);
  return sub_22D01646C();
}

uint64_t sub_22CF71860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E0, &qword_22D019660);
  sub_22CEE8394(&qword_28143FA70, &qword_27D9F29E0, &qword_22D019660, MEMORY[0x277CBCE48]);
  return sub_22D01646C();
}

void *sub_22CF718F0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v49 = a1;
  v47 = sub_22D01490C();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v3);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01477C();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v53 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22D014E7C();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v2 + 48) + 16);
  os_unfair_lock_lock(v12);
  result = *(v2 + 104);
  v14 = result[2];
  v45 = v12;
  if (v14)
  {
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = result + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v50 = *(v15 + 56);
    v51 = v16;
    v18 = (v15 - 8);
    v43[1] = result;

    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v20 = v52;
      v21 = v15;
      v51(v11, v17, v52);
      v22 = sub_22D014E4C();
      result = (*v18)(v11, v20);
      v23 = *(v22 + 16);
      v24 = v19[2];
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v25 <= v19[3] >> 1)
      {
        if (*(v22 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v24 <= v25)
        {
          v26 = v24 + v23;
        }

        else
        {
          v26 = v24;
        }

        result = sub_22CFCE4F8(result, v26, 1, v19);
        v19 = result;
        if (*(v22 + 16))
        {
LABEL_14:
          if ((v19[3] >> 1) - v19[2] < v23)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          v15 = v21;
          if (v23)
          {
            v27 = v19[2];
            v28 = __OFADD__(v27, v23);
            v29 = v27 + v23;
            if (v28)
            {
              goto LABEL_39;
            }

            v19[2] = v29;
          }

          goto LABEL_4;
        }
      }

      v15 = v21;
      if (v23)
      {
        goto LABEL_36;
      }

LABEL_4:
      v17 += v50;
      if (!--v14)
      {

        v12 = v45;
        v30 = v19[2];
        if (v30)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
  v30 = *(MEMORY[0x277D84F90] + 16);
  if (v30)
  {
LABEL_19:
    v31 = v30;
    v32 = 0;
    v52 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v33 = (v54 + 8);
    v34 = (v44 + 88);
    LODWORD(v51) = *MEMORY[0x277CB9418];
    v35 = (v44 + 8);
    v36 = v46;
    while (1)
    {
      if (v32 >= v19[2])
      {
        goto LABEL_38;
      }

      (*(v54 + 16))(v53, v52 + *(v54 + 72) * v32, v55);
      if (sub_22D01475C() == v49 && v37 == v48)
      {
      }

      else
      {
        v38 = sub_22D016DFC();

        if ((v38 & 1) == 0)
        {
          result = (*v33)(v53, v55);
          goto LABEL_21;
        }
      }

      v39 = v53;
      sub_22D01476C();
      (*v33)(v39, v55);
      v40 = v47;
      v41 = (*v34)(v36, v47);
      if (v41 == v51)
      {

        (*(v44 + 96))(v36, v40);
        sub_22CEEC3D8(v36, &qword_27D9F2A18, &qword_22D0196B8);
        v42 = 1;
        goto LABEL_33;
      }

      result = (*v35)(v36, v40);
LABEL_21:
      if (v31 == ++v32)
      {

        v42 = 0;
LABEL_33:
        v12 = v45;
        goto LABEL_34;
      }
    }
  }

LABEL_30:

  v42 = 0;
LABEL_34:
  os_unfair_lock_unlock(v12);
  return v42;
}

uint64_t sub_22CF71E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29D8, &qword_22D019658);
  sub_22CEE8394(&qword_28143FA78, &qword_27D9F29D8, &qword_22D019658, MEMORY[0x277CBCE48]);
  return sub_22D01646C();
}

uint64_t sub_22CF71E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a4;
  v6 = sub_22D01490C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v69 = &v63 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v66 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v68 = &v63 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v63 - v21;
  v23 = sub_22D0154EC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(type metadata accessor for Assertion(0) + 20);
  v29 = *(v24 + 16);
  v70 = a2;
  v29(v27, a2 + v28, v23);
  if ((*(v24 + 88))(v27, v23) != *MEMORY[0x277D4D490])
  {
    return (*(v24 + 8))(v27, v23);
  }

  (*(v24 + 96))(v27, v23);
  v30 = *(v7 + 32);
  (v30)(v22, v27, v6);
  v31 = sub_22D01531C();
  swift_beginAccess();
  v32 = *(a3 + 56);
  if (!*(v32 + 16))
  {
    return (*(v7 + 8))(v22, v6);
  }

  v33 = sub_22CEE637C(v31);
  if ((v34 & 1) == 0)
  {
    return (*(v7 + 8))(v22, v6);
  }

  sub_22CEE3A84(*(v32 + 56) + 40 * v33, v72);
  sub_22CEF44D4(v72, v73);
  v35 = [*(*__swift_project_boxed_opaque_existential_1(v73 v73[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  sub_22CEE4E5C();
  v38 = v37;
  v40 = v39;

  v41 = *v71;
  v42 = *(*v71 + 16);
  v64 = v38;
  if (v42 && (v43 = sub_22CEEC698(v38, v40), (v44 & 1) != 0))
  {
    v45 = *(*(v41 + 56) + 8 * v43);
  }

  else
  {
    v45 = sub_22CFF67D0(MEMORY[0x277D84F90]);
  }

  v65 = v40;
  v46 = sub_22D01554C();
  if (!*(v45 + 16))
  {

    goto LABEL_15;
  }

  v48 = sub_22CEEC698(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_15:
    v52 = v68;
    (*(v7 + 104))(v68, *MEMORY[0x277CB9410], v6);
    goto LABEL_16;
  }

  (*(v7 + 16))(v66, *(v45 + 56) + *(v7 + 72) * v48, v6);
  v51 = v30;
  v52 = v68;
  v51();
LABEL_16:
  v53 = v69;
  sub_22D0148FC();
  v54 = sub_22D01554C();
  v56 = v55;
  v57 = v67;
  (*(v7 + 16))(v67, v53, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v72[0] = v45;
  sub_22CFBF244(v57, v54, v56, isUniquelyReferenced_nonNull_native);

  v59 = *&v72[0];

  v60 = v71;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v72[0] = *v60;
  *v60 = 0x8000000000000000;
  sub_22CFBF230(v59, v64, v65, v61);

  *v60 = *&v72[0];
  v62 = *(v7 + 8);
  v62(v53, v6);
  v62(v52, v6);
  v62(v22, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t sub_22CF72438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = sub_22D01490C();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v64 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A00, &unk_22D019690);
  v10 = MEMORY[0x28223BE20](v63, v9);
  v62 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v61 = v49 - v13;
  v60 = sub_22D01477C();
  v14 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v49[3] = *a1;
  v19 = a1[2];
  v20 = *(v19 + 16);
  if (v20)
  {
    v49[1] = a2;
    v49[2] = v3;
    v73 = MEMORY[0x277D84F90];
    v49[0] = v18;

    sub_22CF441F4(0, v20, 0);
    v21 = v73;
    v22 = v19 + 64;
    result = sub_22D016AEC();
    v24 = 0;
    v72 = *(v19 + 36);
    v56 = v6 + 16;
    v59 = v6;
    v53 = v14 + 32;
    v54 = v6 + 32;
    v50 = v19 + 72;
    v58 = v14;
    v51 = v20;
    v57 = v19 + 64;
    v55 = v17;
    v52 = v19;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v19 + 32))
    {
      if ((*(v22 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (v72 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v67 = 1 << result;
      v68 = result >> 6;
      v66 = v24;
      v26 = v63;
      v69 = *(v63 + 48);
      v70 = result;
      v27 = *(v19 + 56);
      v28 = (*(v19 + 48) + 16 * result);
      v29 = *v28;
      v30 = v28[1];
      v31 = v59;
      v32 = v27 + *(v59 + 72) * result;
      v71 = v21;
      v33 = *(v59 + 16);
      v34 = v61;
      v35 = v65;
      v33(&v61[v69], v32, v65);
      v36 = v62;
      *v62 = v29;
      *(v36 + 8) = v30;
      v37 = *(v26 + 48);
      v38 = &v34[v69];
      v39 = v55;
      (*(v31 + 32))(v36 + v37, v38, v35);
      v33(v64, v36 + v37, v35);
      v21 = v71;
      swift_bridgeObjectRetain_n();
      sub_22D01474C();
      sub_22CEEC3D8(v36, &qword_27D9F2A00, &unk_22D019690);
      v73 = v21;
      v41 = *(v21 + 16);
      v40 = *(v21 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_22CF441F4((v40 > 1), v41 + 1, 1);
        v21 = v73;
      }

      *(v21 + 16) = v41 + 1;
      (*(v58 + 32))(v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v41, v39, v60);
      v19 = v52;
      v25 = 1 << *(v52 + 32);
      result = v70;
      v22 = v57;
      if (v70 >= v25)
      {
        goto LABEL_26;
      }

      v42 = *(v57 + 8 * v68);
      if ((v42 & v67) == 0)
      {
        goto LABEL_27;
      }

      if (v72 != *(v52 + 36))
      {
        goto LABEL_28;
      }

      v43 = v42 & (-2 << (v70 & 0x3F));
      if (v43)
      {
        v25 = __clz(__rbit64(v43)) | v70 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v68 << 6;
        v45 = v68 + 1;
        v46 = (v50 + 8 * v68);
        while (v45 < (v25 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            sub_22CF44CF8(v70, v72, 0);
            v25 = __clz(__rbit64(v47)) + v44;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v70, v72, 0);
      }

LABEL_4:
      v24 = v66 + 1;
      result = v25;
      if (v66 + 1 == v51)
      {
        return sub_22D014E5C();
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    return sub_22D014E5C();
  }

  return result;
}

uint64_t sub_22CF72988(uint64_t (*a1)(__n128), uint64_t a2, void *a3)
{
  v84 = a3;
  v69 = a2;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v73 = &v69 - v5;
  v85 = sub_22D01555C();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v10 = MEMORY[0x28223BE20](v80, v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v69 - v14;
  if (qword_28143FAF0 != -1)
  {
LABEL_33:
    swift_once();
  }

  *&v83 = v15;
  v16 = sub_22D01637C();
  v74 = __swift_project_value_buffer(v16, qword_2814443A8);
  v17 = sub_22D01636C();
  v18 = sub_22D01690C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22CEE1000, v17, v18, "Purging assertions with missing activities", v19, 2u);
    MEMORY[0x2318C6860](v19, -1, -1);
  }

  v20 = v84[19];
  v21 = v84[20];
  __swift_project_boxed_opaque_existential_1(v84 + 16, v20);
  v22 = (*(v21 + 8))(v20, v21);
  v15 = v22 + 64;
  v23 = *(v22 + 64);
  v87 = MEMORY[0x277D84FA0];
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v76 = (v6 + 88);
  v77 = (v6 + 16);
  v75 = *MEMORY[0x277D4D4D8];
  v71 = (v6 + 96);
  v72 = (v6 + 8);
  v82 = v22;

  v28 = 0;
  v78 = v15;
  v79 = v12;
  while (v26)
  {
    v29 = v28;
LABEL_14:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = v82;
    v33 = *(v82 + 48);
    v34 = sub_22D01534C();
    v35 = *(v34 - 8);
    v36 = v83;
    (*(v35 + 16))(v83, v33 + *(v35 + 72) * v31, v34);
    v37 = *(v32 + 56);
    v38 = (type metadata accessor for Assertion(0) - 8);
    v39 = v37 + *(*v38 + 72) * v31;
    v40 = v80;
    sub_22CF07D60(v39, v36 + *(v80 + 48), type metadata accessor for Assertion);
    v12 = v79;
    sub_22CEEB6DC(v36, v79, &qword_27D9F2600, &qword_22D018B60);
    v41 = &v12[*(v40 + 48)];
    v42 = v41 + v38[12];
    v6 = v81;
    v43 = v85;
    (*v77)(v81, v42, v85);
    v44 = (*v76)(v6, v43);
    if (v44 == v75)
    {
      (*v71)(v6, v85);
      v45 = v12;
      v12 = *v6;
      v6 = *(v6 + 8);
      sub_22CF1CB18(v41, type metadata accessor for Assertion);
      (*(v35 + 8))(v45, v34);
      v46 = v84[30];
      v47 = v84[31];
      __swift_project_boxed_opaque_existential_1(v84 + 27, v46);
      v48 = v73;
      (*(v47 + 16))(v12, v6, v46, v47);
      v49 = type metadata accessor for Activity(0);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {
        sub_22CEEC3D8(v48, &qword_27D9F3810, &unk_22D018FA0);
        sub_22CEE54CC(&v86, v12, v6);

        v50 = v83;
        v51 = &qword_27D9F2600;
        v52 = &qword_22D018B60;
      }

      else
      {
        sub_22CEEC3D8(v83, &qword_27D9F2600, &qword_22D018B60);

        v50 = v48;
        v51 = &qword_27D9F3810;
        v52 = &unk_22D018FA0;
      }

      sub_22CEEC3D8(v50, v51, v52);
    }

    else
    {
      sub_22CEEC3D8(v36, &qword_27D9F2600, &qword_22D018B60);
      (*v72)(v6, v85);
      sub_22CF1CB18(v41, type metadata accessor for Assertion);
      (*(v35 + 8))(v12, v34);
    }

    v28 = v29;
    v15 = v78;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v15 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  v54 = 0;
  v55 = v87;
  v56 = v87 + 56;
  v57 = 1 << *(v87 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v15 = v58 & *(v87 + 56);
  v6 = (v57 + 63) >> 6;
  *&v53 = 136446210;
  v83 = v53;
  v85 = v87;
  while (v15)
  {
LABEL_28:
    v60 = (*(v55 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v15)))));
    v61 = *v60;
    v12 = v60[1];

    v62 = sub_22D01636C();
    v63 = sub_22D01690C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v86 = v65;
      *v64 = v83;
      *(v64 + 4) = sub_22CEEE31C(v61, v12, &v86);
      _os_log_impl(&dword_22CEE1000, v62, v63, "Removing invalid assertion %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x2318C6860](v65, -1, -1);
      v66 = v64;
      v55 = v85;
      MEMORY[0x2318C6860](v66, -1, -1);
    }

    v15 &= v15 - 1;
    sub_22CF38300(v61, v12, 2);
  }

  while (1)
  {
    v59 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_32;
    }

    if (v59 >= v6)
    {
      break;
    }

    v15 = *(v56 + 8 * v59);
    ++v54;
    if (v15)
    {
      v54 = v59;
      goto LABEL_28;
    }
  }

  return (v70)(v67);
}

uint64_t sub_22CF7318C(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v62[2] = a2;
  v63 = a1;
  v74 = sub_22D01534C();
  v4 = *(v74 - 8);
  v6 = MEMORY[0x28223BE20](v74, v5);
  v73 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v71 = v62 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  MEMORY[0x28223BE20](v69, v10);
  v12 = v62 - v11;
  if (qword_28143FAF0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = sub_22D01637C();
  v70 = __swift_project_value_buffer(v13, qword_2814443A8);
  v14 = sub_22D01636C();
  v15 = sub_22D01690C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, v14, v15, "Purging assertions with missing owners", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }

  v17 = a3[19];
  v18 = a3[20];
  v65 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 16, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = *(v19 + 64);
  v75 = MEMORY[0x277D84F90];
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v72 = v4 + 16;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_11:
      v27 = __clz(__rbit64(v23)) | (v26 << 6);
      (*(v4 + 16))(v12, *(v19 + 48) + *(v4 + 72) * v27, v74);
      a3 = *(v19 + 56);
      v28 = type metadata accessor for Assertion(0);
      sub_22CF07D60(a3 + *(*(v28 - 8) + 72) * v27, &v12[*(v69 + 48)], type metadata accessor for Assertion);
      sub_22CF7386C(&v75, v12);
      v23 &= v23 - 1;
      sub_22CEEC3D8(v12, &qword_27D9F2600, &qword_22D018B60);
      v25 = v26;
      if (!v23)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v19 + 64 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  v29 = v75;

  v30 = sub_22D01636C();
  v31 = sub_22D01690C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v75 = v33;
    *v32 = 136446210;
    v34 = MEMORY[0x2318C5950](v29, v74);
    v36 = sub_22CEEE31C(v34, v35, &v75);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_22CEE1000, v30, v31, "Identifiers to purge: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x2318C6860](v33, -1, -1);
    MEMORY[0x2318C6860](v32, -1, -1);
  }

  v38 = v71;
  v39 = *(v29 + 16);
  if (v39)
  {
    v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v62[1] = v29;
    v41 = v29 + v40;
    v42 = *(v4 + 72);
    v68 = *(v4 + 16);
    v69 = v42;
    *&v37 = 136446210;
    v64 = v37;
    v67 = (v4 + 8);
    v66 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v65;
    v45 = v73;
    v44 = v74;
    do
    {
      v50 = v68;
      v68(v38, v41, v44);
      v50(v45, v38, v44);
      v51 = sub_22D01636C();
      v52 = sub_22D01690C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v75 = v54;
        *v53 = v64;
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
        v55 = sub_22D016DEC();
        v57 = v56;
        v46 = *v67;
        (*v67)(v73, v74);
        v58 = sub_22CEEE31C(v55, v57, &v75);
        v43 = v65;

        *(v53 + 4) = v58;
        _os_log_impl(&dword_22CEE1000, v51, v52, "Removing invalid assertion %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x2318C6860](v54, -1, -1);
        v59 = v53;
        v45 = v73;
        v44 = v74;
        MEMORY[0x2318C6860](v59, -1, -1);
      }

      else
      {

        v46 = *v67;
        (*v67)(v45, v44);
      }

      v47 = v43[19];
      v48 = v43[20];
      __swift_project_boxed_opaque_existential_1(v43 + 16, v47);
      v49 = v71;
      (*(v48 + 32))(v71, v47, v48);
      v38 = v49;
      v46(v49, v44);
      v41 += v69;
      --v39;
    }

    while (v39);

    v60 = sub_22CF38E78();
  }

  else
  {
  }

  return v63(v60);
}

void sub_22CF7386C(uint64_t *a1, uint64_t a2)
{
  v83 = a1;
  v3 = sub_22D01534C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v80 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v81 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v77 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v82 = &v77 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v77 - v23;
  v88 = a2;
  sub_22CEEB6DC(a2, &v77 - v23, &qword_27D9F2600, &qword_22D018B60);
  v85 = v7;
  v25 = *(v7 + 48);
  v26 = sub_22D01531C();
  v86 = v4;
  v87 = v3;
  v27 = *(v4 + 8);
  v27(v24, v3);
  v28 = [objc_opt_self() identifierWithPid_];
  sub_22CF1CB18(&v24[v25], type metadata accessor for Assertion);
  if (v28)
  {
    sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
    v29 = v28;
    v30 = v84;
    v31 = sub_22CF23FE0(v29);
    if (v30)
    {

      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v32 = sub_22D01637C();
      __swift_project_value_buffer(v32, qword_2814443A8);
      v33 = v82;
      sub_22CEEB6DC(v88, v82, &qword_27D9F2600, &qword_22D018B60);
      v34 = sub_22D01636C();
      v35 = sub_22D01690C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v78 = v36;
        v84 = swift_slowAlloc();
        v89 = v84;
        *v36 = 136446210;
        sub_22CEEB6DC(v33, v24, &qword_27D9F2600, &qword_22D018B60);
        v79 = v27;
        v37 = *(v85 + 48);
        v38 = v80;
        v39 = v87;
        (*(v86 + 32))(v80, v24, v87);
        sub_22CF1CB18(&v24[v37], type metadata accessor for Assertion);
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
        v40 = sub_22D016DEC();
        v42 = v41;
        v79(v38, v39);
        sub_22CEEC3D8(v82, &qword_27D9F2600, &qword_22D018B60);
        v43 = sub_22CEEE31C(v40, v42, &v89);

        v44 = v78;
        *(v78 + 1) = v43;
        v45 = v35;
        v46 = v44;
        _os_log_impl(&dword_22CEE1000, v34, v45, "Assertion originator is missing: %{public}s", v44, 0xCu);
        v47 = v84;
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        MEMORY[0x2318C6860](v47, -1, -1);
        MEMORY[0x2318C6860](v46, -1, -1);
      }

      else
      {

        sub_22CEEC3D8(v33, &qword_27D9F2600, &qword_22D018B60);
      }

      v63 = v81;
      sub_22CEEB6DC(v88, v81, &qword_27D9F2600, &qword_22D018B60);
      v64 = v83;
      v65 = *v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_22CFCE520(0, v65[2] + 1, 1, v65);
      }

      v67 = v65[2];
      v66 = v65[3];
      if (v67 >= v66 >> 1)
      {
        v65 = sub_22CFCE520((v66 > 1), v67 + 1, 1, v65);
      }

      v68 = v86;
      v69 = *(v85 + 48);
      v65[2] = v67 + 1;
      (*(v68 + 32))(v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67, v63, v87);
      *v64 = v65;
      sub_22CF1CB18(v63 + v69, type metadata accessor for Assertion);
    }

    else
    {
    }
  }

  else
  {
    v79 = v27;
    v82 = v14;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v48 = sub_22D01637C();
    __swift_project_value_buffer(v48, qword_2814443A8);
    sub_22CEEB6DC(v88, v21, &qword_27D9F2600, &qword_22D018B60);
    v49 = sub_22D01636C();
    v50 = sub_22D01690C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v78 = v51;
      v81 = swift_slowAlloc();
      v89 = v81;
      *v51 = 136446210;
      sub_22CEEB6DC(v21, v24, &qword_27D9F2600, &qword_22D018B60);
      v52 = *(v85 + 48);
      v53 = v80;
      v54 = v87;
      (*(v86 + 32))(v80, v24, v87);
      sub_22CF1CB18(&v24[v52], type metadata accessor for Assertion);
      sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
      v55 = sub_22D016DEC();
      v57 = v56;
      v79(v53, v54);
      sub_22CEEC3D8(v21, &qword_27D9F2600, &qword_22D018B60);
      v58 = sub_22CEEE31C(v55, v57, &v89);

      v59 = v78;
      *(v78 + 1) = v58;
      v60 = v50;
      v61 = v59;
      _os_log_impl(&dword_22CEE1000, v49, v60, "Could not create a process identifier from assertion identifier: %{public}s", v59, 0xCu);
      v62 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x2318C6860](v62, -1, -1);
      MEMORY[0x2318C6860](v61, -1, -1);
    }

    else
    {

      sub_22CEEC3D8(v21, &qword_27D9F2600, &qword_22D018B60);
    }

    v70 = v82;
    sub_22CEEB6DC(v88, v82, &qword_27D9F2600, &qword_22D018B60);
    v71 = v83;
    v72 = *v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_22CFCE520(0, v72[2] + 1, 1, v72);
    }

    v74 = v72[2];
    v73 = v72[3];
    if (v74 >= v73 >> 1)
    {
      v72 = sub_22CFCE520((v73 > 1), v74 + 1, 1, v72);
    }

    v75 = v86;
    v76 = *(v85 + 48);
    v72[2] = v74 + 1;
    (*(v75 + 32))(v72 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74, v70, v87);
    *v71 = v72;
    sub_22CF1CB18(v70 + v76, type metadata accessor for Assertion);
  }
}

uint64_t sub_22CF7413C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_22D01555C();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0154EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v34 = a1;
  v18 = a1;
  v20 = &v34 - v19;
  sub_22CEEB6DC(v18, &v34 - v19, &qword_27D9F2600, &qword_22D018B60);
  v21 = &v20[*(v12 + 48)];
  v22 = type metadata accessor for Assertion(0);
  (*(v8 + 16))(v11, v21 + *(v22 + 20), v7);
  sub_22CF1CB18(v21, type metadata accessor for Assertion);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D4D498])
  {
    sub_22CEEB6DC(v34, v16, &qword_27D9F2600, &qword_22D018B60);
    v23 = &v16[*(v12 + 48)];
    v25 = v35;
    v24 = v36;
    (*(v35 + 16))(v6, v23 + *(v22 + 40), v36);
    sub_22CF1CB18(v23, type metadata accessor for Assertion);
    v26 = sub_22D01554C();
    v28 = v27;
    (*(v25 + 8))(v6, v24);
    if (v26 == sub_22D014F9C() && v28 == v29)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_22D016DFC();
    }

    v31 = sub_22D01534C();
    (*(*(v31 - 8) + 8))(v16, v31);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v30 = 0;
  }

  v32 = sub_22D01534C();
  (*(*(v32 - 8) + 8))(v20, v32);
  return v30 & 1;
}

void sub_22CF7450C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v71 = &v66 - v6;
  v70 = sub_22D0154AC();
  v87 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v7);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Assertion(0);
  v78 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68, v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v76 = &v66 - v14;
  v15 = sub_22D01534C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v85 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v83 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v66 - v28;
  v30 = v1[19];
  v31 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v89 = a1;
  v33 = sub_22CEE9DF8(sub_22CF758E4, v88, v32, sub_22CF06DB0, sub_22CF06DB0);

  v34 = v33[8];
  v66 = (v33 + 8);
  v79 = v33;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v81 = v2;
  swift_beginAccess();
  v38 = 0;
  v39 = (v35 + 63) >> 6;
  v84 = (v16 + 16);
  v86 = (v16 + 32);
  v67 = (v87 + 8);
  v75 = v16;
  v80 = (v16 + 8);
  v77 = v12;
  v82 = v15;
  v74 = v20;
  v73 = v29;
  v72 = v39;
  while (v37)
  {
    v40 = v38;
LABEL_15:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v43 | (v40 << 6);
    v45 = v79;
    v46 = v75;
    v47 = v85;
    (*(v75 + 16))(v85, v79[6] + *(v75 + 72) * v44, v15);
    v48 = v15;
    v49 = v76;
    sub_22CF07D60(v45[7] + *(v78 + 72) * v44, v76, type metadata accessor for Assertion);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    v51 = *(v50 + 48);
    v52 = *(v46 + 32);
    v42 = v83;
    v52(v83, v47, v48);
    sub_22CF7BE5C(v49, v42 + v51, type metadata accessor for Assertion);
    (*(*(v50 - 8) + 56))(v42, 0, 1, v50);
    v87 = v40;
    v53 = v77;
    v20 = v74;
    v29 = v73;
    v39 = v72;
LABEL_16:
    sub_22CEF0368(v42, v29, &qword_27D9F29F0, &unk_22D019678);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    if ((*(*(v54 - 8) + 48))(v29, 1, v54) == 1)
    {

      return;
    }

    v55 = *(v54 + 48);
    v15 = v82;
    (*v86)(v20, v29, v82);
    v12 = v53;
    sub_22CF7BE5C(&v29[v55], v53, type metadata accessor for Assertion);
    v56 = v81;
    v57 = v81[19];
    v58 = v81[20];
    __swift_project_boxed_opaque_existential_1(v81 + 16, v57);
    (*(v58 + 32))(v20, v57, v58);
    sub_22CF6BE6C(v12);
    v59 = *(v56[6] + 16);
    os_unfair_lock_lock(v59);
    v60 = sub_22D01531C();
    v61 = v56[7];
    if (*(v61 + 16))
    {
      v62 = sub_22CEE637C(v60);
      if (v63)
      {
        sub_22CEE3A84(*(v61 + 56) + 40 * v62, &v93);
      }

      else
      {
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
      }
    }

    else
    {
      v95 = 0;
      v93 = 0u;
      v94 = 0u;
    }

    os_unfair_lock_unlock(v59);
    sub_22CEEB6DC(&v93, &v90, &qword_27D9F29F8, &qword_22D019688);
    if (v91)
    {
      sub_22CEF44D4(&v90, v92);
      (*v84)(v85, v20, v15);
      sub_22CEEB6DC(&v12[*(v68 + 24)], v71, &qword_27D9F2680, &qword_22D019670);
      v64 = v69;
      sub_22D01547C();
      __swift_project_boxed_opaque_existential_1(v92, v92[3]);
      sub_22D006D8C(v64);
      (*v67)(v64, v70);
      sub_22CEEC3D8(&v93, &qword_27D9F29F8, &qword_22D019688);
      sub_22CF1CB18(v12, type metadata accessor for Assertion);
      (*v80)(v20, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
    }

    else
    {
      sub_22CEEC3D8(&v93, &qword_27D9F29F8, &qword_22D019688);
      sub_22CF1CB18(v12, type metadata accessor for Assertion);
      (*v80)(v20, v15);
      sub_22CEEC3D8(&v90, &qword_27D9F29F8, &qword_22D019688);
    }

    v38 = v87;
  }

  if (v39 <= v38 + 1)
  {
    v41 = v38 + 1;
  }

  else
  {
    v41 = v39;
  }

  v42 = v83;
  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v39)
    {
      v87 = v41 - 1;
      v53 = v12;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      (*(*(v65 - 8) + 56))(v42, 1, 1, v65);
      v37 = 0;
      goto LABEL_16;
    }

    v37 = *&v66[8 * v40];
    ++v38;
    if (v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22CF74E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = a3;
  v5 = sub_22D01555C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v11 = v10 - 8;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v31 - v17;
  v19 = sub_22D01534C();
  v20 = *(v19 - 8);
  v21 = a1;
  v22 = v19;
  (*(v20 + 16))(v18, v21, v19);
  sub_22CF07D60(a2, &v18[*(v11 + 56)], type metadata accessor for Assertion);
  sub_22CEEB6DC(v18, v15, &qword_27D9F2600, &qword_22D018B60);
  v23 = &v15[*(v11 + 56)];
  v24 = type metadata accessor for Assertion(0);
  (*(v6 + 16))(v9, v23 + *(v24 + 40), v5);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D4D4D0])
  {
    (*(v6 + 96))(v9, v5);
    v26 = *v9;
    v25 = v9[1];
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v26 = 0;
    v25 = 0;
  }

  sub_22CF1CB18(v23, type metadata accessor for Assertion);
  v27 = sub_22D014F9C();
  if (v25)
  {
    if (v26 == v27 && v25 == v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_22D016DFC();
    }

    sub_22CEEC3D8(v18, &qword_27D9F2600, &qword_22D018B60);
  }

  else
  {
    sub_22CEEC3D8(v18, &qword_27D9F2600, &qword_22D018B60);

    v29 = 0;
  }

  (*(v20 + 8))(v15, v22);
  return v29 & 1;
}

uint64_t sub_22CF751D8(uint64_t a1)
{
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 160);
  __swift_project_boxed_opaque_existential_1((*v1 + 128), v3);
  v5 = (*(v4 + 8))(v3, v4);
  v8[2] = a1;
  sub_22CF4CB98(sub_22CF7B618, v8, v5);
  LOBYTE(a1) = v6;

  return a1 & 1;
}

uint64_t sub_22CF7529C()
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v2 = MEMORY[0x28223BE20](v74, v1);
  v73 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v72 = &v63 - v6;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v71 = &v63 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v70 = &v63 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v69 = &v63 - v14;
  v15 = v0[19];
  v16 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v84 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v18, 0);
    v19 = v84;
    v20 = v17 + 64;
    v21 = sub_22D016AEC();
    v22 = 0;
    v23 = *(v17 + 36);
    v64 = v17 + 72;
    v65 = v18;
    v66 = v23;
    v67 = v17 + 64;
    v68 = v17;
    do
    {
      if ((v21 & 0x8000000000000000) != 0 || v21 >= 1 << *(v17 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_26;
      }

      if (v23 != *(v17 + 36))
      {
        goto LABEL_27;
      }

      v76 = 1 << v21;
      v77 = v21 >> 6;
      v75 = v22;
      v25 = v74;
      v83 = v19;
      v26 = *(v74 + 48);
      v27 = *(v17 + 48);
      v28 = sub_22D01534C();
      v29 = *(v28 - 8);
      v30 = v29;
      v31 = v27 + *(v29 + 72) * v21;
      v32 = v21;
      v33 = *(v29 + 16);
      v34 = v69;
      v33(v69, v31, v28);
      v35 = *(v17 + 56);
      v80 = type metadata accessor for Assertion(0);
      v36 = *(*(v80 - 8) + 72);
      v79 = v32;
      sub_22CF07D60(v35 + v36 * v32, &v34[v26], type metadata accessor for Assertion);
      v37 = v70;
      (*(v30 + 32))(v70, v34, v28);
      v38 = *(v25 + 48);
      sub_22CF7BE5C(&v34[v26], v37 + v38, type metadata accessor for Assertion);
      v39 = v71;
      v33(v71, v37, v28);
      sub_22CF07D60(v37 + v38, v39 + *(v25 + 48), type metadata accessor for Assertion);
      v40 = v72;
      sub_22CEEB6DC(v39, v72, &qword_27D9F2600, &qword_22D018B60);
      v78 = *(v25 + 48);
      v41 = sub_22D0152FC();
      v81 = v42;
      v82 = v41;
      v43 = *(v30 + 8);
      v43(v40, v28);
      v44 = v73;
      sub_22CEEB6DC(v39, v73, &qword_27D9F2600, &qword_22D018B60);
      v80 = sub_22D01669C();
      v46 = v45;
      v47 = v39;
      v19 = v83;
      sub_22CEEC3D8(v47, &qword_27D9F2600, &qword_22D018B60);
      v43(v44, v28);
      sub_22CF1CB18(v40 + v78, type metadata accessor for Assertion);
      sub_22CEEC3D8(v37, &qword_27D9F2600, &qword_22D018B60);
      v84 = v19;
      v49 = *(v19 + 16);
      v48 = *(v19 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22CF4414C((v48 > 1), v49 + 1, 1);
        v19 = v84;
      }

      *(v19 + 16) = v49 + 1;
      v50 = (v19 + 48 * v49);
      v51 = v81;
      v50[4] = v82;
      v50[5] = v51;
      v52 = v79;
      v50[6] = v80;
      v50[7] = v46;
      v50[9] = MEMORY[0x277D837D0];
      v17 = v68;
      v24 = 1 << *(v68 + 32);
      if (v52 >= v24)
      {
        goto LABEL_28;
      }

      v20 = v67;
      v53 = *(v67 + 8 * v77);
      if ((v53 & v76) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v23) = v66;
      if (v66 != *(v68 + 36))
      {
        goto LABEL_30;
      }

      v54 = v53 & (-2 << (v52 & 0x3F));
      if (v54)
      {
        v24 = __clz(__rbit64(v54)) | v52 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = v77 << 6;
        v56 = v77 + 1;
        v57 = (v64 + 8 * v77);
        while (v56 < (v24 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_22CF44CF8(v52, v66, 0);
            v24 = __clz(__rbit64(v58)) + v55;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v52, v66, 0);
      }

LABEL_4:
      v22 = v75 + 1;
      v21 = v24;
    }

    while (v75 + 1 != v65);

    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:
      v60 = MEMORY[0x277D84F98];
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v60 = sub_22D016D3C();
LABEL_24:
  v84 = v60;

  sub_22CF623EC(v61, 1, &v84);

  return v84;
}

uint64_t sub_22CF7594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v13, v20, v8);
    sub_22CF7C4D4(v33, v34, v35);
    v27 = sub_22D01665C();
    v28 = *v23;
    (*v23)(v13, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF75B44(uint64_t result, uint64_t a2)
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
    sub_22D016EAC();

    sub_22D0166DC();
    v16 = sub_22D016ECC();
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
      if (v21 || (sub_22D016DFC() & 1) != 0)
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

uint64_t sub_22CF75CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v36 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v33 = a2;
  v29 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v32 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = a2;
    sub_22D016EAC();

    sub_22D0166DC();
    v35 = v14;
    sub_22D0166DC();
    v34 = v16;
    MEMORY[0x2318C6020](v16);
    v18 = sub_22D016ECC();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v21 = ~v19;
    v22 = *(v33 + 48);
    while (1)
    {
      v23 = v22 + 40 * v20;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *v23 == v13 && *(v23 + 8) == v12;
      if (!v27 && (sub_22D016DFC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v24 != v35 || v25 != v15)
      {
        break;
      }

      if (v34 == v26)
      {
        goto LABEL_28;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_22D016DFC() & 1) == 0 || ((v34 ^ v26))
    {
      goto LABEL_16;
    }

LABEL_28:

    v3 = v30;
    result = v31;
    v6 = v32;
    a2 = v33;
    v7 = v29;
  }

  while (v32);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CF75FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF760C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
  v34 = a2;
  v12 = sub_22D01661C();
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
      sub_22CF7C4D4(&qword_28143FBA8, MEMORY[0x277D4D450], MEMORY[0x277D4D460]);
      v22 = sub_22D01665C();
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
    sub_22CF781F0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_22CF763A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D0159DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v34 = a2;
  v12 = sub_22D01661C();
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
      sub_22CF7C4D4(&qword_27D9F2A48, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
      v22 = sub_22D01665C();
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
    sub_22CF78494(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_22CF76684(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_0();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FD94(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27D8, &qword_22D0190C8);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_0();
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27D8, &qword_22D0190C8, _s11SessionCore6ClientCMa_0, sub_22CF602F4);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22CF768E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 32);
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *v2;
  sub_22D016EAC();
  sub_22D0166DC();
  v32 = v6;
  sub_22D0166DC();
  v31 = v3;
  MEMORY[0x2318C6020](v3);
  v9 = sub_22D016ECC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 40 * v11;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *v14 == v5 && *(v14 + 8) == v4;
      if (v18 || (sub_22D016DFC() & 1) != 0)
      {
        if (v16 == v7 && v15 == v32)
        {
          if (v31 == v17)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_22D016DFC() & 1) != 0 && ((v31 ^ v17) & 1) == 0)
        {
LABEL_16:

          v20 = *(v8 + 48) + 40 * v11;
          v22 = *v20;
          v21 = *(v20 + 8);
          v23 = *(v20 + 16);
          v24 = *(v20 + 24);
          LOBYTE(v20) = *(v20 + 32);
          *a1 = v22;
          *(a1 + 8) = v21;
          *(a1 + 16) = v23;
          *(a1 + 24) = v24;
          *(a1 + 32) = v20;

          return 0;
        }
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v28;

  sub_22CF78738(a2, v11, isUniquelyReferenced_nonNull_native);
  *v28 = v33;
  v27 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v27;
  *(a1 + 32) = *(a2 + 32);
  return 1;
}

uint64_t sub_22CF76AFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D015E7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
  v34 = a2;
  v12 = sub_22D01661C();
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
      sub_22CF7C4D4(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
      v22 = sub_22D01665C();
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
    sub_22CF78948(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_22CF76DDC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_3();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FE48(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27C0, &qword_22D0190B0);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_3();
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27C0, &qword_22D0190B0, _s11SessionCore6ClientCMa_3, sub_22CF60708);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22CF7703C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for AuthorizationServiceClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FE84(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27B0, &qword_22D0190A0);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AuthorizationServiceClient();
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27B0, &qword_22D0190A0, type metadata accessor for AuthorizationServiceClient, sub_22CF6071C);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_22CF772B0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D01534C();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27B8, &qword_22D0190A8);
  v7 = sub_22D016C1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
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
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
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

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_22CF7760C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D0159DC();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27E8, &qword_22D019710);
  v7 = sub_22D016C1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
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
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
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

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_22CF7797C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  v4 = sub_22D016C1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22D016EAC();
      sub_22D0166DC();
      sub_22D0166DC();
      MEMORY[0x2318C6020](v23);
      v24 = sub_22D016ECC();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v34;
      v10 = v35;
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
        v35 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_22CF77C24(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D015E7C();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  v7 = sub_22D016C1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
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
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
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

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_22CF77FD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_22D016C1C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_22D016A5C();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

uint64_t sub_22CF781F0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF772B0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22CF602A4();
      goto LABEL_12;
    }

    sub_22CF78E24(v11 + 1);
  }

  v13 = *v3;
  sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
  v14 = sub_22D01661C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22CF7C4D4(&qword_28143FBA8, MEMORY[0x277D4D450], MEMORY[0x277D4D460]);
      v22 = sub_22D01665C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

uint64_t sub_22CF78494(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22D0159DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF7760C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22CF602CC();
      goto LABEL_12;
    }

    sub_22CF79140(v11 + 1);
  }

  v13 = *v3;
  sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v14 = sub_22D01661C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22CF7C4D4(&qword_27D9F2A48, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
      v22 = sub_22D01665C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

void sub_22CF78738(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_22CF7797C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22CF60308();
      goto LABEL_24;
    }

    sub_22CF7945C(v6 + 1);
  }

  v8 = *(a1 + 32);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v3;
  sub_22D016EAC();
  sub_22D0166DC();
  v34 = v11;
  sub_22D0166DC();
  v33 = v8;
  MEMORY[0x2318C6020](v8);
  v14 = sub_22D016ECC();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v9 && *(v19 + 8) == v10;
      if (v23 || (sub_22D016DFC() & 1) != 0)
      {
        if (v20 == v34 && v21 == v12)
        {
          if (v33 == v22)
          {
            goto LABEL_23;
          }
        }

        else if ((sub_22D016DFC() & 1) != 0 && ((v33 ^ v22) & 1) == 0)
        {
LABEL_23:
          sub_22D016E0C();
          __break(1u);
          break;
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(a1 + 1);
  *v26 = *a1;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a1 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }
}

uint64_t sub_22CF78948(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22D015E7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF77C24(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22CF60480();
      goto LABEL_12;
    }

    sub_22CF796E8(v11 + 1);
  }

  v13 = *v3;
  sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
  v14 = sub_22D01661C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22CF7C4D4(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
      v22 = sub_22D01665C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

void sub_22CF78BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  v4 = sub_22D016C1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v20 = sub_22D016ECC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_22CF78E24(uint64_t a1)
{
  v2 = v1;
  v35 = sub_22D01534C();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27B8, &qword_22D0190A8);
  v8 = sub_22D016C1C();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
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
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_22CF79140(uint64_t a1)
{
  v2 = v1;
  v35 = sub_22D0159DC();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27E8, &qword_22D019710);
  v8 = sub_22D016C1C();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
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
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_22CF7945C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  v4 = sub_22D016C1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22D016EAC();

      sub_22D0166DC();
      sub_22D0166DC();
      MEMORY[0x2318C6020](v23);
      v24 = sub_22D016ECC();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v32;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_22CF796E8(uint64_t a1)
{
  v2 = v1;
  v35 = sub_22D015E7C();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  v8 = sub_22D016C1C();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
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
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
      v22 = sub_22D01661C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_22CF79A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_22D016C1C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_22D016A5C();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void *sub_22CF79C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_22CF79E64(v12, v9, v5, v4);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_22CF7A744(v15, v9, v5, v4);
  result = MEMORY[0x2318C6860](v15, -1, -1);
  if (!v16)
  {
    return v17;
  }

  return result;
}

uint64_t sub_22CF79E64(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v42 = a2;
  v56 = a4;
  v43 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v6 = MEMORY[0x28223BE20](v55, v5);
  v54 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v53 = &v41 - v9;
  v10 = type metadata accessor for Assertion(0);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22D01534C();
  result = MEMORY[0x28223BE20](v50, v13);
  v59 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a3;
  v18 = *(a3 + 64);
  v46 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v44 = 0;
  v45 = (v19 + 63) >> 6;
  v60 = v15;
  v48 = v15 + 1;
  v49 = v15 + 2;
  while (v21)
  {
    v22 = __clz(__rbit64(v21));
    v58 = (v21 - 1) & v21;
LABEL_11:
    v25 = v22 | (v17 << 6);
    v26 = v57;
    v27 = v60[2];
    v28 = v59;
    v29 = v50;
    v27(v59, v57[6] + v60[9] * v25, v50);
    v30 = v26[7];
    v31 = *(v52 + 72);
    v47 = v25;
    v32 = v30 + v31 * v25;
    v33 = v51;
    sub_22CF07D60(v32, v51, type metadata accessor for Assertion);
    v34 = v53;
    v27(v53, v28, v29);
    v35 = v55;
    sub_22CF07D60(v33, v34 + *(v55 + 48), type metadata accessor for Assertion);
    v36 = v54;
    sub_22CEEB6DC(v34, v54, &qword_27D9F2600, &qword_22D018B60);
    v37 = *(v35 + 48);
    v38 = sub_22D01531C();
    sub_22CEEC3D8(v34, &qword_27D9F2600, &qword_22D018B60);
    v39 = v60[1];
    v39(v36, v29);
    sub_22CF1CB18(v36 + v37, type metadata accessor for Assertion);
    sub_22CF1CB18(v33, type metadata accessor for Assertion);
    result = (v39)(v59, v29);
    v21 = v58;
    if (v38 == v56)
    {
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v43, v42, v44, v57);
      }
    }
  }

  v23 = v17;
  while (1)
  {
    v17 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v17 >= v45)
    {
      return sub_22CF070F0(v43, v42, v44, v57);
    }

    v24 = *(v46 + 8 * v17);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7A270(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *, __n128))
{
  v41 = a4;
  v34 = a2;
  v35 = a1;
  v5 = sub_22D01436C();
  result = MEMORY[0x28223BE20](v5, v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v11 = 0;
  v42 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v39 = v8 + 16;
  v40 = v8;
  v38 = (v8 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v43 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v42;
    (*(v40 + 16))(v10, v42[6] + *(v40 + 72) * v22, v5);
    v24 = v23[7];
    v37 = v22;
    v25 = v24 + 32 * v22;
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = v5;
    v29 = *(v25 + 24);
    v44[0] = *v25;
    v45 = v26;
    v46 = v27;
    v47 = v29;

    v30 = v48;
    v31 = (v41)(v10, v44);
    v48 = v30;
    if (v30)
    {

      return (*v38)(v10, v28);
    }

    v32 = v31;

    result = (*v38)(v10, v28);
    v5 = v28;
    v17 = v43;
    if (v32)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_22CF7A86C(v35, v34, v36, v42);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_22CF7A86C(v35, v34, v36, v42);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CF7A528(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *, __n128))
{
  v22 = 0;
  v21 = result;
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
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 8 * v14);

    v18 = (a4)(v25, &v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_22CF7B0E0(v21, a2, v22, a3);
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
      return sub_22CF7B0E0(v21, a2, v22, a3);
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

unint64_t *sub_22CF7A6A0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22CF7B638(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22CF7A744(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22CF79E64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22CF7A7CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_22CF7A86C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v55 = sub_22D01436C();
  v52 = *(v55 - 8);
  v8 = MEMORY[0x28223BE20](v55, v7);
  v54 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v45 = &v39 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  result = sub_22D016D3C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v44;
  }

  v15 = 0;
  v42 = v52 + 16;
  v43 = result;
  v53 = v52 + 32;
  v16 = result + 64;
  v40 = a2;
  v41 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v46 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v52;
    v51 = *(v52 + 72);
    v23 = v45;
    v24 = v55;
    (*(v52 + 16))(v45, v21 + v51 * v20, v55);
    v25 = (a4[7] + 32 * v20);
    v26 = *v25;
    v27 = *(v25 + 1);
    v48 = v25[16];
    v49 = v26;
    v28 = *(v25 + 3);
    v47 = *(v22 + 32);
    v47(v54, v23, v24);
    v13 = v43;
    sub_22CF7C4D4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v50 = v27;

    result = sub_22D01661C();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v47)(*(v13 + 48) + v32 * v51, v54, v55);
    v37 = *(v13 + 56) + 32 * v32;
    *v37 = v49;
    *(v37 + 8) = v50;
    *(v37 + 16) = v48;
    *(v37 + 24) = v28;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a2 = v40;
    a4 = v41;
    v14 = v46;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = v44[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
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

uint64_t sub_22CF7AC3C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_22D01436C();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - v12;
  v13 = sub_22D0159DC();
  v57 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v48 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A40, &qword_22D019708);
  result = sub_22D016D3C();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v48[3] = v57 + 16;
  v49 = a2;
  v59 = v57 + 32;
  v23 = result + 64;
  v50 = a1;
  v48[0] = a4;
  v48[1] = v58 + 32;
  v48[2] = v58 + 16;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[6];
    v29 = v57;
    v56 = *(v57 + 72);
    v30 = v51;
    (*(v57 + 16))(v51, v28 + v56 * v27, v13);
    v31 = a4[7];
    v32 = v58;
    v55 = *(v58 + 72);
    v33 = v31 + v55 * v27;
    v34 = v13;
    v35 = v52;
    v36 = v62;
    (*(v58 + 16))(v52, v33, v62);
    v54 = *(v29 + 32);
    v54(v60, v30, v34);
    v37 = *(v32 + 32);
    v38 = v35;
    v13 = v34;
    v37(v61, v38, v36);
    sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    result = sub_22D01661C();
    v39 = -1 << *(v20 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a2 = v49;
      a1 = v50;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v23 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a2 = v49;
    a1 = v50;
LABEL_26:
    *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v54((*(v20 + 48) + v42 * v56), v60, v34);
    result = (v37)(*(v20 + 56) + v42 * v55, v61, v62);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48[0];
    v21 = v53;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
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

uint64_t sub_22CF7B0E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  result = sub_22D016D3C();
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
    v32 = *(v17 + 8 * v16);
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
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
    *(*(v9 + 56) + 8 * v24) = v32;
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
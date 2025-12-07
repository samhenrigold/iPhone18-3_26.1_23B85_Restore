uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v28[2] = a1;
  v34 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v28[1] = v4;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_19();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  if (v10 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v13 = a2 * 1000000000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33.tv_sec = 0;
  v33.tv_usec = 0;
  gettimeofday(&v33, 0);
  v14 = 1000 * v33.tv_usec;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v33.tv_sec, v16 / 1000000000))
  {
    goto LABEL_18;
  }

  v32.tv_sec = v33.tv_sec + v16 / 1000000000;
  v32.tv_nsec = v16 % 1000000000;
  v17 = *v2;
  v18 = *(*v2 + 96);
  v28[0] = *(*v2 + 112);
  v19 = *(v17 + 104);
  swift_beginAccess();
  v20 = v8 + 16;
  v21 = *(v8 + 16);
  v22 = (v20 - 8);
  do
  {
    v21(v12, &v2[v18], v6);
    v23 = OUTLINED_FUNCTION_4_11();
    (*v22)(v12, v6);
    if (v23)
    {
      return v23 & 1;
    }

    v24 = pthread_cond_timedwait(*&v2[v28[0]], *(*&v2[v19] + 16), &v32);
  }

  while (!v24);
  if (v24 == 60)
  {
    ConditionLock.unlock()();
    return v23 & 1;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  v26 = v24;
  sub_1C04F6C40();
  MEMORY[0x1C68DC0D0](0x6520746867756163, 0xED000020726F7272);
  v29 = v26;
  v27 = sub_1C04F6D60();
  MEMORY[0x1C68DC0D0](v27);

  MEMORY[0x1C68DC0D0](0xD000000000000024, 0x80000001C04FE4C0);
  result = sub_1C04F6CF0();
  __break(1u);
  return result;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  OUTLINED_FUNCTION_4();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C04E6840(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_1C04F6730();
}

uint64_t sub_1C04E69C0()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

unint64_t sub_1C04E6A0C()
{
  result = qword_1EBE0D9A0;
  if (!qword_1EBE0D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D9A0);
  }

  return result;
}

unint64_t sub_1C04E6A64()
{
  result = qword_1EBE0D9A8;
  if (!qword_1EBE0D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D9A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextVendorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextVendorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProxyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ProxyError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04E6DB0(uint64_t a1)
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

uint64_t *sub_1C04E6E50()
{
  v1 = *v0;
  MEMORY[0x1C68DCEB0](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_1C04E6EEC()
{
  sub_1C04E6E50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C04E6F5C()
{
  type metadata accessor for PegasusSessionFactory();
  v0 = sub_1C04E6F9C();
  v1 = sub_1C04E7094(v0);

  qword_1EDE44DC8 = v1;
}

id sub_1C04E6F9C()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setAllowsCellularAccess_];
  [v0 setWaitsForConnectivity_];
  [v0 set:1 expiredDNSBehavior:?];
  if (qword_1EDE41E20 != -1)
  {
    swift_once();
  }

  if ((byte_1EDE44D78 & 1) == 0)
  {
    v1 = sub_1C04F6750();
    sub_1C04F4DA8(v1, v2, v0);
  }

  [v0 set:1 usesNWLoader:?];
  [v0 set:1 disableAPWakeOnIdleConnections:?];
  return v0;
}

id sub_1C04E7094(uint64_t a1)
{
  v2 = sub_1C04F54B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sessionWithConfiguration_];
  sub_1C04F54A0();
  v7 = sub_1C04F5470();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v11 = 0xD00000000000001CLL;
  v12 = 0x80000001C04FE550;
  MEMORY[0x1C68DC0D0](v7, v9);

  sub_1C04E720C(v11, v12, v6);
  return v6;
}

void sub_1C04E720C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C04F6740();

  [a3 setSessionDescription_];
}

uint64_t sub_1C04E7270()
{
  OUTLINED_FUNCTION_5_12();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C04E72B4()
{
  sub_1C047FE24(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1C04E72EC()
{
  OUTLINED_FUNCTION_5_12();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C04E7368()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1);
  sub_1C04E74C4(v0, &v12);
  os_unfair_lock_unlock(v1);

  result = swift_unknownObjectWeakLoadStrong();
  v3 = v12;
  if (result)
  {
    v4 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      sub_1C047FE24(v0 + 16);

      return v0;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = *i;
    v10 = swift_getObjectType();
    v11 = *(v9 + 72);
    swift_unknownObjectRetain();
    v11(v10, v9);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04E74C4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v36 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v34 = xmmword_1C04F7BB0;
  v35 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v36 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(*(v36 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v24[2];

            sub_1C04E7FC4(0, v31 + 1, 1, v24, &qword_1EBE0D9B0, &qword_1C04FAD88, &qword_1EBE0D9B8, &unk_1C04FAD90);
            *a2 = v32;

            v24 = *a2;
          }

          v27 = v24[2];
          v26 = v24[3];
          v5 = v35;
          if (v27 >= v26 >> 1)
          {
            sub_1C04E7FC4(v26 > 1, v27 + 1, 1, v24, &qword_1EBE0D9B0, &qword_1C04FAD88, &qword_1EBE0D9B8, &unk_1C04FAD90);
            v24 = v33;
            *a2 = v33;
          }

          v24[2] = v27 + 1;
          v28 = *a2 + 16 * v27;
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_1C04D2E10();

          v29 = sub_1C04F6B00();
          sub_1C04F6A20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
          v30 = swift_allocObject();
          *(v30 + 16) = v34;
          *(v30 + 56) = MEMORY[0x1E69E6158];
          *(v30 + 64) = sub_1C0483A94();
          *(v30 + 32) = v16;
          *(v30 + 40) = v17;

          sub_1C04F6390("Detected unfinished activity with destroyed span at key %s", v34);
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04E77F0()
{
  sub_1C04E7368();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C04E786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_1C04E9FB8(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1C04E7270();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 40);
  sub_1C04A0BD8();
  *(a1 + 40) = v15;
  return swift_endAccess();
}

uint64_t sub_1C04E79C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  swift_beginAccess();
  sub_1C047D36C();
  if (v8)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE88, &qword_1C04FAD80);
    sub_1C04F6CC0();

    type metadata accessor for ActivityMonitor.WeakReference();
    sub_1C04F6CE0();
    *(a1 + 40) = v23;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v10 + 40))(a4, a5, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v12 = swift_getObjectType();
    v13 = a5[4](v12, a5);
    sub_1C04F6A20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C04F7BA0;
    v15 = a5[3](v12, a5);
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C0483A94();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    a5[5](v12, a5);
    v20 = sub_1C04F6C50();
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    sub_1C04F6390("Activity %s.%s never started or already ended", v22, v24);
  }
}

void sub_1C04E7C34()
{
  OUTLINED_FUNCTION_6_10();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_19();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF30, &qword_1C04FADA0);
    v9 = OUTLINED_FUNCTION_7_13();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_17();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C04E7D10()
{
  OUTLINED_FUNCTION_6_10();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_19();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1C04E80CC(v7, v4);
  v9 = *(sub_1C04F55F0() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1C04E8210(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C04E7DE4()
{
  OUTLINED_FUNCTION_6_10();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_19();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D9C0, &qword_1C04FADA8);
    v9 = OUTLINED_FUNCTION_7_13();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C04E7ECC()
{
  OUTLINED_FUNCTION_6_10();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_19();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF28, &qword_1C04F86F8);
    v9 = OUTLINED_FUNCTION_7_13();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_17();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1C04E7FC4(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_4_12();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_19();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = OUTLINED_FUNCTION_7_13();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_3_17();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[2 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 16 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_1C04E80CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D9D8, &unk_1C04FADC0);
  v4 = *(sub_1C04F55F0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C04E81C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_20(a3, result);
  }

  return result;
}

char *sub_1C04E81F0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_20(a3, result);
  }

  return result;
}

uint64_t sub_1C04E8210(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1C04F55F0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1C04F55F0();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_1C04E82E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[7](a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_1C04E79C8(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_1C04E83A4(a2, a1, a3, a4);
}

uint64_t sub_1C04E83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_allocObject();
}

uint64_t sub_1C04E84A4()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4();
  sub_1C04A12B4(v0 + *(v1 + 136), &qword_1EBE0CD58, &qword_1C04F8388);
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 144);
  sub_1C04F5460();
  OUTLINED_FUNCTION_152();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_4();

  return v0;
}

uint64_t sub_1C04E85B8()
{
  OUTLINED_FUNCTION_4();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v37 = *(v0 + 32);
  HIDWORD(v36) = *(v0 + 40);
  v38 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_unknownObjectRetain();

  v40 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  v7 = sub_1C04F6A20();
  sub_1C04F6390("LEAKED SPAN: {{{", 16, 2, &dword_1C0479000, v6, v7, MEMORY[0x1E69E7CC0]);
  sub_1C04F6A20();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C04F8240;
  sub_1C0482AB0(*(v0 + 80));
  v10 = sub_1C04F6C50();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C0483A94();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  strcpy((v9 + 72), "resourceAccess");
  *(v9 + 87) = -18;
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  v39 = v14;
  *(v9 + 112) = 0xD000000000000010;
  *(v9 + 120) = 0x80000001C04FC670;
  sub_1C04F6390("Name: %s, Category: %s, Subsystem: %s", v34, v36, v37);

  if ((v38 & 1) == 0)
  {
    sub_1C04F6A20();
    v15 = OUTLINED_FUNCTION_4_13();
    *(v15 + 16) = xmmword_1C04F7BB0;
    v16 = sub_1C04F6C50();
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = v39;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    OUTLINED_FUNCTION_3_18("Format string: %s", 17, v18, &dword_1C0479000);

    if (v3)
    {

      sub_1C04F6A20();
      v19 = OUTLINED_FUNCTION_4_13();
      *(v19 + 16) = xmmword_1C04F7BB0;
      *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD80, &qword_1C04FAF60);
      *(v19 + 64) = sub_1C047C1A4(&unk_1EBE0CD88, &qword_1EBE0CD80, &qword_1C04FAF60, MEMORY[0x1E6969E28]);
      *(v19 + 32) = v3;
      OUTLINED_FUNCTION_3_18("Arguments: %@", 13, v20, &dword_1C0479000);
    }
  }

  if (v4)
  {

    sub_1C04F6A20();
    v21 = OUTLINED_FUNCTION_4_13();
    *(v21 + 16) = xmmword_1C04F7BB0;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD70, &qword_1C04F8390);
    *(v21 + 64) = sub_1C047C1A4(&qword_1EBE0CD78, &qword_1EBE0CD70, &qword_1C04F8390, MEMORY[0x1E6969D58]);
    *(v21 + 32) = v4;
    OUTLINED_FUNCTION_3_18("Analytics: %@", 13, v22, &dword_1C0479000);
  }

  result = sub_1C04EB71C(v40);
  if (result)
  {
    v24 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v25 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68DC500](v25, v40);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v25;
      sub_1C04F6A20();
      v26 = OUTLINED_FUNCTION_7_1(v8);
      *(v26 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      v27 = sub_1C04F6790();
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = v39;
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      sub_1C04F6390("Leaked cancellables: %s", v35);
      swift_unknownObjectRelease();
    }

    while (v24 != v25);
  }

  v29 = sub_1C04F6A20();
  sub_1C04F6390("}}}", 3, 2, &dword_1C0479000, v6, v29, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_12();
  if (sub_1C04E90E4(v30, v31, v32))
  {
    v33 = sub_1C04F6A30();
    sub_1C04F6390("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &dword_1C0479000, v6, v33, MEMORY[0x1E69E7CC0]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C04E8AC8()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v31 = *(v0 + 32);
  HIDWORD(v30) = *(v0 + 40);
  v32 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_unknownObjectRetain();

  v34 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  v6 = sub_1C04F6A20();
  sub_1C04F6390("LEAKED SPAN: {{{", 16, 2, &dword_1C0479000, v5, v6, MEMORY[0x1E69E7CC0]);
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C04F8240;
  sub_1C0482AB0(*(v0 + 80));
  v8 = sub_1C04F6C50();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C0483A94();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  strcpy((v7 + 72), "networkRequest");
  *(v7 + 87) = -18;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v33 = v12;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x80000001C04FC670;
  sub_1C04F6390("Name: %s, Category: %s, Subsystem: %s", v28, v30, v31);

  if ((v32 & 1) == 0)
  {
    sub_1C04F6A20();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C04F7BB0;
    v14 = sub_1C04F6C50();
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v33;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_1C04F6390("Format string: %s", v29);

    if (v2)
    {

      v16 = sub_1C04F6A20();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C04F7BB0;
      *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD80, &qword_1C04FAF60);
      *(v17 + 64) = sub_1C047C1A4(&unk_1EBE0CD88, &qword_1EBE0CD80, &qword_1C04FAF60, MEMORY[0x1E6969E28]);
      *(v17 + 32) = v2;
      sub_1C04F6390("Arguments: %@", 13, 2, &dword_1C0479000, v5, v16, v17);
    }
  }

  if (v3)
  {

    v18 = sub_1C04F6A20();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C04F7BB0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD70, &qword_1C04F8390);
    *(v19 + 64) = sub_1C047C1A4(&qword_1EBE0CD78, &qword_1EBE0CD70, &qword_1C04F8390, MEMORY[0x1E6969D58]);
    *(v19 + 32) = v3;
    sub_1C04F6390("Analytics: %@", 13, 2, &dword_1C0479000, v5, v18, v19);
  }

  result = sub_1C04EB71C(v34);
  if (result)
  {
    v21 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v22 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68DC500](v22, v34);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v22;
      sub_1C04F6A20();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      v24 = sub_1C04F6790();
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = v33;
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      sub_1C04F6390("Leaked cancellables: %s", v29);
      swift_unknownObjectRelease();
    }

    while (v21 != v22);
  }

  v26 = sub_1C04F6A20();
  sub_1C04F6390("}}}", 3, 2, &dword_1C0479000, v5, v26, MEMORY[0x1E69E7CC0]);
  if (sub_1C04E90E4(&type metadata for ResourceNetworkActivity, &off_1F3F85B88, sub_1C04D80F0))
  {
    v27 = sub_1C04F6A30();
    sub_1C04F6390("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &dword_1C0479000, v5, v27, MEMORY[0x1E69E7CC0]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C04E9058(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1C04E90E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_1(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3 & 1;
}

uint64_t sub_1C04E9144()
{
  v1 = sub_1C04F5460();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_1C04F5430();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C04E9274()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v38 - v6 + 16;
  v8 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v8;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_1C04A13B0(&v40, v38, &unk_1EBE0DA10, &unk_1C04FAF50);
  sub_1C04E9C9C(v9, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((BYTE1(v41) & 1) == 0)
  {
    v10 = v42;
    if (v42)
    {
      v11 = v40;
      v12 = v41;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_1C04A13B0(v1 + v14, v7, &qword_1EBE0CD58, &qword_1C04F8388);
      v15 = sub_1C04F63D0();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_1C04F6AD0();
        v19 = sub_1C0482AB0(v13);
        LOBYTE(v36) = v12;
        sub_1C04D8118(v18, v17, v19, v20, v21, v7, v11, *(&v11 + 1), v36, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_1C04A13B0(v1 + v23, v4, &qword_1EBE0CD58, &qword_1C04F8388);
  v24 = sub_1C04F63D0();
  result = __swift_getEnumTagSinglePayload(v4, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_1C04F6AD0();
  sub_1C0482AB0(v22);
  sub_1C04F63B0();
  (*(*(v24 - 8) + 8))(v4, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    *&v38[0] = v1;
    v27 = sub_1C04F6790();
    v29 = v28;
    v30 = *(*(v26 + 32) + 16);
    os_unfair_lock_lock(v30);
    sub_1C04E79C8(v26, v27, v29, v1, &off_1F3F85FC0);

    os_unfair_lock_unlock(v30);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v26 + 24);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v1, &off_1F3F85FC0, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_1C04A12B4(&v40, &unk_1EBE0DA10, &unk_1C04FAF50);
    v33 = v38[0];
    v34 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v34;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v33;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x1E69E7CC0];
    *(v1 + 72) = 0;
    sub_1C04A12B4(v38, &unk_1EBE0DA10, &unk_1C04FAF50);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1C04E90E4(&type metadata for ResourceNetworkActivity, &off_1F3F85B88, sub_1C04D80F0))
    {
      v35 = sub_1C04F6A30();
      sub_1C04F6390("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1C0479000, v17, v35, MEMORY[0x1E69E7CC0]);
    }

    return sub_1C04A12B4(&v40, &unk_1EBE0DA10, &unk_1C04FAF50);
  }
}

uint64_t sub_1C04E9738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v41 - v6 + 16;
  v8 = *(v0 + 40);
  v43 = *(v0 + 24);
  v44 = v8;
  v45 = *(v0 + 56);
  v46 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_1C04A13B0(&v43, v41, &unk_1EBE0DA20, qword_1C04FAF68);
  sub_1C04E9C9C(v9, 0x656372756F736572, 0xEE00737365636341);
  if ((BYTE1(v44) & 1) == 0)
  {
    v10 = v45;
    if (v45)
    {
      v11 = v43;
      v12 = v44;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_1C04A13B0(v1 + v14, v7, &qword_1EBE0CD58, &qword_1C04F8388);
      v15 = sub_1C04F63D0();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_1C04F6AD0();
        v19 = sub_1C0482AB0(v13);
        LOBYTE(v39) = v12;
        sub_1C04D8118(v18, v17, v19, v20, v21, v7, v11, *(&v11 + 1), v39, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_1C04A13B0(v1 + v23, v4, &qword_1EBE0CD58, &qword_1C04F8388);
  v24 = sub_1C04F63D0();
  result = __swift_getEnumTagSinglePayload(v4, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_1C04F6AD0();
  sub_1C0482AB0(v22);
  sub_1C04F63B0();
  (*(*(v24 - 8) + 8))(v4, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    *&v41[0] = v1;
    v27 = sub_1C04F6790();
    v29 = v28;
    v30 = *(*(v26 + 32) + 16);
    os_unfair_lock_lock(v30);
    sub_1C04E79C8(v26, v27, v29, v1, &off_1F3F85FC0);

    os_unfair_lock_unlock(v30);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v26 + 24);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v1, &off_1F3F85FC0, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    LOBYTE(v41[0]) = 1;

    sub_1C04A12B4(&v43, &unk_1EBE0DA20, qword_1C04FAF68);
    v33 = v41[0];
    v34 = *(v1 + 40);
    v41[0] = *(v1 + 24);
    v41[1] = v34;
    v41[2] = *(v1 + 56);
    v42 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v33;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x1E69E7CC0];
    *(v1 + 72) = 0;
    sub_1C04A12B4(v41, &unk_1EBE0DA20, qword_1C04FAF68);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    if (sub_1C04E90E4(v35, v36, v37))
    {
      v38 = sub_1C04F6A30();
      sub_1C04F6390("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1C0479000, v17, v38, MEMORY[0x1E69E7CC0]);
    }

    return sub_1C04A12B4(&v43, &unk_1EBE0DA20, qword_1C04FAF68);
  }
}

uint64_t sub_1C04E9BF0(const char *a1, uint64_t a2, char a3, uint64_t a4, ...)
{
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
}

void sub_1C04E9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8();
  v5 = v4;
  v7 = v6;
  if (sub_1C04E9E24(v8))
  {
    v9 = *(v3 + 96);
    v10 = sub_1C04F6A10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C04F7BA0;
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1C0483A94();
    *(v11 + 64) = v13;
    *(v11 + 32) = v7;
    *(v11 + 40) = v5;
    sub_1C048716C();
    OUTLINED_FUNCTION_7_14();
    v14 = sub_1C04F66D0();
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v14;
    *(v11 + 80) = v15;
    sub_1C04F6390("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &dword_1C0479000, v9, v10, v11);

    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);
    MEMORY[0x1C68DC0D0](v7, v5);
    v16 = sub_1C04F6740();

    OUTLINED_FUNCTION_7_14();
    v17 = sub_1C04F66B0();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_5_13();
  }

  else
  {
    OUTLINED_FUNCTION_5_13();
  }
}

uint64_t sub_1C04E9E24(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1C04F6B80();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C049FA54();
    sub_1C04E9144();
    sub_1C04F69C0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C049FA54();
    return v1;
  }

  return result;
}

double sub_1C04E9EE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1C049F764(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1C047D9A0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C04E9F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C047D36C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1C04E9FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C047D36C();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C04EA020(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_1C04EAD44(a1);
  }

  v2 = sub_1C04E84A4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C04EA0A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 96);
  v4 = sub_1C04F6A20();
  sub_1C04F6390("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_1C0479000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1C04E8AC8();
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C04F7BB0;
  v6 = *(v2 + *(*v2 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D420, &qword_1C04F96F8);
  v7 = sub_1C04F6790();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C0483A94();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1C04F6390("Network task: %s", v45);

  sub_1C04F6A20();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C04F7BB0;
  ObjectType = swift_getObjectType();
  v52 = v6;
  v12 = v6;
  v13 = *(v6 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
  v14 = sub_1C04F6790();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = v10;
  v54 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v55 = v3;
  sub_1C04F6390("Response: %s", ObjectType);

  v53 = sub_1C04EA5F8();
  if (v18)
  {
    sub_1C04F6A20();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C04F7BB0;
    v13(v47, v52);
    v20 = sub_1C04F6790();
    v21 = MEMORY[0x1E69E6158];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v24 = v3;
    sub_1C04F6390("Unsupported response: %s", v47);
    v25 = v21;
  }

  else
  {
    v26 = v16;
    v27 = v17;
    v28 = HIDWORD(v17);
    sub_1C04F6A20();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E6530];
    *(v29 + 16) = xmmword_1C04F7BB0;
    v31 = MEMORY[0x1E69E65A8];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v26;
    v24 = v55;
    sub_1C04F6390("Status: %d", v47);

    sub_1C04F6A20();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E7668];
    *(v32 + 16) = xmmword_1C04F7BB0;
    v34 = MEMORY[0x1E69E76D0];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v28;
    sub_1C04F6390("Uploaded: %llu bytes", v49);

    sub_1C04F6A20();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C04F7BB0;
    *(v35 + 56) = v33;
    *(v35 + 64) = v34;
    *(v35 + 32) = v27;
    sub_1C04F6390("Downloaded: %llu bytes", v50);

    sub_1C04F6A20();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E63B0];
    *(v36 + 16) = xmmword_1C04F7BB0;
    v38 = MEMORY[0x1E69E6438];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v53;
    sub_1C04F6390("Runtime: %f seconds", v51);
    v25 = MEMORY[0x1E69E6158];
    v22 = v54;
  }

  sub_1C04F6A20();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C04F7BB0;
  v40 = *(v2 + *(*v2 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0DA00, &unk_1C04F9700);
  v41 = sub_1C04F6790();
  *(v39 + 56) = v25;
  *(v39 + 64) = v22;
  *(v39 + 32) = v41;
  *(v39 + 40) = v42;
  sub_1C04F6390("Error: %s", v48);

  v43 = sub_1C04F6A20();
  return sub_1C04F6390("}}}", 3, 2, &dword_1C0479000, v24, v43, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C04EA5F8()
{
  v1 = v0;
  v2 = *&v0[*(*v0 + 464) + 8];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v4(ObjectType, v2);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 statusCode];
      v8 = (*(v2 + 8))(ObjectType, v2);
      if (!v8)
      {

        *&result = 0.0;
        return result;
      }

      v9 = v8;
      *&v24 = 0xD000000000000021;
      *(&v24 + 1) = 0x80000001C04FD200;
      sub_1C04F6BF0();
      sub_1C04E9EE4(v23, v9, &v24);
      sub_1C04A0D28(v23);
      if (v25)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1C04A12B4(&v24, &qword_1EBE0CB20, &unk_1C04F8B20);
      }

      *&v24 = 0xD00000000000001DLL;
      *(&v24 + 1) = 0x80000001C04FD1E0;
      sub_1C04F6BF0();
      sub_1C04E9EE4(v23, v9, &v24);
      sub_1C04A0D28(v23);
      if (v25)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1C04A12B4(&v24, &qword_1EBE0CB20, &unk_1C04F8B20);
      }

      sub_1C04F6BF0();
      sub_1C04E9EE4(v23, v9, &v24);
      sub_1C04A0D28(v23);
      if (v25)
      {
        if (swift_dynamicCast())
        {
          v22 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1C04A12B4(&v24, &qword_1EBE0CB20, &unk_1C04F8B20);
      }

      sub_1C04F6BF0();
      sub_1C04E9EE4(v23, v9, &v24);
      sub_1C04A0D28(v23);
      if (v25)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          sub_1C04F6BF0();
          sub_1C04E9EE4(v23, v9, &v24);

          sub_1C04A0D28(v23);
          if (v25)
          {
            if (swift_dynamicCast())
            {
              *&result = -2.31584178e77 - v22;
              return result;
            }
          }

          else
          {
            sub_1C04A12B4(&v24, &qword_1EBE0CB20, &unk_1C04F8B20);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_1C04A12B4(&v24, &qword_1EBE0CB20, &unk_1C04F8B20);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C04F7BB0;
  v23[0] = v4(ObjectType, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
  v11 = sub_1C04F6790();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1C0483A94();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1C04E9BF0("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v10);

  v16 = *(*&v1[*(*v1 + 152)] + 16);

  os_unfair_lock_lock(v16);
  if ((v1[88] & 1) == 0)
  {
    v17 = *&v1[*(*v1 + 480)];
    if (v17)
    {
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        nw_activity_complete_with_reason();
      }

      else
      {
        sub_1C04F6A00();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1C04F7BB0;
        v23[0] = v17;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D418, &unk_1C04F96E8);
        v20 = sub_1C04F6790();
        *(v19 + 56) = v14;
        *(v19 + 64) = v15;
        *(v19 + 32) = v20;
        *(v19 + 40) = v21;
        sub_1C04F6390("Ending NetworkSpan before nw_activity (%s) was activated", 1);
      }

      swift_unknownObjectRelease();
    }

    sub_1C04E9274();
  }

  os_unfair_lock_unlock(v16);

  *&result = 0.0;
  return result;
}

uint64_t sub_1C04EAC54(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C04F9620;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1C04E9BF0("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

uint64_t sub_1C04EB01C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C04EAFEC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C04EB07C()
{
  v1 = qword_1EDE44D50;
  sub_1C04F6200();
  OUTLINED_FUNCTION_152();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1C04EB0DC(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    a1 = sub_1C04EAD44(a1);
  }

  v2 = sub_1C04EA020(a1);
  v3 = qword_1EDE44D50;
  sub_1C04F6200();
  OUTLINED_FUNCTION_152();
  (*(v4 + 8))(v2 + v3);
  return v2;
}

uint64_t sub_1C04EB148(uint64_t a1)
{
  v1 = sub_1C04EB0DC(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan(uint64_t a1)
{
  result = qword_1EDE41658;
  if (!qword_1EDE41658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04EB1E8(uint64_t a1)
{
  result = sub_1C04F6200();
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

uint64_t sub_1C04EB418(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1C04C9440(a1, a2, a3);
  sub_1C04F61F0();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C049FA54();
  sub_1C04E9058(v6);

  return sub_1C04EAC54(a1, a2, a3);
}

unint64_t sub_1C04EB51C()
{
  result = qword_1EDE41680;
  if (!qword_1EDE41680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41680);
  }

  return result;
}

unint64_t sub_1C04EB570(uint64_t a1)
{
  *(a1 + 8) = sub_1C04EB5A0();
  result = sub_1C04EB5F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04EB5A0()
{
  result = qword_1EDE41688[0];
  if (!qword_1EDE41688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE41688);
  }

  return result;
}

unint64_t sub_1C04EB5F4()
{
  result = qword_1EDE41670;
  if (!qword_1EDE41670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41670);
  }

  return result;
}

unint64_t sub_1C04EB64C()
{
  result = qword_1EBE0D9E8;
  if (!qword_1EBE0D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D9E8);
  }

  return result;
}

unint64_t sub_1C04EB6A0(uint64_t a1)
{
  result = sub_1C04EB6C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04EB6C8()
{
  result = qword_1EBE0D9F8;
  if (!qword_1EBE0D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D9F8);
  }

  return result;
}

uint64_t sub_1C04EB71C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t OUTLINED_FUNCTION_3_18(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1C04F6390(a1, a2, 2, a4, v6, v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_allocObject();
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04EB9BC(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_1C04EBFC8(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1C04EC06C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C04EB9BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C04EC098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C04EB9A8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C04EC0C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C04EBFC8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C04EC0FC()
{
  result = qword_1EDE446C8;
  if (!qword_1EDE446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE446C8);
  }

  return result;
}

unint64_t sub_1C04EC154()
{
  result = qword_1EBE0DA30;
  if (!qword_1EBE0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0DA30);
  }

  return result;
}

uint64_t sub_1C04EC1B0()
{
  v1 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(v0 + 16);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BDAE0], v1);

  sub_1C04F6230();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v12, 11, v11, 0, 1);
}

uint64_t sub_1C04EC2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F5700();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1C04B24C0(a1, a2, a3);
  v13 = sub_1C04AF00C(v12);
  (*(v8 + 8))(v12, v6);
  return v13;
}

uint64_t sub_1C04EC3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v60 = a3;
  v52 = a2;
  v54 = a1;
  sub_1C04F5CB0();
  OUTLINED_FUNCTION_0();
  v64 = v5;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v63 = v7 - v6;
  OUTLINED_FUNCTION_4_1();
  sub_1C04F5610();
  OUTLINED_FUNCTION_0();
  v61 = v9;
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v59 = v11 - v10;
  OUTLINED_FUNCTION_4_1();
  sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v57 = v13;
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v56 = v15 - v14;
  OUTLINED_FUNCTION_4_1();
  v16 = sub_1C04F5CA0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_1();
  v50 = v18 - v17;
  OUTLINED_FUNCTION_4_1();
  v55 = sub_1C04F5650();
  OUTLINED_FUNCTION_0();
  v53 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v49 = sub_1C04F55F0();
  v48 = *(v49 - 8);
  v32 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  sub_1C04F56F0();
  sub_1C04F55E0();
  sub_1C04F54A0();
  sub_1C04F5470();
  (*(v27 + 8))(v31, v25);
  sub_1C04F55C0();

  sub_1C04F55D0();
  v36 = sub_1C04F56E0();
  v38 = v37;
  sub_1C04B2B20();
  v39 = *(*v38 + 16);
  sub_1C04B2BAC(v39);
  v40 = *v38;
  *(v40 + 16) = v39 + 1;
  v41 = v40 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v32 + 72) * v39;
  v42 = v48;
  v43 = v49;
  (*(v48 + 16))(v41, v35, v49);
  v36(v67, 0);
  sub_1C04F5640();
  sub_1C04F5C90();
  sub_1C04F5630();
  v44 = sub_1C04F5620();
  sub_1C04F5C80();
  v44(v67, 0);
  (*(v57 + 16))(v56, v60, v58);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56B0();
  sub_1C04F5680();
  v45 = v53;
  v46 = v55;
  (*(v53 + 16))(v51, v24, v55);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5670();
  sub_1C04F56D0();
  sub_1C04F5660();
  (*(v61 + 104))(v59, *MEMORY[0x1E69BCBB0], v62);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56C0();
  (*(v64 + 16))(v63, v66, v65);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5690();
  (*(v45 + 8))(v24, v46);
  return (*(v42 + 8))(v35, v43);
}

uint64_t PegasusProxyForSiriPersonalization.deinit()
{
  v0 = BasePegasusProxy.deinit();

  return v0;
}

uint64_t PegasusProxyForSiriPersonalization.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C04ECA80()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0F708);
  __swift_project_value_buffer(v0, qword_1EBE0F708);
  return sub_1C04F63F0();
}

uint64_t static ClientName.extractClientNameFromUserAgent(_:allowAbbreviation:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA38, &qword_1C04FB588);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA40, &qword_1C04FB590);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA48, &qword_1C04FB598);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  if (!a2)
  {
    return a1;
  }

  v45 = v8;
  v48 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA50, &qword_1C04FB5A0);
  sub_1C04F60F0();
  v46 = a1;
  v47 = v22;
  v23 = v17;
  v49 = v18;
  sub_1C04F6100();
  sub_1C04ED0B4(v17, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) != 1)
  {
    v32 = v45;
    (*(v45 + 32))(v11, v14, v6);
    sub_1C04F6110();

    v33 = MEMORY[0x1C68DC060](v50[4], v50[5], v50[6], v50[7]);
    v35 = v34;

    v36 = static ClientName.extractClientNameFromString(_:)(v33, v35);
    v38 = v37;

    if (v38)
    {
      v26 = v36;
    }

    else
    {
      v26 = 0x64636573726170;
    }

    (*(v32 + 8))(v11, v6);
LABEL_20:
    sub_1C04ED124(v23);
    (*(v48 + 8))(v47, v49);
    return v26;
  }

  sub_1C04ED124(v14);
  if (a3)
  {
    v24 = static ClientName.extractClientNameFromString(_:)(v46, a2);
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0x64636573726170;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    if (qword_1EBE0CA70 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EBE0CA70);
    }

    v28 = sub_1C04F6400();
    __swift_project_value_buffer(v28, qword_1EBE0F708);

    v29 = sub_1C04F63E0();
    v30 = sub_1C04F6A40();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1C047D76C(v46, a2, v50);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1C047D76C(v26, v27, v50);
      _os_log_impl(&dword_1C0479000, v29, v30, "Allows matching abbreviated user agent %s. ClientName: %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10_0();
    }

    goto LABEL_20;
  }

  if (qword_1EBE0CA70 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1EBE0CA70);
  }

  v39 = sub_1C04F6400();
  __swift_project_value_buffer(v39, qword_1EBE0F708);

  v40 = sub_1C04F63E0();
  v41 = sub_1C04F6A20();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1C047D76C(v46, a2, v50);
    _os_log_impl(&dword_1C0479000, v40, v41, "Couldn't find a match for regex in userAgent: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  sub_1C04ED124(v17);
  (*(v48 + 8))(v47, v49);
  return 0;
}

uint64_t sub_1C04ED0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA40, &qword_1C04FB590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04ED124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA40, &qword_1C04FB590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ClientName.extractClientNameFromString(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C04F67A0();
    v3 = &unk_1F3F86AE0;
    v4 = 15;
    sub_1C04D2E54();
    do
    {
      a1 = *(v3 - 1);

      if (sub_1C04F6BA0())
      {

        return a1;
      }

      v3 += 2;
      --v4;
    }

    while (v4);
    sub_1C04D2E54();
    v5 = sub_1C04F6BA0();

    if (v5)
    {
      return 0x64636573726170;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

id ClientName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ClientName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C04ED4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA68, qword_1C04FB6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C04F6010();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  v22 = (v14 + 32);
  v21 = *MEMORY[0x1E69BDA28];
  v20 = (v14 + 104);
  v15 = (v14 + 8);
  for (i = (a1 + 40); v13; --v13)
  {
    v17 = *i;

    sub_1C04EA008(v17, v23, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*v20)(v9, v21, v7);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_1C0482130(v6, &qword_1EBE0DA68, qword_1C04FB6C0);
      }
    }

    else
    {
      (*v22)(v9, v6, v7);
    }

    sub_1C04D5308();
    (*v15)(v12, v7);

    i += 2;
  }
}

uint64_t sub_1C04ED744()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE409C0);
  __swift_project_value_buffer(v0, qword_1EDE409C0);
  return sub_1C04F63F0();
}

void *sub_1C04ED7C8()
{
  type metadata accessor for PegasusProxyForEncryptedVisualSearch();
  swift_allocObject();
  result = PegasusProxyForEncryptedVisualSearch.init()();
  qword_1EDE41AB8 = result;
  return result;
}

uint64_t static PegasusProxyForEncryptedVisualSearch.shared.getter()
{
  if (qword_1EDE41AB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04ED89C()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE420F0 = v9;
  unk_1EDE420F8 = v11;
  return result;
}

void *PegasusProxyForEncryptedVisualSearch.init()()
{
  if (qword_1EDE420E8 != -1)
  {
    OUTLINED_FUNCTION_8_9(&qword_1EDE420E8);
  }

  v0 = qword_1EDE420F0;
  v1 = unk_1EDE420F8;

  v2 = sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
  v3 = (*(*v2 + 536))();
  v5 = v4;
  swift_retain_n();
  MEMORY[0x1C68DC0D0](v3, v5);

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_14();
  sub_1C049FB48(0xD000000000000016, 0x80000001C04FE790, v6, v7, v8);
  sub_1C04B7390();

  return v2;
}

void *sub_1C04EDB9C(void *a1)
{
  if (qword_1EDE420E8 != -1)
  {
    OUTLINED_FUNCTION_8_9(&qword_1EDE420E8);
  }

  v2 = qword_1EDE420F0;
  v3 = unk_1EDE420F8;
  v4 = a1;

  v5 = sub_1C04B8AAC(v2, v3, 0, 0, 0xF000000000000000, a1);
  v6 = (*(*v5 + 536))();
  v8 = v7;
  swift_retain_n();
  MEMORY[0x1C68DC0D0](v6, v8);

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_14();
  sub_1C049FB48(0xD000000000000016, 0x80000001C04FE790, v9, v10, v11);
  sub_1C04B7390();

  return v5;
}

void sub_1C04EDCF8()
{
  qword_1EDE40A18 = 0xD00000000000003BLL;
  unk_1EDE40A20 = 0x80000001C04FE830;
  qword_1EDE40A28 = 0xD000000000000015;
  unk_1EDE40A30 = 0x80000001C04FE8B0;
  qword_1EDE40A38 = 0xD000000000000018;
  unk_1EDE40A40 = 0x80000001C04FE8D0;
}

uint64_t sub_1C04EDD50()
{
  OUTLINED_FUNCTION_144();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_1C04F60D0();
  OUTLINED_FUNCTION_27_2(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[21] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C04EDE1C()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_4();
  (*(v1 + 544))();
  OUTLINED_FUNCTION_21_6();
  v3 = *(v2 + 568);

  v3(v4);
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v0[22] = OUTLINED_FUNCTION_4_14();
  if (qword_1EDE409B8 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_1EDE409B8);
  }

  v5 = sub_1C04F6400();
  v0[23] = __swift_project_value_buffer(v5, qword_1EDE409C0);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C04EDF84;
  v7 = OUTLINED_FUNCTION_2_21();

  return sub_1C04B832C(v7, v8, v9, v10);
}

uint64_t sub_1C04EDF84()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04EE080()
{
  OUTLINED_FUNCTION_172();
  *(v0 + 208) = sub_1C047ACAC();
  if (qword_1EDE40A10 != -1)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_23_2(&qword_1EDE40A18);
  OUTLINED_FUNCTION_16_4(v1);
  v2 = OUTLINED_FUNCTION_21_4();
  *(v0 + 224) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_11(v2);

  return v4(v3);
}

uint64_t sub_1C04EE164()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 232) = v0;

  sub_1C0482130(v3 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04EE2B8()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_29_3();
  *(v0 + qword_1EDE44718) = 2;
  sub_1C0483574();

  v1 = OUTLINED_FUNCTION_28_2();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA58, &unk_1C04FB5E0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04EE37C()
{
  OUTLINED_FUNCTION_172();
  v1 = *(v0 + 200);
  *(v0 + 104) = v1;
  v2 = (v0 + 104);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 120);
  if (v4)
  {

    v8 = *(v0 + 240);
    *(v6 + qword_1EDE44718) = 45;
    sub_1C0483574();

    *v7 = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA58, &unk_1C04FB5E0);
    OUTLINED_FUNCTION_18_4(v9);
  }

  else
  {

    *(v6 + qword_1EDE44718) = 46;
    sub_1C0483574();

    *v7 = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA58, &unk_1C04FB5E0);
    OUTLINED_FUNCTION_18_4(v10);
  }

  OUTLINED_FUNCTION_150();

  return v11();
}

uint64_t sub_1C04EE4CC()
{
  v17 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  *(*(v0 + 176) + qword_1EDE44718) = 26;
  sub_1C0483574();
  v4 = v2;
  v5 = sub_1C04F63E0();
  v6 = sub_1C04F6A20();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_31_4();
    v7 = OUTLINED_FUNCTION_25_6();
    v16 = v7;
    OUTLINED_FUNCTION_30_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_17_4(&dword_1C0479000, v11, v12, "rpc error: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_5();
  }

  else
  {
    v13 = *(v0 + 232);
  }

  **(v0 + 120) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA58, &unk_1C04FB5E0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_150();

  return v14();
}

void sub_1C04EE684()
{
  qword_1EDE409E0 = 0xD00000000000003BLL;
  *algn_1EDE409E8 = 0x80000001C04FE830;
  qword_1EDE409F0 = 0xD00000000000001BLL;
  unk_1EDE409F8 = 0x80000001C04FE870;
  qword_1EDE40A00 = 0xD00000000000001ELL;
  unk_1EDE40A08 = 0x80000001C04FE890;
}

uint64_t sub_1C04EE6DC()
{
  OUTLINED_FUNCTION_144();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_1C04F5FE0();
  OUTLINED_FUNCTION_27_2(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[21] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C04EE7A8()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_4();
  (*(v1 + 552))();
  OUTLINED_FUNCTION_21_6();
  v3 = *(v2 + 568);

  v3(v4);
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v0[22] = OUTLINED_FUNCTION_4_14();
  if (qword_1EDE409B8 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_1EDE409B8);
  }

  v5 = sub_1C04F6400();
  v0[23] = __swift_project_value_buffer(v5, qword_1EDE409C0);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C04EE910;
  v7 = OUTLINED_FUNCTION_2_21();

  return sub_1C04B832C(v7, v8, v9, v10);
}

uint64_t sub_1C04EE910()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04EEA0C()
{
  OUTLINED_FUNCTION_172();
  *(v0 + 208) = sub_1C047ACAC();
  if (qword_1EDE409D8 != -1)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_23_2(&qword_1EDE409E0);
  OUTLINED_FUNCTION_16_4(v1);
  v2 = OUTLINED_FUNCTION_21_4();
  *(v0 + 224) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_11(v2);

  return v4(v3);
}

uint64_t sub_1C04EEAF0()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 232) = v0;

  sub_1C0482130(v3 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04EEC44()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_29_3();
  *(v0 + qword_1EDE44718) = 2;
  sub_1C0483574();

  v1 = OUTLINED_FUNCTION_28_2();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA60, &unk_1C04FB5F8);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04EED08()
{
  OUTLINED_FUNCTION_172();
  v1 = *(v0 + 200);
  *(v0 + 104) = v1;
  v2 = (v0 + 104);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 120);
  if (v4)
  {

    v8 = *(v0 + 240);
    *(v6 + qword_1EDE44718) = 45;
    sub_1C0483574();

    *v7 = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA60, &unk_1C04FB5F8);
    OUTLINED_FUNCTION_18_4(v9);
  }

  else
  {

    *(v6 + qword_1EDE44718) = 46;
    sub_1C0483574();

    *v7 = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA60, &unk_1C04FB5F8);
    OUTLINED_FUNCTION_18_4(v10);
  }

  OUTLINED_FUNCTION_150();

  return v11();
}

uint64_t sub_1C04EEE58()
{
  v17 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  *(*(v0 + 176) + qword_1EDE44718) = 26;
  sub_1C0483574();
  v4 = v2;
  v5 = sub_1C04F63E0();
  v6 = sub_1C04F6A20();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_31_4();
    v7 = OUTLINED_FUNCTION_25_6();
    v16 = v7;
    OUTLINED_FUNCTION_30_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_17_4(&dword_1C0479000, v11, v12, "rpc error: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_5();
  }

  else
  {
    v13 = *(v0 + 232);
  }

  **(v0 + 120) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0DA60, &unk_1C04FB5F8);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_150();

  return v14();
}

uint64_t sub_1C04EF014()
{
  v10 = MEMORY[0x1E69E7CD0];
  sub_1C04F6010();
  sub_1C04EFFB0(&qword_1EDE414D8, MEMORY[0x1E69BDA30]);
  sub_1C04EFFB0(&qword_1EDE414C0, MEMORY[0x1E69BDA50]);
  v0 = sub_1C04F6310();
  v1 = sub_1C04B7294();
  if (!v1)
  {

    v8 = 0u;
    v9 = 0u;
LABEL_10:
    sub_1C0482130(&v8, &qword_1EBE0CB20, &unk_1C04F8B20);
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1C04F6740();
  v4 = [v2 valueForKey:v3 shouldConsiderOverrides:1];

  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF20, &qword_1C04F9210);
  if (swift_dynamicCast())
  {

    sub_1C04ED4EC(v6, &v10, v0);

    return v10;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C04EF200()
{
  OUTLINED_FUNCTION_144();
  *(v1 + 32) = v0;
  sub_1C04F6200();
  *(v1 + 40) = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C04EF280()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_4();
  (*(v1 + 560))();
  OUTLINED_FUNCTION_21_6();
  v3 = *(v2 + 568);

  v3(v4);
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v0[6] = OUTLINED_FUNCTION_4_14();
  if (qword_1EDE409B8 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_1EDE409B8);
  }

  v5 = sub_1C04F6400();
  v0[7] = __swift_project_value_buffer(v5, qword_1EDE409C0);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1C04EF3E4;
  v7 = OUTLINED_FUNCTION_2_21();

  return sub_1C04B832C(v7, v8, v9, v10);
}

uint64_t sub_1C04EF3E4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04EF4E0()
{
  OUTLINED_FUNCTION_172();
  v1 = sub_1C04EF014();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C04EF564()
{
  v30 = v0;
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 72);
  if (v3)
  {

    v5 = *(v0 + 80);
    v6 = sub_1C04F63E0();
    v7 = sub_1C04F6A20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136315138;
      *(v0 + 81) = v5;
      v10 = sub_1C04F6790();
      v12 = sub_1C047D76C(v10, v11, v29);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1C0479000, v6, v7, "error when ensuring enabled state: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_10_0();
    }

    *(*(v0 + 48) + qword_1EDE44718) = 45;
    sub_1C0483574();
    sub_1C049FC7C();
    swift_allocError();
    *v13 = v5;
    swift_willThrow();
  }

  else
  {

    v14 = v4;
    v15 = sub_1C04F63E0();
    v16 = sub_1C04F6A20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 72);
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_25_6();
      v29[0] = v18;
      *v4 = 136315138;
      *(v0 + 24) = v17;
      v19 = v17;
      v20 = sub_1C04F6790();
      v22 = sub_1C047D76C(v20, v21, v29);

      *(v4 + 1) = v22;
      OUTLINED_FUNCTION_17_4(&dword_1C0479000, v23, v24, "error when ensuring enabled state: %s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_6_5();
    }

    v25 = *(v0 + 72);
    *(*(v0 + 48) + qword_1EDE44718) = 46;
    sub_1C0483574();
    sub_1C049FC7C();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_150();

  return v27();
}

uint64_t PegasusProxyForEncryptedVisualSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04EF89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C048A184;

  return sub_1C04EDD50();
}

uint64_t sub_1C04EF948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04A1810;

  return sub_1C04EE6DC();
}

uint64_t dispatch thunk of EncryptedVisualSearchResponseFetcher.fetchResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_137(v5);

  return v8(v7);
}

uint64_t dispatch thunk of EncryptedVisualSearchResponseFetcher.fetchConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_137(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PegasusProxyForEncryptedVisualSearch.fetchResponse(for:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_4(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PegasusProxyForEncryptedVisualSearch.fetchConfig(for:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_4(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PegasusProxyForEncryptedVisualSearch.getSupportedUsecases()()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_4();
  v4 = (*(v1 + 624) + **(v1 + 624));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C04C3544;

  return v4();
}

uint64_t sub_1C04EFFB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C04F6010();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_1C0482EFC(v1, v2, v0, 0, 1);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_16_4(uint64_t a1)
{
  *(v1 + 216) = a1;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void OUTLINED_FUNCTION_17_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_30_1(float a1)
{
  *v3 = a1;
  *(v2 + 112) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_slowAlloc();
}

uint64_t sub_1C04F01BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C04F0244(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04F031C(char a1)
{
  v4[3] = &unk_1F3F85D90;
  v4[4] = sub_1C04B6FD4();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1C04F60E0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v2)
  {
    return qword_1C04FB8D8[a1];
  }

  else
  {
    return 0;
  }
}

const char *sub_1C04F039C(char a1)
{
  result = "corelocation_revgeo";
  switch(a1)
  {
    case 1:
      result = "feedback_database";
      break;
    case 2:
      result = "ResponseFramework";
      break;
    case 3:
      result = "LookupSearchGRPC";
      break;
    case 4:
      result = "LookupSearchEngagementGRPC";
      break;
    case 5:
      result = "SpotlightEngagementGRPC";
      break;
    case 6:
      result = "SafariSearchGRPC";
      break;
    case 7:
      result = "SafariSearchEngagementGRPC";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C04F0440(uint64_t a1)
{
  result = sub_1C04B6FD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04F046C()
{
  result = qword_1EBE0DA70;
  if (!qword_1EBE0DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0DA70);
  }

  return result;
}

_BYTE *sub_1C04F04F4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C04F05A0()
{
  result = qword_1EBE0DA78;
  if (!qword_1EBE0DA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE0DA80, qword_1C04FB818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0DA78);
  }

  return result;
}

unint64_t sub_1C04F0618()
{
  result = qword_1EBE0DA88;
  if (!qword_1EBE0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0DA88);
  }

  return result;
}

void *PegasusProxyForDeviceExpertSearch.init()()
{
  if (qword_1EBE0CA80 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_1EBE0CA80);
  }

  v0 = qword_1EBE0DA90;
  v1 = *algn_1EBE0DA98;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04F073C()
{
  OUTLINED_FUNCTION_144();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v1[33] = *v0;
  v4 = sub_1C04F5BC0();
  v1[34] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[35] = v5;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v6 = sub_1C04F5F70();
  v1[38] = v6;
  OUTLINED_FUNCTION_66(v6);
  v1[39] = v7;
  v1[40] = OUTLINED_FUNCTION_287();
  sub_1C04F54F0();
  v1[41] = OUTLINED_FUNCTION_287();
  v8 = sub_1C04F5F00();
  v1[42] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[43] = v9;
  v1[44] = OUTLINED_FUNCTION_287();
  v10 = sub_1C04F6400();
  v1[45] = v10;
  OUTLINED_FUNCTION_66(v10);
  v1[46] = v11;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v12 = sub_1C04F6130();
  v1[50] = v12;
  OUTLINED_FUNCTION_66(v12);
  v1[51] = v13;
  v1[52] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[53] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v14);
}

uint64_t sub_1C04F09BC()
{
  if (qword_1EBE0CA80 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_1EBE0CA80);
  }

  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[32];
  v6 = qword_1EBE0DA90;
  v7 = *algn_1EBE0DA98;

  sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C049FB48(v6, v7, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  v9 = *(v5 + 16);
  (*(v4 + 104))(v2, *MEMORY[0x1E69BDAE8], v3);

  sub_1C04F6120();
  v10 = OUTLINED_FUNCTION_11();
  v11(v10);
  sub_1C04F6210();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v0[54] = sub_1C0482EFC(v9, 39, v1, 0, 1);
  OUTLINED_FUNCTION_7_15();
  sub_1C04F63F0();
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_1C04F0BD8;
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v13, v14, v15, v16);
}

uint64_t sub_1C04F0BD8()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;
  *v4 = *v1;
  v3[56] = v0;

  v5 = v2[49];
  v6 = v2[46];
  v7 = v2[45];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v0)
  {
    v3[57] = v9;
    v3[58] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1C04F0D4C()
{
  OUTLINED_FUNCTION_144();
  (*(v0[43] + 16))(v0[44], v0[31], v0[42]);
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0[59] = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[60] = v1;
  *v1 = v2;
  v1[1] = sub_1C04F0E5C;

  return sub_1C04D0E9C();
}

uint64_t sub_1C04F0E5C()
{
  *(*v1 + 488) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C04F0F8C()
{
  sub_1C04F5EF0();
  *(v0 + 496) = sub_1C047ACAC();
  if (qword_1EBE0CA88 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EBE0DAB0;
  v1 = *&qword_1EBE0DAC0;
  *(v0 + 16) = xmmword_1EBE0DAA0;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = sub_1C04B7354();
  *(v0 + 504) = v3;
  *(v0 + 80) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 96) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 512) = v4;
  *v4 = v5;
  v4[1] = sub_1C04F10DC;
  v6 = *(v0 + 352);
  v7 = *(v0 + 320);

  return sub_1C0489FDC(v7, v0 + 16, v6, v3, v0 + 64, 1);
}

uint64_t sub_1C04F10DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 520) = v0;

  sub_1C0482130(v2 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04F1244()
{
  v1 = v0[61];
  OUTLINED_FUNCTION_7_15();
  sub_1C04F63F0();
  v2 = v1;
  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[61];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C0479000, v3, v4, "unable to set context %@", v6, 0xCu);
    sub_1C0482130(v7, &qword_1EBE0CE38, &unk_1C04FB970);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v10 = v0[57];
  v11 = v0[54];
  v17 = v0[44];
  v13 = v0[42];
  v12 = v0[43];

  v14 = OUTLINED_FUNCTION_11();
  v10(v14);
  *(v11 + qword_1EDE44718) = 52;
  sub_1C0483574();
  swift_willThrow();

  (*(v12 + 8))(v17, v13);
  OUTLINED_FUNCTION_0_21();

  OUTLINED_FUNCTION_150();

  return v15();
}

uint64_t sub_1C04F1468()
{
  v1 = v0[54];
  v2 = v0[37];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  (*(v0[39] + 32))(v0[30], v0[40], v0[38]);
  sub_1C04F5F60();
  (*(v4 + 104))(v3, *MEMORY[0x1E69BCEC8], v5);
  sub_1C04F20C0();
  OUTLINED_FUNCTION_11();
  sub_1C04F68E0();
  OUTLINED_FUNCTION_11();
  sub_1C04F68E0();
  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  if (v0[28] == v0[29])
  {
    v7 = v0[43];
    v8 = v0[44];
    v9 = v0[42];
    *(v1 + qword_1EDE44718) = 2;
    sub_1C0483574();

    (*(v7 + 8))(v8, v9);
  }

  else
  {
    v11 = v0[43];
    v18 = v0[44];
    v12 = v0[42];
    v14 = v0[38];
    v13 = v0[39];
    v15 = v0[30];
    *(v1 + qword_1EDE44718) = 19;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v16 = 6;
    swift_willThrow();

    (*(v13 + 8))(v15, v14);
    (*(v11 + 8))(v18, v12);
    OUTLINED_FUNCTION_0_21();
  }

  OUTLINED_FUNCTION_150();

  return v10();
}

uint64_t sub_1C04F1738()
{
  v1 = *(v0 + 448);
  *(v0 + 184) = v1;
  v2 = (v0 + 184);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 448);
  v6 = *(v0 + 432);
  if (v4)
  {

    v7 = *(v0 + 129);
    *(v6 + qword_1EDE44718) = 45;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v8 = v7;
    swift_willThrow();
  }

  else
  {

    *(v6 + qword_1EDE44718) = 46;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_0_21();

  OUTLINED_FUNCTION_150();

  return v10();
}

uint64_t sub_1C04F1904()
{
  v60 = v0;
  v1 = *(v0 + 520);
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 520);
  if (v3)
  {
    OUTLINED_FUNCTION_9_8();
    v5 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v5, v6, v7, v8, v0 + 192);
    v9 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v9, v10, v11, v12);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_22_3(v13, 7);

    v14 = OUTLINED_FUNCTION_11();
    v15(v14);
    v16 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v4;
    v17 = v4;
    v18 = swift_dynamicCast();
    v19 = *(v0 + 520);
    if (v18)
    {
      OUTLINED_FUNCTION_9_8();
      v20 = *(v0 + 160);
      v21 = *(v0 + 168);
      v22 = *(v0 + 176);
      sub_1C04B93C4(v20, v21, v22, v0 + 192);
      sub_1C049FC7C();
      OUTLINED_FUNCTION_142();
      swift_allocError();
      OUTLINED_FUNCTION_22_3(v23, 5);
      sub_1C0482070(v20, v21, v22);

      v24 = OUTLINED_FUNCTION_11();
      v25(v24);
      v16 = *(v0 + 200);
    }

    else
    {

      *(v0 + 208) = v19;
      v26 = v19;
      v27 = swift_dynamicCast();
      v28 = *(v0 + 520);
      v29 = *(v0 + 432);
      if (!v27)
      {

        *(v29 + qword_1EDE44718) = 51;
        sub_1C0483574();
        sub_1C04F63F0();
        v39 = v28;
        v40 = sub_1C04F63E0();
        v41 = sub_1C04F6A20();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = *(v0 + 520);
          v58 = *(v0 + 456);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v59 = v44;
          *v43 = 136315138;
          *(v0 + 216) = v42;
          v45 = v42;
          v46 = sub_1C04F6790();
          v48 = sub_1C047D76C(v46, v47, &v59);

          *(v43 + 4) = v48;
          _os_log_impl(&dword_1C0479000, v40, v41, "search failure: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();

          v49 = OUTLINED_FUNCTION_11();
          v58(v49);
        }

        else
        {
          v50 = *(v0 + 456);
          v51 = *(v0 + 376);
          v52 = *(v0 + 360);

          v50(v51, v52);
        }

        v53 = *(v0 + 520);
        v54 = *(v0 + 344);
        v55 = *(v0 + 352);
        v56 = *(v0 + 336);
        sub_1C049FC7C();
        OUTLINED_FUNCTION_142();
        swift_allocError();
        OUTLINED_FUNCTION_22_3(v57, 1);

        (*(v54 + 8))(v55, v56);
        goto LABEL_8;
      }

      v31 = *(v0 + 344);
      v30 = *(v0 + 352);
      v32 = *(v0 + 336);

      v33 = *(v0 + 130);
      sub_1C049FC7C();
      OUTLINED_FUNCTION_142();
      v34 = swift_allocError();
      *v35 = v33;
      sub_1C04B9574(v34, v29);

      OUTLINED_FUNCTION_142();
      swift_allocError();
      *v36 = v33;
      swift_willThrow();

      (*(v31 + 8))(v30, v32);
      v16 = *(v0 + 208);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_0_21();

  OUTLINED_FUNCTION_150();

  return v37();
}

uint64_t PegasusProxyForDeviceExpertSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04F1E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04D0DB8;

  return sub_1C04F073C();
}

uint64_t sub_1C04F1EDC()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EBE0DA90 = v9;
  *algn_1EBE0DA98 = v11;
  return result;
}

void sub_1C04F2064()
{
  *&xmmword_1EBE0DAA0 = 0xD00000000000002FLL;
  *(&xmmword_1EBE0DAA0 + 1) = 0x80000001C04FEA70;
  *&xmmword_1EBE0DAB0 = 0x6372616553616E51;
  *(&xmmword_1EBE0DAB0 + 1) = 0xE900000000000068;
  qword_1EBE0DAC0 = 0xD000000000000019;
  unk_1EBE0DAC8 = 0x80000001C04FEAA0;
}

unint64_t sub_1C04F20C0()
{
  result = qword_1EBE0DAD0;
  if (!qword_1EBE0DAD0)
  {
    sub_1C04F5BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0DAD0);
  }

  return result;
}

uint64_t dispatch thunk of DeviceExpertClientResponseFetcher.deviceExpertResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 32) + **(a4 + 32));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C04D300C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PegasusProxyForDeviceExpertSearch.deviceExpertResponse(for:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 552) + **(*v2 + 552));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C04D0DB8;

  return v9(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C04F2444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[18] = a6;
  v7[19] = v6;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v7[13] = a1;
  v7[20] = *v6;
  return MEMORY[0x1EEE6DFA0](sub_1C04F2498);
}

uint64_t sub_1C04F2498()
{
  OUTLINED_FUNCTION_144();
  v0[21] = sub_1C047ACAC();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_146();
  v0[22] = v1;
  *v1 = v2;
  v1[1] = sub_1C04F2544;
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  return v9(v6, v5, v7, v3, v4, 0);
}

uint64_t sub_1C04F2544()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_9();

    return MEMORY[0x1EEE6DFA0](v5);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1C04F268C()
{
  v52 = v0;
  v1 = *(v0 + 184);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = *(v0 + 120);

    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = OUTLINED_FUNCTION_136();
    sub_1C04B915C(v8, v9, v6, v7, v5);
    v10 = OUTLINED_FUNCTION_136();
    sub_1C0482080(v10, v11, v6, v7);
    v12 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v12);
    OUTLINED_FUNCTION_33_0(v13, 7);
    v14 = *(v0 + 72);
  }

  else
  {

    *(v0 + 80) = v4;
    v15 = v4;
    v16 = swift_dynamicCast();
    v17 = *(v0 + 184);
    if (v16)
    {
      v18 = *(v0 + 120);

      v19 = *(v0 + 64);
      v20 = OUTLINED_FUNCTION_11();
      sub_1C04B93C4(v20, v21, v19, v18);
      v22 = sub_1C049FC7C();
      OUTLINED_FUNCTION_45(&type metadata for ProxyError, v22);
      OUTLINED_FUNCTION_33_0(v23, 5);
      v24 = OUTLINED_FUNCTION_11();
      sub_1C0482070(v24, v25, v19);
      v14 = *(v0 + 80);
    }

    else
    {

      *(v0 + 88) = v17;
      v26 = v17;
      if (swift_dynamicCast())
      {
        v27 = *(v0 + 120);

        v28 = *(v0 + 41);
        v29 = sub_1C049FC7C();
        v30 = OUTLINED_FUNCTION_45(&type metadata for ProxyError, v29);
        *v31 = v28;
        sub_1C04B9574(v30, v27);

        OUTLINED_FUNCTION_45(&type metadata for ProxyError, v29);
        *v32 = v28;
        swift_willThrow();
        v14 = *(v0 + 88);
      }

      else
      {
        v33 = *(v0 + 120);

        *(v33 + qword_1EDE44718) = 51;
        sub_1C0483574();
        if (qword_1EDE446B8 != -1)
        {
          swift_once();
        }

        v34 = *(v0 + 184);
        v35 = sub_1C04F6400();
        __swift_project_value_buffer(v35, qword_1EDE447A0);
        v36 = v34;
        v37 = sub_1C04F63E0();
        v38 = sub_1C04F6A20();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 184);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v51 = v41;
          *v40 = 136315138;
          *(v0 + 96) = v39;
          v42 = v39;
          v43 = sub_1C04F6790();
          v45 = sub_1C047D76C(v43, v44, &v51);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_1C0479000, v37, v38, "search failure: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();
        }

        v46 = *(v0 + 184);
        v47 = sub_1C049FC7C();
        OUTLINED_FUNCTION_45(&type metadata for ProxyError, v47);
        OUTLINED_FUNCTION_33_0(v48, 1);
        v14 = v46;
      }
    }
  }

  OUTLINED_FUNCTION_150();

  return v49();
}

uint64_t sub_1C04F2A5C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40998);
  __swift_project_value_buffer(v0, qword_1EDE40998);
  return sub_1C04F63F0();
}

double sub_1C04F2ADC()
{
  *&xmmword_1EDE41410 = 0xD000000000000028;
  *(&xmmword_1EDE41410 + 1) = 0x80000001C04FEB10;
  strcpy(&xmmword_1EDE41420, "SafariSearch");
  BYTE13(xmmword_1EDE41420) = 0;
  HIWORD(xmmword_1EDE41420) = -5120;
  result = 9.2818358e242;
  xmmword_1EDE41430 = xmmword_1C04FBA30;
  return result;
}

void *sub_1C04F2B30()
{
  type metadata accessor for PegasusProxyForSafariSearch();
  swift_allocObject();
  if (qword_1EDE413E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE413F0;
  v1 = unk_1EDE413F8;

  result = sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
  qword_1EBE0DAD8 = result;
  return result;
}

void *PegasusProxyForSafariSearch.__allocating_init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  swift_allocObject();
  if (qword_1EDE413E8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_1EDE413E8);
  }

  v6 = OUTLINED_FUNCTION_11();
  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

uint64_t static PegasusProxyForSafariSearch.shared.getter()
{
  if (qword_1EBE0CA90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04F2CCC()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE413F0 = v9;
  unk_1EDE413F8 = v11;
  return result;
}

void *PegasusProxyForSafariSearch.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDE413E8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_1EDE413E8);
  }

  v6 = OUTLINED_FUNCTION_11();

  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

uint64_t sub_1C04F2EEC()
{
  OUTLINED_FUNCTION_144();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v0[6] = OUTLINED_FUNCTION_287();
  v2 = sub_1C04F54F0();
  v0[7] = v2;
  OUTLINED_FUNCTION_66(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_287();

  return MEMORY[0x1EEE6DFA0](sub_1C04F2FC8);
}

uint64_t sub_1C04F2FC8()
{
  OUTLINED_FUNCTION_144();
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 80) = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 88) = v1;
  *v1 = v2;
  v1[1] = sub_1C04F30BC;

  return sub_1C04D0E9C();
}

uint64_t sub_1C04F30BC()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_9_9();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04F31DC()
{
  v1 = v0[6];
  v2 = v0[5];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0[7]);
  sub_1C0482788(30, v1, v2);
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  sub_1C0482130(v0[6], &qword_1EBE0CC70, &qword_1C04F8CB0);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C04F32E0()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04F3348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0DAE0, &qword_1C04FBA50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C04F5D00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  sub_1C04F5870();

  sub_1C04F5850();

  sub_1C04F5840();
  sub_1C04F3504(a5, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C04F5CF0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_1C0482130(v8, &unk_1EBE0DAE0, &qword_1C04FBA50);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v8, v9);
  }

  return sub_1C04F5860();
}

uint64_t sub_1C04F3504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0DAE0, &qword_1C04FBA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04F3574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C04F5530();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1C04F5520();

  sub_1C04F5510();
  sub_1C04F3670(v12, a3, a4);
  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_1C04F3670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C04F5880();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F5530();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_1C04F58C0();
  (*(v19 + 16))(v23, a1, v17);
  sub_1C04F5890();
  (*(v12 + 16))(v16, a2, v10);
  sub_1C04F58A0();
  (*(v5 + 16))(v9, a3, v3);
  return sub_1C04F58B0();
}

uint64_t sub_1C04F3860(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C04F3884);
}

uint64_t sub_1C04F3884()
{
  OUTLINED_FUNCTION_144();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1C04F392C;

  return sub_1C04F3A60();
}

uint64_t sub_1C04F392C()
{
  OUTLINED_FUNCTION_144();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 88) = v0;

  sub_1C0482130(v2 + 16, &qword_1EBE0CE40, &qword_1C04F8900);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C04D3A44);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v6();
  }
}

uint64_t sub_1C04F3A60()
{
  OUTLINED_FUNCTION_144();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = sub_1C04F5BC0();
  v1[25] = v5;
  OUTLINED_FUNCTION_66(v5);
  v1[26] = v6;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v7 = sub_1C04F58F0();
  v1[29] = v7;
  OUTLINED_FUNCTION_66(v7);
  v1[30] = v8;
  v1[31] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[32] = OUTLINED_FUNCTION_287();

  return MEMORY[0x1EEE6DFA0](sub_1C04F3B94);
}

uint64_t sub_1C04F3B94()
{
  v34 = v0;
  if (qword_1EDE413E8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_1EDE413E8);
  }

  v1 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v1;
  v2 = OUTLINED_FUNCTION_136();
  sub_1C049FB48(v2, v3, v4, 0xEA0000000000746ELL, v5);
  sub_1C04B7390();
  v6 = sub_1C04B7294();
  if (v6)
  {
    v7 = v6;
    *(v0 + 88) = &unk_1F3F85D90;
    v8 = sub_1C04B6FD4();
    *(v0 + 96) = v8;
    *(v0 + 64) = 6;
    v9 = sub_1C04F60E0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    if (v9 & 1) != 0 && (v10 = sub_1C04F6740(), v11 = [v7 configBoolForKey_], v10, !v11) && ((v24 = sub_1C04F6740(), v25 = objc_msgSend(v7, sel_configBoolForKey_, v24), v24, (v25) || (*(v0 + 128) = &unk_1F3F85D90, *(v0 + 136) = v8, *(v0 + 104) = 7, v26 = sub_1C04F60E0(), __swift_destroy_boxed_opaque_existential_1((v0 + 104)), (v26)))
    {
      sub_1C047ACAC();
      swift_beginAccess();

      v27 = sub_1C04D30CC();
      v29 = v28;
      v32 = v30;
      sub_1C04D4C24(&v33, 0x655F697261666173, 0xEC00000063707267);

      sub_1C04D31F4(v27, v29, v32);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = *(v0 + 256);
  v13 = *(*(v0 + 192) + 16);

  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v14 = sub_1C0482EFC(v13, 30, v12, 0, 1);
  *(v0 + 264) = v14;
  if (qword_1EDE41408 != -1)
  {
    swift_once();
  }

  v16 = xmmword_1EDE41420;
  v15 = xmmword_1EDE41430;
  *(v0 + 16) = xmmword_1EDE41410;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v17 = sub_1C04B7354();
  *(v0 + 272) = v17;
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_146();
  *(v0 + 280) = v18;
  *v18 = v19;
  v18[1] = sub_1C04F3F18;
  v20 = *(v0 + 184);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);

  return v31(v21, v22, v14, v0 + 16, v17, v20);
}

uint64_t sub_1C04F3F18()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v0;

  OUTLINED_FUNCTION_9_9();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04F4038()
{
  v37 = v0;
  if (qword_1EDE40990 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[21];
  v5 = sub_1C04F6400();
  __swift_project_value_buffer(v5, qword_1EDE40998);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_1C04F63E0();
  v7 = sub_1C04F6A40();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[29];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v12 = 136315138;
    sub_1C04F58E0();
    v13 = sub_1C04F6790();
    v15 = v14;
    v16 = *(v9 + 8);
    v16(v10, v11);
    v17 = sub_1C047D76C(v13, v15, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1C0479000, v6, v7, "received rpc response for safari search with search status: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {

    v16 = *(v9 + 8);
    v16(v10, v11);
  }

  v18 = v0[33];
  v20 = v0[27];
  v19 = v0[28];
  v22 = v0[25];
  v21 = v0[26];
  sub_1C04F58E0();
  (*(v21 + 104))(v20, *MEMORY[0x1E69BCED0], v22);
  sub_1C04F456C();
  OUTLINED_FUNCTION_136();
  v23 = sub_1C04F6730();
  v24 = *(v21 + 8);
  v25 = OUTLINED_FUNCTION_11();
  v24(v25);
  (v24)(v19, v22);
  if (v23)
  {
    v26 = v0[29];
    v27 = v0[21];
    *(v18 + qword_1EDE44718) = 19;
    sub_1C0483574();
    v28 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v28);
    OUTLINED_FUNCTION_33_0(v29, 6);

    v16(v27, v26);

    OUTLINED_FUNCTION_150();
  }

  else
  {
    *(v18 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v31 = sub_1C04F63E0();
    v32 = sub_1C04F6A40();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C0479000, v31, v32, "publishing successful rpc response for safari search", v33, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_150();
  }

  return v30();
}

uint64_t sub_1C04F4404()
{
  OUTLINED_FUNCTION_172();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t PegasusProxyForSafariSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04F44C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C04D0DB8;

  return sub_1C04F3860(a1, a2);
}

unint64_t sub_1C04F456C()
{
  result = qword_1EDE41530;
  if (!qword_1EDE41530)
  {
    sub_1C04F5BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41530);
  }

  return result;
}

uint64_t dispatch thunk of SafariSearchPegasusProxy.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 8) + **(a4 + 8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C04D0DB8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PegasusProxyForSafariSearch.getQueryContext()()
{
  OUTLINED_FUNCTION_172();
  v2 = v1;
  v7 = (*(*v0 + 544) + **(*v0 + 544));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_81(v3);
  *v4 = v5;
  v4[1] = sub_1C04D300C;

  return v7(v2);
}

uint64_t dispatch thunk of PegasusProxyForSafariSearch.createRequest(_:context:safariContext:)()
{
  return (*(*v0 + 560))();
}

{
  return (*(*v0 + 568))();
}

uint64_t dispatch thunk of PegasusProxyForSafariSearch.send(_:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 576) + **(*v2 + 576));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v6[1] = sub_1C04D300C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PegasusProxyForSafariSearch.send(_:observer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(*v3 + 584) + **(*v3 + 584));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_81(v7);
  *v8 = v9;
  v8[1] = sub_1C04D300C;

  return v11(a1, a2, a3);
}

void *PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = [objc_opt_self() ephemeralSessionConfiguration];
    [v4 setAllowsCellularAccess_];
    [v4 setWaitsForConnectivity_];
    [v4 set:1 expiredDNSBehavior:?];
    if (qword_1EDE41E20 != -1)
    {
      swift_once();
    }

    if ((byte_1EDE44D78 & 1) == 0)
    {
      v5 = sub_1C04F6750();
      sub_1C04F4DB4(v5, v6, v4, &selRef_set_tlsTrustPinningPolicyName_);
    }

    [v4 set:1 usesNWLoader:?];
    [v4 set:1 disableAPWakeOnIdleConnections:?];
    sub_1C04F4DB4(a1, v2, v4, &selRef_set_sourceApplicationBundleIdentifier_);
    v2 = [objc_opt_self() sessionWithConfiguration_];
  }

  return sub_1C04EDB9C(v2);
}

uint64_t PegasusProxyForEncryptedPQAGeo.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

void sub_1C04F4DB4(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1C04F6740();

  [a3 *a4];
}

uint64_t dispatch thunk of EncryptedPQAGeoResponseFetcher.fetchResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_137(v5);

  return v7(v6);
}

uint64_t sub_1C04F4F2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of EncryptedPQAGeoResponseFetcher.fetchConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_137(v5);

  return v7(v6);
}
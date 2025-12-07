uint64_t sub_1BAAD09B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAAD09F0(uint64_t a1)
{
  sub_1BABE6CFC();
  if (v1 <= 0x3F)
  {
    sub_1BAAD0BB0(319, qword_1ED787DA0, &type metadata for ReplicatorDevice.Screen, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BAAD0BB0(319, &qword_1ED787C98, &type metadata for ReplicatorZone, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1BAAD0BB0(319, &qword_1ED787CA0, &type metadata for ReplicatorMessageType, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ReplicatorDevice.RelationshipState(319);
          if (v5 <= 0x3F)
          {
            sub_1BABE6C8C();
            if (v6 <= 0x3F)
            {
              sub_1BAAD0BB0(319, &qword_1ED787CA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BAAD0BB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BAAD0C20(uint64_t a1)
{
  sub_1BAAD0C78();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1BAAD0C78()
{
  if (!qword_1ED787E48[0])
  {
    v0 = sub_1BABE6CFC();
    if (!v1)
    {
      atomic_store(v0, qword_1ED787E48);
    }
  }
}

void sub_1BAAD0CC0(uint64_t a1)
{
  sub_1BAAD0DE8(319, &qword_1EBC12438, &qword_1EBC13AD8, &unk_1BABF0F80);
  if (v1 <= 0x3F)
  {
    sub_1BAAD0DE8(319, &qword_1EBC12430, &qword_1EBC12DF8, &qword_1BABEAC18);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BAAD0DE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BABE799C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ReplicatorControlClient.init()()
{
  v1 = v0;
  v2 = sub_1BABE793C();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___deviceUpdates;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AD8, &unk_1BABF0F80);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___enabledStateUpdates;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8, &qword_1BABEAC18);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_subscriptions) = MEMORY[0x1E69E7CD0];
  v18 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_calloutQueue;
  v17[1] = sub_1BAAD14BC();
  sub_1BABE73AC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1BAAD1508(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BAAD1550(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0, MEMORY[0x1E69E6328]);
  sub_1BABE79FC();
  (*(v19 + 104))(v4, *MEMORY[0x1E69E8090], v20);
  *(v0 + v18) = sub_1BABE796C();
  v11 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0, &unk_1BABF0FA0);
  v12 = swift_allocObject();
  *(v1 + v11) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_deviceObservers) = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_pairedDeviceObservers) = v13;
  *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_enabledStateObservers) = v13;
  if (qword_1EBC12460 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBC12470;
  *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton) = qword_1EBC12470;
  v14;
  v21 = sub_1BAAD2158();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13B00, &unk_1BABF39D0);
  v15 = MEMORY[0x1E695BED8];
  sub_1BAAD1550(&qword_1ED787C28, &unk_1EBC13B00, &unk_1BABF39D0, MEMORY[0x1E695BED8]);
  sub_1BABE735C();

  swift_beginAccess();
  sub_1BABE72EC();
  swift_endAccess();

  v21 = sub_1BAAD1728();
  swift_allocObject();
  swift_weakInit();
  sub_1BABE735C();

  swift_beginAccess();
  sub_1BABE72EC();
  swift_endAccess();

  v21 = sub_1BAAD164C();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13B10, &unk_1BABF0FB0);
  sub_1BAAD1550(&qword_1EBC12458, &unk_1EBC13B10, &unk_1BABF0FB0, v15);
  sub_1BABE735C();

  swift_beginAccess();
  sub_1BABE72EC();
  swift_endAccess();

  return v1;
}

uint64_t sub_1BAAD1484()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1BAAD14BC()
{
  result = qword_1ED787C60;
  if (!qword_1ED787C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED787C60);
  }

  return result;
}

uint64_t sub_1BAAD1508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD1550(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAAD1598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAAD164C()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___enabledStatePublisher;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___enabledStatePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___enabledStatePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13BC0, &qword_1BABF11F8);
    sub_1BAAD1550(&unk_1EBC12448, &qword_1EBC13BC0, &qword_1BABF11F8, MEMORY[0x1E695BFB0]);
    v2 = sub_1BABE734C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BAAD173C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BAAD1780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0, &unk_1BABF1210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v7;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00, &qword_1BABEAC00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v45 - v16;
  v17 = *(a1 + 64);
  v45 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v49 = v9 + 16;
  v58 = (v9 + 32);
  v61 = (v6 + 48);
  v62 = (v6 + 56);
  v51 = v9;
  v52 = a1;
  v55 = (v9 + 8);

  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_12:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v24 << 6);
      v31 = v51;
      v30 = v52;
      v32 = v50;
      (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * v29, v8);
      v33 = *(v5 + 48);
      v34 = *(v31 + 32);
      v63 = *(*(v30 + 56) + 16 * v29);
      v27 = v60;
      v34(v60, v32, v8);
      *&v27[v33] = v63;
      v35 = *v62;
      (*v62)(v27, 0, 1, v5);

      v26 = v24;
LABEL_13:
      v36 = *v61;
      v37 = 1;
      if ((*v61)(v27, 1, v5) != 1)
      {
        v53 = *(v5 + 48);
        v54 = v35;
        *&v63 = v26;
        v38 = *v58;
        v39 = v60;
        (*v58)(v46, v60, v8);
        v40 = swift_allocObject();
        *(v40 + 16) = *&v39[v53];
        v41 = &v59[*(v5 + 48)];
        v38();
        v35 = v54;
        v26 = v63;
        v37 = 0;
        *v41 = v48;
        v41[1] = v40;
      }

      v42 = v59;
      v35(v59, v37, 1, v5);
      v43 = v42;
      v44 = v57;
      sub_1BAB23414(v43, v57, &qword_1EBC13C00, &qword_1BABEAC00);
      if (v36(v44, 1, v5) == 1)
      {
      }

      (*(v44 + *(v5 + 48)))(v56);

      result = (*v55)(v44, v8);
      v23 = v26;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v21 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    v27 = v60;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v35 = *v62;
        (*v62)(v60, 1, 1, v5);
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v45 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BAAD1CA4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_1BAAD1CF0()
{
  result = [objc_allocWithZone(type metadata accessor for Singleton()) init];
  qword_1EBC12470 = result;
  return result;
}

id sub_1BAAD1D6C()
{
  v1 = sub_1BABE793C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v16);
  v15 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___devicePublisher] = 0;
  v5 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton__devicePublisher;
  v21 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B70, &qword_1BABF11F0);
  swift_allocObject();
  *&v0[v5] = sub_1BABE733C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___pairedDevicePublisher] = 0;
  v7 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton__pairedDevicePublisher;
  v21 = v6;
  v8 = v6;
  swift_allocObject();
  *&v0[v7] = sub_1BABE733C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton____lazy_storage___enabledStatePublisher] = 0;
  v9 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton__enabledStatePublisher;
  LOBYTE(v21) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13BC0, &qword_1BABF11F8);
  swift_allocObject();
  *&v0[v9] = sub_1BABE733C();
  v10 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection;
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_serverStartupToken] = -1;
  v11 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v21 = v8;
  sub_1BAAD1508(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BAAD1550(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0, MEMORY[0x1E69E6328]);
  sub_1BABE79FC();
  (*(v18 + 104))(v17, *MEMORY[0x1E69E8098], v19);
  *&v0[v11] = sub_1BABE796C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceToken] = -1;
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_enabledStateToken] = -1;
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_devices] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_isEnabled] = 1;
  v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceFetchPending] = 0;
  *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData] = 0;
  v12 = *&v0[v10];
  *&v0[v10] = 0;

  v13 = type metadata accessor for Singleton();
  v20.receiver = v0;
  v20.super_class = v13;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1BAAD21BC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAAD2250(v10, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1BAAD2250(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = sub_1BABE737C();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BABE73BC();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v15 + 4);
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v5 + v16);

  os_unfair_lock_unlock(v15 + 4);

  v18 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_calloutQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  sub_1BABE739C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1BAAD1508(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0, MEMORY[0x1E69E6328]);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v14, v11, v20);
  _Block_release(v20);

  (*(v26 + 8))(v11, v9);
  (*(v12 + 8))(v14, v25);
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

uint64_t sub_1BAAD2674@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t objectdestroy_100Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD26EC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAAD274C(v2);
  }

  return result;
}

uint64_t sub_1BAAD274C(char a1)
{
  v3 = sub_1BABE737C();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BABE73BC();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v9 + 4);
  v10 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_enabledStateObservers;
  swift_beginAccess();
  v11 = *(v1 + v10);

  os_unfair_lock_unlock(v9 + 4);

  v12 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_calloutQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BAAD4570;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_95;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  sub_1BABE739C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1BAAD1508(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0, MEMORY[0x1E69E6328]);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v14);
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

uint64_t sub_1BAAD2A80()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t ReplicatorControlClient.deviceUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AC0, &qword_1BABF0F70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AC8, &qword_1BABF0F78);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___deviceUpdates;
  swift_beginAccess();
  sub_1BAAD2DAC(v1 + v13, v12, &unk_1EBC13AC8, &qword_1BABF0F78);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AD8, &unk_1BABF0F80);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1BAAD2E14(v12, &unk_1EBC13AC8, &qword_1BABF0F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  sub_1BABE780C();
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_1BAAD7BA0(v10, v1 + v13, &unk_1EBC13AC8, &qword_1BABF0F78);
  return swift_endAccess();
}

uint64_t sub_1BAAD2DAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BAAD2E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BAAD2E74(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C18, &qword_1BABF1230);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BAAD313C(sub_1BAAD7C44, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BAAD313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a1;
  v8 = sub_1BABE737C();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE73BC();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v14 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v14 + 4);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_deviceObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + v16);
  *(v4 + v16) = 0x8000000000000000;
  sub_1BAAD35A8(sub_1BAAD7CB8, v15, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v16) = v30;
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);

  v28 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
  sub_1BABE794C();
  v18 = aBlock[0];
  v19 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_calloutQueue);
  v20 = swift_allocObject();
  v20[2] = v24;
  v20[3] = a2;
  v20[4] = v18;
  aBlock[4] = sub_1BAAD7DFC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_156;
  v21 = _Block_copy(aBlock);

  v22 = v19;
  sub_1BABE739C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1BAAD1508(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0, MEMORY[0x1E69E6328]);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v13, v10, v21);
  _Block_release(v21);

  (*(v27 + 8))(v10, v8);
  (*(v25 + 8))(v13, v26);
}

uint64_t sub_1BAAD3554()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD35E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v8 = v7;
  v34 = a2;
  v12 = sub_1BABE6CFC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1BAAD37E8(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v31();
      goto LABEL_9;
    }

    v32();
    v24 = sub_1BAAD37E8(a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v34;
  v27 = a1;
  v28 = *v8;
  if (v22)
  {
    v29 = (*(v28 + 56) + 16 * v18);
    *v29 = v27;
    v29[1] = v26;
  }

  else
  {
    (*(v13 + 16))(v15, a3, v12);
    return v33(v18, v15, v27, v26, v28);
  }
}

unint64_t sub_1BAAD37E8(uint64_t a1)
{
  sub_1BABE6CFC();
  v2 = MEMORY[0x1E69695A8];
  sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1BABE74AC();
  return sub_1BAAD39DC(a1, v3, MEMORY[0x1E69695A8], &unk_1ED7872A0, v2, MEMORY[0x1E69695C8]);
}

uint64_t sub_1BAAD38BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD3904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD394C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD3994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BAAD39DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1BAAD3994(v23, v24, v25);
      v19 = sub_1BABE74DC();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_1BAAD3B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = v8;
  result = sub_1BABE7CCC();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v9;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v10 + 16);
    v40 = v10;
    v43 = (v10 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v10 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v39)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1BABE74AC();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v43)(*(v15 + 48) + v45 * v23, v46, v47);
      *(*(v15 + 56) + 16 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_1BAAD3F70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1BABE6CFC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1BAAD406C(uint64_t a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0, &unk_1BABF1210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v5;
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00, &qword_1BABEAC00);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v43 - v14;
  v15 = *(a1 + 64);
  v43 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v46 = v7 + 16;
  v54 = (v7 + 32);
  v57 = (v4 + 48);
  v58 = (v4 + 56);
  v48 = v7;
  v49 = a1;
  v51 = (v7 + 8);
  v20 = v13;

  v22 = 0;
  v56 = v20;
  v45 = v3;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v23 << 6);
      v29 = v48;
      v28 = v49;
      v30 = v47;
      (*(v48 + 16))(v47, *(v49 + 48) + *(v48 + 72) * v27, v6);
      v31 = *(v3 + 48);
      v32 = *(v29 + 32);
      v59 = *(*(v28 + 56) + 16 * v27);
      v20 = v56;
      v32(v56, v30, v6);
      *(v20 + v31) = v59;
      v33 = *v58;
      (*v58)(v20, 0, 1, v3);

      v25 = v23;
LABEL_13:
      v34 = *v57;
      v35 = 1;
      if ((*v57)(v20, 1, v3) != 1)
      {
        *&v59 = v25;
        v36 = *(v3 + 48);
        v50 = v33;
        v37 = *v54;
        (*v54)(v44, v20, v6);
        v38 = swift_allocObject();
        *(v38 + 16) = *(v56 + v36);
        v39 = &v55[*(v3 + 48)];
        v37();
        v33 = v50;
        v35 = 0;
        *v39 = sub_1BAB77FA8;
        v39[1] = v38;
        v25 = v59;
        v20 = v56;
        v3 = v45;
      }

      v40 = v55;
      v33(v55, v35, 1, v3);
      v41 = v40;
      v42 = v53;
      sub_1BAB23414(v41, v53, &qword_1EBC13C00, &qword_1BABEAC00);
      if (v34(v42, 1, v3) == 1)
      {
      }

      (*(v42 + *(v3 + 48)))(v52 & 1);

      result = (*v51)(v42, v6);
      v22 = v25;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v33 = *v58;
        (*v58)(v20, 1, 1, v3);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v43 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAD4580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData) & 1) == 0)
  {
    sub_1BAAD4614();
    sub_1BAAD4B70();
  }

  *a2 = *(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_devices);
}

void sub_1BAAD4614()
{
  v1 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v2 = sub_1BABE73FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v6 = sub_1BABE72BC();
  __swift_project_value_buffer(v6, qword_1EBC25030);
  v7 = sub_1BABE729C();
  v8 = sub_1BABE790C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BAACF000, v7, v8, "Registering for device changes", v9, 2u);
    MEMORY[0x1BFAFE460](v9, -1, -1);
  }

  v10 = *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue];
  *v5 = v10;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v11 = v10;
  v12 = sub_1BABE740C();
  (*(v3 + 8))(v5, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
  }

  v13 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceToken;
  if (*&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceToken] == -1)
  {
    out_token = -1;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BAB783A0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAB170D4;
    aBlock[3] = &block_descriptor_164;
    v19 = _Block_copy(aBlock);

    v20 = sub_1BABE756C();
    v21 = notify_register_dispatch((v20 + 32), &out_token, v11, v19);

    _Block_release(v19);
    if (v21)
    {
      v22 = sub_1BABE729C();
      v23 = sub_1BABE78EC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1BAACF000, v22, v23, "Could not register for device change notifications", v24, 2u);
        MEMORY[0x1BFAFE460](v24, -1, -1);
      }
    }

    *&v1[v13] = out_token;
  }

  else
  {
    v14 = v0;
    v15 = sub_1BABE729C();
    v16 = sub_1BABE790C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = *&v1[v13];

      _os_log_impl(&dword_1BAACF000, v15, v16, "Already subscribed to device changes with token %{public}d", v17, 8u);
      MEMORY[0x1BFAFE460](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1BAAD4A18()
{
  MEMORY[0x1BFAFE520](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD4A50()
{
  v0 = sub_1BABE72BC();
  __swift_allocate_value_buffer(v0, qword_1EBC25030);
  __swift_project_value_buffer(v0, qword_1EBC25030);
  return sub_1BABE72AC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

void sub_1BAAD4B70()
{
  v135[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v125 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v132 = &v118 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v118 - v6;
  v8 = type metadata accessor for ReplicatorDevice(0);
  v133 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v127 = &v118 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  *&v126 = &v118 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v124 = &v118 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v130 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v118 - v19;
  v21 = sub_1BABE73FC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = v0;
  v25 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v24 = v25;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v26 = v25;
  LOBYTE(v25) = sub_1BABE740C();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    goto LABEL_77;
  }

  if (qword_1EBC12478 != -1)
  {
LABEL_78:
    swift_once();
  }

  v27 = sub_1BABE72BC();
  v129 = __swift_project_value_buffer(v27, qword_1EBC25030);
  v28 = sub_1BABE729C();
  v29 = sub_1BABE790C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BAACF000, v28, v29, "Fetching devices", v30, 2u);
    MEMORY[0x1BFAFE460](v30, -1, -1);
  }

  v31 = v123;
  v122 = sub_1BAAD5C54();
  if (v122)
  {
    v121 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_devices;
    v32 = *(v31 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_devices);
    v33 = *(v32 + 16);

    v131 = v8;
    if (v33)
    {
      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v34 >= *(v32 + 16))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v38 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v39 = *(v133 + 72);
        sub_1BAB77A28(v32 + v38 + v39 * v34, v20, type metadata accessor for ReplicatorDevice);
        sub_1BAB77A28(&v20[*(v8 + 48)], v7, type metadata accessor for ReplicatorDevice.RelationshipState);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
        v41 = (*(*(v40 - 8) + 48))(v7, 4, v40);
        if ((v41 - 2) >= 2)
        {
          if (v41)
          {
            sub_1BAB78310(v20, type metadata accessor for ReplicatorDevice);
            v36 = type metadata accessor for ReplicatorDevice.RelationshipState;
            v37 = v7;
            goto LABEL_9;
          }

          v42 = sub_1BABE6CFC();
          (*(*(v42 - 8) + 8))(v7, v42);
        }

        if (v20[*(v8 + 56)] != 1)
        {
          sub_1BAB77A90(v20, v130);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BAAFAAE0(0, v35[2] + 1, 1);
            v35 = v135[0];
          }

          v45 = v35[2];
          v44 = v35[3];
          if (v45 >= v44 >> 1)
          {
            sub_1BAAFAAE0((v44 > 1), v45 + 1, 1);
            v35 = v135[0];
          }

          v35[2] = v45 + 1;
          sub_1BAB77A90(v130, v35 + v38 + v45 * v39);
          v8 = v131;
          goto LABEL_10;
        }

        v36 = type metadata accessor for ReplicatorDevice;
        v37 = v20;
LABEL_9:
        sub_1BAB78310(v37, v36);
LABEL_10:
        if (v33 == ++v34)
        {
          goto LABEL_26;
        }
      }
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v49 = sub_1BAAD6DA0(v35);

    v135[0] = 0;
    v50 = [v122 devicesAndReturnError_];
    v51 = v135[0];
    if (!v50)
    {
      v77 = v135[0];

      v78 = sub_1BABE6ADC();

      swift_willThrow();
      v79 = v78;
      v80 = sub_1BABE729C();
      v81 = sub_1BABE78EC();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v135[0] = v83;
        *v82 = 136315138;
        v134 = v78;
        v84 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C48, &unk_1BABF1240);
        v85 = sub_1BABE755C();
        v87 = sub_1BAAFA460(v85, v86, v135);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_1BAACF000, v80, v81, "Could not fetch devices: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x1BFAFE460](v83, -1, -1);
        MEMORY[0x1BFAFE460](v82, -1, -1);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_72;
    }

    v52 = v50;
    sub_1BABE6A7C();
    swift_allocObject();
    v53 = v51;
    sub_1BABE6A6C();
    v54 = sub_1BABE6BEC();
    v56 = v55;
    sub_1BAAD7438();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v54, v56);

    v57 = v135[0];
    v20 = v127;
    if (v135[0])
    {
      v119 = v49;

      v58 = v123;
      *(v123 + v121) = v57;

      v59 = *(v58 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData);
      v7 = v124;
      if ((v59 & 1) == 0)
      {
        *(v58 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData) = v59 | 1;
      }

      v120 = v57;
      v60 = *(v58 + v121);
      v61 = *(v60 + 16);

      if (v61)
      {
        v62 = 0;
        v63 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v62 >= *(v60 + 16))
          {
            goto LABEL_76;
          }

          v66 = (*(v133 + 80) + 32) & ~*(v133 + 80);
          v67 = *(v133 + 72);
          sub_1BAB77A28(v60 + v66 + v67 * v62, v7, type metadata accessor for ReplicatorDevice);
          v68 = &v7[*(v8 + 48)];
          v69 = v7;
          v70 = v132;
          sub_1BAB77A28(v68, v132, type metadata accessor for ReplicatorDevice.RelationshipState);
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
          v72 = (*(*(v71 - 8) + 48))(v70, 4, v71);
          if ((v72 - 2) >= 2)
          {
            if (v72)
            {
              v7 = v124;
              sub_1BAB78310(v124, type metadata accessor for ReplicatorDevice);
              v64 = type metadata accessor for ReplicatorDevice.RelationshipState;
              v65 = v132;
              goto LABEL_33;
            }

            v73 = sub_1BABE6CFC();
            (*(*(v73 - 8) + 8))(v132, v73);
            v69 = v124;
          }

          v7 = v69;
          if (*(v69 + *(v8 + 56)) != 1)
          {
            sub_1BAB77A90(v69, v126);
            v74 = swift_isUniquelyReferenced_nonNull_native();
            v135[0] = v63;
            if ((v74 & 1) == 0)
            {
              sub_1BAAFAAE0(0, v63[2] + 1, 1);
              v63 = v135[0];
            }

            v76 = v63[2];
            v75 = v63[3];
            if (v76 >= v75 >> 1)
            {
              sub_1BAAFAAE0((v75 > 1), v76 + 1, 1);
              v63 = v135[0];
            }

            v63[2] = v76 + 1;
            sub_1BAB77A90(v126, v63 + v66 + v76 * v67);
            v8 = v131;
            v20 = v127;
            goto LABEL_34;
          }

          v64 = type metadata accessor for ReplicatorDevice;
          v65 = v69;
LABEL_33:
          sub_1BAB78310(v65, v64);
LABEL_34:
          if (v61 == ++v62)
          {
            goto LABEL_49;
          }
        }
      }

      v63 = MEMORY[0x1E69E7CC0];
LABEL_49:

      v124 = sub_1BAAD6DA0(v63);

      v88 = v120;

      v89 = sub_1BABE729C();
      v90 = sub_1BABE790C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 134217984;
        *(v91 + 4) = v88[2];

        _os_log_impl(&dword_1BAACF000, v89, v90, "Fetched %ld devices", v91, 0xCu);
        MEMORY[0x1BFAFE460](v91, -1, -1);
      }

      else
      {
      }

      v93 = v125;
      v94 = v128;
      v95 = v88[2];
      if (v95)
      {
        v96 = v120 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        v130 = *(v133 + 72);
        *&v92 = 136446466;
        v126 = v92;
        do
        {
          sub_1BAB77A28(v96, v20, type metadata accessor for ReplicatorDevice);
          sub_1BAB77A28(&v20[*(v8 + 48)], v93, type metadata accessor for ReplicatorDevice.RelationshipState);
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
          v98 = (*(*(v97 - 8) + 48))(v93, 4, v97);
          v132 = v95;
          if (v98 <= 1)
          {
            if (v98)
            {
              v99 = 0xEA00000000006465;
              v100 = 0x6375646F72746E69;
            }

            else
            {
              v101 = sub_1BABE6CFC();
              (*(*(v101 - 8) + 8))(v93, v101);
              v99 = 0xE900000000000067;
              v100 = 0x6E6974617267696DLL;
            }
          }

          else if (v98 == 2)
          {
            v99 = 0xE700000000000000;
            v100 = 0x676E6972696170;
          }

          else if (v98 == 3)
          {
            v99 = 0xE600000000000000;
            v100 = 0x646572696170;
          }

          else
          {
            v99 = 0xE700000000000000;
            v100 = 0x6E776F6E6B6E75;
          }

          sub_1BAB77A28(v20, v94, type metadata accessor for ReplicatorDevice);

          v102 = sub_1BABE729C();
          v103 = v20;
          v104 = sub_1BABE790C();

          if (os_log_type_enabled(v102, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v135[0] = v106;
            *v105 = v126;
            sub_1BABE6CFC();
            sub_1BAAD1508(&qword_1EBC128F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v107 = sub_1BABE7EAC();
            v109 = v108;
            sub_1BAB78310(v128, type metadata accessor for ReplicatorDevice);
            v110 = sub_1BAAFA460(v107, v109, v135);
            v94 = v128;

            *(v105 + 4) = v110;
            v93 = v125;
            *(v105 + 12) = 2082;
            v111 = sub_1BAAFA460(v100, v99, v135);

            *(v105 + 14) = v111;
            _os_log_impl(&dword_1BAACF000, v102, v104, "Fetched %{public}s - %{public}s", v105, 0x16u);
            swift_arrayDestroy();
            v112 = v106;
            v8 = v131;
            MEMORY[0x1BFAFE460](v112, -1, -1);
            MEMORY[0x1BFAFE460](v105, -1, -1);

            v20 = v127;
            sub_1BAB78310(v127, type metadata accessor for ReplicatorDevice);
          }

          else
          {

            sub_1BAB78310(v94, type metadata accessor for ReplicatorDevice);
            sub_1BAB78310(v103, type metadata accessor for ReplicatorDevice);
            v20 = v103;
          }

          v96 += v130;
          v95 = v132 - 1;
        }

        while (v132 != 1);
      }

      v113 = v123;
      v135[0] = *(v123 + v121);

      sub_1BABE732C();

      v114 = v124;
      v115 = sub_1BAAD7884(v119, v124);

      if (v115)
      {
        swift_unknownObjectRelease();

        return;
      }

      v80 = *(v113 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton__pairedDevicePublisher);
      v116 = *(v114 + 2);
      if (v116)
      {
        v78 = sub_1BAB1E04C(*(v114 + 2), 0);
        v117 = sub_1BAB2066C(v135, v78 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v116, v114);
        sub_1BAAF10B4(v135[0]);
        if (v117 != v116)
        {
          __break(1u);
LABEL_72:
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {

        v78 = MEMORY[0x1E69E7CC0];
      }

      v135[0] = v78;
      sub_1BABE732C();

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v46 = sub_1BABE729C();
    v47 = sub_1BABE78EC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1BAACF000, v46, v47, "Could not fetch devices because target could not be created", v48, 2u);
      MEMORY[0x1BFAFE460](v48, -1, -1);
    }
  }
}

uint64_t sub_1BAAD5C54()
{
  v1 = sub_1BABE73FC();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BAAD5F98();
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection);
  if (!v7)
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v8 = sub_1BABE72BC();
    __swift_project_value_buffer(v8, qword_1EBC25030);
    v1 = sub_1BABE729C();
    v9 = sub_1BABE78FC();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v1, v9, "ReplicatorControlClient: Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13BC8, &unk_1BABF1200);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BAAD2E14(v19, &qword_1EBC12990, &unk_1BABE9FC0);
  }

  if (qword_1EBC12478 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BABE72BC();
  __swift_project_value_buffer(v12, qword_1EBC25030);
  v13 = sub_1BABE729C();
  v14 = sub_1BABE78FC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BAACF000, v13, v14, "ReplicatorControlClient: Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFAFE460](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1BAAD5F98()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1BAAD61FC();
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection);
  if (!v7)
  {
    return;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();

    sub_1BAAD2E14(v12, &qword_1EBC12990, &unk_1BABE9FC0);
    return;
  }

  memset(v12, 0, sizeof(v12));
  sub_1BAAD2E14(v12, &qword_1EBC12990, &unk_1BABE9FC0);
  [v1 activate];
  if (qword_1EBC12478 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = sub_1BABE72BC();
  __swift_project_value_buffer(v8, qword_1EBC25030);
  v9 = sub_1BABE729C();
  v10 = sub_1BABE790C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BAACF000, v9, v10, "Activated ReplicatorControlClient connection", v11, 2u);
    MEMORY[0x1BFAFE460](v11, -1, -1);
  }
}

void sub_1BAAD61FC()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_connection])
  {
    v8 = sub_1BAAD64B0();
    if (v8)
    {
      v9 = *&v0[v7];
      *&v0[v7] = v8;
      v10 = v8;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BAAD6724;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BAAD671C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD6678;
      aBlock[3] = &block_descriptor_2;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configure_];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        sub_1BAAD6B88();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

uint64_t sub_1BAAD6474()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1BAAD64B0()
{
  v0 = objc_opt_self();
  if (qword_1ED787220 != -1)
  {
    swift_once();
  }

  v1 = sub_1BABE74EC();
  v2 = sub_1BABE74EC();
  v3 = [v0 endpointForMachName:v1 service:v2 instance:0];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E698F4D8]) initWithEndpoint_];
  return v4;
}

uint64_t sub_1BAAD65B4()
{
  if (qword_1ED787CB8 != -1)
  {
    swift_once();
  }

  qword_1ED787228 = qword_1ED787CC0;
  unk_1ED787230 = *algn_1ED787CC8;
  qword_1ED787238 = qword_1ED787CD0;
  unk_1ED787240 = unk_1ED787CD8;
}

void sub_1BAAD6638()
{
  qword_1ED787CC0 = 0xD000000000000014;
  *algn_1ED787CC8 = 0x80000001BABF66B0;
  qword_1ED787CD0 = 0xD00000000000001CLL;
  unk_1ED787CD8 = 0x80000001BABF66D0;
}

uint64_t sub_1BAAD6678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1BAAD672C(void *a1, uint64_t a2)
{
  v4 = sub_1BABE74EC();
  v17 = sub_1BAAD6AAC;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BAAD6A60;
  v16 = &block_descriptor_59;
  v5 = _Block_copy(&v13);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
    v8 = sub_1BABE74EC();
    v9 = [objc_opt_self() queueWithName:v8 targetQueue:v7];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v17 = sub_1BAAD7E98;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_62_0;
    v10 = _Block_copy(&v13);
    [a1 setActivationHandler_];
    _Block_release(v10);
    v17 = sub_1BAB772D0;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_65;
    v11 = _Block_copy(&v13);
    [a1 setInterruptionHandler_];
    _Block_release(v11);
    v17 = sub_1BAB772DC;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_68;
    v12 = _Block_copy(&v13);
    [a1 setInvalidationHandler_];
    _Block_release(v12);
  }
}

void sub_1BAAD6A60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1BAAD6AAC(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_1BAAD6B88()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_serverStartupToken;
  swift_beginAccess();
  if (*(v0 + v1) == -1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BAB77E04;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAB170D4;
    aBlock[3] = &block_descriptor_56;
    v4 = _Block_copy(aBlock);

    v5 = sub_1BABE756C();
    swift_beginAccess();
    LODWORD(v2) = notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
    swift_endAccess();
    _Block_release(v4);

    if (v2)
    {
      if (qword_1EBC12478 != -1)
      {
        swift_once();
      }

      v6 = sub_1BABE72BC();
      __swift_project_value_buffer(v6, qword_1EBC25030);
      v7 = sub_1BABE729C();
      v8 = sub_1BABE78EC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BAACF000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
        MEMORY[0x1BFAFE460](v9, -1, -1);
      }
    }
  }
}

uint64_t sub_1BAAD6DA0(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatorDevice(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BAAD6F34(&unk_1ED787C40, 255, type metadata accessor for ReplicatorDevice, &protocol conformance descriptor for ReplicatorDevice);
  result = MEMORY[0x1BFAFD4B0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1BABB71B8(v12, v6, type metadata accessor for ReplicatorDevice);
      sub_1BABAFF08(v8, v6);
      sub_1BABB7220(v8, type metadata accessor for ReplicatorDevice);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1BAAD6F34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BAAD6F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ReplicatorControlXPCServerResponse.GetDevices.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F48, &unk_1BABEB0F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAAD7214();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
  sub_1BAAD7268(&qword_1EBC11D70, qword_1EBC11FA0, &protocol conformance descriptor for ReplicatorDevice, MEMORY[0x1E69E6300]);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1BAAD7214()
{
  result = qword_1ED787218;
  if (!qword_1ED787218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787218);
  }

  return result;
}

uint64_t sub_1BAAD7268(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134F0, &unk_1BABEA9E0);
    sub_1BAAD7760(a2, type metadata accessor for ReplicatorDevice, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  v2 = sub_1BABE6A8C();
  v4 = v3;
  v5 = sub_1BABE6BDC();
  sub_1BAAD73E4(v2, v4);

  return v5;
}

uint64_t sub_1BAAD73E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1BAAD7438()
{
  result = qword_1ED787200;
  if (!qword_1ED787200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787200);
  }

  return result;
}

uint64_t ReplicatorControlXPCServerResponse.GetDevices.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F50, &qword_1BABEB108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAAD7214();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
    sub_1BAAD7268(&qword_1ED787C10, &qword_1ED787C30, &protocol conformance descriptor for ReplicatorDevice, MEMORY[0x1E69E6330]);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BAAD7670()
{
  result = qword_1ED787208;
  if (!qword_1ED787208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787208);
  }

  return result;
}

unint64_t sub_1BAAD76C8()
{
  result = qword_1ED787210;
  if (!qword_1ED787210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787210);
  }

  return result;
}

uint64_t sub_1BAAD771C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BABE6CFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAAD7760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD77A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD77F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAAD7884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v31 = v20;
  v32 = &v31 - v12;
  v33 = v13;
  v34 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_1BAB22824(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14, type metadata accessor for ReplicatorDevice);
      sub_1BAB2347C(v14, v10, type metadata accessor for ReplicatorDevice);
      sub_1BABE7F9C();
      ReplicatorDevice.hash(into:)(v36);
      v26 = sub_1BABE7FDC();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_1BAB22824(*(a2 + 48) + v28 * v25, v7, type metadata accessor for ReplicatorDevice);
        v30 = _s18ReplicatorServices0A6DeviceV2eeoiySbAC_ACtFZ_0(v7, v10);
        sub_1BAB2288C(v7, type metadata accessor for ReplicatorDevice);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1BAB2288C(v10, type metadata accessor for ReplicatorDevice);
      v13 = v33;
      a1 = v34;
      v20 = v31;
      v14 = v32;
      v19 = v35;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1BAB2288C(v10, type metadata accessor for ReplicatorDevice);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v16 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v35 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAAD7BA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BAAD7CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13C20, &qword_1BABF1238);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C18, &qword_1BABF1230);
  sub_1BABE77CC();
  return (*(v3 + 8))(v5, v2);
}

void sub_1BAAD7E2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t objectdestroy_85Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_1BAAD7EF4(uint64_t a1, const char *a2)
{
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v3 = sub_1BABE72BC();
  __swift_project_value_buffer(v3, qword_1EBC25030);
  oslog = sub_1BABE729C();
  v4 = sub_1BABE78CC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BAACF000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFAFE460](v5, -1, -1);
  }
}

uint64_t ReplicatorControlClient.devices.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
  sub_1BABE794C();
  return v1;
}

uint64_t sub_1BAAD80A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BABE751C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAAD80D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD8118()
{
  MEMORY[0x1BFAFE520](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD8150()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD8194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BABE6CFC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BAAD8284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BABE6CFC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BAAD8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplicatorStore.Change(255, *(v4 + 16), *(v4 + 24), a4);
  sub_1BABE775C();
  v5 = sub_1BABE77DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BAAD842C()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAAD84F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAAD8530()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAAD8568()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD85A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD85DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAAD8628()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD8664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BAAD8798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BABE6CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BAAD899C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAAD8A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAAD8B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAAD8B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAAD8C4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = sub_1BABE6C8C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BAAD8DC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BABE6CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = sub_1BABE6C8C();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BAAD8F3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAAD8FB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BAAD9058()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAAD90E8()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1BAAD9198()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BAAD9274()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD92AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAAD92EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BAAD9328()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD9378()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAAD93BC()
{
  v1 = sub_1BABE6BAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1BAAD94C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BAAD9580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAAD9634()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD9694()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD96CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAAD971C()
{
  MEMORY[0x1BFAFE520](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD9754()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAAD97B0()
{
  v1 = sub_1BABE6BAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1BAAD98A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD98E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CA0, &unk_1BABF1450);
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

uint64_t sub_1BAAD9958(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CA0, &unk_1BABF1450);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BAAD99E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BAAD9A40@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1BAAD9AC8@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataPersistentStore.localDeviceID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAAD9AF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MetadataPersistentStore.localDeviceID.setter(v1, v2);
}

uint64_t sub_1BAAD9B34@<X0>(_BYTE *a1@<X8>)
{
  result = MetadataPersistentStore.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BAAD9BB4@<X0>(_BYTE *a1@<X8>)
{
  result = MetadataPersistentStore.allowListEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BAAD9C0C@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataPersistentStore.allowList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BAAD9C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1BABE6BAC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BAAD9D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BABE6CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1BABE6BAC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BAAD9EAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAAD9EE4()
{
  v1 = sub_1BABE6BAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAAD9FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BABB9E70();
  *a1 = result;
  return result;
}

uint64_t sub_1BAAD9FF8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

uint64_t sub_1BAADA03C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BABE6CFC();
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BAADA1BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1BABE6CFC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BAADA33C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BAADA3E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAADA48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
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

uint64_t sub_1BAADA4F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BABE6CFC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BAADA578(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BAADA640(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BAADA6F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BAADA730()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAADA780()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BAADA7B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAADA7F8()
{
  v1 = (type metadata accessor for ReplicatorMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);

  v8(v0 + v3 + v1[8], v6);

  sub_1BAAD73E4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v9 = v1[12];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  v10 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v2 | 7);
}

uint64_t sub_1BAADA9C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8, &qword_1BABEAE30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_1BABE6CFC();
    v7 = *(v6 - 8);
    v8 = *(v7 + 8);
    v8(v0 + v3, v6);
    v9 = type metadata accessor for ReplicatorMessage(0);

    v8(v5 + v9[6], v6);

    sub_1BAAD73E4(*(v5 + v9[9]), *(v5 + v9[9] + 8));
    v10 = v9[10];
    if (!(*(v7 + 48))(v5 + v10, 1, v6))
    {
      v8(v5 + v10, v6);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BAADABB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAADAC08()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAADACC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAADAD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAADADB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6E8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BAADAE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6E8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAADAE90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BAADAEE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAAD73E4(result, a2);
  }

  return result;
}

uint64_t sub_1BAADAEFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1BAADAF5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAADAFD4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

ReplicatorServices::ZoneReplicationPriority_optional __swiftcall ZoneReplicationPriority.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BAADB388()
{
  v1 = *v0;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC40](v1);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAADB3FC(uint64_t a1)
{
  v2 = *v1;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

unint64_t sub_1BAADB508()
{
  result = qword_1EBC125C8;
  if (!qword_1EBC125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC125C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneReplicationPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZoneReplicationPriority(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BAADB6DC(uint64_t a1, int a2)
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

uint64_t sub_1BAADB6FC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ReplicatorProtocolVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicatorProtocolVersion(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAADB7B4(uint64_t a1, id *a2)
{
  result = sub_1BABE74FC();
  *a2 = 0;
  return result;
}

uint64_t sub_1BAADB82C(uint64_t a1, id *a2)
{
  v3 = sub_1BABE750C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BAADB8AC@<X0>(uint64_t *a2@<X8>)
{
  sub_1BABE751C();
  v3 = sub_1BABE74EC();

  *a2 = v3;
  return result;
}

uint64_t sub_1BAADB8F0(void *a1, uint64_t *a2)
{
  v2 = sub_1BABE751C();
  v4 = v3;
  if (v2 == sub_1BABE751C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BABE7EDC();
  }

  return v7 & 1;
}

uint64_t sub_1BAADB978@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BABE74EC();

  *a2 = v3;
  return result;
}

uint64_t sub_1BAADB9C0(uint64_t a1)
{
  v2 = sub_1BAADBB0C(&qword_1EBC12428, type metadata accessor for FileAttributeKey, &unk_1BABE97A0);
  v3 = sub_1BAADBB0C(&unk_1EBC12620, type metadata accessor for FileAttributeKey, &unk_1BABE959C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BAADBB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAADBB54(uint64_t a1)
{
  v2 = sub_1BAADBB0C(&qword_1EBC12608, type metadata accessor for FileProtectionType, &unk_1BABE9710);
  v3 = sub_1BAADBB0C(&unk_1EBC12610, type metadata accessor for FileProtectionType, &unk_1BABE96B0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BAADBCE8()
{
  v0 = sub_1BABE751C();
  v1 = MEMORY[0x1BFAFD270](v0);

  return v1;
}

uint64_t sub_1BAADBD24(uint64_t a1)
{
  sub_1BABE751C();
  sub_1BABE759C();
}

uint64_t sub_1BAADBD78(uint64_t a1)
{
  sub_1BABE751C();
  sub_1BABE7F9C();
  sub_1BABE759C();
  v1 = sub_1BABE7FDC();

  return v1;
}

unint64_t sub_1BAADBE34()
{
  result = qword_1ED787828;
  if (!qword_1ED787828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787828);
  }

  return result;
}

uint64_t ReplicatorProtocolVersion.init(current:minimum:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t ReplicatorProtocolVersion.highestCompatibleProtocolVersion(with:)(unint64_t *a1)
{
  v2 = *a1;
  v4 = *v1 < a1[1] || v2 < v1[1];
  if (*v1 < v2)
  {
    v2 = *v1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::UInt64_optional __swiftcall ReplicatorProtocolVersion.highestCompatibleProtocolVersion(with:)(Swift::UInt64 with)
{
  v3 = v1[1] > with || *v1 < with;
  if (v3)
  {
    with = 0;
  }

  result.value = with;
  result.is_nil = v3;
  return result;
}

uint64_t ReplicatorProtocolVersion.description.getter()
{
  sub_1BABE7AEC();

  v0 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v0);

  MEMORY[0x1BFAFD240](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
  v1 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v1);

  return 0x3A746E6572727563;
}

uint64_t sub_1BAADC080()
{
  v1 = *v0;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](v1);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAADC0C8(uint64_t a1)
{
  v2 = *v1;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](v2);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAADC10C()
{
  if (*v0)
  {
    return 0x6D756D696E696DLL;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1BAADC140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BAADC228(uint64_t a1)
{
  v2 = sub_1BAADC474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAADC264(uint64_t a1)
{
  v2 = sub_1BAADC474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorProtocolVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12750, &qword_1BABE97F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAADC474();
  sub_1BABE800C();
  v11 = 0;
  sub_1BABE7E8C();
  if (!v2)
  {
    v10 = 1;
    sub_1BABE7E8C();
  }

  return (*(v5 + 8))(v7, v4);
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

unint64_t sub_1BAADC474()
{
  result = qword_1ED787B68[0];
  if (!qword_1ED787B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED787B68);
  }

  return result;
}

uint64_t ReplicatorProtocolVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFAFDC40](*v0);
  return MEMORY[0x1BFAFDC40](v1);
}

uint64_t ReplicatorProtocolVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorProtocolVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12758, &qword_1BABE97F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAADC474();
  sub_1BABE7FFC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1BABE7DDC();
    v13 = 1;
    v10 = sub_1BABE7DDC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAADC730()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAADC78C()
{
  v1 = v0[1];
  MEMORY[0x1BFAFDC40](*v0);
  return MEMORY[0x1BFAFDC40](v1);
}

uint64_t sub_1BAADC7C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  return sub_1BABE7FDC();
}

unint64_t sub_1BAADC824()
{
  result = qword_1EBC12760;
  if (!qword_1EBC12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorProtocolVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicatorProtocolVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BAADCA0C()
{
  result = qword_1EBC12768;
  if (!qword_1EBC12768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12768);
  }

  return result;
}

unint64_t sub_1BAADCA64()
{
  result = qword_1ED787B58;
  if (!qword_1ED787B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787B58);
  }

  return result;
}

unint64_t sub_1BAADCABC()
{
  result = qword_1ED787B60;
  if (!qword_1ED787B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787B60);
  }

  return result;
}

uint64_t sub_1BAADCCFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v101 = a1;
  v95 = a2;
  v2 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v99 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BABE6CFC();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = 0;
  v113 = 0xE000000000000000;
  v6 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v114 = v6;
  MEMORY[0x1BFAFD200](113);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v12 = sub_1BABE71FC();
  v110 = MEMORY[0x1E69E6158];
  v111 = &protocol witness table for String;
  v107 = v12;
  v108 = v13;
  sub_1BAAE779C(&v107, &v102);

  SQLValue.init(_:)(&v102, &v104);
  v15 = v104;
  v14 = v105;
  v16 = v106;
  v102 = 0x676E69646E696240;
  v103 = 0xE800000000000000;
  v115 = *(v6 + 16) + 1;
  v17 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v17);

  v18 = v102;
  v19 = v103;
  MEMORY[0x1BFAFD240](v102, v103);
  sub_1BAAE7800(v15, v14, v16);
  v20 = v114;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = v20;
  sub_1BAAE5904(v15, v14, v16, v18, v19, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v15, v14, v16);
  v22 = v102;
  v114 = v102;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v24 = sub_1BABE718C();
  v26 = v25;

  v110 = MEMORY[0x1E69E6158];
  v111 = &protocol witness table for String;
  v107 = v24;
  v108 = v26;
  sub_1BAAE779C(&v107, &v102);

  SQLValue.init(_:)(&v102, &v104);
  v27 = v104;
  v28 = v105;
  v29 = v106;
  v102 = 0x676E69646E696240;
  v103 = 0xE800000000000000;
  v115 = *(v22 + 16) + 1;
  v30 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v30);

  v31 = v102;
  v32 = v103;
  MEMORY[0x1BFAFD240](v102, v103);
  sub_1BAAE7800(v27, v28, v29);
  v33 = v114;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v33;
  sub_1BAAE5904(v27, v28, v29, v31, v32, v34);

  sub_1BAAE7878(v27, v28, v29);
  v35 = v102;
  v114 = v102;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v36 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v36);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v37 = sub_1BABE717C();
  v39 = v38;

  v110 = MEMORY[0x1E69E6158];
  v111 = &protocol witness table for String;
  v107 = v37;
  v108 = v39;
  sub_1BAAE779C(&v107, &v102);

  SQLValue.init(_:)(&v102, &v104);
  v40 = v104;
  v41 = v105;
  v42 = v106;
  v102 = 0x676E69646E696240;
  v103 = 0xE800000000000000;
  v115 = *(v35 + 16) + 1;
  v43 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v43);

  v44 = v102;
  v45 = v103;
  MEMORY[0x1BFAFD240](v102, v103);
  sub_1BAAE7800(v40, v41, v42);
  v46 = v114;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v46;
  sub_1BAAE5904(v40, v41, v42, v44, v45, v47);
  v48 = v97;

  v49 = v41;
  v50 = v98;
  sub_1BAAE7878(v40, v49, v42);
  v51 = v102;
  v114 = v102;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v52 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v52);
  v53 = v99;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE722C();
  if ((*(v48 + 48))(v53, 1, v50) != 1)
  {
    v54 = v100;
    (*(v48 + 32))(v100, v53, v50);
    goto LABEL_5;
  }

  v54 = v100;
  if (qword_1EBC12280 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v55 = __swift_project_value_buffer(v50, qword_1EBC25000);
    (*(v48 + 16))(v54, v55, v50);
LABEL_5:
    v56 = sub_1BABE6CAC();
    v58 = v57;
    (*(v48 + 8))(v54, v50);
    v110 = MEMORY[0x1E69E6158];
    v111 = &protocol witness table for String;
    v107 = v56;
    v108 = v58;
    sub_1BAAE779C(&v107, &v102);

    SQLValue.init(_:)(&v102, &v104);
    v54 = v104;
    v50 = v105;
    v59 = v106;
    v102 = 0x676E69646E696240;
    v103 = 0xE800000000000000;
    v115 = *(v51 + 16) + 1;
    v60 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v60);

    v61 = v102;
    v62 = v103;
    MEMORY[0x1BFAFD240](v102, v103);
    sub_1BAAE7800(v54, v50, v59);
    v63 = v114;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v63;
    sub_1BAAE5904(v54, v50, v59, v61, v62, v64);

    sub_1BAAE7878(v54, v50, v59);
    v48 = v102;
    v114 = v102;
    __swift_destroy_boxed_opaque_existential_1(&v107);
    v51 = 0x20444E410ALL;
    MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
    v65 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v65);

    MEMORY[0x1BFAFD240](540884512, 0xE400000000000000);
    v66 = sub_1BABE6F7C();
    if (v66 < 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v110 = MEMORY[0x1E69E7360];
    v111 = &protocol witness table for Int64;
    v107 = v66;
    sub_1BAAE779C(&v107, &v102);
    SQLValue.init(_:)(&v102, &v104);
    v67 = v104;
    v54 = v105;
    v50 = v106;
    v102 = 0x676E69646E696240;
    v103 = 0xE800000000000000;
    v115 = *(v48 + 16) + 1;
    v68 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v68);

    v69 = v102;
    v51 = v103;
    MEMORY[0x1BFAFD240](v102, v103);
    sub_1BAAE7800(v67, v54, v50);
    v70 = v114;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v70;
    sub_1BAAE5904(v67, v54, v50, v69, v51, v71);

    sub_1BAAE7878(v67, v54, v50);
    v48 = v102;
    v114 = v102;
    __swift_destroy_boxed_opaque_existential_1(&v107);
    MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
    v72 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v72);

    MEMORY[0x1BFAFD240](540884000, 0xE400000000000000);
    v73 = sub_1BABE6F6C();
    if ((v73 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v111 = &protocol witness table for Int64;
  v110 = MEMORY[0x1E69E7360];
  v107 = v73;
  sub_1BAAE779C(&v107, &v102);
  SQLValue.init(_:)(&v102, &v104);
  v74 = v104;
  v75 = v105;
  v76 = v106;
  v102 = 0x676E69646E696240;
  v103 = 0xE800000000000000;
  v115 = *(v48 + 16) + 1;
  v77 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v77);

  v78 = v102;
  v79 = v103;
  MEMORY[0x1BFAFD240](v102, v103);
  sub_1BAAE7800(v74, v75, v76);
  v80 = v114;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v80;
  sub_1BAAE5904(v74, v75, v76, v78, v79, v81);

  sub_1BAAE7878(v74, v75, v76);
  v114 = v102;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  MEMORY[0x1BFAFD240](0x4220524544524F0ALL, 0xEA00000000002059);
  v82 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v82);

  MEMORY[0x1BFAFD240](0x494C0A4353454420, 0xEE003B312054494DLL);
  v83 = v112;
  v84 = v113;
  v85 = v114;
  if (swift_weakLoadStrong())
  {
    v107 = v85;
    v108 = v83;
    v109 = v84;
    v86 = v96;
    v87 = SQLDatabase.perform(_:)(&v107);

    if (!v86)
    {
      v89 = sub_1BAAE789C(v87, sub_1BAAE171C);

      if (*(v89 + 16))
      {
        v90 = sub_1BABE728C();
        v91 = *(v90 - 8);
        v92 = v95;
        (*(v91 + 16))(v95, v89 + ((*(v91 + 80) + 32) & ~*(v91 + 80)), v90);

        return (*(v91 + 56))(v92, 0, 1, v90);
      }

      else
      {

        v93 = sub_1BABE728C();
        return (*(*(v93 - 8) + 56))(v95, 1, 1, v93);
      }
    }
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAADDB38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v91 = a1;
  v85 = a2;
  v2 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BABE6CFC();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = 0;
  v103 = 0xE000000000000000;
  v6 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v104 = v6;
  MEMORY[0x1BFAFD200](81);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v12 = sub_1BABE71FC();
  v100 = MEMORY[0x1E69E6158];
  v101 = &protocol witness table for String;
  v97 = v12;
  v98 = v13;
  sub_1BAAE779C(&v97, &v92);

  SQLValue.init(_:)(&v92, &v94);
  v15 = v94;
  v14 = v95;
  v16 = v96;
  v92 = 0x676E69646E696240;
  v93 = 0xE800000000000000;
  v105 = *(v6 + 16) + 1;
  v17 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v17);

  v18 = v92;
  v19 = v93;
  MEMORY[0x1BFAFD240](v92, v93);
  sub_1BAAE7800(v15, v14, v16);
  v20 = v104;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v20;
  sub_1BAAE5904(v15, v14, v16, v18, v19, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v15, v14, v16);
  v22 = v92;
  v104 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v97);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v24 = sub_1BABE718C();
  v26 = v25;

  v100 = MEMORY[0x1E69E6158];
  v101 = &protocol witness table for String;
  v97 = v24;
  v98 = v26;
  sub_1BAAE779C(&v97, &v92);

  SQLValue.init(_:)(&v92, &v94);
  v27 = v94;
  v28 = v95;
  v29 = v96;
  v92 = 0x676E69646E696240;
  v93 = 0xE800000000000000;
  v105 = *(v22 + 16) + 1;
  v30 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v30);

  v31 = v92;
  v32 = v93;
  MEMORY[0x1BFAFD240](v92, v93);
  sub_1BAAE7800(v27, v28, v29);
  v33 = v104;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v33;
  sub_1BAAE5904(v27, v28, v29, v31, v32, v34);

  sub_1BAAE7878(v27, v28, v29);
  v35 = v92;
  v104 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v97);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v36 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v36);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v37 = sub_1BABE717C();
  v39 = v38;

  v100 = MEMORY[0x1E69E6158];
  v101 = &protocol witness table for String;
  v97 = v37;
  v98 = v39;
  sub_1BAAE779C(&v97, &v92);

  SQLValue.init(_:)(&v92, &v94);
  v40 = v94;
  v41 = v95;
  v42 = v96;
  v92 = 0x676E69646E696240;
  v93 = 0xE800000000000000;
  v105 = *(v35 + 16) + 1;
  v43 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v43);

  v44 = v92;
  v45 = v93;
  MEMORY[0x1BFAFD240](v92, v93);
  sub_1BAAE7800(v40, v41, v42);
  v46 = v104;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v46;
  sub_1BAAE5904(v40, v41, v42, v44, v45, v47);
  v48 = v87;

  v49 = v41;
  v50 = v88;
  sub_1BAAE7878(v40, v49, v42);
  v51 = v92;
  v104 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v97);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v52 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v52);
  v53 = v89;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE722C();
  if ((*(v48 + 48))(v53, 1, v50) != 1)
  {
    v54 = v90;
    (*(v48 + 32))(v90, v53, v50);
    goto LABEL_5;
  }

  v54 = v90;
  if (qword_1EBC12280 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v55 = __swift_project_value_buffer(v50, qword_1EBC25000);
    (*(v48 + 16))(v54, v55, v50);
LABEL_5:
    v56 = sub_1BABE6CAC();
    v58 = v57;
    (*(v48 + 8))(v54, v50);
    v100 = MEMORY[0x1E69E6158];
    v101 = &protocol witness table for String;
    v97 = v56;
    v98 = v58;
    sub_1BAAE779C(&v97, &v92);

    SQLValue.init(_:)(&v92, &v94);
    v54 = v94;
    v50 = v95;
    v48 = v96;
    v92 = 0x676E69646E696240;
    v93 = 0xE800000000000000;
    v105 = *(v51 + 16) + 1;
    v59 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v59);

    v60 = v92;
    v61 = v93;
    MEMORY[0x1BFAFD240](v92, v93);
    sub_1BAAE7800(v54, v50, v48);
    v62 = v104;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v62;
    sub_1BAAE5904(v54, v50, v48, v60, v61, v63);

    sub_1BAAE7878(v54, v50, v48);
    v51 = v92;
    v104 = v92;
    __swift_destroy_boxed_opaque_existential_1(&v97);
    MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
    v64 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v64);

    MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v100 = MEMORY[0x1E69E7360];
  v101 = &protocol witness table for Int64;
  v97 = v91;
  sub_1BAAE779C(&v97, &v92);
  SQLValue.init(_:)(&v92, &v94);
  v65 = v94;
  v66 = v95;
  v67 = v96;
  v92 = 0x676E69646E696240;
  v93 = 0xE800000000000000;
  v105 = *(v51 + 16) + 1;
  v68 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v68);

  v69 = v92;
  v70 = v93;
  MEMORY[0x1BFAFD240](v92, v93);
  sub_1BAAE7800(v65, v66, v67);
  v71 = v104;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v71;
  sub_1BAAE5904(v65, v66, v67, v69, v70, v72);

  sub_1BAAE7878(v65, v66, v67);
  v104 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v97);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v73 = v102;
  v74 = v103;
  v75 = v104;
  if (swift_weakLoadStrong())
  {
    v97 = v75;
    v98 = v73;
    v99 = v74;
    v76 = v86;
    v77 = SQLDatabase.perform(_:)(&v97);

    if (!v76)
    {
      v79 = sub_1BAAE789C(v77, sub_1BAAE171C);

      if (*(v79 + 16))
      {
        v80 = sub_1BABE728C();
        v81 = *(v80 - 8);
        v82 = v85;
        (*(v81 + 16))(v85, v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)), v80);

        return (*(v81 + 56))(v82, 0, 1, v80);
      }

      else
      {

        v83 = sub_1BABE728C();
        return (*(*(v83 - 8) + 56))(v85, 1, 1, v83);
      }
    }
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAADE79C()
{
  v45 = 0;
  v46 = 0xE000000000000000;
  v0 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v47 = v0;
  MEMORY[0x1BFAFD200](59);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v4 = sub_1BABE718C();
  v43 = MEMORY[0x1E69E6158];
  v44 = &protocol witness table for String;
  v40 = v4;
  v41 = v5;
  sub_1BAAE779C(&v40, &v35);

  SQLValue.init(_:)(&v35, &v37);
  v7 = v37;
  v6 = v38;
  v8 = v39;
  v35 = 0x676E69646E696240;
  v36 = 0xE800000000000000;
  v48 = *(v0 + 16) + 1;
  v9 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v9);

  v10 = v35;
  v11 = v36;
  MEMORY[0x1BFAFD240](v35, v36);
  sub_1BAAE7800(v7, v6, v8);
  v12 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v12;
  sub_1BAAE5904(v7, v6, v8, v10, v11, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v7, v6, v8);
  v14 = v35;
  v47 = v35;
  __swift_destroy_boxed_opaque_existential_1(&v40);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v16 = sub_1BABE717C();
  v43 = MEMORY[0x1E69E6158];
  v44 = &protocol witness table for String;
  v40 = v16;
  v41 = v17;
  sub_1BAAE779C(&v40, &v35);

  SQLValue.init(_:)(&v35, &v37);
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v35 = 0x676E69646E696240;
  v36 = 0xE800000000000000;
  v48 = *(v14 + 16) + 1;
  v21 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v21);

  v22 = v35;
  v23 = v36;
  MEMORY[0x1BFAFD240](v35, v36);
  sub_1BAAE7800(v18, v19, v20);
  v24 = v47;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24;
  sub_1BAAE5904(v18, v19, v20, v22, v23, v25);

  sub_1BAAE7878(v18, v19, v20);
  v47 = v35;
  __swift_destroy_boxed_opaque_existential_1(&v40);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v26 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v26);

  MEMORY[0x1BFAFD240](0x20544F4E20534920, 0xED00003B4C4C554ELL);
  v27 = v45;
  v28 = v46;
  v29 = v47;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v40 = v29;
    v41 = v27;
    v42 = v28;
    v32 = SQLDatabase.perform(_:)(&v40);

    if (!v34)
    {
      v31 = sub_1BAAE789C(v32, sub_1BAAE1DD4);
    }

    return v31;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAADECAC()
{
  v0 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v72 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BABE6CFC();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = 0;
  v87 = 0xE000000000000000;
  v3 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v88 = v3;
  MEMORY[0x1BFAFD200](76);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE71FC();
  v84 = MEMORY[0x1E69E6158];
  v85 = &protocol witness table for String;
  v81 = v7;
  v82 = v8;
  sub_1BAAE779C(&v81, &v76);

  SQLValue.init(_:)(&v76, &v78);
  v9 = v78;
  v10 = v79;
  v11 = v80;
  v76 = 0x676E69646E696240;
  v77 = 0xE800000000000000;
  v89 = *(v3 + 16) + 1;
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v13 = v76;
  v14 = v77;
  MEMORY[0x1BFAFD240](v76, v77);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v88;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v15;
  sub_1BAAE5904(v9, v10, v11, v13, v14, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v17 = v76;
  v88 = v76;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v19 = sub_1BABE718C();
  v21 = v20;

  v84 = MEMORY[0x1E69E6158];
  v85 = &protocol witness table for String;
  v81 = v19;
  v82 = v21;
  sub_1BAAE779C(&v81, &v76);

  SQLValue.init(_:)(&v76, &v78);
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v76 = 0x676E69646E696240;
  v77 = 0xE800000000000000;
  v89 = *(v17 + 16) + 1;
  v25 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v25);

  v26 = v76;
  v27 = v77;
  MEMORY[0x1BFAFD240](v76, v77);
  sub_1BAAE7800(v22, v23, v24);
  v28 = v88;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v28;
  sub_1BAAE5904(v22, v23, v24, v26, v27, v29);

  sub_1BAAE7878(v22, v23, v24);
  v30 = v76;
  v88 = v76;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v31 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v31);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v32 = sub_1BABE717C();
  v34 = v33;

  v84 = MEMORY[0x1E69E6158];
  v85 = &protocol witness table for String;
  v81 = v32;
  v82 = v34;
  sub_1BAAE779C(&v81, &v76);

  SQLValue.init(_:)(&v76, &v78);
  v35 = v78;
  v36 = v79;
  v37 = v80;
  v76 = 0x676E69646E696240;
  v77 = 0xE800000000000000;
  v89 = *(v30 + 16) + 1;
  v38 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v38);

  v39 = v76;
  v40 = v77;
  MEMORY[0x1BFAFD240](v76, v77);
  sub_1BAAE7800(v35, v36, v37);
  v41 = v88;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v41;
  sub_1BAAE5904(v35, v36, v37, v39, v40, v42);

  v43 = v71;

  sub_1BAAE7878(v35, v36, v37);
  v44 = v76;
  v88 = v76;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v45 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v45);
  v46 = v72;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v47 = v73;
  sub_1BABE722C();
  if ((*(v43 + 48))(v46, 1, v47) == 1)
  {
    v48 = v74;
    if (qword_1EBC12280 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v47, qword_1EBC25000);
    (*(v43 + 16))(v48, v49, v47);
  }

  else
  {
    v48 = v74;
    (*(v43 + 32))(v74, v46, v47);
  }

  v50 = sub_1BABE6CAC();
  v52 = v51;
  (*(v43 + 8))(v48, v47);
  v84 = MEMORY[0x1E69E6158];
  v85 = &protocol witness table for String;
  v81 = v50;
  v82 = v52;
  sub_1BAAE779C(&v81, &v76);

  SQLValue.init(_:)(&v76, &v78);
  v53 = v78;
  v54 = v79;
  v55 = v80;
  v76 = 0x676E69646E696240;
  v77 = 0xE800000000000000;
  v89 = *(v44 + 16) + 1;
  v56 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v56);

  v57 = v76;
  v58 = v77;
  MEMORY[0x1BFAFD240](v76, v77);
  sub_1BAAE7800(v53, v54, v55);
  v59 = v88;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v59;
  sub_1BAAE5904(v53, v54, v55, v57, v58, v60);

  sub_1BAAE7878(v53, v54, v55);
  v88 = v76;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v61 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v61);

  MEMORY[0x1BFAFD240](0x20544F4E20534920, 0xEC0000004C4C554ELL);
  v62 = v86;
  v63 = v87;
  v64 = v88;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v66 = Strong;
    v81 = v64;
    v82 = v62;
    v83 = v63;
    v67 = v75;
    v68 = SQLDatabase.perform(_:)(&v81);

    if (!v67)
    {
      v66 = sub_1BAAE789C(v68, sub_1BAAE1DD4);
    }

    return v66;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAADF674(uint64_t a1)
{
  v46 = 0;
  v47 = 0xE000000000000000;
  v2 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v48 = v2;
  MEMORY[0x1BFAFD200](47);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE718C();
  v44 = MEMORY[0x1E69E6158];
  v45 = &protocol witness table for String;
  v41 = v7;
  v42 = v8;
  sub_1BAAE779C(&v41, &v36);

  SQLValue.init(_:)(&v36, &v38);
  v9 = v38;
  v10 = v39;
  v11 = v40;
  v36 = 0x676E69646E696240;
  v37 = 0xE800000000000000;
  v49 = *(v2 + 16) + 1;
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v14 = v36;
  v13 = v37;
  MEMORY[0x1BFAFD240](v36, v37);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_1BAAE5904(v9, v10, v11, v14, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v17 = v36;
  v48 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v41);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v19 = sub_1BABE717C();
  v44 = MEMORY[0x1E69E6158];
  v45 = &protocol witness table for String;
  v41 = v19;
  v42 = v20;
  sub_1BAAE779C(&v41, &v36);

  SQLValue.init(_:)(&v36, &v38);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v36 = 0x676E69646E696240;
  v37 = 0xE800000000000000;
  v49 = *(v17 + 16) + 1;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v25 = v36;
  v26 = v37;
  MEMORY[0x1BFAFD240](v36, v37);
  sub_1BAAE7800(v21, v22, v23);
  v27 = v48;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v27;
  sub_1BAAE5904(v21, v22, v23, v25, v26, v28);

  sub_1BAAE7878(v21, v22, v23);
  v29 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v30 = v46;
  v31 = v47;
  if (swift_weakLoadStrong())
  {
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v32 = SQLDatabase.perform(_:)(&v41);
    v33 = v35;

    if (!v35)
    {
      v33 = sub_1BAAE794C(v32, a1);
    }

    return v33;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAADFB50()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](36);
  MEMORY[0x1BFAFD240](0xD000000000000014, 0x80000001BABF5780);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  if (swift_weakLoadStrong())
  {
    v9 = v11;
    v10 = 0;
    v11 = 0xE000000000000000;
    v5 = SQLDatabase.perform(_:)(&v9);

    if (!v0)
    {
      v9 = v1;
      v6 = v5[2];
      if (v6)
      {
        v7 = 0;
        while (v7 < v5[2])
        {
          v12 = v5[v7 + 4];

          sub_1BAADFDC0(&v9, &v12);
          ++v7;

          if (v6 == v7)
          {
            v1 = v9;
            goto LABEL_9;
          }
        }

        __break(1u);

        __break(1u);
        goto LABEL_13;
      }

LABEL_9:
    }

    return v1;
  }

LABEL_13:
  result = sub_1BABE7C9C();
  __break(1u);
  return result;
}

void sub_1BAADFDC0(void *a1, uint64_t *a2)
{
  v3 = sub_1BABE7B0C();
  SQLResult.subscript.getter(v3, v4, &v31);

  v5 = v32;
  if (v32 != 255)
  {
    v6 = v31;
    sub_1BAAF9770(v31, *(&v31 + 1), v32);
    v8 = v7;
    sub_1BAAE8B8C(v6, *(&v6 + 1), v5);
    if (v8)
    {
      v9 = sub_1BABE7B0C();
      SQLResult.subscript.getter(v9, v10, &v31);

      v11 = v32;
      if (v32 != 255)
      {
        v12 = v31;
        sub_1BAAF9770(v31, *(&v31 + 1), v32);
        v14 = v13;
        sub_1BAAE8B8C(v12, *(&v12 + 1), v11);
        if (v14)
        {
          sub_1BABE71AC();
          sub_1BABE719C();

          MEMORY[0x1BFAFD300](v15);
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BABE76EC();
          }

          sub_1BABE772C();
          return;
        }
      }
    }
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v16 = sub_1BABE72BC();
  __swift_project_value_buffer(v16, qword_1EBC25018);

  v17 = sub_1BABE729C();
  v18 = sub_1BABE78EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    v21 = sub_1BABE7B0C();
    SQLResult.subscript.getter(v21, v22, &v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127E0, &qword_1BABE9B48);
    v23 = sub_1BABE755C();
    v25 = sub_1BAAFA460(v23, v24, &v33);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = sub_1BABE7B0C();
    SQLResult.subscript.getter(v26, v27, &v31);

    v28 = sub_1BABE755C();
    v30 = sub_1BAAFA460(v28, v29, &v33);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_1BAACF000, v17, v18, "Encountered malformed record data: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v20, -1, -1);
    MEMORY[0x1BFAFE460](v19, -1, -1);
  }
}

uint64_t sub_1BAAE0194()
{
  MEMORY[0x1BFAFD240]();
  v31 = 0;
  v32 = 0xE000000000000000;
  v1 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v33 = v1;
  MEMORY[0x1BFAFD200](93);
  MEMORY[0x1BFAFD240](0xD000000000000035, 0x80000001BABF57A0);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000013, 0x80000001BABF57E0);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x20454B494C20, 0xE600000000000000);
  v29 = MEMORY[0x1E69E6158];
  v30 = &protocol witness table for String;
  v26 = 37;
  v27 = 0xE100000000000000;
  sub_1BAAE779C(&v26, &v22);

  SQLValue.init(_:)(&v22, v24);
  v4 = v24[0];
  v5 = v24[1];
  v6 = v25;
  v22 = 0x676E69646E696240;
  v23 = 0xE800000000000000;
  v34 = *(v1 + 16) + 1;
  v7 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v7);

  v8 = v22;
  v9 = v23;
  MEMORY[0x1BFAFD240](v22, v23);
  sub_1BAAE7800(v4, v5, v6);
  v10 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v10;
  sub_1BAAE5904(v4, v5, v6, v8, v9, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v4, v5, v6);
  v33 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v26);
  MEMORY[0x1BFAFD240](0x522220534120290ALL, 0xEF3B22746C757365);
  v12 = v31;
  v13 = v32;
  v14 = v33;
  if (swift_weakLoadStrong())
  {
    v26 = v14;
    v27 = v12;
    v28 = v13;
    v15 = SQLDatabase.perform(_:)(&v26);

    if (!v0)
    {
      if (v15[2])
      {
        v18 = v15[4];

        v19 = sub_1BAAE050C(0x746C75736552, 0xE600000000000000, v18);
        v21 = v20;

        return (v21 & 1) == 0 && v19 == 1;
      }

      else
      {

        return 0;
      }
    }

    return v16;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAE050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  SQLResult.subscript.getter(a1, a2, &v16);
  if (v17 == 255)
  {
    return 0;
  }

  v4 = v16;
  if (v17 <= 1u)
  {
    if (v17)
    {
      v14 = MEMORY[0x1E69E63B0];
      v15 = &protocol witness table for Double;
      v7 = v16;
      v8 = 1;
    }

    else
    {
      v14 = MEMORY[0x1E69E7360];
      v15 = &protocol witness table for Int64;
      v7 = v16;
      v8 = 0;
    }

    sub_1BAAE8B8C(v7, *(&v16 + 1), v8);
    *&v13 = v4;
    goto LABEL_14;
  }

  if (v17 == 2)
  {
    v5 = MEMORY[0x1E69E6158];
    v6 = &protocol witness table for String;
    goto LABEL_10;
  }

  if (v17 == 3)
  {
    v5 = MEMORY[0x1E6969080];
    v6 = &protocol witness table for Data;
LABEL_10:
    v14 = v5;
    v15 = v6;
    v13 = v16;
    goto LABEL_14;
  }

  v9 = *(&v16 + 1);
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v14 = sub_1BAAE7A30();
  v15 = &protocol witness table for NSNull;
  sub_1BAAE8B8C(v4, v9, 4);
  *&v13 = v10;
LABEL_14:
  sub_1BAAE7A7C(&v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8, &qword_1BABE9B40);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAAE0690(uint64_t a1)
{
  v60 = 0;
  v61 = 0xE000000000000000;
  v2 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v62 = v2;
  MEMORY[0x1BFAFD200](57);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE718C();
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v7;
  v56 = v8;
  sub_1BAAE779C(&v55, &v50);

  SQLValue.init(_:)(&v50, &v52);
  v10 = v52;
  v9 = v53;
  v11 = v54;
  v50 = 0x676E69646E696240;
  v51 = 0xE800000000000000;
  v63 = *(v2 + 16) + 1;
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v14 = v50;
  v13 = v51;
  MEMORY[0x1BFAFD240](v50, v51);
  sub_1BAAE7800(v10, v9, v11);
  v15 = v62;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v15;
  sub_1BAAE5904(v10, v9, v11, v14, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v9, v11);
  v17 = v50;
  v62 = v50;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v48 = a1;
  v19 = sub_1BABE717C();
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v19;
  v56 = v20;
  sub_1BAAE779C(&v55, &v50);

  SQLValue.init(_:)(&v50, &v52);
  v21 = v52;
  v22 = v53;
  v23 = v54;
  v50 = 0x676E69646E696240;
  v51 = 0xE800000000000000;
  v63 = *(v17 + 16) + 1;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v25 = v50;
  v26 = v51;
  MEMORY[0x1BFAFD240](v50, v51);
  sub_1BAAE7800(v21, v22, v23);
  v27 = v62;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v27;
  sub_1BAAE5904(v21, v22, v23, v25, v26, v28);

  sub_1BAAE7878(v21, v22, v23);
  v29 = v50;
  v62 = v50;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v30 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v30);

  MEMORY[0x1BFAFD240](540877088, 0xE400000000000000);
  if (qword_1EBC12280 != -1)
  {
    swift_once();
  }

  v31 = sub_1BABE6CFC();
  __swift_project_value_buffer(v31, qword_1EBC25000);
  v32 = sub_1BABE6CAC();
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v32;
  v56 = v33;
  sub_1BAAE779C(&v55, &v50);

  SQLValue.init(_:)(&v50, &v52);
  v34 = v52;
  v35 = v53;
  v36 = v54;
  v50 = 0x676E69646E696240;
  v51 = 0xE800000000000000;
  v63 = *(v29 + 16) + 1;
  v37 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v37);

  v38 = v50;
  v39 = v51;
  MEMORY[0x1BFAFD240](v50, v51);
  sub_1BAAE7800(v34, v35, v36);
  v40 = v62;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v40;
  sub_1BAAE5904(v34, v35, v36, v38, v39, v41);

  sub_1BAAE7878(v34, v35, v36);
  v62 = v50;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  if (swift_weakLoadStrong())
  {
    v55 = v44;
    v56 = v42;
    v57 = v43;
    v45 = SQLDatabase.perform(_:)(&v55);
    v46 = v49;

    if (!v49)
    {
      v46 = sub_1BAAE794C(v45, v48);
    }

    return v46;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAE0D38()
{
  v0 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v73 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BABE6CFC();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = 0;
  v88 = 0xE000000000000000;
  v3 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v89 = v3;
  MEMORY[0x1BFAFD200](72);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v9 = sub_1BABE71FC();
  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v9;
  v83 = v10;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v11 = v79;
  v12 = v80;
  v13 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v3 + 16) + 1;
  v14 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v14);

  v15 = v77;
  v16 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v11, v12, v13);
  v17 = v89;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v17;
  sub_1BAAE5904(v11, v12, v13, v15, v16, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v11, v12, v13);
  v19 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v21 = sub_1BABE718C();
  v23 = v22;

  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v21;
  v83 = v23;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v24 = v79;
  v25 = v80;
  v26 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v19 + 16) + 1;
  v27 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v27);

  v29 = v77;
  v28 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v24, v25, v26);
  v30 = v89;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v30;
  sub_1BAAE5904(v24, v25, v26, v29, v28, v31);

  sub_1BAAE7878(v24, v25, v26);
  v32 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v33 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v33);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v34 = sub_1BABE717C();
  v36 = v35;

  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v34;
  v83 = v36;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v37 = v79;
  v38 = v80;
  v39 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v32 + 16) + 1;
  v40 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v40);

  v41 = v77;
  v42 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v37, v38, v39);
  v43 = v89;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v43;
  sub_1BAAE5904(v37, v38, v39, v41, v42, v44);

  v45 = v72;

  sub_1BAAE7878(v37, v38, v39);
  v46 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v47 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v47);
  v48 = v73;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v49 = v74;
  sub_1BABE722C();
  if ((*(v45 + 48))(v48, 1, v49) == 1)
  {
    v50 = v75;
    if (qword_1EBC12280 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v49, qword_1EBC25000);
    (*(v45 + 16))(v50, v51, v49);
  }

  else
  {
    v50 = v75;
    (*(v45 + 32))(v75, v48, v49);
  }

  v52 = sub_1BABE6CAC();
  v54 = v53;
  (*(v45 + 8))(v50, v49);
  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v52;
  v83 = v54;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v55 = v79;
  v56 = v80;
  v57 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v46 + 16) + 1;
  v58 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v58);

  v59 = v77;
  v60 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v55, v56, v57);
  v61 = v89;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v61;
  sub_1BAAE5904(v55, v56, v57, v59, v60, v62);

  sub_1BAAE7878(v55, v56, v57);
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v63 = v87;
  v64 = v88;
  v65 = v89;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = Strong;
    v82 = v65;
    v83 = v63;
    v84 = v64;
    v68 = v76;
    v69 = SQLDatabase.perform(_:)(&v82);

    if (!v68)
    {
      v67 = sub_1BAAE789C(v69, sub_1BAAE171C);
    }

    return v67;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAAE171C(uint64_t *a1, void **a2)
{
  v3 = v2;
  v6 = sub_1BABE728C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE6AFC();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v52 - v15;
  v17 = *a2;
  v18 = sub_1BABE7B0C();
  *&v61 = v17;
  SQLResult.subscript.getter(v18, v19, &v65);

  if (v66 == 255)
  {
    goto LABEL_19;
  }

  v20 = v65;
  if (v66 <= 1u)
  {
    if (v66)
    {
      v63 = MEMORY[0x1E69E63B0];
      v64 = &protocol witness table for Double;
      v24 = *(&v65 + 1);
      v23 = v65;
      v25 = 1;
    }

    else
    {
      v63 = MEMORY[0x1E69E7360];
      v64 = &protocol witness table for Int64;
      v24 = *(&v65 + 1);
      v23 = v65;
      v25 = 0;
    }

    sub_1BAAE8B8C(v23, v24, v25);
    *&v61 = v20;
  }

  else
  {
    if (v66 == 2)
    {
      v21 = MEMORY[0x1E69E6158];
      v22 = &protocol witness table for String;
      goto LABEL_9;
    }

    if (v66 == 3)
    {
      v21 = MEMORY[0x1E6969080];
      v22 = &protocol witness table for Data;
LABEL_9:
      v63 = v21;
      v64 = v22;
      v61 = v65;
      goto LABEL_13;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v55 = a1;
    v27 = v26;
    v63 = sub_1BAAE7A30();
    v64 = &protocol witness table for NSNull;
    sub_1BAAE8B8C(v20, *(&v20 + 1), 4);
    *&v61 = v27;
    v3 = v2;
    a1 = v55;
  }

LABEL_13:
  sub_1BAAE7A7C(&v61, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8, &qword_1BABE9B40);
  if (!swift_dynamicCast())
  {
    v59 = xmmword_1BABE9A70;
    v31 = 0;
    v32 = 0xF000000000000000;
    goto LABEL_18;
  }

  v28 = *(&v59 + 1);
  if (*(&v59 + 1) >> 60 == 15)
  {
LABEL_19:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v33 = sub_1BABE72BC();
    __swift_project_value_buffer(v33, qword_1EBC25018);
    v34 = sub_1BABE729C();
    v35 = sub_1BABE78EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BAACF000, v34, v35, "Encountered malformed record data", v36, 2u);
      MEMORY[0x1BFAFE460](v36, -1, -1);
    }

    return;
  }

  v29 = v59;
  v55 = sub_1BAB27AAC("ProtocolVersion", 15, 2, v17);
  if (v30)
  {
    v31 = v29;
    v32 = v28;
LABEL_18:
    sub_1BAADAEE8(v31, v32);
    goto LABEL_19;
  }

  v53 = v29;
  v54 = v28;
  v52[1] = v3;
  v37 = sub_1BABE7B0C();
  v60[0] = v17;
  SQLResult.subscript.getter(v37, v38, &v61);

  v39 = v62;
  if (v62 == 255 || (v40 = v61, v52[0] = sub_1BAAF9770(v61, *(&v61 + 1), v62), v42 = v41, sub_1BAAE8B8C(v40, *(&v40 + 1), v39), !v42))
  {
    v45 = sub_1BABE6BAC();
    (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
  }

  else
  {
    v43 = sub_1BABE6BAC();
    v44 = *(*(v43 - 8) + 56);
    v44(v14, 1, 1, v43);
    (*(v56 + 104))(v10, *MEMORY[0x1E6968F70], v8);
    sub_1BABE6B7C();
    v44(v16, 0, 1, v43);
  }

  v46 = v67;
  v48 = v53;
  v47 = v54;
  if (v55 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  sub_1BAAD2DAC(v16, v14, &unk_1EBC13D70, &unk_1BABE9A80);
  sub_1BAAE7824(v48, v47);
  sub_1BABE724C();
  v48 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v48 = sub_1BAAF98A8(0, v48[2] + 1, 1, v48);
  }

  v49 = v58;
  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_1BAAF98A8((v50 > 1), v51 + 1, 1, v48);
  }

  sub_1BAADAEE8(v53, v54);
  sub_1BAAD2E14(v16, &unk_1EBC13D70, &unk_1BABE9A80);
  v48[2] = v51 + 1;
  (*(v57 + 32))(v48 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v51, v46, v49);
  *a1 = v48;
}

void sub_1BAAE1DD4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1BABE6AFC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v35 - v8;
  v10 = sub_1BABE6BAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = *a2;
  v17 = sub_1BABE7B0C();
  v43 = v16;
  SQLResult.subscript.getter(v17, v18, &v40);

  v19 = v42;
  if (v42 == 255 || (v20 = v10, v36 = a1, v22 = v40, v21 = v41, v35[1] = sub_1BAAF9770(v40, v41, v42), v24 = v23, sub_1BAAE8B8C(v22, v21, v19), !v24))
  {
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v31 = sub_1BABE72BC();
    __swift_project_value_buffer(v31, qword_1EBC25018);
    v32 = sub_1BABE729C();
    v33 = sub_1BABE78EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BAACF000, v32, v33, "Encountered malformed record data", v34, 2u);
      MEMORY[0x1BFAFE460](v34, -1, -1);
    }
  }

  else
  {
    v25 = v20;
    (*(v11 + 56))(v9, 1, 1, v20);
    (*(v37 + 104))(v6, *MEMORY[0x1E6968F70], v38);
    sub_1BABE6B7C();
    v26 = v39;
    (*(v11 + 16))(v39, v15, v20);
    v27 = v36;
    v28 = *v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1BAAF98D0(0, v28[2] + 1, 1, v28);
    }

    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1BAAF98D0((v29 > 1), v30 + 1, 1, v28);
    }

    (*(v11 + 8))(v15, v25);
    v28[2] = v30 + 1;
    (*(v11 + 32))(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v26, v25);
    *v27 = v28;
  }
}

void sub_1BAAE21F4(void *a1, uint64_t *a2, uint64_t a3)
{
  v49 = a3;
  v6 = sub_1BABE721C();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v45 - v12;
  v14 = sub_1BABE6CFC();
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = sub_1BABE7B0C();
  v54 = v17;
  SQLResult.subscript.getter(v18, v19, &v51);

  v20 = v53;
  if (v53 == 255)
  {
    goto LABEL_12;
  }

  v46 = v10;
  v47 = a1;
  v22 = v51;
  v21 = v52;
  v45[1] = sub_1BAAF9770(v51, v52, v53);
  v24 = v23;
  sub_1BAAE8B8C(v22, v21, v20);
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = sub_1BABE7B0C();
  v54 = v17;
  SQLResult.subscript.getter(v25, v26, &v51);

  v27 = v53;
  if (v53 == 255 || (v45[0] = v3, v29 = v51, v28 = v52, sub_1BAAF9770(v51, v52, v53), v31 = v30, sub_1BAAE8B8C(v29, v28, v27), !v31))
  {

LABEL_12:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v37 = sub_1BABE72BC();
    __swift_project_value_buffer(v37, qword_1EBC25018);
    v34 = sub_1BABE729C();
    v38 = sub_1BABE78EC();
    if (os_log_type_enabled(v34, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BAACF000, v34, v38, "Encountered malformed record data", v39, 2u);
      MEMORY[0x1BFAFE460](v39, -1, -1);
    }

    goto LABEL_16;
  }

  sub_1BABE6C9C();

  v32 = v50;
  if ((*(v50 + 48))(v13, 1, v14) == 1)
  {

    sub_1BAAD2E14(v13, &qword_1EBC12B60, &qword_1BABE9B50);
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v33 = sub_1BABE72BC();
    __swift_project_value_buffer(v33, qword_1EBC25018);
    v34 = sub_1BABE729C();
    v35 = sub_1BABE78EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BAACF000, v34, v35, "Encountered malformed relationship ID", v36, 2u);
      MEMORY[0x1BFAFE460](v36, -1, -1);
    }

LABEL_16:

    return;
  }

  (*(v32 + 32))(v16, v13, v14);
  if (qword_1EBC12280 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EBC25000);
  v40 = sub_1BABE6CCC();
  v41 = v47;
  if (v40)
  {
    v42 = 1;
    v43 = v46;
  }

  else
  {
    v43 = v46;
    (*(v32 + 16))(v46, v16, v14);
    v42 = 0;
  }

  (*(v32 + 56))(v43, v42, 1, v14);
  sub_1BAAE8BA0(v43, v48, MEMORY[0x1E69C7330]);
  sub_1BABE723C();
  swift_allocObject();

  sub_1BABE71EC();

  MEMORY[0x1BFAFD300](v44);
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BABE76EC();
    v32 = v50;
  }

  sub_1BABE772C();

  sub_1BAAE8C08(v43);
  (*(v32 + 8))(v16, v14);
}

uint64_t Database.RecordDataStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAAE2854(uint64_t a1, char *a2)
{
  v5 = v2;
  v115 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v106 - v8;
  v10 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BABE6CFC();
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock((v4 + 16));
  sub_1BAAE7A18(&v122);
  if (v3)
  {
LABEL_21:
    os_unfair_lock_unlock((v4 + 16));
    __break(1u);
    return;
  }

  v15 = 0;
  os_unfair_lock_unlock((v4 + 16));
  v16 = v122;

  if (v16 != 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v110 = v9;
  v114 = a2;
  v107 = 0;
  v108 = v5;
  v127 = 0;
  v128 = 0xE000000000000000;
  v17 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v129 = v17;
  MEMORY[0x1BFAFD200](111);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v19 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v19);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v21);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v22 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v22);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v24 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v24);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v25 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v25);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v26 = sub_1BABE71FC();
  v125 = MEMORY[0x1E69E6158];
  v126 = &protocol witness table for String;
  v122 = v26;
  v123 = v27;
  sub_1BAAE779C(&v122, &v116);

  SQLValue.init(_:)(&v116, &v119);
  v28 = v119;
  v29 = v120;
  v30 = v121;
  *&v116 = 0x676E69646E696240;
  *(&v116 + 1) = 0xE800000000000000;
  v130 = *(v17 + 16) + 1;
  v31 = sub_1BABE7EAC();
  v109 = v12;
  MEMORY[0x1BFAFD240](v31);

  v32 = *(&v116 + 1);
  v33 = v116;
  MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
  sub_1BAAE7800(v28, v29, v30);
  v34 = v129;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v116 = v34;
  sub_1BAAE5904(v28, v29, v30, v33, v32, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v28, v29, v30);
  v36 = v116;
  v129 = v116;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE720C();
  v37 = sub_1BABE718C();
  v39 = v38;

  v125 = MEMORY[0x1E69E6158];
  v126 = &protocol witness table for String;
  v122 = v37;
  v123 = v39;
  sub_1BAAE779C(&v122, &v116);

  SQLValue.init(_:)(&v116, &v119);
  v40 = v119;
  v41 = v120;
  v42 = v121;
  *&v116 = 0x676E69646E696240;
  *(&v116 + 1) = 0xE800000000000000;
  v130 = *(v36 + 16) + 1;
  v43 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v43);

  v45 = *(&v116 + 1);
  v44 = v116;
  MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
  sub_1BAAE7800(v40, v41, v42);
  v46 = v129;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v116 = v46;
  sub_1BAAE5904(v40, v41, v42, v44, v45, v47);

  v12 = v109;

  sub_1BAAE7878(v40, v41, v42);
  v48 = v116;
  v129 = v116;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE720C();
  v49 = sub_1BABE717C();
  v51 = v50;

  v125 = MEMORY[0x1E69E6158];
  v126 = &protocol witness table for String;
  v122 = v49;
  v123 = v51;
  sub_1BAAE779C(&v122, &v116);

  SQLValue.init(_:)(&v116, &v119);
  v52 = v119;
  v53 = v120;
  v54 = v121;
  *&v116 = 0x676E69646E696240;
  *(&v116 + 1) = 0xE800000000000000;
  v130 = *(v48 + 16) + 1;
  v55 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v55);

  v57 = *(&v116 + 1);
  v56 = v116;
  MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
  sub_1BAAE7800(v52, v53, v54);
  v58 = v129;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *&v116 = v58;
  sub_1BAAE5904(v52, v53, v54, v56, v57, v59);

  sub_1BAAE7878(v52, v53, v54);
  v15 = v116;
  v129 = v116;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v60 = v111;
  sub_1BABE722C();
  v4 = v113;
  if ((*(v113 + 48))(v60, 1, v12) != 1)
  {
    v16 = v112;
    (*(v4 + 32))(v112, v60, v12);
    goto LABEL_8;
  }

  v16 = v112;
  if (qword_1EBC12280 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v61 = __swift_project_value_buffer(v12, qword_1EBC25000);
    (*(v4 + 16))(v16, v61, v12);
LABEL_8:
    v62 = MEMORY[0x1E69E6158];
    v63 = sub_1BABE6CAC();
    v65 = v64;
    (*(v4 + 8))(v16, v12);
    v125 = v62;
    v126 = &protocol witness table for String;
    v122 = v63;
    v123 = v65;
    sub_1BAAE779C(&v122, &v116);

    SQLValue.init(_:)(&v116, &v119);
    v66 = v119;
    v67 = v120;
    v68 = v121;
    *&v116 = 0x676E69646E696240;
    *(&v116 + 1) = 0xE800000000000000;
    v130 = *(v15 + 16) + 1;
    v69 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v69);

    v71 = *(&v116 + 1);
    v70 = v116;
    MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
    sub_1BAAE7800(v66, v67, v68);
    v72 = v129;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v72;
    sub_1BAAE5904(v66, v67, v68, v70, v71, v73);

    sub_1BAAE7878(v66, v67, v68);
    v12 = v116;
    v129 = v116;
    __swift_destroy_boxed_opaque_existential_1(&v122);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v74 = sub_1BABE727C();
    v76 = v75;
    v125 = MEMORY[0x1E6969080];
    v126 = &protocol witness table for Data;
    v122 = v74;
    v123 = v75;
    sub_1BAAE779C(&v122, &v116);
    sub_1BAAE7824(v74, v76);
    SQLValue.init(_:)(&v116, &v119);
    v77 = v119;
    v78 = v120;
    v79 = v121;
    *&v116 = 0x676E69646E696240;
    *(&v116 + 1) = 0xE800000000000000;
    v130 = *(v12 + 16) + 1;
    v80 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v80);

    v15 = *(&v116 + 1);
    v81 = v116;
    MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
    sub_1BAAE7800(v77, v78, v79);
    v82 = v129;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v82;
    sub_1BAAE5904(v77, v78, v79, v81, v15, v83);

    v84 = v76;
    v85 = v114;
    sub_1BAAD73E4(v74, v84);
    sub_1BAAE7878(v77, v78, v79);
    v129 = v116;
    __swift_destroy_boxed_opaque_existential_1(&v122);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v4 = v110;
    sub_1BABE726C();
    v86 = sub_1BABE6BAC();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v4, 1, v86) == 1)
    {
      sub_1BAAD2E14(v4, &unk_1EBC13D70, &unk_1BABE9A80);
      v116 = 0u;
      v117 = 0u;
      v118 = 0;
      v88 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v125 = sub_1BAAE7A30();
      v126 = &protocol witness table for NSNull;
      v122 = v88;
      if (*(&v117 + 1))
      {
        sub_1BAAD2E14(&v116, &qword_1EBC12770, &unk_1BABE9B80);
      }
    }

    else
    {
      v89 = sub_1BABE6B5C();
      v15 = v90;
      (*(v87 + 8))(v4, v86);
      *(&v117 + 1) = MEMORY[0x1E69E6158];
      v118 = &protocol witness table for String;
      *&v116 = v89;
      *(&v116 + 1) = v15;
      sub_1BAAE7A7C(&v116, &v122);
    }

    v91 = v125;
    v92 = v126;
    v93 = __swift_project_boxed_opaque_existential_1(&v122, v125);
    sub_1BABA876C(v93, &v127, v91, v92);
    __swift_destroy_boxed_opaque_existential_1(&v122);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v16 = v85;
    v94 = sub_1BABE725C();
    if ((v94 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v125 = MEMORY[0x1E69E7360];
  v126 = &protocol witness table for Int64;
  v122 = v94;
  sub_1BAAE779C(&v122, &v116);
  SQLValue.init(_:)(&v116, &v119);
  v95 = v119;
  v96 = v120;
  v97 = v121;
  *&v116 = 0x676E69646E696240;
  *(&v116 + 1) = 0xE800000000000000;
  v130 = *(v129 + 16) + 1;
  v98 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v98);

  v99 = *(&v116 + 1);
  v4 = v116;
  MEMORY[0x1BFAFD240](v116, *(&v116 + 1));
  sub_1BAAE7800(v95, v96, v97);
  v100 = v129;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  *&v116 = v100;
  sub_1BAAE5904(v95, v96, v97, v4, v99, v101);

  sub_1BAAE7878(v95, v96, v97);
  v129 = v116;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v102 = v127;
  v103 = v128;
  v104 = v129;
  if (!swift_weakLoadStrong())
  {
LABEL_20:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_21;
  }

  v122 = v104;
  v123 = v102;
  v124 = v103;
  v105 = v107;
  SQLDatabase.perform(_:)(&v122);

  if (!v105)
  {
  }
}

void sub_1BAAE371C(uint64_t a1)
{
  v5 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BABE6CFC();
  v7 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v11 = Strong;
  v12 = &v70;
  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAE8C68(&v82);
  if (v2)
  {
LABEL_15:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v13 = v82;

  if (v13 != 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v72 = v9;
  v73 = 0;
  v74 = v1;
  v87 = 0;
  v88 = 0xE000000000000000;
  v14 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v89 = v14;
  MEMORY[0x1BFAFD200](51);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v17 = sub_1BABE71FC();
  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v17;
  v83 = v18;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v19 = v79;
  v20 = v80;
  v21 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v14 + 16) + 1;
  v22 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v22);

  v23 = v77;
  v24 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v19, v20, v21);
  v25 = v89;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v25;
  sub_1BAAE5904(v19, v20, v21, v23, v24, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v19, v20, v21);
  v27 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v71 = v7;
  MEMORY[0x1BFAFD240]();
  v28 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v28);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v29 = sub_1BABE718C();
  v31 = v30;

  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v29;
  v83 = v31;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v32 = v79;
  v33 = v80;
  v34 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v27 + 16) + 1;
  v35 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v35);

  v37 = v77;
  v36 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v32, v33, v34);
  v38 = v89;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v38;
  sub_1BAAE5904(v32, v33, v34, v37, v36, v39);

  sub_1BAAE7878(v32, v33, v34);
  v40 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v41 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v41);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v42 = sub_1BABE717C();
  v44 = v43;

  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v42;
  v83 = v44;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v45 = v79;
  v46 = v80;
  v47 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *(v40 + 16) + 1;
  v48 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v48);

  v49 = v77;
  v50 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v45, v46, v47);
  v51 = v89;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v51;
  sub_1BAAE5904(v45, v46, v47, v49, v50, v52);

  sub_1BAAE7878(v45, v46, v47);
  v3 = v77;
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v12 = v71;
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v53 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v53);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v54 = v76;
  sub_1BABE722C();
  a1 = v75;
  if ((v12[6])(v54, 1, v75) == 1)
  {
    v11 = v72;
    if (qword_1EBC12280 == -1)
    {
LABEL_6:
      v55 = __swift_project_value_buffer(a1, qword_1EBC25000);
      (v12[2])(v11, v55, a1);
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v11 = v72;
  (v12[4])(v72, v54, a1);
LABEL_8:
  v56 = sub_1BABE6CAC();
  v58 = v57;
  (v12[1])(v11, a1);
  v85 = MEMORY[0x1E69E6158];
  v86 = &protocol witness table for String;
  v82 = v56;
  v83 = v58;
  sub_1BAAE779C(&v82, &v77);

  SQLValue.init(_:)(&v77, &v79);
  v59 = v79;
  v60 = v80;
  v61 = v81;
  v77 = 0x676E69646E696240;
  v78 = 0xE800000000000000;
  v90 = *&v3[4]._os_unfair_lock_opaque + 1;
  v62 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v62);

  v3 = v77;
  v63 = v78;
  MEMORY[0x1BFAFD240](v77, v78);
  sub_1BAAE7800(v59, v60, v61);
  v64 = v89;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v64;
  sub_1BAAE5904(v59, v60, v61, v3, v63, v65);

  sub_1BAAE7878(v59, v60, v61);
  v89 = v77;
  __swift_destroy_boxed_opaque_existential_1(&v82);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v66 = v87;
  v67 = v88;
  v68 = v89;
  if (!swift_weakLoadStrong())
  {
LABEL_14:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_15;
  }

  v82 = v68;
  v83 = v66;
  v84 = v67;
  v69 = v73;
  SQLDatabase.perform(_:)(&v82);

  if (!v69)
  {
  }
}

void sub_1BAAE40D4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAE8C68(&v37);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v37;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v44 = v4;
  MEMORY[0x1BFAFD200](33);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE718C();
  v40 = MEMORY[0x1E69E6158];
  v41 = &protocol witness table for String;
  v37 = v7;
  v38 = v8;
  sub_1BAAE779C(&v37, &v32);

  SQLValue.init(_:)(&v32, &v34);
  v9 = v34;
  v10 = v35;
  v11 = v36;
  v32 = 0x676E69646E696240;
  v33 = 0xE800000000000000;
  v45 = *(v4 + 16) + 1;
  v1 = MEMORY[0x1E69E6590];
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v13 = v32;
  v14 = v33;
  MEMORY[0x1BFAFD240](v32, v33);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v15;
  sub_1BAAE5904(v9, v10, v11, v13, v14, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v17 = v32;
  v44 = v32;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v19 = sub_1BABE717C();
  v40 = MEMORY[0x1E69E6158];
  v41 = &protocol witness table for String;
  v37 = v19;
  v38 = v20;
  sub_1BAAE779C(&v37, &v32);

  SQLValue.init(_:)(&v32, &v34);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v32 = 0x676E69646E696240;
  v33 = 0xE800000000000000;
  v45 = *(v17 + 16) + 1;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v25 = v32;
  v26 = v33;
  MEMORY[0x1BFAFD240](v32, v33);
  sub_1BAAE7800(v21, v22, v23);
  v27 = v44;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v27;
  sub_1BAAE5904(v21, v22, v23, v25, v26, v28);

  sub_1BAAE7878(v21, v22, v23);
  v44 = v32;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v29 = v42;
  v30 = v43;
  v31 = v44;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v37 = v31;
  v38 = v29;
  v39 = v30;
  SQLDatabase.perform(_:)(&v37);
}

void sub_1BAAE45D4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAE8C68(&v7);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v7;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](13);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v1 = v7;
  v5 = v8;
  v6 = v9;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v1;
  v9 = v5;
  SQLDatabase.perform(_:)(&v7);
}

void sub_1BAAE47CC(uint64_t a1)
{
  v4 = v1;
  v136 = a1;
  v5 = sub_1BABE721C();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v137 = v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v135 = v131 - v8;
  v9 = sub_1BABE6CFC();
  v140 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v138 = v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v131 - v12);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_20;
  }

  v15 = Strong;
  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock((v3 + 16));
  sub_1BAAE8C68(&v146);
  if (v2)
  {
LABEL_20:
    os_unfair_lock_unlock((v3 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v3 + 16));
  v16 = v146;

  if (v16 != 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v132 = v13;
  v133 = 0;
  v134 = v4;
  v151 = 0;
  v152 = 0xE000000000000000;
  v17 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v153 = v17;
  MEMORY[0x1BFAFD200](85);
  MEMORY[0x1BFAFD240](0x20455441445055, 0xE700000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](0x2020200A5445530ALL, 0xE900000000000020);
  v19 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v19);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v20 = sub_1BABE71FC();
  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v20;
  v147 = v21;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v139 = v9;
  v23 = v143;
  v22 = v144;
  v24 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v17 + 16) + 1;
  v25 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v25);

  v27 = v141;
  v26 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v23, v22, v24);
  v28 = v153;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141 = v28;
  sub_1BAAE5904(v23, v22, v24, v27, v26, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v23, v22, v24);
  v30 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v31 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v31);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  sub_1BABE720C();
  v32 = sub_1BABE718C();
  v34 = v33;

  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v32;
  v147 = v34;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v35 = v143;
  v36 = v144;
  v37 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v30 + 16) + 1;
  v38 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v38);

  v39 = v141;
  v40 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v35, v36, v37);
  v41 = v153;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v41;
  sub_1BAAE5904(v35, v36, v37, v39, v40, v42);

  sub_1BAAE7878(v35, v36, v37);
  v43 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v44);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  sub_1BABE720C();
  v45 = sub_1BABE717C();
  v47 = v46;

  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v45;
  v147 = v47;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v48 = v143;
  v49 = v144;
  v50 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v43 + 16) + 1;
  v51 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v51);

  v52 = v141;
  v53 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v48, v49, v50);
  v54 = v153;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v54;
  sub_1BAAE5904(v48, v49, v50, v52, v53, v55);
  v9 = v139;

  sub_1BAAE7878(v48, v49, v50);
  v15 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v56 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v56);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v57 = v135;
  sub_1BABE722C();
  v3 = v140;
  v58 = *(v140 + 48);
  v131[1] = v140 + 48;
  v131[0] = v58;
  if (v58(v57, 1, v9) == 1)
  {
    v16 = v132;
    if (qword_1EBC12280 == -1)
    {
LABEL_6:
      v59 = __swift_project_value_buffer(v9, qword_1EBC25000);
      (*(v3 + 16))(v16, v59, v9);
      goto LABEL_8;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v16 = v132;
  (*(v3 + 32))(v132, v57, v9);
LABEL_8:
  v60 = sub_1BABE6CAC();
  v62 = v61;
  v63 = *(v3 + 8);
  v135 = (v3 + 8);
  v132 = v63;
  v63(v16, v9);
  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v60;
  v147 = v62;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v64 = v143;
  v65 = v144;
  v66 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v15 + 16) + 1;
  v67 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v67);

  v68 = v141;
  v69 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v64, v65, v66);
  v70 = v153;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v70;
  sub_1BAAE5904(v64, v65, v66, v68, v69, v71);

  sub_1BAAE7878(v64, v65, v66);
  v72 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v73 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v73);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v74 = sub_1BABE71FC();
  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v74;
  v147 = v75;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v76 = v143;
  v77 = v144;
  v78 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v72 + 16) + 1;
  v79 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v79);

  v80 = v141;
  v81 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v76, v77, v78);
  v82 = v153;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v82;
  sub_1BAAE5904(v76, v77, v78, v80, v81, v83);

  sub_1BAAE7878(v76, v77, v78);
  v84 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v85 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v85);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v86 = sub_1BABE718C();
  v88 = v87;

  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v86;
  v147 = v88;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v89 = v143;
  v90 = v144;
  v91 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v84 + 16) + 1;
  v92 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v92);

  v94 = v141;
  v93 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v89, v90, v91);
  v95 = v153;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v95;
  sub_1BAAE5904(v89, v90, v91, v94, v93, v96);

  sub_1BAAE7878(v89, v90, v91);
  v97 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v98 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v98);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v99 = sub_1BABE717C();
  v101 = v100;

  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v99;
  v147 = v101;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v102 = v143;
  v103 = v144;
  v104 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v97 + 16) + 1;
  v105 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v105);

  v106 = v141;
  v107 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v102, v103, v104);
  v108 = v153;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v108;
  sub_1BAAE5904(v102, v103, v104, v106, v107, v109);

  v110 = v102;
  v111 = v139;
  sub_1BAAE7878(v110, v103, v104);
  v112 = v141;
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v113 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v113);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v114 = v137;
  sub_1BABE722C();
  if ((v131[0])(v114, 1, v111) == 1)
  {
    v115 = v138;
    if (qword_1EBC12280 != -1)
    {
      swift_once();
    }

    v116 = __swift_project_value_buffer(v111, qword_1EBC25000);
    (*(v140 + 16))(v115, v116, v111);
  }

  else
  {
    v115 = v138;
    (*(v140 + 32))(v138, v114, v111);
  }

  v117 = sub_1BABE6CAC();
  v119 = v118;
  v132(v115, v111);
  v149 = MEMORY[0x1E69E6158];
  v150 = &protocol witness table for String;
  v146 = v117;
  v147 = v119;
  sub_1BAAE779C(&v146, &v141);

  SQLValue.init(_:)(&v141, &v143);
  v120 = v143;
  v121 = v144;
  v3 = v145;
  v141 = 0x676E69646E696240;
  v142 = 0xE800000000000000;
  v154 = *(v112 + 16) + 1;
  v122 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v122);

  v123 = v141;
  v124 = v142;
  MEMORY[0x1BFAFD240](v141, v142);
  sub_1BAAE7800(v120, v121, v3);
  v125 = v153;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v125;
  sub_1BAAE5904(v120, v121, v3, v123, v124, v126);

  sub_1BAAE7878(v120, v121, v3);
  v153 = v141;
  __swift_destroy_boxed_opaque_existential_1(&v146);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v127 = v151;
  v128 = v152;
  v129 = v153;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  v146 = v129;
  v147 = v127;
  v148 = v128;
  v130 = v133;
  SQLDatabase.perform(_:)(&v146);

  if (!v130)
  {
  }
}

uint64_t sub_1BAAE5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v14 = *v6;
  v15 = sub_1BABD5AB4(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1BABDBE20();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1BABD66C0(v20, a6 & 1);
    v15 = sub_1BABD5AB4(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = v11;

    return sub_1BAAE7878(v27, v28, v29);
  }

  else
  {
    sub_1BAB3EFE4(v15, a4, a5, a1, a2, v11, v25);
  }
}

uint64_t sub_1BAAE5A74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BAAD37E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BABDBFB8();
      goto LABEL_7;
    }

    sub_1BABD69A0(v17, a3 & 1);
    v28 = sub_1BAAD37E8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BAB3F038(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1BABE715C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1BAAE5C78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BABD5B50(a2);
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
      sub_1BABDC30C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BABD6E48(v14, a3 & 1);
    v9 = sub_1BABD5B50(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1BABE723C();
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1BAB3F12C(v9, a2, a1, v19);
  }
}

uint64_t sub_1BAAE5DA4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1BABD5AB4(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1BABDC470();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1BABD712C(v20, a6 & 1);
    v15 = sub_1BABD5AB4(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;
    *(v26 + 17) = HIBYTE(a3) & 1;
  }

  else
  {
    sub_1BAB3F170(v15, a4, a5, a1, a2, a3 & 0x101, v25);
  }
}

uint64_t sub_1BAAE5F20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BAAD37E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BABDC600();
      goto LABEL_7;
    }

    sub_1BABD7404(v17, a3 & 1);
    v22 = sub_1BAAD37E8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BAB3F1D0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1BAAE60EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BABD5C34(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BABDC880();
      goto LABEL_7;
    }

    sub_1BABD77E0(v13, a3 & 1);
    v24 = sub_1BABD5C34(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BABE71AC();
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1BABE6CFC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:
  sub_1BAB3F288(v10, a2, a1, v16);
}

uint64_t sub_1BAAE625C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BABD5AB4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BABDCAF0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BABD7B9C(v16, a4 & 1);
    v11 = sub_1BABD5AB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1BAB3F334(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1BAAE63A4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1BABD5D18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1BABDCC60();
      goto LABEL_7;
    }

    sub_1BABD7E44(v16, a3 & 1);
    v27 = sub_1BABD5D18(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BAAE8BA0(a2, v10, type metadata accessor for ReplicatorRecord.ID);
      return sub_1BAB3F37C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = sub_1BABE6CFC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_1BAAE6580(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BABD5D18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
      return sub_1BAAE8B24(a1, v20[7] + *(v9 + 72) * v14, type metadata accessor for ReplicatorRecord.ID);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BABDCF90();
    goto LABEL_7;
  }

  sub_1BABD8490(v17, a3 & 1);
  v22 = sub_1BABD5D18(a2);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v14 = v22;
  v20 = *v4;
  if (v18)
  {
    return sub_1BAAE8B24(a1, v20[7] + *(v9 + 72) * v14, type metadata accessor for ReplicatorRecord.ID);
  }

LABEL_11:
  sub_1BAAE8BA0(a2, v11, type metadata accessor for ReplicatorRecord.ID);
  return sub_1BAB3F46C(v14, v11, a1, v20);
}

uint64_t sub_1BAAE6740(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1BABD5D18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for ReplicatorRecord(0);
      return sub_1BAAE8B24(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for ReplicatorRecord);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1BABDD454();
    goto LABEL_7;
  }

  sub_1BABD8D48(v16, a3 & 1);
  v23 = sub_1BABD5D18(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BAAE8BA0(a2, v10, type metadata accessor for ReplicatorRecord.ID);
  return sub_1BAB3F534(v13, v10, a1, v19);
}

uint64_t sub_1BAAE68EC(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1BABD5D18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1BABDD740();
      goto LABEL_7;
    }

    sub_1BABD93E0(v16, a3 & 1);
    v21 = sub_1BABD5D18(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BAAE8BA0(a2, v10, type metadata accessor for ReplicatorRecord.ID);
      return sub_1BAB3F620(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1BAAE6A90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BABD5D84(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ReplicatorRecord.Value(0);
      return sub_1BAAE8B24(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ReplicatorRecord.Value);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1BABDD980();
    goto LABEL_7;
  }

  sub_1BABD997C(v13, a3 & 1);
  v20 = sub_1BABD5D84(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1BAB3F6D4(v10, a2, a1, v16);
}

uint64_t sub_1BAAE6BE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BABD5D84(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BABDDD5C();
      goto LABEL_7;
    }

    sub_1BABD9F88(v13, a3 & 1);
    v24 = sub_1BABD5D84(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1BABE6BAC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1BAB3F77C(v10, a2, a1, v16);
}

uint64_t sub_1BAAE6D4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BABD5AB4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BABDE2E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BABDA894(v16, a4 & 1);
    v11 = sub_1BABD5AB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 80 * v11;

    return sub_1BAAE8AB8(a1, v22);
  }

  else
  {
    sub_1BAB3F828(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1BAAE6ED4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1BABD5D18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1BABDE4C4();
      goto LABEL_7;
    }

    sub_1BABDAC20(v16, a3 & 1);
    v21 = sub_1BABD5D18(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BAAE8BA0(a2, v10, type metadata accessor for ReplicatorRecord.ID);
      return sub_1BAB3F620(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1BAAE70B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BABE6BAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BABD5E5C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BABDE718();
      goto LABEL_7;
    }

    sub_1BABDB1D0(v17, a3 & 1);
    v22 = sub_1BABD5E5C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BAB3F88C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1BAAE7284(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BABE6BAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BABD5E5C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1BABDE998();
    goto LABEL_7;
  }

  sub_1BABDB5AC(result, a3 & 1);
  result = sub_1BABD5E5C(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BAB3F88C(v14, v11, a1, v20);
}

uint64_t sub_1BAAE7420(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BAAD37E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase(0);
      return sub_1BAAE8B24(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BABDEC08();
    goto LABEL_7;
  }

  sub_1BABDB96C(v17, a3 & 1);
  v24 = sub_1BAAD37E8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BAB3F944(v14, v11, a1, v20);
}

void *sub_1BAAE7634@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1BAAE7678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127E8, &qword_1BABE9B58);
    v3 = sub_1BABE7CEC();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1BAAE7800(v7, v8, v9);
      result = sub_1BABD5AB4(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_1BAAE779C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAAE7800(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1BAAE7824(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1BAAE7824(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAAE7878(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1BAAD73E4(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1BAAE789C(uint64_t a1, void (*a2)(uint64_t *, uint64_t *))
{
  result = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v8 = *i;

      a2(&v9, &v8);
      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAE794C(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v8 = *i;

      sub_1BAAE21F4(&v9, &v8, a2);
      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1BAAE7A30()
{
  result = qword_1EBC12240;
  if (!qword_1EBC12240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC12240);
  }

  return result;
}

uint64_t sub_1BAAE7A7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1BAAE7A94@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1BAAE7E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127A8, &qword_1BABE9B08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127B0, &qword_1BABE9B10);
    v7 = sub_1BABE7CEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAAD2DAC(v9, v5, &qword_1EBC127A8, &qword_1BABE9B08);
      v11 = *v5;
      result = sub_1BABD5C34(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1BABE6CFC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1BAAE804C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12778, &qword_1BABE9AD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12780, &qword_1BABE9AE0);
    v7 = sub_1BABE7CEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAAD2DAC(v9, v5, &qword_1EBC12778, &qword_1BABE9AD8);
      result = sub_1BABD5D18(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ReplicatorRecord.ID(0);
      sub_1BAAE8254(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7];
      v17 = sub_1BABE6CFC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, v5 + v8, v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1BAAE8254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.ID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAAE82B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C8, &unk_1BABF46C0);
    v3 = sub_1BABE7CEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1BABD5B50(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BAAE83B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D0, &unk_1BABE9B30);
    v3 = sub_1BABE7CEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAAD2DAC(v4, &v13, &unk_1EBC132C0, qword_1BABED1E0);
      v5 = v13;
      v6 = v14;
      result = sub_1BABD5AB4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAAE8B14(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1BAAE84E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12788, &qword_1BABE9AE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12790, &qword_1BABE9AF0);
    v7 = sub_1BABE7CEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAAD2DAC(v9, v5, &qword_1EBC12788, &qword_1BABE9AE8);
      result = sub_1BABD5D18(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ReplicatorRecord.ID(0);
      result = sub_1BAAE8254(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1BAAE86B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12798, &qword_1BABE9AF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127A0, &qword_1BABE9B00);
    v7 = sub_1BABE7CEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAAD2DAC(v9, v5, &qword_1EBC12798, &qword_1BABE9AF8);
      result = sub_1BAAD37E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BABE6CFC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1BAAE8898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127B8, &qword_1BABE9B18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C0, &unk_1BABE9B20);
    v7 = sub_1BABE7CEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BAAD2DAC(v9, v5, &qword_1EBC127B8, &qword_1BABE9B18);
      result = sub_1BAAD37E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BABE6CFC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1BABE715C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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
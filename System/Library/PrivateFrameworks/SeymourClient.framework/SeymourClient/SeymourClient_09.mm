uint64_t MultiUserClient.terminateActivity(_:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82B20;
  v5._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 295;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65EF4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v6);
}

uint64_t MultiUserClient.launchActivityApplication(with:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82B40;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 286;
  v8 = *(v6 + 16);
  v9 = sub_1B4F64824();
  return v8(&v11, a1, v9, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v6);
}

uint64_t MultiUserClient.sendMediaPlayerSyncUpdate(_:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82B70;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 287;
  v8 = *(v6 + 16);
  v9 = sub_1B4F664E4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CC300], MEMORY[0x1E69CC308], ObjectType, v6);
}

uint64_t MultiUserClient.handleMediaPlayerSyncAnnouncement(_:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._object = 0x80000001B4F82AB0;
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F82B90;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 296;
  v8 = *(v6 + 16);
  v9 = sub_1B4F66FE4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CCCD0], MEMORY[0x1E69CCCD8], ObjectType, v6);
}

uint64_t MultiUserClient.requestMediaPlayerCatchup()()
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DEB8);
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x80000001B4F82AB0;
  v3._object = 0x80000001B4F82BC0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 287;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MultiUserClient.queryJoinedActivity()()
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DEB8);
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x80000001B4F82AB0;
  v3._object = 0x80000001B4F82BE0;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 294;
  v6 = *(v4 + 24);
  v7 = sub_1B4F65EF4();
  return v6(&v9, v7, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v4);
}

uint64_t MultiUserClient.sendCelebrationType(_:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82C00;
  v5._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 289;
  v8 = *(v6 + 16);
  v9 = sub_1B4F66A64();
  return v8(&v11, a1, v9, MEMORY[0x1E69CC960], MEMORY[0x1E69CC968], ObjectType, v6);
}

uint64_t MultiUserClient.queryUserIdentity()()
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DEB8);
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x80000001B4F82AB0;
  v3._object = 0x80000001B4F82C20;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 292;
  v6 = *(v4 + 24);
  v7 = sub_1B4F65F04();
  return v6(&v9, v7, MEMORY[0x1E69CBB38], MEMORY[0x1E69CBB40], ObjectType, v4);
}

uint64_t sub_1B4EAF3C0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82AE0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 291;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65EF4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v7);
}

uint64_t sub_1B4EAF4E4()
{
  v1 = *v0;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DEB8);
  v3._countAndFlagsBits = 0x697463416E696F6ALL;
  v3._object = 0xEE00292879746976;
  v4._object = 0x80000001B4F82AB0;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 284;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4EAF5D4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82B00;
  v6._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 285;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65EF4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v7);
}

uint64_t sub_1B4EAF6F8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82B20;
  v6._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 295;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65EF4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v7);
}

uint64_t sub_1B4EAF81C()
{
  v1 = *v0;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DEB8);
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F82AB0;
  v4._object = 0x80000001B4F82BE0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 294;
  v7 = *(v5 + 24);
  v8 = sub_1B4F65EF4();
  return v7(&v10, v8, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v5);
}

uint64_t sub_1B4EAF930(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82B40;
  v6._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 286;
  v9 = *(v7 + 16);
  v10 = sub_1B4F64824();
  return v9(&v12, a1, v10, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v7);
}

uint64_t sub_1B4EAFA54(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82B70;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 287;
  v9 = *(v7 + 16);
  v10 = sub_1B4F664E4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CC300], MEMORY[0x1E69CC308], ObjectType, v7);
}

uint64_t sub_1B4EAFB78(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._object = 0x80000001B4F82AB0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001B4F82B90;
  v5._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 296;
  v9 = *(v7 + 16);
  v10 = sub_1B4F66FE4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CCCD0], MEMORY[0x1E69CCCD8], ObjectType, v7);
}

uint64_t sub_1B4EAFC9C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DEB8);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F82AB0;
  v6._object = 0x80000001B4F82C00;
  v6._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 289;
  v9 = *(v7 + 16);
  v10 = sub_1B4F66A64();
  return v9(&v12, a1, v10, MEMORY[0x1E69CC960], MEMORY[0x1E69CC968], ObjectType, v7);
}

uint64_t sub_1B4EAFDC0()
{
  v1 = *v0;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DEB8);
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F82AB0;
  v4._object = 0x80000001B4F82BC0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 287;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4EAFEAC()
{
  v1 = *v0;
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DEB8);
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F82AB0;
  v4._object = 0x80000001B4F82C20;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 292;
  v7 = *(v5 + 24);
  v8 = sub_1B4F65F04();
  return v7(&v10, v8, MEMORY[0x1E69CBB38], MEMORY[0x1E69CBB40], ObjectType, v5);
}

void *sub_1B4EAFFC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v24 = a1;
  v23 = 39;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66E54();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB0728, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CCB88], MEMORY[0x1E69CCB90]);

  v24 = a1;
  v23 = 41;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1B4F665B4();
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB072C, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CC4F8], MEMORY[0x1E69CC500]);

  v24 = a1;
  v23 = 38;
  v11 = sub_1B4F65EF4();
  v12 = MEMORY[0x1E69CBB10];
  v13 = MEMORY[0x1E69CBB18];
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EAD790, 0, ObjectType, v11, &protocol witness table for XPCClient, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18]);
  v24 = a1;
  v23 = 45;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_1B4F65DB4();
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB0730, v14, ObjectType, v15, &protocol witness table for XPCClient, MEMORY[0x1E69CB7A8], MEMORY[0x1E69CB7B0]);

  v24 = a1;
  v23 = 37;
  v16 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB0734, v16, ObjectType, v11, &protocol witness table for XPCClient, v12, v13);

  v24 = a1;
  v23 = 42;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = sub_1B4F66464();
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB0738, v17, ObjectType, v18, &protocol witness table for XPCClient, MEMORY[0x1E69CC220], MEMORY[0x1E69CC228]);

  v24 = a1;
  v23 = 40;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = sub_1B4F664E4();
  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB073C, v19, ObjectType, v20, &protocol witness table for XPCClient, MEMORY[0x1E69CC300], MEMORY[0x1E69CC308]);

  v24 = a1;
  v23 = 44;
  v21 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v23, sub_1B4EB0740, v21, ObjectType, v11, &protocol witness table for XPCClient, MEMORY[0x1E69CBB10], v13);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4EB0418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC65A8(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4EB0680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4EB06C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ServiceSubscriptionClientProtocol.fetchServiceSubscription()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F66ED4();
  (*(a2 + 8))(v8, a1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t StorefrontContentAvailabilityUpdated.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StorefrontContentAvailabilityUpdated.init(availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for StorefrontContentAvailabilityUpdated(uint64_t a1)
{
  result = qword_1EDB6E160;
  if (!qword_1EDB6E160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *RemoteParticipantClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
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
  v13 = sub_1B4EB169C(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4EB0B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
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
    return sub_1B4EB1D80(v13, a6);
  }

  return result;
}

uint64_t RemoteParticipantClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteParticipantClient.beginAdvertisingParticipantHost()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x80000001B4F82C70;
  v3._object = 0x80000001B4F82CA0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 224;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RemoteParticipantClient.endAdvertisingParticipantHost()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x80000001B4F82C70;
  v3._object = 0x80000001B4F82CD0;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 227;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RemoteParticipantClient.beginDiscoveringParticipantsWithRole(_:)(char a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F82C70;
  v5._object = 0x80000001B4F82CF0;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 225;
  v9 = a1;
  return (*(v6 + 16))(&v10, &v9, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v6);
}

uint64_t RemoteParticipantClient.endDiscoveringParticipants()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x80000001B4F82C70;
  v3._object = 0x80000001B4F82D20;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 228;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RemoteParticipantClient.tryPassword(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._countAndFlagsBits = 0x7773736150797274;
  v6._object = 0xEF293A5F2864726FLL;
  v7._object = 0x80000001B4F82C70;
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.trace(file:function:)(v7, v6);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 229;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t sub_1B4EB11A4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F82C70;
  v4._object = 0x80000001B4F82CA0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 224;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4EB1294()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F82C70;
  v4._object = 0x80000001B4F82CD0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 227;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4EB1380(char a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F82C70;
  v6._object = 0x80000001B4F82CF0;
  v6._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 225;
  v10 = a1;
  return (*(v7 + 16))(&v11, &v10, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v7);
}

uint64_t sub_1B4EB1490()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F82C70;
  v4._object = 0x80000001B4F82D20;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 228;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4EB157C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0x7773736150797274;
  v7._object = 0xEF293A5F2864726FLL;
  v8._object = 0x80000001B4F82C70;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.trace(file:function:)(v8, v7);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 229;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

void *sub_1B4EB169C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v21 = a1;
  v20 = 23;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F65F84();

  swift_unknownObjectRetain();

  v9 = MEMORY[0x1E69CBB80];
  v10 = MEMORY[0x1E69CBB88];
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4EB1DE8, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88]);

  v21 = a1;
  v20 = 26;
  v11 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4EB1DEC, v11, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  v21 = a1;
  v20 = 28;
  v12 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4EB1DF0, v12, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  v21 = a1;
  v20 = 27;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1B4F674B4();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4EB1DF4, v13, ObjectType, v14, &protocol witness table for XPCClient, MEMORY[0x1E69CD158], MEMORY[0x1E69CD160]);

  v21 = a1;
  v20 = 22;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = sub_1B4F67524();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4EB1DF8, v15, ObjectType, v16, &protocol witness table for XPCClient, MEMORY[0x1E69CD1C0], MEMORY[0x1E69CD1C8]);

  v21 = a1;
  v20 = 24;
  v17 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v20, sub_1B4EB1DE0, v17, ObjectType, &protocol witness table for XPCClient);

  v21 = a1;
  v20 = 25;
  v18 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v20, sub_1B4EB1DE4, v18, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4EB1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC7AA8(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4EB1D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainerEventEnded.trainerEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainerEventEnded.init(trainerEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for TrainerEventEnded(uint64_t a1)
{
  result = qword_1EB8F6098;
  if (!qword_1EB8F6098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EB1F54(uint64_t a1)
{
  result = sub_1B4F65124();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RemoteParticipantLost.init(participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoteParticipantLost.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteParticipantLost(uint64_t a1)
{
  result = qword_1EDB6E988;
  if (!qword_1EDB6E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of HealthStoreUpdating.save(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStoreUpdating.save(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3, a4);
}

uint64_t GymKitConnectionUpdated.gymKitConnection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65D04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GymKitConnectionUpdated.init(gymKitConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65D04();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for GymKitConnectionUpdated(uint64_t a1)
{
  result = qword_1EB8F60A8;
  if (!qword_1EB8F60A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EB25F0(uint64_t a1)
{
  result = sub_1B4F65D04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1B4EB2700(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1B4EB2768(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_1B4F65214();
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return sub_1B4F651F4();
      case 4:
        return sub_1B4F65204();
      case 5:
        return sub_1B4F65234();
      default:
        return sub_1B4F65214();
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return sub_1B4F65224();
      }

      return sub_1B4F65214();
    }

    return sub_1B4F651E4();
  }

  else
  {
    return sub_1B4F651D4();
  }
}

uint64_t sub_1B4EB27BC()
{
  v1 = v0;
  v2 = sub_1B4F65244();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v20 - v10;
  (*(v3 + 16))(&v20 - v10, v1, v2, v9);
  sub_1B4F651D4();
  sub_1B4EB2AD0();
  v12 = sub_1B4F67F54();
  v13 = *(v3 + 8);
  v13(v6, v2);
  if (v12)
  {
    v13(v11, v2);
    return 0;
  }

  else
  {
    sub_1B4F651E4();
    v15 = sub_1B4F67F54();
    v13(v6, v2);
    if (v15)
    {
      v13(v11, v2);
      return 1;
    }

    else
    {
      sub_1B4F65224();
      v16 = sub_1B4F67F54();
      v13(v6, v2);
      if (v16)
      {
        v13(v11, v2);
        return 2;
      }

      else
      {
        sub_1B4F651F4();
        v17 = sub_1B4F67F54();
        v13(v6, v2);
        if (v17)
        {
          v13(v11, v2);
          return 3;
        }

        else
        {
          sub_1B4F65204();
          v18 = sub_1B4F67F54();
          v13(v6, v2);
          if (v18)
          {
            v13(v11, v2);
            return 4;
          }

          else
          {
            sub_1B4F65234();
            v19 = sub_1B4F67F54();
            v13(v6, v2);
            v13(v11, v2);
            if (v19)
            {
              return 5;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B4EB2AD0()
{
  result = qword_1EB8F60C8;
  if (!qword_1EB8F60C8)
  {
    sub_1B4F65244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F60C8);
  }

  return result;
}

uint64_t WatchConnectionRejectionUpdated.watchConnectionRejection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66AC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WatchConnectionRejectionUpdated.init(watchConnectionRejection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66AC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WatchConnectionRejectionUpdated(uint64_t a1)
{
  result = qword_1EB8F60D0;
  if (!qword_1EB8F60D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EB2C80(uint64_t a1)
{
  result = sub_1B4F66AC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CountdownIntentFired.countdownIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65AD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CountdownIntentFired.init(countdownIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65AD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CountdownIntentFired(uint64_t a1)
{
  result = qword_1EB8F60E0;
  if (!qword_1EB8F60E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EB2E44(uint64_t a1)
{
  result = sub_1B4F65AD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4EB2EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64F44();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4EB2F68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B4F65244();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1B4F64F44();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  sub_1B4F651D4();
  return sub_1B4F64F24();
}

uint64_t sub_1B4EB305C()
{
  v0 = sub_1B4F65244();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1B4F64F44();
  __swift_allocate_value_buffer(v2, qword_1EB8F6120);
  __swift_project_value_buffer(v2, qword_1EB8F6120);
  sub_1B4F651D4();
  return sub_1B4F64F34();
}

uint64_t sub_1B4EB3148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F64F44();
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_1B4EB2EEC(v7, a4);
}

uint64_t static BuildVersion.current.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6138, &qword_1B4F784C8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v16 - v4;
  type metadata accessor for RemoteParticipantClient();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = [v7 infoDictionary];

  if (v8)
  {
    v9 = sub_1B4F67EF4();

    if (*(v9 + 16) && (v10 = sub_1B4DF4344(0xD00000000000001ALL, 0x80000001B4F82D70), (v11 & 1) != 0))
    {
      sub_1B4DC4F2C(*(v9 + 56) + 32 * v10, v17);

      if (swift_dynamicCast())
      {
        BuildVersion.init(rawValue:)(v16[0], v16[1], v5);
        v12 = sub_1B4F64F44();
        if ((*(*(v12 - 8) + 48))(v5, 1, v12) != 1)
        {
          return sub_1B4EB3438(v5, a1);
        }

        sub_1B4EB33D0(v5);
      }
    }

    else
    {
    }
  }

  if (qword_1EB8F3D40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4F64F44();
  v14 = __swift_project_value_buffer(v13, qword_1EB8F6108);
  return sub_1B4EB2EEC(v14, a1);
}

uint64_t sub_1B4EB33D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6138, &qword_1B4F784C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4EB3438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64F44();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemoteParticipantConnectionRejection.watchConnectionRejectionReason()()
{
  v0 = sub_1B4F65F84();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F67504();
  v5 = sub_1B4F65F74();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7)
  {
    v8 = sub_1B4F67514();
    if (v10)
    {
      if (v5 <= 5u && ((1 << v5) & 0x34) != 0)
      {
        return 0x1000202u >> (8 * v8);
      }
    }

    else
    {
      sub_1B4DE5390(v8, v9, 0);
    }
  }

  return 4;
}

uint64_t Promise.resolve(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4EB3618, 0, 0);
}

uint64_t sub_1B4EB3618()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = *(v1 + 16);
  *(v7 + 16) = v8;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1B4EB374C;
  v10 = *(v0 + 16);

  return sub_1B4EB5A34(v10, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4EB583C, v7, v8);
}

uint64_t sub_1B4EB374C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EB3888, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4EB3888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Promise.init(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a1;
  *(v14 + 64) = a2;

  return sub_1B4F675F4();
}

uint64_t Promise<>.catch(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B4EB5B48;
  *(v15 + 24) = v14;
  (*(v9 + 16))(v13, v4, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v13, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_1B4EB5B68;
  v18[1] = v15;

  return sub_1B4F675F4();
}

void sub_1B4EB3B74(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9 = a1;

  v10 = sub_1B4F67C34();
  v11 = sub_1B4F685C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a4;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v12 = 136446722;
    swift_getErrorValue();
    v15 = MEMORY[0x1B8C826C0]();
    v17 = sub_1B4DC4F88(v15, v16, &v18);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1B4DC4F88(a2, a3, &v18);
    *(v12 + 22) = 2050;
    *(v12 + 24) = v13;
    _os_log_impl(&dword_1B4DC2000, v10, v11, "Caught %{public}s at %{public}s:%{public}lu", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v14, -1, -1);
    MEMORY[0x1B8C831D0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B4EB3D5C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 64) = v19;
  *(v8 + 40) = v17;
  *(v8 + 128) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F68F14();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = *(v19 - 8);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 112) = v12;
  *v12 = v8;
  v12[1] = sub_1B4EB3F50;

  return v14(v11);
}

uint64_t sub_1B4EB3F50()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B4EB42A4;
  }

  else
  {
    v2 = sub_1B4EB4064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EB4064()
{
  v21 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[6];
  (*(v12 + 16))(v13, v11, v16);
  swift_storeEnumTagMultiPayload();
  v17(v13);
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v11, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B4EB42A4()
{
  v20 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v19);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[15];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = v0[6];
  *v12 = v11;
  swift_storeEnumTagMultiPayload();
  v16 = v11;
  v15(v12);

  (*(v13 + 8))(v12, v14);

  v17 = v0[1];

  return v17();
}

uint64_t static Promise.main(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a1;
  *(v14 + 64) = a2;

  return sub_1B4F675F4();
}

uint64_t sub_1B4EB4580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, uint64_t a11, uint64_t a12)
{
  v42 = a7;
  v43 = a1;
  v13 = a5;
  v47 = a12;
  v48 = a6;
  v45 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v46 = &v38 - v19;
  v20 = sub_1B4DE34E8();
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v44 = a9;
  v21 = sub_1B4F67C54();
  __swift_project_value_buffer(v21, qword_1EDB71F48);
  v22 = sub_1B4F67C34();
  v23 = sub_1B4F685E4();
  if (os_log_type_enabled(v22, v23))
  {
    v39 = a10;
    v24 = swift_slowAlloc();
    v41 = a2;
    v25 = v24;
    v38 = swift_slowAlloc();
    v49 = v38;
    *v25 = 134218498;
    *(v25 + 4) = v20;
    *(v25 + 12) = 2080;
    v26 = sub_1B4F689D4();
    v40 = a3;
    v28 = sub_1B4DC4F88(v26, v27, &v49);
    a3 = v40;

    *(v25 + 14) = v28;
    v29 = v48;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v29;
    _os_log_impl(&dword_1B4DC2000, v22, v23, v39, v25, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1B8C831D0](v30, -1, -1);
    v31 = v25;
    a2 = v41;
    MEMORY[0x1B8C831D0](v31, -1, -1);
  }

  v32 = sub_1B4F68324();
  v33 = v46;
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = v42;
  *(v34 + 32) = v44;
  *(v34 + 40) = v35;
  *(v34 + 48) = a8;
  *(v34 + 56) = v20;
  *(v34 + 64) = a3;
  *(v34 + 72) = a4;
  *(v34 + 80) = v13;
  v36 = v43;
  *(v34 + 88) = v48;
  *(v34 + 96) = v36;
  *(v34 + 104) = a2;

  sub_1B4E6B2F0(0, 0, v33, v47, v34);
}

uint64_t sub_1B4EB4844(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 64) = v18;
  *(v8 + 40) = v16;
  *(v8 + 120) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 72) = *(v18 - 8);
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 88) = v11;
  *v11 = v8;
  v11[1] = sub_1B4EB49B8;

  return v13(v10);
}

uint64_t sub_1B4EB49B8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B4EB4CE0;
  }

  else
  {
    v2 = sub_1B4EB4ACC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EB4ACC()
{
  sub_1B4F68304();
  *(v0 + 104) = sub_1B4F682F4();
  v2 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4EB4B60, v2, v1);
}

void sub_1B4EB4B60()
{
  v10 = *(v0 + 96);
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 120);

  sub_1B4EB4EE0(v8, v7, v6, v9, v5, v4, v2, v1, v3);
  if (v10)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1B4EB4C68, 0, 0);
  }
}

uint64_t sub_1B4EB4C68()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EB4CE0()
{
  sub_1B4F68304();
  *(v0 + 112) = sub_1B4F682F4();
  v2 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4EB4D74, v2, v1);
}

uint64_t sub_1B4EB4D74()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 120);

  sub_1B4EB521C(v8, v7, v6, v9, v5, v4, v2, v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4EB4E78, 0, 0);
}

uint64_t sub_1B4EB4E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4EB4EE0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a5;
  v33 = a4;
  v31 = a2;
  v32 = a3;
  v13 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v14 = sub_1B4F68F14();
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v36 = &v28 - v16;
  sub_1B4F68304();
  v35 = sub_1B4F682F4();
  sub_1B4F68274();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4F67C54();
  __swift_project_value_buffer(v17, qword_1EDB71F48);
  v18 = sub_1B4F67C34();
  v19 = sub_1B4F685E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v9;
    v21 = v20;
    v28 = swift_slowAlloc();
    v29 = a6;
    v38 = v28;
    *v21 = 134218498;
    *(v21 + 4) = a1;
    *(v21 + 12) = 2080;
    v22 = sub_1B4F689D4();
    v24 = sub_1B4DC4F88(v22, v23, &v38);

    *(v21 + 14) = v24;
    v13 = a9;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v34;
    _os_log_impl(&dword_1B4DC2000, v18, v19, "Finished Main A->P conversion: %ld:%s:%lu", v21, 0x20u);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    a6 = v29;
    MEMORY[0x1B8C831D0](v25, -1, -1);
    MEMORY[0x1B8C831D0](v21, -1, -1);
  }

  v26 = v36;
  (*(*(v13 - 8) + 16))(v36, a8, v13);
  swift_storeEnumTagMultiPayload();
  a6(v26);
  (*(v37 + 8))(v26, v14);
}

uint64_t sub_1B4EB521C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void (*a6)(void), uint64_t a7, void *a8, uint64_t a9)
{
  v38 = a5;
  v37 = a4;
  v35 = a2;
  v36 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v13 = sub_1B4F68F14();
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v31 - v15);
  sub_1B4F68304();
  v39 = sub_1B4F682F4();
  sub_1B4F68274();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4F67C54();
  __swift_project_value_buffer(v17, qword_1EDB71F48);
  v18 = sub_1B4F67C34();
  v19 = sub_1B4F685E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v34 = v9;
    v32 = v22;
    v41 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a1;
    *(v21 + 12) = 2080;
    v23 = sub_1B4F689D4();
    v25 = a6;
    v26 = sub_1B4DC4F88(v23, v24, &v41);

    *(v21 + 14) = v26;
    a6 = v25;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v38;
    _os_log_impl(&dword_1B4DC2000, v18, v19, "Finished Main A->P conversion: %ld:%s:%lu", v21, 0x20u);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1B8C831D0](v27, -1, -1);
    v28 = v21;
    v13 = v33;
    MEMORY[0x1B8C831D0](v28, -1, -1);
  }

  *v16 = a8;
  swift_storeEnumTagMultiPayload();
  v29 = a8;
  a6(v16);
  (*(v40 + 8))(v16, v13);
}

uint64_t sub_1B4EB5524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v9 = a4;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v41 = sub_1B4F682C4();
  v12 = *(v41 - 8);
  v39 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v41, v13);
  v40 = &v34 - v14;
  v15 = sub_1B4DE34E8();
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4F67C54();
  __swift_project_value_buffer(v16, qword_1EDB71F48);
  v17 = sub_1B4F67C34();
  v18 = sub_1B4F685E4();
  v19 = os_log_type_enabled(v17, v18);
  v37 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = a7;
    v22 = v21;
    v43 = v21;
    *v20 = 134218498;
    *(v20 + 4) = v15;
    *(v20 + 12) = 2080;
    v23 = sub_1B4F689D4();
    v35 = a2;
    v25 = a3;
    v26 = sub_1B4DC4F88(v23, v24, &v43);
    a2 = v35;

    *(v20 + 14) = v26;
    a3 = v25;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    _os_log_impl(&dword_1B4DC2000, v17, v18, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    a7 = v36;
    MEMORY[0x1B8C831D0](v27, -1, -1);
    MEMORY[0x1B8C831D0](v20, -1, -1);
  }

  v28 = v40;
  v29 = v41;
  (*(v12 + 16))(v40, v38, v41);
  v30 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v31 = swift_allocObject();
  v32 = v37;
  *(v31 + 16) = a7;
  *(v31 + 24) = v32;
  *(v31 + 32) = a2;
  *(v31 + 40) = a3;
  *(v31 + 48) = v9;
  *(v31 + 56) = a5;
  (*(v12 + 32))(v31 + v30, v28, v29);
  sub_1B4F67674();
  sub_1B4F67644();
}

uint64_t sub_1B4EB5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB71F48);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 134218498;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2080;
    v17 = sub_1B4F689D4();
    v19 = sub_1B4DC4F88(v17, v18, &v23);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = a6;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Finished P->A conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v20 = v16;
    a1 = v15;
    MEMORY[0x1B8C831D0](v20, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v21 = sub_1B4F682C4();
  return sub_1B4E4CECC(a1, v21);
}

uint64_t sub_1B4EB5A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B4DE13F0;

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EB5B70(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4EF6D68(a1, a2, v2 + v6, v8, v9);
}

void sub_1B4EB5C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE13F0;

  JUMPOUT(0x1B4EB4844);
}

void sub_1B4EB5DB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  JUMPOUT(0x1B4EB3D5CLL);
}

uint64_t sub_1B4EB5EC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = *(sub_1B4F682C4() - 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_1B4EB5850(a1, v5, v6, v7, v9, v8, v10, v3);
}

uint64_t HeartRateMetricUpdated.heartRateMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65B84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRateMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartRateMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HeartRateMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F6140;
  if (!qword_1EB8F6140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeartRateMetricUpdated.init(heartRateMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65B84();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HeartRateMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4EB6128(uint64_t a1)
{
  result = sub_1B4F65B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AudioFocusPreference.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66394();

  return sub_1B4F663A4();
}

uint64_t sub_1B4EB61F8(double a1)
{
  sub_1B4F66394();

  return sub_1B4F663A4();
}

uint64_t PersistenceQueryClauses.predicates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PersistenceQueryClauses.limit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t PersistenceQueryClauses.offset.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t PersistenceQueryClauses.sort.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void __swiftcall PersistenceQueryClauses.init(predicates:limit:offset:sort:)(SeymourClient::PersistenceQueryClauses *__return_ptr retstr, Swift::OpaquePointer predicates, Swift::Int_optional limit, Swift::Int_optional offset, Swift::OpaquePointer sort)
{
  retstr->predicates = predicates;
  retstr->limit.value = limit.value;
  retstr->limit.is_nil = limit.is_nil;
  *(&retstr->offset.value + 7) = offset.value;
  LOBYTE(retstr->sort._rawValue) = offset.is_nil;
  retstr[1].predicates = sort;
}

void PersistenceQueryClauses.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  sub_1B4EB7204(a1, *v1);
  if (v4 != 1)
  {
    sub_1B4F68EA4();
    MEMORY[0x1B8C82740](v3);
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B4F68EA4();
    goto LABEL_6;
  }

  sub_1B4F68EA4();
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B4F68EA4();
  MEMORY[0x1B8C82740](v5);
LABEL_6:
  sub_1B4EB7204(a1, v7);
}

uint64_t PersistenceQueryClauses.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  sub_1B4F68E84();
  sub_1B4EB7204(v8, v2);
  if (v3 != 1)
  {
    sub_1B4F68EA4();
    MEMORY[0x1B8C82740](v1);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B4F68EA4();
    goto LABEL_6;
  }

  sub_1B4F68EA4();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B4F68EA4();
  MEMORY[0x1B8C82740](v4);
LABEL_6:
  sub_1B4EB7204(v8, v6);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4EB65D8(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = v1[3];
  v5 = *(v1 + 32);
  v6 = v1[5];
  v9 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  sub_1B4F68E84();
  PersistenceQueryClauses.hash(into:)(v8);
  return sub_1B4F68EC4();
}

uint64_t PersistenceQueryClauses.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4F672B4();
  v4 = result;
  v5 = 0;
  v6 = result + 40;
  v37 = MEMORY[0x1E69E7CC0];
  v7 = *(result + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v32 = result + 40;
LABEL_2:
  v8 = (v6 + 16 * v5);
  while (1)
  {
    if (v7 == v5)
    {

      v13 = sub_1B4F67334();
      if (v13)
      {
        v33 = sub_1B4F672F4();
      }

      else
      {
        v33 = 0;
      }

      v15 = sub_1B4F67344();
      if (v15)
      {
        v30 = sub_1B4F67314();
      }

      else
      {
        v30 = 0;
      }

      v28 = v13 ^ 1;
      v29 = v15 ^ 1;
      result = sub_1B4F672D4();
      v16 = result;
      v17 = 0;
      v18 = result + 40;
      v38 = MEMORY[0x1E69E7CC0];
      v19 = *(result + 16);
      v27 = result + 40;
LABEL_18:
      v20 = (v18 + 16 * v17);
      while (1)
      {
        if (v19 == v17)
        {
          v25 = sub_1B4F67354();
          (*(*(v25 - 8) + 8))(a1, v25);

          *a2 = v35;
          *(a2 + 8) = v33;
          *(a2 + 16) = v28 & 1;
          *(a2 + 24) = v30;
          *(a2 + 32) = v29 & 1;
          *(a2 + 40) = v34;
          return result;
        }

        if (v17 >= *(v16 + 16))
        {
          goto LABEL_30;
        }

        v22 = *(v20 - 1);
        v21 = *v20;
        sub_1B4DD8804(0, &qword_1EB8F6150, 0x1E696ACD0);
        sub_1B4DD8804(0, &unk_1EB8F6260, 0x1E696AEB0);
        sub_1B4DD3014(v22, v21);
        v23 = sub_1B4F68604();
        if (v2)
        {
          break;
        }

        v24 = v23;
        ++v17;
        v20 += 2;
        result = sub_1B4DD2B70(v22, v21);
        if (v24)
        {
          MEMORY[0x1B8C81A50](result);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B4F681E4();
          }

          result = sub_1B4F68224();
          v34 = v38;
          v18 = v27;
          goto LABEL_18;
        }
      }

      v26 = sub_1B4F67354();
      (*(*(v26 - 8) + 8))(a1, v26);

      sub_1B4DD2B70(v22, v21);
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v8 - 1);
    v10 = *v8;
    sub_1B4DD8804(0, &qword_1EB8F6150, 0x1E696ACD0);
    sub_1B4DD8804(0, &qword_1EB8F6158, 0x1E696AE18);
    sub_1B4DD3014(v9, v10);
    v11 = sub_1B4F68604();
    if (v2)
    {
      v14 = sub_1B4F67354();
      (*(*(v14 - 8) + 8))(a1, v14);

      sub_1B4DD2B70(v9, v10);
    }

    v12 = v11;
    ++v5;
    v8 += 2;
    result = sub_1B4DD2B70(v9, v10);
    if (v12)
    {
      MEMORY[0x1B8C81A50](result);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B4F681E4();
      }

      result = sub_1B4F68224();
      v35 = v37;
      v6 = v32;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t PersistenceQueryClauses.protobuf()()
{
  sub_1B4F67354();
  sub_1B4EB74A8(&qword_1EB8F6160, MEMORY[0x1E69CCFA8]);
  return sub_1B4F67B74();
}

void sub_1B4EB6CD4(uint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v4 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_46;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = a1;
  v36 = v3;
  if (!v7)
  {
    goto LABEL_17;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1B4E25890(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v34 = v4;
  v8 = v42;
  v37 = v7;
  v39 = objc_opt_self();
  v9 = 0;
  do
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v7 = sub_1B4F688F4();
      goto LABEL_3;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B8C82290](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v41 = 0;
    v13 = [v39 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v41];
    v14 = v41;
    if (!v13)
    {
      v18 = v14;
      sub_1B4F647C4();

      swift_willThrow();

      return;
    }

    a1 = sub_1B4F64894();
    v3 = v15;

    v42 = v8;
    v4 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v4 >= v16 >> 1)
    {
      sub_1B4E25890((v16 > 1), v4 + 1, 1);
      v8 = v42;
    }

    *(v8 + 16) = v4 + 1;
    v17 = v8 + 16 * v4;
    *(v17 + 32) = a1;
    *(v17 + 40) = v3;
    ++v9;
  }

  while (v10 != v37);
  a1 = v35;
  v3 = v36;
  v4 = v34;
LABEL_17:
  sub_1B4F672C4();
  if ((*(v4 + 16) & 1) == 0)
  {
    v19 = *(v4 + 8);
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v19))
      {
        sub_1B4F67304();
        goto LABEL_21;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_21:
  if ((*(v4 + 32) & 1) == 0)
  {
    v20 = *(v4 + 24);
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    if (HIDWORD(v20))
    {
      goto LABEL_53;
    }

    sub_1B4F67324();
  }

  v4 = *(v4 + 40);
  if (v4 >> 62)
  {
    v21 = sub_1B4F688F4();
  }

  else
  {
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
LABEL_41:
    sub_1B4F672E4();
    return;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1B4E25890(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = v42;
  v38 = v21;
  v40 = objc_opt_self();
  v23 = 0;
  v6 = v4 & 0xC000000000000001;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_43;
    }

    if (v6)
    {
      v25 = MEMORY[0x1B8C82290](v23, v4);
    }

    else
    {
      if (v23 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v25 = *(v4 + 8 * v23 + 32);
    }

    v26 = v25;
    v41 = 0;
    v27 = [v40 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v41];
    v28 = v41;
    if (!v27)
    {
      break;
    }

    a1 = sub_1B4F64894();
    v3 = v29;

    v42 = v22;
    v31 = *(v22 + 16);
    v30 = *(v22 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1B4E25890((v30 > 1), v31 + 1, 1);
      v22 = v42;
    }

    *(v22 + 16) = v31 + 1;
    v32 = v22 + 16 * v31;
    *(v32 + 32) = a1;
    *(v32 + 40) = v3;
    ++v23;
    if (v24 == v38)
    {
      goto LABEL_41;
    }
  }

  v33 = v28;
  sub_1B4F647C4();

  swift_willThrow();
}

uint64_t sub_1B4EB7100()
{
  sub_1B4F67354();
  sub_1B4EB74A8(&qword_1EB8F6160, MEMORY[0x1E69CCFA8]);
  return sub_1B4F67B74();
}

void sub_1B4EB7204(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1B4F688F4();
    MEMORY[0x1B8C82740](v8);
    v3 = sub_1B4F688F4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1B8C82740](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1B8C82290](i, a2);
      sub_1B4F68774();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1B4F68774();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s13SeymourClient23PersistenceQueryClausesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((sub_1B4EE0600(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  return sub_1B4EE0614(v6, v11);
}

unint64_t sub_1B4EB73EC()
{
  result = qword_1EB8F6168;
  if (!qword_1EB8F6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6168);
  }

  return result;
}

uint64_t sub_1B4EB74A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F67354();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4EB74EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4EB7534(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B4EB7590()
{
  result = qword_1EB8F6178;
  if (!qword_1EB8F6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6178);
  }

  return result;
}

uint64_t HealthStoreQuerying.queryTotalMindfulMinutes()(uint64_t a1, uint64_t a2, double a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v5 = sub_1B4F649F4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1B4F64964();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EB7740, 0, 0);
}

uint64_t sub_1B4EB7740()
{
  sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
  v1 = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier_];
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 96);
    v4 = *(v0 + 80);
    v24 = *(v0 + 72);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v23 = *(v0 + 48);
    v26 = *(v0 + 40);
    v7 = sub_1B4F67C54();
    v25 = *(v0 + 24);
    __swift_project_value_buffer(v7, qword_1EDB6DFB0);
    v8._countAndFlagsBits = 0xD000000000000027;
    v8._object = 0x80000001B4F82DC0;
    v9._object = 0x80000001B4F82DF0;
    v9._countAndFlagsBits = 0xD00000000000001ALL;
    Logger.trace(file:function:)(v8, v9);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696BE30] ascending:0];
    *(v0 + 128) = v10;
    sub_1B4F64954();
    sub_1B4F64954();
    sub_1B4F649D4();
    sub_1B4F648C4();
    (*(v6 + 8))(v5, v23);
    v11 = *(v4 + 8);
    *(v0 + 136) = v11;
    *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v24);
    v12 = objc_opt_self();
    v13 = sub_1B4F648F4();
    v14 = sub_1B4F648F4();
    v15 = [v12 predicateForSamplesWithStartDate:v13 endDate:v14 options:0];
    *(v0 + 152) = v15;

    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *(v16 + 16) = v25;
    *(v16 + 32) = v2;
    *(v16 + 40) = v15;
    *(v16 + 48) = v10;
    *(v16 + 56) = v26;
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6190, &qword_1B4F787A8);
    *v17 = v0;
    v17[1] = sub_1B4EB7B30;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000001B4F82DF0, sub_1B4EBB040, v16, v18);
  }

  else
  {
    v19 = sub_1B4F65B04();
    sub_1B4EB7F7C();
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x1E69CB5F8], v19);
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1B4EB7B30()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B4EB7EA0;
  }

  else
  {
    v2 = sub_1B4EB7C64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EB7C64()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4F688F4())
  {
    v3 = 0;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xC000000000000001;
    v4 = 0.0;
    v26 = i;
    v27 = v1;
    while (1)
    {
      if (v29)
      {
        v5 = MEMORY[0x1B8C82290](v3, v1);
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = *(v0 + 136);
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);
      v11 = *(v0 + 72);
      v12 = [v5 endDate];
      sub_1B4F64934();

      v13 = [v6 startDate];
      sub_1B4F64934();

      sub_1B4F648E4();
      v15 = v14;

      v8(v10, v11);
      v16 = v9;
      v1 = v27;
      v8(v16, v11);
      v4 = v4 + v15;
      ++v3;
      if (v7 == v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v4 = 0.0;
LABEL_15:
  v17 = *(v0 + 152);
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 104);
  v22 = *(v0 + 72);

  v19(v21, v22);
  v19(v20, v22);

  v24 = *(v0 + 8);

  v23.n128_f64[0] = v4 / 60.0;
  return v24(v23);
}

uint64_t sub_1B4EB7EA0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);

  v2(v5, v6);
  v2(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_1B4EB7F7C()
{
  result = qword_1EB8F6188;
  if (!qword_1EB8F6188)
  {
    sub_1B4F65B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6188);
  }

  return result;
}

void sub_1B4EB7FD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6258, &unk_1B4F78860);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A0, &qword_1B4F787B8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4F78770;
  *(v16 + 32) = a4;
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1B4DD8804(0, &unk_1EB8F6260, 0x1E696AEB0);
  v20 = a4;
  v21 = sub_1B4F681B4();

  aBlock[4] = sub_1B4EBB6B8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4EBAF88;
  aBlock[3] = &block_descriptor_21;
  v22 = _Block_copy(aBlock);
  v23 = [v19 initWithSampleType:a2 predicate:v25 limit:0 sortDescriptors:v21 resultsHandler:v22];

  _Block_release(v22);

  (*(a7 + 8))(v23, v27, a7);
}

uint64_t HealthStoreQuerying.fetchUnitPreferences()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4DD84F0, 0, 0);
}

uint64_t sub_1B4EB8278()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t HealthStoreQuerying.queryCaloriesBurned(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4EB8320, 0, 0);
}

uint64_t sub_1B4EB8320()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v11 = *(v0 + 96);
  v3 = objc_opt_self();
  v4 = sub_1B4F67F64();
  sub_1B4EB8B54(v2);
  v5 = sub_1B4F681B4();

  v6 = [v3 predicateForObjectsWithMetadataKey:v4 allowedValues:v5];
  *(v0 + 120) = v6;

  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v6;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6190, &qword_1B4F787A8);
  *v8 = v0;
  v8[1] = sub_1B4EB84DC;

  return MEMORY[0x1EEE6DE38](v0 + 80, 0, 0, 0xD000000000000019, 0x80000001B4F82E10, sub_1B4EBB0A8, v7, v9);
}

uint64_t sub_1B4EB84DC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B4EB8AE8;
  }

  else
  {

    v2 = sub_1B4EB85F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EB85F8()
{
  v1 = *(v0 + 80);
  if (qword_1EDB6DFA8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB6DFB0);

    v3 = sub_1B4F67C34();
    v4 = sub_1B4F685E4();
    v5 = v1 >> 62;
    v38 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      if (v5)
      {
        v7 = sub_1B4F688F4();
      }

      else
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = *(v39 + 88);
      *(v6 + 4) = v7;

      *(v6 + 12) = 2048;
      *(v6 + 14) = *(v8 + 16);

      _os_log_impl(&dword_1B4DC2000, v3, v4, "[HealthStore] Calories burned query returned %ld results for %ld identifiers", v6, 0x16u);
      MEMORY[0x1B8C831D0](v6, -1, -1);
    }

    else
    {
    }

    if (!v5)
    {
      v9 = v1;
      v10 = v1 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_9;
    }

    v9 = v1;
    v10 = v1 & 0xFFFFFFFFFFFFFF8;
    v11 = sub_1B4F688F4();
    if (!v11)
    {
      break;
    }

LABEL_9:
    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v37 = MEMORY[0x1E69E7CC8];
    v40 = v11;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x1B8C82290](v12, v9);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_31;
        }

        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v1 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = v15;
        v19 = [v17 totalEnergyBurned];
        if (!v19)
        {

          goto LABEL_11;
        }

        v20 = v19;
        v21 = v10;
        v22 = [objc_opt_self() kilocalorieUnit];
        [v20 doubleValueForUnit_];
        v24 = v23;

        v10 = v21;
        v25 = [v17 metadata];
        if (!v25)
        {
          goto LABEL_26;
        }

        v26 = v25;
        v27 = sub_1B4F67EF4();

        if (!*(v27 + 16) || (v28 = sub_1B4DF4344(0xD000000000000022, 0x80000001B4F82450), (v29 & 1) == 0))
        {

LABEL_26:

          v11 = v40;
          goto LABEL_11;
        }

        sub_1B4DC4F2C(*(v27 + 56) + 32 * v28, v39 + 16);

        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v30 = *(v39 + 88);
        v32 = *(v39 + 48);
        v31 = *(v39 + 56);
        *(v39 + 64) = v32;
        *(v39 + 72) = v31;
        v33 = swift_task_alloc();
        *(v33 + 16) = v39 + 64;
        LOBYTE(v30) = sub_1B4EBAEDC(sub_1B4EBB0B8, v33, v30);

        if ((v30 & 1) == 0)
        {

          v9 = v38;
          v10 = v21;
          v11 = v40;
          goto LABEL_11;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B4E5E814(v32, v31, isUniquelyReferenced_nonNull_native, v24);

        ++v12;
        v9 = v38;
        v10 = v21;
        v11 = v40;
        if (v1 == v40)
        {
          goto LABEL_35;
        }
      }

      else
      {

LABEL_11:
        ++v12;
        if (v1 == v11)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v37 = MEMORY[0x1E69E7CC8];
LABEL_35:

  v35 = *(v39 + 8);

  return v35(v37);
}

uint64_t sub_1B4EB8AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4EB8B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B4E258B0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B4E258B0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B4E2C940(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B4EB8C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B4F68A74();
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
      swift_dynamicCast();
      sub_1B4F68A44();
      sub_1B4F68A84();
      sub_1B4F68A94();
      sub_1B4F68A54();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_1B4EB8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6258, &unk_1B4F78860);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - v13;
  sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
  v15 = [swift_getObjCClassFromMetadata() workoutType];
  v16 = *(a3 + 16);
  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  v19 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1B4DD8804(0, &unk_1EB8F6260, 0x1E696AEB0);
  v20 = sub_1B4F681B4();
  aBlock[4] = sub_1B4EBB604;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4EBAF88;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);
  v22 = [v19 initWithSampleType:v15 predicate:a2 limit:v16 sortDescriptors:v20 resultsHandler:v21];

  _Block_release(v21);

  (*(a6 + 8))(v22, v24, a6);
}

uint64_t HealthStoreQuerying.queryStatistics(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1B4F649A4();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A8, &qword_1B4F787D0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EB90EC, 0, 0);
}

uint64_t sub_1B4EB90EC()
{
  v14 = v0[11];
  v1 = v0[9];
  v2 = objc_opt_self();
  v3 = sub_1B4F67F64();
  sub_1B4EB8B54(v1);
  v4 = sub_1B4F681B4();

  v5 = [v2 predicateForObjectsWithMetadataKey:v3 allowedValues:v4];
  v0[19] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61B0, &qword_1B4F787D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61B8, &qword_1B4F787E0);
  *(swift_allocObject() + 16) = xmmword_1B4F6CF50;
  v6 = sub_1B4DD8804(0, &qword_1EB8F61C0, 0x1E696C588);
  v7 = v5;
  sub_1B4F67E44();

  v0[20] = *(v1 + 16);
  sub_1B4F67E54();
  v13 = (*(v14 + 32) + **(v14 + 32));
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1B4EB93A4;
  v9 = v0[18];
  v10 = v0[11];
  v11 = v0[10];

  return v13(v9, v6, v11, v10);
}

uint64_t sub_1B4EB93A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1B4EB9AE8;
  }

  else
  {
    v4 = sub_1B4EB94B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B4EB94B8()
{
  v65 = v0;
  if (qword_1EDB6E058 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6E060);
  swift_bridgeObjectRetain_n();

  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v64 = v7;
    *v6 = 136315394;
    if (v5 >> 62)
    {
      v8 = sub_1B4F688F4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 160);
    *(v0 + 64) = v8;
    v10 = sub_1B4F68D04();
    v12 = sub_1B4DC4F88(v10, v11, &v64);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;

    *(v6 + 14) = v9;

    _os_log_impl(&dword_1B4DC2000, v2, v3, "[HealthStore] %s samples returned for %ld sessions", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v0 + 176);
  v14 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!(v13 >> 62))
  {
    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_45:
    v19 = MEMORY[0x1E69E7CC8];
    goto LABEL_46;
  }

  v15 = sub_1B4F688F4();
  v13 = *(v0 + 176);
  if (!v15)
  {
    goto LABEL_45;
  }

LABEL_10:
  v16 = 0;
  v17 = v5 & 0xC000000000000001;
  v18 = v13 + 32;
  v61 = (*(v0 + 112) + 8);
  v19 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    while (2)
    {
      v62 = v19;
      v20 = v16;
      while (1)
      {
        if (v17)
        {
          v21 = MEMORY[0x1B8C82290](v20, *(v0 + 176));
        }

        else
        {
          if (v20 >= *(v14 + 16))
          {
            goto LABEL_40;
          }

          v21 = *(v18 + 8 * v20);
        }

        v22 = v21;
        v16 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v23 = [v21 totalEnergyBurned];
        if (v23)
        {
          v24 = v23;
          v25 = [objc_opt_self() kilocalorieUnit];
          [v24 doubleValueForUnit_];
          v27 = v26;

          v28 = [v22 metadata];
          if (v28)
          {
            break;
          }
        }

LABEL_13:

        ++v20;
        if (v16 == v15)
        {
          v19 = v62;
          goto LABEL_46;
        }
      }

      v29 = v28;
      v30 = sub_1B4F67EF4();

      if (!*(v30 + 16) || (v31 = sub_1B4DF4344(0xD000000000000022, 0x80000001B4F82450), (v32 & 1) == 0))
      {

        goto LABEL_13;
      }

      sub_1B4DC4F2C(*(v30 + 56) + 32 * v31, v0 + 16);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v33 = *(v0 + 120);
      v34 = *(v0 + 104);
      v59 = *(v0 + 48);
      v60 = *(v0 + 56);
      v35 = [v22 UUID];
      sub_1B4F64994();

      v57 = sub_1B4F64974();
      v58 = v36;
      (*v61)(v33, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v62;
      v38 = sub_1B4DF4344(v59, v60);
      v40 = v38;
      v41 = *(v62 + 16);
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (*(v62 + 24) >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v47 = v39;
          sub_1B4E2948C();
          if ((v47 & 1) == 0)
          {
            break;
          }
        }

        goto LABEL_32;
      }

      v63 = v39;
      sub_1B4E27C64(v43, isUniquelyReferenced_nonNull_native);
      v44 = sub_1B4DF4344(v59, v60);
      if ((v63 & 1) != (v45 & 1))
      {
LABEL_41:

        sub_1B4F68DB4();
        return;
      }

      v40 = v44;
      if (v63)
      {
LABEL_32:

        v19 = v64;
        v46 = (v64[7] + 24 * v40);
        *v46 = v27;
        v46[1] = v57;
        v46[2] = v58;

        if (v16 != v15)
        {
          continue;
        }

        goto LABEL_46;
      }

      break;
    }

    v19 = v64;
    v64[(v40 >> 6) + 8] |= 1 << v40;
    v48 = (v19[6] + 16 * v40);
    *v48 = v59;
    v48[1] = v60;
    v49 = (v19[7] + 24 * v40);
    *v49 = v27;
    v49[1] = v57;
    v49[2] = v58;

    v50 = v19[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
LABEL_51:
      __break(1u);
      return;
    }

    v19[2] = v52;
    if (v16 != v15)
    {
      continue;
    }

    break;
  }

LABEL_46:
  v53 = *(v0 + 144);
  v54 = *(v0 + 128);
  v55 = *(v0 + 136);

  (*(v55 + 8))(v53, v54);

  v56 = *(v0 + 8);

  v56(v19);
}

uint64_t sub_1B4EB9AE8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t HealthStoreQuerying.workout(withSessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1B4F64964();
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61C8, &unk_1B4F787F0);
  v6[9] = swift_task_alloc();
  v7 = sub_1B4F649A4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_1B4F65D74();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A8, &qword_1B4F787D0);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EB9D74, 0, 0);
}

uint64_t sub_1B4EB9D74()
{
  v15 = v0[6];
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61B0, &qword_1B4F787D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61B8, &qword_1B4F787E0);
  *(swift_allocObject() + 16) = xmmword_1B4F6CF50;
  v3 = objc_opt_self();
  v4 = sub_1B4F67F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D0, &qword_1B4F6D058);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4F6CF50;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  v6 = sub_1B4F681B4();

  v7 = [v3 predicateForObjectsWithMetadataKey:v4 allowedValues:v6];

  v8 = sub_1B4DD8804(0, &qword_1EB8F61C0, 0x1E696C588);
  sub_1B4F67E44();

  sub_1B4F67E54();
  v14 = (*(v15 + 32) + **(v15 + 32));
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1B4EBA064;
  v10 = v0[18];
  v11 = v0[6];
  v12 = v0[5];

  return v14(v10, v8, v12, v11);
}

uint64_t sub_1B4EBA064(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1B4EBA514;
  }

  else
  {
    v4 = sub_1B4EBA178;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void *sub_1B4EBA178()
{
  v1 = v0[20];
  if (v1 >> 62)
  {
    v2 = sub_1B4F688F4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1B4E258D0(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v23 = v0[20] + 32;
  v24 = (v0[11] + 8);
  v25 = v1 & 0xC000000000000001;
  v26 = v0[14];
  v27 = v2;
  v5 = v28;
  do
  {
    if (v25)
    {
      v6 = MEMORY[0x1B8C82290](v4, v0[20]);
    }

    else
    {
      v6 = *(v23 + 8 * v4);
    }

    v7 = v6;
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    [v6 duration];
    v11 = [v7 UUID];
    sub_1B4F64994();

    sub_1B4F64974();
    (*v24)(v8, v10);
    _HKWorkoutIsIndoor(v7);
    v12 = v7;
    HealthKitSessionReference.init(workout:)(v12, v9);
    v13 = [v12 startDate];
    sub_1B4F64934();

    [v12 workoutActivityType];
    sub_1B4F65D44();

    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B4E258D0((v14 > 1), v15 + 1, 1);
    }

    v16 = v0[15];
    v17 = v0[13];
    ++v4;
    *(v28 + 16) = v15 + 1;
    (*(v26 + 32))(v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v15, v16, v17);
  }

  while (v27 != v4);

LABEL_14:
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  if (*(v5 + 16))
  {
    (*(v0[14] + 16))(v0[2], v5 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)), v0[13]);

    (*(v19 + 8))(v18, v20);
    v21 = 0;
  }

  else
  {
    (*(v19 + 8))(v0[18], v0[16]);

    v21 = 1;
  }

  (*(v0[14] + 56))(v0[2], v21, 1, v0[13]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1B4EBA514()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t HealthStoreQuerying.workoutHasBluetoothHeartRateSamples(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B4F65B34();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D8, &qword_1B4F78808);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_1B4F64964();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F61E0, qword_1B4F78810);
  v4[14] = swift_task_alloc();
  v7 = sub_1B4F67EA4();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EBA7C4, 0, 0);
}

uint64_t sub_1B4EBA7C4()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v17 = v0[4];
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v4 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BD30]);
  v5 = objc_opt_self();
  sub_1B4F65D64();
  v6 = sub_1B4F648F4();
  v7 = *(v2 + 8);
  v7(v1, v3);
  sub_1B4F65D34();
  v8 = sub_1B4F648F4();
  v7(v1, v3);
  v9 = [v5 predicateForSamplesWithStartDate:v6 endDate:v8 options:0];

  sub_1B4DD8804(0, &unk_1EDB6DA48, 0x1E696C3A8);
  sub_1B4F67E34();

  sub_1B4F67E94();
  v16 = (*(v17 + 24) + **(v17 + 24));
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1B4EBAA2C;
  v11 = v0[17];
  v12 = v0[10];
  v13 = v0[4];
  v14 = v0[3];

  return v16(v12, v11, v14, v13);
}

uint64_t sub_1B4EBAA2C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B4EBAE14;
  }

  else
  {
    v2 = sub_1B4EBAB40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EBAB40()
{
  v1 = v0[9];
  sub_1B4EBB178(v0[10], v1);
  v2 = sub_1B4F66204();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = v0[9];
    sub_1B4EBB1E8(v0[10]);
    (*(v5 + 8))(v4, v6);
    sub_1B4EBB1E8(v7);
    v8 = 0;
LABEL_14:

    v24 = v0[1];

    return v24(v8);
  }

  else
  {
    v9 = v0[9];
    v10 = v0[7];
    v11 = sub_1B4F661F4();
    result = (*(v3 + 8))(v9, v2);
    v13 = 0;
    v25 = (v10 + 8);
    v26 = *(v11 + 16);
    while (1)
    {
      v8 = v26 != v13;
      if (v26 == v13)
      {
        goto LABEL_13;
      }

      if (v13 >= *(v11 + 16))
      {
        break;
      }

      v14 = v11;
      (*(v10 + 16))(v0[8], v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v0[6]);
      v15 = sub_1B4F65B24();
      v17 = v0[8];
      v18 = v0[6];
      if (v15 == 0xD000000000000014 && 0x80000001B4F82E30 == v16)
      {

        (*v25)(v17, v18);
LABEL_13:

        v22 = v0[16];
        v21 = v0[17];
        v23 = v0[15];
        sub_1B4EBB1E8(v0[10]);
        (*(v22 + 8))(v21, v23);
        goto LABEL_14;
      }

      ++v13;
      v20 = sub_1B4F68D54();

      result = (*v25)(v17, v18);
      v11 = v14;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4EBAE14()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1B4EBAEDC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B4EBAF88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B4DD8804(0, &unk_1EDB6DA48, 0x1E696C3A8);
    v5 = sub_1B4F681C4();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1B4EBB050(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4F68D54() & 1;
  }
}

uint64_t sub_1B4EBB0B8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4F68D54() & 1;
  }
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BB00]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t sub_1B4EBB178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D8, &qword_1B4F78808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4EBB1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D8, &qword_1B4F78808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of HealthStoreQuerying.queryStatistics(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreQuerying.querySamples<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4E2BDB0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreQuerying.preferredUnits(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t sub_1B4EBB608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6258, &unk_1B4F78860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6258, &unk_1B4F78860);
  return sub_1B4F68284();
}

id ActivityRingsQueryProvider.makeActivityRingsQuery(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x1E696C610]);
  v9[4] = sub_1B4EBBD50;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B4EBBE50;
  v9[3] = &block_descriptor_7;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithUpdateHandler_];
  _Block_release(v6);

  return v7;
}

uint64_t sub_1B4EBB7BC(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v53 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v51 - v14);
  v16 = sub_1B4F65184();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a3)
    {
      v30 = a3;
    }

    else
    {
      sub_1B4E527B4();
      v30 = swift_allocError();
      *v39 = 1;
    }

    v40 = a3;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v41 = sub_1B4F67C54();
    __swift_project_value_buffer(v41, qword_1EDB6DFB0);
    v42 = v30;
    v43 = sub_1B4F67C34();
    v44 = sub_1B4F685C4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = MEMORY[0x1B8C826C0](v54, v55);
      v49 = sub_1B4DC4F88(v47, v48, &v56);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B4DC2000, v43, v44, "ActivityRingsQueryProvider - failed to get rings %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1B8C831D0](v46, -1, -1);
      MEMORY[0x1B8C831D0](v45, -1, -1);
    }

    *v15 = v30;
    swift_storeEnumTagMultiPayload();
    v50 = v30;
    a4(v15);

    return sub_1B4EBBF14(v15);
  }

  v21 = a2;
  if ([v21 _isDataLoading])
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B4F67C54();
    __swift_project_value_buffer(v22, qword_1EDB6DFB0);
    v23 = sub_1B4F67C34();
    v24 = sub_1B4F685C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a4;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B4DC2000, v23, v24, "ActivityRingsQueryProvider - data is loading", v26, 2u);
      v27 = v26;
      a4 = v25;
      MEMORY[0x1B8C831D0](v27, -1, -1);
    }

    sub_1B4E527B4();
    v28 = swift_allocError();
    *v29 = 0;
    *v15 = v28;
    swift_storeEnumTagMultiPayload();
    a4(v15);

    return sub_1B4EBBF14(v15);
  }

  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v31 = sub_1B4F67C54();
  __swift_project_value_buffer(v31, qword_1EDB6DFB0);
  v32 = sub_1B4F67C34();
  v33 = sub_1B4F685E4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = a4;
    v35 = v34;
    *v34 = 0;
    _os_log_impl(&dword_1B4DC2000, v32, v33, "ActivityRingsQueryProvider - results received", v34, 2u);
    v36 = v35;
    a4 = v52;
    MEMORY[0x1B8C831D0](v36, -1, -1);
  }

  HKActivitySummary.activityRings()(v20);
  (*(v17 + 16))(v11, v20, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v37 = a3;
  sub_1B4F68EE4();
  a4(v15);

  sub_1B4EBBF14(v15);
  return (*(v17 + 8))(v20, v16);
}

id sub_1B4EBBD58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x1E696C610]);
  v9[4] = sub_1B4EBBF84;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B4EBBE50;
  v9[3] = &block_descriptor_11;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithUpdateHandler_];
  _Block_release(v6);

  return v7;
}

void sub_1B4EBBE50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_1B4EBBF14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Session.+ infix(_:_:)@<X0>(uint64_t a1@<X8>)
{
  v363 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v362 = &v302 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v360 = &v302 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v361 = &v302 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v359 = &v302 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v357 = &v302 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v358 = &v302 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v356 = &v302 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v354 = &v302 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v355 = &v302 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v353 = &v302 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v351 = &v302 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v352 = &v302 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v350 = &v302 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v348 = &v302 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v349 = &v302 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v347 = &v302 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v346 = &v302 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v384 = &v302 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v345 = &v302 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v344 = &v302 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v343 = &v302 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v383 = &v302 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v382 = &v302 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v70 - 8, v71);
  v342 = &v302 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v341 = &v302 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v381 = &v302 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v340 = &v302 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82, v83);
  v339 = &v302 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v380 = &v302 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v88 - 8, v89);
  v338 = &v302 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v92);
  v337 = &v302 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v379 = &v302 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v97 - 8, v98);
  v336 = &v302 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v335 = &v302 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v378 = &v302 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v106 - 8, v107);
  v334 = &v302 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109, v110);
  v333 = &v302 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v377 = &v302 - v114;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v115 - 8, v116);
  v324 = &v302 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v118, v119);
  v323 = &v302 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v376 = &v302 - v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v124 - 8, v125);
  v322 = &v302 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127, v128);
  v321 = &v302 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v375 = &v302 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v133 - 8, v134);
  v320 = &v302 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v137);
  v319 = &v302 - v138;
  MEMORY[0x1EEE9AC00](v139, v140);
  v374 = &v302 - v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v142 - 8, v143);
  v318 = &v302 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v145, v146);
  v317 = &v302 - v147;
  MEMORY[0x1EEE9AC00](v148, v149);
  v373 = &v302 - v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v151 - 8, v152);
  v316 = &v302 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v154, v155);
  v315 = &v302 - v156;
  MEMORY[0x1EEE9AC00](v157, v158);
  v372 = &v302 - v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v160 - 8, v161);
  v314 = &v302 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v163, v164);
  v313 = &v302 - v165;
  MEMORY[0x1EEE9AC00](v166, v167);
  v371 = &v302 - v168;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v169 - 8, v170);
  v312 = &v302 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v172, v173);
  v311 = &v302 - v174;
  MEMORY[0x1EEE9AC00](v175, v176);
  v370 = &v302 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v178 - 8, v179);
  v310 = &v302 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v181, v182);
  v309 = &v302 - v183;
  MEMORY[0x1EEE9AC00](v184, v185);
  v369 = &v302 - v186;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v187 - 8, v188);
  v308 = &v302 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v190, v191);
  v307 = &v302 - v192;
  MEMORY[0x1EEE9AC00](v193, v194);
  v368 = &v302 - v195;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v196 - 8, v197);
  v306 = &v302 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v199, v200);
  v305 = &v302 - v201;
  MEMORY[0x1EEE9AC00](v202, v203);
  v367 = &v302 - v204;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v205 - 8, v206);
  v304 = &v302 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v208, v209);
  v303 = &v302 - v210;
  MEMORY[0x1EEE9AC00](v211, v212);
  v366 = &v302 - v213;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v214 - 8, v215);
  v217 = &v302 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v218, v219);
  v221 = &v302 - v220;
  MEMORY[0x1EEE9AC00](v222, v223);
  v365 = &v302 - v224;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v225 - 8, v226);
  v228 = &v302 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v229, v230);
  v232 = &v302 - v231;
  MEMORY[0x1EEE9AC00](v233, v234);
  v364 = &v302 - v235;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v236 - 8, v237);
  v239 = &v302 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v240, v241);
  v243 = &v302 - v242;
  MEMORY[0x1EEE9AC00](v244, v245);
  v247 = &v302 - v246;
  v325 = &v302 - v246;
  v248 = sub_1B4F65804();
  MEMORY[0x1EEE9AC00](v248 - 8, v249);
  v330 = &v302 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_1B4F676B4();
  v331 = v251;
  sub_1B4F67734();
  v329 = sub_1B4F67824();
  v328 = v252;
  v327 = sub_1B4F677C4();
  v326 = sub_1B4F677E4();
  sub_1B4F67714();
  sub_1B4F65384();
  sub_1B4EBE2D4(v243, v239, &qword_1EB8F7050, &qword_1B4F71500, MEMORY[0x1E69CB238], MEMORY[0x1E69CB230], v247);
  sub_1B4DD2BC4(v239, &qword_1EB8F7050, &qword_1B4F71500);
  sub_1B4DD2BC4(v243, &qword_1EB8F7050, &qword_1B4F71500);
  sub_1B4F677F4();
  sub_1B4F65464();
  sub_1B4EBE2D4(v232, v228, &qword_1EB8F4140, qword_1B4F789A0, MEMORY[0x1E69CC0D0], MEMORY[0x1E69CC0C8], v364);
  sub_1B4DD2BC4(v228, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4DD2BC4(v232, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4F67814();
  sub_1B4F65484();
  sub_1B4EBE2D4(v221, v217, &qword_1EB8F4138, &qword_1B4F6A640, MEMORY[0x1E69CC658], MEMORY[0x1E69CC640], v365);
  sub_1B4DD2BC4(v217, &qword_1EB8F4138, &qword_1B4F6A640);
  sub_1B4DD2BC4(v221, &qword_1EB8F4138, &qword_1B4F6A640);
  v253 = v303;
  sub_1B4F67724();
  v254 = v304;
  sub_1B4F65394();
  sub_1B4EBE2D4(v253, v254, &qword_1EB8F4130, &unk_1B4F78990, MEMORY[0x1E69CB2A8], MEMORY[0x1E69CB2A0], v366);
  sub_1B4DD2BC4(v254, &qword_1EB8F4130, &unk_1B4F78990);
  sub_1B4DD2BC4(v253, &qword_1EB8F4130, &unk_1B4F78990);
  v255 = v305;
  sub_1B4F678B4();
  v256 = v306;
  sub_1B4F654F4();
  sub_1B4EBE2D4(v255, v256, &qword_1EB8F4128, &qword_1B4F6A638, MEMORY[0x1E69CD410], MEMORY[0x1E69CD408], v367);
  sub_1B4DD2BC4(v256, &qword_1EB8F4128, &qword_1B4F6A638);
  sub_1B4DD2BC4(v255, &qword_1EB8F4128, &qword_1B4F6A638);
  v257 = v307;
  sub_1B4F67774();
  v258 = v308;
  sub_1B4F653E4();
  sub_1B4EBE5E8(v257, v258, &qword_1EB8F4120, &unk_1B4F78980, MEMORY[0x1E69CB588], MEMORY[0x1E69CB580], v368);
  sub_1B4DD2BC4(v258, &qword_1EB8F4120, &unk_1B4F78980);
  sub_1B4DD2BC4(v257, &qword_1EB8F4120, &unk_1B4F78980);
  v259 = v309;
  sub_1B4F677D4();
  v260 = v310;
  sub_1B4F65454();
  sub_1B4EBE2D4(v259, v260, &qword_1EB8F4118, &qword_1B4F6A630, MEMORY[0x1E69CBC48], MEMORY[0x1E69CBC40], v369);
  sub_1B4DD2BC4(v260, &qword_1EB8F4118, &qword_1B4F6A630);
  sub_1B4DD2BC4(v259, &qword_1EB8F4118, &qword_1B4F6A630);
  v261 = v311;
  sub_1B4F67744();
  v262 = v312;
  sub_1B4F653B4();
  sub_1B4EBE2D4(v261, v262, &qword_1EB8F40F8, &unk_1B4F78970, MEMORY[0x1E69CB448], MEMORY[0x1E69CB440], v370);
  sub_1B4DD2BC4(v262, &qword_1EB8F40F8, &unk_1B4F78970);
  sub_1B4DD2BC4(v261, &qword_1EB8F40F8, &unk_1B4F78970);
  v263 = v313;
  sub_1B4F676F4();
  v264 = v314;
  sub_1B4F65374();
  sub_1B4EBE2D4(v263, v264, &qword_1EB8F72D0, &qword_1B4F6A610, MEMORY[0x1E69CB198], MEMORY[0x1E69CB190], v371);
  sub_1B4DD2BC4(v264, &qword_1EB8F72D0, &qword_1B4F6A610);
  sub_1B4DD2BC4(v263, &qword_1EB8F72D0, &qword_1B4F6A610);
  v265 = v315;
  sub_1B4F677B4();
  v266 = v316;
  sub_1B4F65414();
  sub_1B4EBE2D4(v265, v266, &qword_1EB8F40F0, &unk_1B4F78960, MEMORY[0x1E69CB758], MEMORY[0x1E69CB750], v372);
  sub_1B4DD2BC4(v266, &qword_1EB8F40F0, &unk_1B4F78960);
  sub_1B4DD2BC4(v265, &qword_1EB8F40F0, &unk_1B4F78960);
  v267 = v317;
  sub_1B4F67864();
  v268 = v318;
  sub_1B4F654C4();
  sub_1B4EBE2D4(v267, v268, &qword_1EB8F40E8, &qword_1B4F6A608, MEMORY[0x1E69CCA68], MEMORY[0x1E69CCA60], v373);
  sub_1B4DD2BC4(v268, &qword_1EB8F40E8, &qword_1B4F6A608);
  sub_1B4DD2BC4(v267, &qword_1EB8F40E8, &qword_1B4F6A608);
  v269 = v319;
  sub_1B4F67784();
  v270 = v320;
  sub_1B4F653F4();
  sub_1B4EBE2D4(v269, v270, &qword_1EB8F40E0, &unk_1B4F78950, MEMORY[0x1E69CB618], MEMORY[0x1E69CB610], v374);
  sub_1B4DD2BC4(v270, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4DD2BC4(v269, &qword_1EB8F40E0, &unk_1B4F78950);
  v271 = v321;
  sub_1B4F676C4();
  v272 = v322;
  sub_1B4F65334();
  sub_1B4EBE2D4(v271, v272, &qword_1EB8F40D8, &qword_1B4F6A600, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF48], v375);
  sub_1B4DD2BC4(v272, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4DD2BC4(v271, &qword_1EB8F40D8, &qword_1B4F6A600);
  v273 = v323;
  sub_1B4F67804();
  v274 = v324;
  sub_1B4F65474();
  sub_1B4EBE2D4(v273, v274, &qword_1EB8F40D0, &unk_1B4F78940, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC1E0], v376);
  sub_1B4DD2BC4(v274, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4DD2BC4(v273, &qword_1EB8F40D0, &unk_1B4F78940);
  v275 = v333;
  sub_1B4F67684();
  v276 = v334;
  sub_1B4F65314();
  sub_1B4EBE2D4(v275, v276, &qword_1EB8F40C8, &qword_1B4F6A5F8, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7A0], v377);
  sub_1B4DD2BC4(v276, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4DD2BC4(v275, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  v277 = v335;
  sub_1B4F67694();
  v278 = v336;
  sub_1B4F65324();
  sub_1B4EBE2D4(v277, v278, &qword_1EB8F40C0, &unk_1B4F78930, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBA0], v378);
  sub_1B4DD2BC4(v278, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4DD2BC4(v277, &qword_1EB8F40C0, &unk_1B4F78930);
  v279 = v337;
  sub_1B4F676D4();
  v280 = v338;
  sub_1B4F65344();
  sub_1B4EBE2D4(v279, v280, &qword_1EB8F40B8, &qword_1B4F6A5F0, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFB0], v379);
  sub_1B4DD2BC4(v280, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4DD2BC4(v279, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  v281 = v339;
  sub_1B4F678A4();
  v282 = v340;
  sub_1B4F654E4();
  sub_1B4EBE2D4(v281, v282, &qword_1EB8F40B0, &unk_1B4F78920, MEMORY[0x1E69CD338], MEMORY[0x1E69CD328], v380);
  sub_1B4DD2BC4(v282, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4DD2BC4(v281, &qword_1EB8F40B0, &unk_1B4F78920);
  v283 = v341;
  sub_1B4F67754();
  v284 = v342;
  sub_1B4F653C4();
  sub_1B4EBE2D4(v283, v284, &qword_1EB8F40A0, &qword_1B4F6A5E0, MEMORY[0x1E69CB468], MEMORY[0x1E69CB460], v381);
  sub_1B4DD2BC4(v284, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4DD2BC4(v283, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4F67794();
  v285 = v343;
  sub_1B4F67834();
  v286 = v344;
  sub_1B4F65494();
  sub_1B4EBE2D4(v285, v286, &qword_1EB8F4090, &qword_1B4F6A5D8, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC798], v383);
  sub_1B4DD2BC4(v286, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4DD2BC4(v285, &qword_1EB8F4090, &qword_1B4F6A5D8);
  v287 = sub_1B4F67704();
  v288 = v345;
  sub_1B4F65354();
  v344 = sub_1B4EBE8FC(v287, v288);

  sub_1B4DD2BC4(v288, &qword_1EB8F51D8, &unk_1B4F78900);
  v289 = v346;
  sub_1B4F676E4();
  v290 = v347;
  sub_1B4F65364();
  sub_1B4EBE5E8(v289, v290, &qword_1EB8F4088, &qword_1B4F6A5D0, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0B0], v384);
  sub_1B4DD2BC4(v290, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4DD2BC4(v289, &qword_1EB8F4088, &qword_1B4F6A5D0);
  v291 = v348;
  sub_1B4F677A4();
  v292 = v350;
  sub_1B4F65404();
  sub_1B4EBE2D4(v291, v292, &qword_1EB8F4080, &unk_1B4F788F0, MEMORY[0x1E69CB680], MEMORY[0x1E69CB678], v349);
  sub_1B4DD2BC4(v292, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4DD2BC4(v291, &qword_1EB8F4080, &unk_1B4F788F0);
  v293 = v351;
  sub_1B4F67764();
  v294 = v353;
  sub_1B4F653D4();
  sub_1B4EBE2D4(v293, v294, &qword_1EB8F4078, &qword_1B4F6A5C8, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBDF8], v352);
  sub_1B4DD2BC4(v294, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4DD2BC4(v293, &qword_1EB8F4078, &qword_1B4F6A5C8);
  v295 = v354;
  sub_1B4F67854();
  v296 = v356;
  sub_1B4F654B4();
  sub_1B4EBE2D4(v295, v296, &qword_1EB8F4070, &unk_1B4F788E0, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9C8], v355);
  sub_1B4DD2BC4(v296, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4DD2BC4(v295, &qword_1EB8F4070, &unk_1B4F788E0);
  v297 = v357;
  sub_1B4F67884();
  v298 = v359;
  sub_1B4F654D4();
  sub_1B4EBE2D4(v297, v298, &qword_1EB8F4068, &qword_1B4F6A5C0, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD298], v358);
  sub_1B4DD2BC4(v298, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4DD2BC4(v297, &qword_1EB8F4068, &qword_1B4F6A5C0);
  v299 = v360;
  sub_1B4F67844();
  v300 = v362;
  sub_1B4F654A4();
  sub_1B4EBE2D4(v299, v300, &qword_1EB8F4060, &unk_1B4F788D0, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7D0], v361);
  sub_1B4DD2BC4(v300, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4DD2BC4(v299, &qword_1EB8F4060, &unk_1B4F788D0);
  return sub_1B4F676A4();
}

uint64_t sub_1B4EBE2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void, double)@<X4>, double (*a6)(void)@<X5>, char *a7@<X8>)
{
  v42 = a6;
  v43 = a2;
  v45 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v42 - v18;
  v20 = a5(0, v17);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v42 - v27;
  sub_1B4E21A90(a1, v19, a3, a4);
  v44 = v21;
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_1B4DD2BC4(v19, a3, a4);
    return sub_1B4E21A90(v43, v45, a3, a4);
  }

  else
  {
    v31 = v19;
    v32 = *(v44 + 32);
    v32(v28, v31, v20);
    sub_1B4E21A90(v43, v14, a3, a4);
    if (v29(v14, 1, v20) == 1)
    {
      sub_1B4DD2BC4(v14, a3, a4);
      v33 = v45;
      v32(v45, v28, v20);
      return (*(v44 + 56))(v33, 0, 1, v20);
    }

    else
    {
      v34 = (v32)(v24, v14, v20);
      v35 = v42;
      v36 = (v42)(v34);
      v37 = v35();
      v38 = v44;
      if (v37 >= v36)
      {
        v39 = v24;
      }

      else
      {
        v39 = v28;
      }

      if (v37 >= v36)
      {
        v40 = v28;
      }

      else
      {
        v40 = v24;
      }

      (*(v44 + 8))(v39, v20);
      v41 = v45;
      v32(v45, v40, v20);
      return (*(v38 + 56))(v41, 0, 1, v20);
    }
  }
}

uint64_t sub_1B4EBE5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void, double)@<X4>, double (*a6)(void)@<X5>, char *a7@<X8>)
{
  v42 = a6;
  v43 = a2;
  v45 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v42 - v18;
  v20 = a5(0, v17);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v42 - v27;
  sub_1B4E21A90(a1, v19, a3, a4);
  v44 = v21;
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_1B4DD2BC4(v19, a3, a4);
    return sub_1B4E21A90(v43, v45, a3, a4);
  }

  else
  {
    v31 = v19;
    v32 = *(v44 + 32);
    v32(v28, v31, v20);
    sub_1B4E21A90(v43, v14, a3, a4);
    if (v29(v14, 1, v20) == 1)
    {
      sub_1B4DD2BC4(v14, a3, a4);
      v33 = v45;
      v32(v45, v28, v20);
      return (*(v44 + 56))(v33, 0, 1, v20);
    }

    else
    {
      v34 = (v32)(v24, v14, v20);
      v35 = v42;
      v36 = (v42)(v34);
      v37 = v35();
      v38 = v44;
      if (v36 >= v37)
      {
        v39 = v24;
      }

      else
      {
        v39 = v28;
      }

      if (v36 >= v37)
      {
        v40 = v28;
      }

      else
      {
        v40 = v24;
      }

      (*(v44 + 8))(v39, v20);
      v41 = v45;
      v32(v45, v40, v20);
      return (*(v38 + 56))(v41, 0, 1, v20);
    }
  }
}

uint64_t sub_1B4EBE8FC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_1B4F64E14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6450, &qword_1B4F78EA0);
  v16 = v3;
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1B4E21A90(v26, v18 + v17, &qword_1EB8F51D8, &unk_1B4F78900);
  sub_1B4E21A90(v18 + v17, v15, &qword_1EB8F51D8, &unk_1B4F78900);
  sub_1B4EC6550(v15, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_1B4DD2BC4(v11, &qword_1EB8F51D8, &unk_1B4F78900);
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *(v3 + 32);
    v20(v6, v11, v2);
    v19 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B4E78B50(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B4E78B50((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v20(&v19[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22], v6, v2);
  }

  swift_setDeallocating();
  sub_1B4DD2BC4(v18 + v17, &qword_1EB8F51D8, &unk_1B4F78900);
  swift_deallocClassInstance();
  v23 = v27;

  v24 = sub_1B4E458A4(v19, v23);

  return v24;
}

uint64_t static Session.- infix(_:_:)@<X0>(uint64_t a1@<X8>)
{
  v354 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v353 = &v295 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v351 = &v295 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v352 = &v295 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v350 = &v295 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v348 = &v295 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v349 = &v295 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v347 = &v295 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v345 = &v295 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v346 = &v295 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v344 = &v295 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v342 = &v295 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v343 = &v295 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v341 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v339 = &v295 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v340 = &v295 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v338 = &v295 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v336 = &v295 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v337 = &v295 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v373 = &v295 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v335 = &v295 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v334 = &v295 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v372 = &v295 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v333 = &v295 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v332 = &v295 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v371 = &v295 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v331 = &v295 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v330 = &v295 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v370 = &v295 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v85 - 8, v86);
  v329 = &v295 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88, v89);
  v328 = &v295 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v369 = &v295 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v94 - 8, v95);
  v327 = &v295 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97, v98);
  v326 = &v295 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v368 = &v295 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v103 - 8, v104);
  v325 = &v295 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106, v107);
  v324 = &v295 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v367 = &v295 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v112 - 8, v113);
  v323 = &v295 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115, v116);
  v322 = &v295 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v366 = &v295 - v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v121 - 8, v122);
  v319 = &v295 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124, v125);
  v316 = &v295 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v365 = &v295 - v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v130 - 8, v131);
  v314 = &v295 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v133, v134);
  v313 = &v295 - v135;
  MEMORY[0x1EEE9AC00](v136, v137);
  v364 = &v295 - v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v139 - 8, v140);
  v312 = &v295 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v142, v143);
  v311 = &v295 - v144;
  MEMORY[0x1EEE9AC00](v145, v146);
  v363 = &v295 - v147;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v148 - 8, v149);
  v310 = &v295 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v151, v152);
  v309 = &v295 - v153;
  MEMORY[0x1EEE9AC00](v154, v155);
  v362 = &v295 - v156;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v157 - 8, v158);
  v308 = &v295 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v160, v161);
  v307 = &v295 - v162;
  MEMORY[0x1EEE9AC00](v163, v164);
  v361 = &v295 - v165;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v166 - 8, v167);
  v306 = &v295 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v169, v170);
  v305 = &v295 - v171;
  MEMORY[0x1EEE9AC00](v172, v173);
  v360 = &v295 - v174;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v175 - 8, v176);
  v304 = &v295 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v178, v179);
  v303 = &v295 - v180;
  MEMORY[0x1EEE9AC00](v181, v182);
  v359 = &v295 - v183;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v184 - 8, v185);
  v302 = &v295 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v187, v188);
  v301 = &v295 - v189;
  MEMORY[0x1EEE9AC00](v190, v191);
  v358 = &v295 - v192;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v193 - 8, v194);
  v300 = &v295 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v196, v197);
  v299 = &v295 - v198;
  MEMORY[0x1EEE9AC00](v199, v200);
  v357 = &v295 - v201;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v202 - 8, v203);
  v298 = &v295 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v205, v206);
  v297 = &v295 - v207;
  MEMORY[0x1EEE9AC00](v208, v209);
  v356 = &v295 - v210;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v211 - 8, v212);
  v296 = &v295 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v214, v215);
  v217 = &v295 - v216;
  MEMORY[0x1EEE9AC00](v218, v219);
  v355 = &v295 - v220;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v221 - 8, v222);
  v224 = &v295 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v225, v226);
  v228 = &v295 - v227;
  MEMORY[0x1EEE9AC00](v229, v230);
  v232 = &v295 - v231;
  v315 = &v295 - v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v233 - 8, v234);
  v236 = &v295 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v237, v238);
  v240 = &v295 - v239;
  MEMORY[0x1EEE9AC00](v241, v242);
  v244 = &v295 - v243;
  v317 = &v295 - v243;
  v318 = sub_1B4F68F24();
  v321 = sub_1B4F676B4();
  v320 = v245;
  sub_1B4F67714();
  sub_1B4F67714();
  sub_1B4EC0938(v240, v236, v244);
  sub_1B4DD2BC4(v236, &qword_1EB8F7050, &qword_1B4F71500);
  sub_1B4DD2BC4(v240, &qword_1EB8F7050, &qword_1B4F71500);
  sub_1B4F677F4();
  sub_1B4F677F4();
  sub_1B4EC0CC0(v228, v224, v232);
  sub_1B4DD2BC4(v224, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4DD2BC4(v228, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4F67814();
  v246 = v296;
  sub_1B4F67814();
  sub_1B4EC1048(v217, v246, v355);
  sub_1B4DD2BC4(v246, &qword_1EB8F4138, &qword_1B4F6A640);
  sub_1B4DD2BC4(v217, &qword_1EB8F4138, &qword_1B4F6A640);
  v247 = v297;
  sub_1B4F67724();
  v248 = v298;
  sub_1B4F67724();
  sub_1B4EC13D0(v247, v248, v356);
  sub_1B4DD2BC4(v248, &qword_1EB8F4130, &unk_1B4F78990);
  sub_1B4DD2BC4(v247, &qword_1EB8F4130, &unk_1B4F78990);
  v249 = v299;
  sub_1B4F67774();
  v250 = v300;
  sub_1B4F67774();
  sub_1B4EC1758(v249, v250, v357);
  sub_1B4DD2BC4(v250, &qword_1EB8F4120, &unk_1B4F78980);
  sub_1B4DD2BC4(v249, &qword_1EB8F4120, &unk_1B4F78980);
  v251 = v301;
  sub_1B4F678B4();
  v252 = v302;
  sub_1B4F678B4();
  sub_1B4EC1AE0(v251, v252, v358);
  sub_1B4DD2BC4(v252, &qword_1EB8F4128, &qword_1B4F6A638);
  sub_1B4DD2BC4(v251, &qword_1EB8F4128, &qword_1B4F6A638);
  v253 = v303;
  sub_1B4F677D4();
  v254 = v304;
  sub_1B4F677D4();
  sub_1B4EC1E68(v253, v254, v359);
  sub_1B4DD2BC4(v254, &qword_1EB8F4118, &qword_1B4F6A630);
  sub_1B4DD2BC4(v253, &qword_1EB8F4118, &qword_1B4F6A630);
  v255 = v305;
  sub_1B4F67744();
  v256 = v306;
  sub_1B4F67744();
  sub_1B4EC21F0(v255, v256, v360);
  sub_1B4DD2BC4(v256, &qword_1EB8F40F8, &unk_1B4F78970);
  sub_1B4DD2BC4(v255, &qword_1EB8F40F8, &unk_1B4F78970);
  v257 = v307;
  sub_1B4F676F4();
  v258 = v308;
  sub_1B4F676F4();
  sub_1B4EC2578(v257, v258, v361);
  sub_1B4DD2BC4(v258, &qword_1EB8F72D0, &qword_1B4F6A610);
  sub_1B4DD2BC4(v257, &qword_1EB8F72D0, &qword_1B4F6A610);
  v259 = v309;
  sub_1B4F677B4();
  v260 = v310;
  sub_1B4F677B4();
  sub_1B4EC2900(v259, v260, v362);
  sub_1B4DD2BC4(v260, &qword_1EB8F40F0, &unk_1B4F78960);
  sub_1B4DD2BC4(v259, &qword_1EB8F40F0, &unk_1B4F78960);
  v261 = v311;
  sub_1B4F67864();
  v262 = v312;
  sub_1B4F67864();
  sub_1B4EC2C88(v261, v262, v363);
  sub_1B4DD2BC4(v262, &qword_1EB8F40E8, &qword_1B4F6A608);
  sub_1B4DD2BC4(v261, &qword_1EB8F40E8, &qword_1B4F6A608);
  v263 = v313;
  sub_1B4F67784();
  v264 = v314;
  sub_1B4F67784();
  sub_1B4EC3010(v263, v264, v364);
  sub_1B4DD2BC4(v264, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4DD2BC4(v263, &qword_1EB8F40E0, &unk_1B4F78950);
  v265 = v316;
  sub_1B4F676C4();
  v266 = v319;
  sub_1B4F676C4();
  sub_1B4EC3398(v265, v266, v365);
  sub_1B4DD2BC4(v266, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4DD2BC4(v265, &qword_1EB8F40D8, &qword_1B4F6A600);
  v267 = v322;
  sub_1B4F67804();
  v268 = v323;
  sub_1B4F67804();
  sub_1B4EC3720(v267, v268, v366);
  sub_1B4DD2BC4(v268, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4DD2BC4(v267, &qword_1EB8F40D0, &unk_1B4F78940);
  v269 = v324;
  sub_1B4F67684();
  v270 = v325;
  sub_1B4F67684();
  sub_1B4EC3AA8(v269, v270, v367);
  sub_1B4DD2BC4(v270, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4DD2BC4(v269, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  v271 = v326;
  sub_1B4F67694();
  v272 = v327;
  sub_1B4F67694();
  sub_1B4EC3E30(v271, v272, v368);
  sub_1B4DD2BC4(v272, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4DD2BC4(v271, &qword_1EB8F40C0, &unk_1B4F78930);
  v273 = v328;
  sub_1B4F676D4();
  v274 = v329;
  sub_1B4F676D4();
  sub_1B4EC41B8(v273, v274, v369);
  sub_1B4DD2BC4(v274, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4DD2BC4(v273, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  v275 = v330;
  sub_1B4F67754();
  v276 = v331;
  sub_1B4F67754();
  sub_1B4EC4540(v275, v276, v370);
  sub_1B4DD2BC4(v276, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4DD2BC4(v275, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  v277 = v332;
  sub_1B4F678A4();
  v278 = v333;
  sub_1B4F678A4();
  sub_1B4EC48C8(v277, v278, v371);
  sub_1B4DD2BC4(v278, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4DD2BC4(v277, &qword_1EB8F40B0, &unk_1B4F78920);
  v279 = v334;
  sub_1B4F67834();
  v280 = v335;
  sub_1B4F67834();
  sub_1B4EC4C50(v279, v280, v372);
  sub_1B4DD2BC4(v280, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4DD2BC4(v279, &qword_1EB8F4090, &qword_1B4F6A5D8);
  v281 = sub_1B4F64E14();
  (*(*(v281 - 8) + 56))(v373, 1, 1, v281);
  v282 = v336;
  sub_1B4F676E4();
  v283 = v338;
  sub_1B4F676E4();
  sub_1B4EC4FD8(v282, v283, v337);
  sub_1B4DD2BC4(v283, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4DD2BC4(v282, &qword_1EB8F4088, &qword_1B4F6A5D0);
  v284 = v339;
  sub_1B4F677A4();
  v285 = v341;
  sub_1B4F677A4();
  sub_1B4EC5360(v284, v285, v340);
  sub_1B4DD2BC4(v285, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4DD2BC4(v284, &qword_1EB8F4080, &unk_1B4F788F0);
  v286 = v342;
  sub_1B4F67764();
  v287 = v344;
  sub_1B4F67764();
  sub_1B4EC56E8(v286, v287, v343);
  sub_1B4DD2BC4(v287, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4DD2BC4(v286, &qword_1EB8F4078, &qword_1B4F6A5C8);
  v288 = v345;
  sub_1B4F67844();
  v289 = v347;
  sub_1B4F67844();
  sub_1B4EC5A70(v288, v289, v346);
  sub_1B4DD2BC4(v289, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4DD2BC4(v288, &qword_1EB8F4060, &unk_1B4F788D0);
  v290 = v348;
  sub_1B4F67854();
  v291 = v350;
  sub_1B4F67854();
  sub_1B4EC5DF8(v290, v291, v349);
  sub_1B4DD2BC4(v291, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4DD2BC4(v290, &qword_1EB8F4070, &unk_1B4F788E0);
  v292 = v351;
  sub_1B4F67884();
  v293 = v353;
  sub_1B4F67884();
  sub_1B4EC6180(v292, v293, v352);
  sub_1B4DD2BC4(v293, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4DD2BC4(v292, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4F684B4();
  return sub_1B4F65424();
}

uint64_t sub_1B4EC0938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65184();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B8, &qword_1B4F73E30);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F7050, &qword_1B4F71500);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F7050, &qword_1B4F71500);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F7050, &qword_1B4F71500);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F5670, MEMORY[0x1E69CB238], MEMORY[0x1E69CB250]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F7050, &qword_1B4F71500);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F7050, &qword_1B4F71500, MEMORY[0x1E69CB238], MEMORY[0x1E69CB230], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F55B8, &qword_1B4F73E30);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F7050, &qword_1B4F71500, MEMORY[0x1E69CB238], MEMORY[0x1E69CB230], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F7050, &qword_1B4F71500);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F663B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6440, &unk_1B4F78E90);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4140, qword_1B4F789A0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4140, qword_1B4F789A0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6448, MEMORY[0x1E69CC0D0], MEMORY[0x1E69CC0D8]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4140, qword_1B4F789A0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4140, qword_1B4F789A0, MEMORY[0x1E69CC0D0], MEMORY[0x1E69CC0C8], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6440, &unk_1B4F78E90);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4140, qword_1B4F789A0, MEMORY[0x1E69CC0D0], MEMORY[0x1E69CC0C8], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4140, qword_1B4F789A0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC1048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66754();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6430, &qword_1B4F78E88);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4138, &qword_1B4F6A640);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4138, &qword_1B4F6A640);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4138, &qword_1B4F6A640);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6438, MEMORY[0x1E69CC658], MEMORY[0x1E69CC670]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4138, &qword_1B4F6A640);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4138, &qword_1B4F6A640, MEMORY[0x1E69CC658], MEMORY[0x1E69CC640], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6430, &qword_1B4F78E88);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4138, &qword_1B4F6A640, MEMORY[0x1E69CC658], MEMORY[0x1E69CC640], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4138, &qword_1B4F6A640);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC13D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65274();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6420, &qword_1B4F78E80);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4130, &unk_1B4F78990);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4130, &unk_1B4F78990);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4130, &unk_1B4F78990);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6428, MEMORY[0x1E69CB2A8], MEMORY[0x1E69CB2B0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4130, &unk_1B4F78990);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4130, &unk_1B4F78990, MEMORY[0x1E69CB2A8], MEMORY[0x1E69CB2A0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6420, &qword_1B4F78E80);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4130, &unk_1B4F78990, MEMORY[0x1E69CB2A8], MEMORY[0x1E69CB2A0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4130, &unk_1B4F78990);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC1758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65AD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6410, &qword_1B4F78E78);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4120, &unk_1B4F78980);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4120, &unk_1B4F78980);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4120, &unk_1B4F78980);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6418, MEMORY[0x1E69CB588], MEMORY[0x1E69CB590]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4120, &unk_1B4F78980);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4120, &unk_1B4F78980, MEMORY[0x1E69CB588], MEMORY[0x1E69CB580], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6410, &qword_1B4F78E78);
    return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4120, &unk_1B4F78980, MEMORY[0x1E69CB588], MEMORY[0x1E69CB580], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4120, &unk_1B4F78980);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC1AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F67AF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6400, &qword_1B4F78E70);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4128, &qword_1B4F6A638);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4128, &qword_1B4F6A638);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4128, &qword_1B4F6A638);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6408, MEMORY[0x1E69CD410], MEMORY[0x1E69CD418]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4128, &qword_1B4F6A638);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4128, &qword_1B4F6A638, MEMORY[0x1E69CD410], MEMORY[0x1E69CD408], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6400, &qword_1B4F78E70);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4128, &qword_1B4F6A638, MEMORY[0x1E69CD410], MEMORY[0x1E69CD408], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4128, &qword_1B4F6A638);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC1E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66014();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63F0, &qword_1B4F78E68);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4118, &qword_1B4F6A630);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4118, &qword_1B4F6A630);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4118, &qword_1B4F6A630);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63F8, MEMORY[0x1E69CBC48], MEMORY[0x1E69CBC50]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4118, &qword_1B4F6A630);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4118, &qword_1B4F6A630, MEMORY[0x1E69CBC48], MEMORY[0x1E69CBC40], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63F0, &qword_1B4F78E68);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4118, &qword_1B4F6A630, MEMORY[0x1E69CBC48], MEMORY[0x1E69CBC40], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4118, &qword_1B4F6A630);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC21F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65854();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63E0, &qword_1B4F78E60);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40F8, &unk_1B4F78970);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40F8, &unk_1B4F78970);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40F8, &unk_1B4F78970);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63E8, MEMORY[0x1E69CB448], MEMORY[0x1E69CB450]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40F8, &unk_1B4F78970);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40F8, &unk_1B4F78970, MEMORY[0x1E69CB448], MEMORY[0x1E69CB440], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63E0, &qword_1B4F78E60);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40F8, &unk_1B4F78970, MEMORY[0x1E69CB448], MEMORY[0x1E69CB440], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40F8, &unk_1B4F78970);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F64FD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63D0, &qword_1B4F78E58);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F72D0, &qword_1B4F6A610);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F72D0, &qword_1B4F6A610);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F72D0, &qword_1B4F6A610);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63D8, MEMORY[0x1E69CB198], MEMORY[0x1E69CB1A0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F72D0, &qword_1B4F6A610);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F72D0, &qword_1B4F6A610, MEMORY[0x1E69CB198], MEMORY[0x1E69CB190], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63D0, &qword_1B4F78E58);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F72D0, &qword_1B4F6A610, MEMORY[0x1E69CB198], MEMORY[0x1E69CB190], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F72D0, &qword_1B4F6A610);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC2900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65D04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63C0, &qword_1B4F78E50);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40F0, &unk_1B4F78960);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40F0, &unk_1B4F78960);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40F0, &unk_1B4F78960);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63C8, MEMORY[0x1E69CB758], MEMORY[0x1E69CB760]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40F0, &unk_1B4F78960);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40F0, &unk_1B4F78960, MEMORY[0x1E69CB758], MEMORY[0x1E69CB750], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63C0, &qword_1B4F78E50);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40F0, &unk_1B4F78960, MEMORY[0x1E69CB758], MEMORY[0x1E69CB750], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40F0, &unk_1B4F78960);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC2C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66B74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63B0, &qword_1B4F78E48);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40E8, &qword_1B4F6A608);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40E8, &qword_1B4F6A608);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40E8, &qword_1B4F6A608);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63B8, MEMORY[0x1E69CCA68], MEMORY[0x1E69CCA70]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40E8, &qword_1B4F6A608);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E8, &qword_1B4F6A608, MEMORY[0x1E69CCA68], MEMORY[0x1E69CCA60], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63B0, &qword_1B4F78E48);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E8, &qword_1B4F6A608, MEMORY[0x1E69CCA68], MEMORY[0x1E69CCA60], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40E8, &qword_1B4F6A608);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC3010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65B84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63A0, &qword_1B4F78E40);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40E0, &unk_1B4F78950);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40E0, &unk_1B4F78950);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F63A8, MEMORY[0x1E69CB618], MEMORY[0x1E69CB620]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40E0, &unk_1B4F78950);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E0, &unk_1B4F78950, MEMORY[0x1E69CB618], MEMORY[0x1E69CB610], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F63A0, &qword_1B4F78E40);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E0, &unk_1B4F78950, MEMORY[0x1E69CB618], MEMORY[0x1E69CB610], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40E0, &unk_1B4F78950);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F64AA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6390, &qword_1B4F78E38);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40D8, &qword_1B4F6A600);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40D8, &qword_1B4F6A600);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6398, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF58]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40D8, &qword_1B4F6A600);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D8, &qword_1B4F6A600, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF48], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6390, &qword_1B4F78E38);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D8, &qword_1B4F6A600, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF48], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40D8, &qword_1B4F6A600);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC3720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66454();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40D0, &unk_1B4F78940);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40D0, &unk_1B4F78940);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F5668, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC210]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D0, &unk_1B4F78940, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC1E0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F55B0, &qword_1B4F78E30);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D0, &unk_1B4F78940, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC1E0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40D0, &unk_1B4F78940);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC3AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65DB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6380, &qword_1B4F78E28);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40C8, &qword_1B4F6A5F8);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6388, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7C0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40C8, &qword_1B4F6A5F8);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C8, &qword_1B4F6A5F8, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7A0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6380, &qword_1B4F78E28);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C8, &qword_1B4F6A5F8, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7A0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC3E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6370, &qword_1B4F78E20);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40C0, &unk_1B4F78930);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40C0, &unk_1B4F78930);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6378, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBB0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40C0, &unk_1B4F78930);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C0, &unk_1B4F78930, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBA0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6370, &qword_1B4F78E20);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C0, &unk_1B4F78930, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBA0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40C0, &unk_1B4F78930);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F64B04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6360, &qword_1B4F78E18);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40B8, &qword_1B4F6A5F0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6368, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFC0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40B8, &qword_1B4F6A5F0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B8, &qword_1B4F6A5F0, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFB0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6360, &qword_1B4F78E18);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B8, &qword_1B4F6A5F0, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFB0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC4540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65894();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6350, &qword_1B4F78E10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40A0, &qword_1B4F6A5E0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6358, MEMORY[0x1E69CB468], MEMORY[0x1E69CB470]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40A0, &qword_1B4F6A5E0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40A0, &qword_1B4F6A5E0, MEMORY[0x1E69CB468], MEMORY[0x1E69CB460], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6350, &qword_1B4F78E10);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40A0, &qword_1B4F6A5E0, MEMORY[0x1E69CB468], MEMORY[0x1E69CB460], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC48C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F67A34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6340, &qword_1B4F78E08);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F40B0, &unk_1B4F78920);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F40B0, &unk_1B4F78920);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6348, MEMORY[0x1E69CD338], MEMORY[0x1E69CD340]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F40B0, &unk_1B4F78920);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B0, &unk_1B4F78920, MEMORY[0x1E69CD338], MEMORY[0x1E69CD328], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6340, &qword_1B4F78E08);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B0, &unk_1B4F78920, MEMORY[0x1E69CD338], MEMORY[0x1E69CD328], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F40B0, &unk_1B4F78920);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC4C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66914();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6330, &qword_1B4F78E00);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4090, &qword_1B4F6A5D8);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4090, &qword_1B4F6A5D8);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6338, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC7A8]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4090, &qword_1B4F6A5D8);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4090, &qword_1B4F6A5D8, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC798], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6330, &qword_1B4F78E00);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4090, &qword_1B4F6A5D8, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC798], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4090, &qword_1B4F6A5D8);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC4FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F64E44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6320, &qword_1B4F78DF8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4088, &qword_1B4F6A5D0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4088, &qword_1B4F6A5D0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6328, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0C0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4088, &qword_1B4F6A5D0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4088, &qword_1B4F6A5D0, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0B0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6320, &qword_1B4F78DF8);
    return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4088, &qword_1B4F6A5D0, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0B0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4088, &qword_1B4F6A5D0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC5360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F65C34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6310, &qword_1B4F78DF0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4080, &unk_1B4F788F0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4080, &unk_1B4F788F0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6318, MEMORY[0x1E69CB680], MEMORY[0x1E69CB688]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4080, &unk_1B4F788F0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4080, &unk_1B4F788F0, MEMORY[0x1E69CB680], MEMORY[0x1E69CB678], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6310, &qword_1B4F78DF0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4080, &unk_1B4F788F0, MEMORY[0x1E69CB680], MEMORY[0x1E69CB678], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4080, &unk_1B4F788F0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC56E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66084();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6300, &qword_1B4F78DE8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4078, &qword_1B4F6A5C8);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4078, &qword_1B4F6A5C8);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F6308, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBE08]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4078, &qword_1B4F6A5C8);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4078, &qword_1B4F6A5C8, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBDF8], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F6300, &qword_1B4F78DE8);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4078, &qword_1B4F6A5C8, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBDF8], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4078, &qword_1B4F6A5C8);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC5A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66964();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62F0, &qword_1B4F78DE0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4060, &unk_1B4F788D0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4060, &unk_1B4F788D0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F62F8, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7E0]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4060, &unk_1B4F788D0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4060, &unk_1B4F788D0, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7D0], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F62F0, &qword_1B4F78DE0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4060, &unk_1B4F788D0, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7D0], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4060, &unk_1B4F788D0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC5DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F66AC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62E0, &qword_1B4F78DD8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4070, &unk_1B4F788E0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4070, &unk_1B4F788E0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F62E8, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9D8]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4070, &unk_1B4F788E0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4070, &unk_1B4F788E0, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9C8], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F62E0, &qword_1B4F78DD8);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4070, &unk_1B4F788E0, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9C8], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4070, &unk_1B4F788E0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC6180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1B4F679A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62D0, &qword_1B4F78DD0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1B4E21A90(a2, &v24 - v16, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4E21A90(a1, &v17[v19], &qword_1EB8F4068, &qword_1B4F6A5C0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) != 1)
  {
    sub_1B4E21A90(v17, v13, &qword_1EB8F4068, &qword_1B4F6A5C0);
    if (v20(&v17[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v17[v19], v5);
      sub_1B4EC6508(&qword_1EB8F62D8, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD2A8]);
      v22 = sub_1B4F67F54();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1B4DD2BC4(v17, &qword_1EB8F4068, &qword_1B4F6A5C0);
      if (v22)
      {
        return (*(v6 + 56))(v25, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4068, &qword_1B4F6A5C0, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD298], v25);
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1B4DD2BC4(v17, &qword_1EB8F62D0, &qword_1B4F78DD0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4068, &qword_1B4F6A5C0, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD298], v25);
  }

  if (v20(&v17[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v17, &qword_1EB8F4068, &qword_1B4F6A5C0);
  return (*(v6 + 56))(v25, 1, 1, v5);
}

uint64_t sub_1B4EC6508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4EC6550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t SourceLocation.description.getter()
{
  v4 = sub_1B4EC67C8(*v0, *(v0 + 8));
  MEMORY[0x1B8C818C0](58, 0xE100000000000000);
  v1 = sub_1B4F68D04();
  MEMORY[0x1B8C818C0](v1);

  MEMORY[0x1B8C818C0](32, 0xE100000000000000);
  v2 = sub_1B4EC6870(*(v0 + 24), *(v0 + 32));
  MEMORY[0x1B8C818C0](v2);

  return v4;
}

uint64_t sub_1B4EC6714()
{
  v1 = v0[3];
  v2 = v0[4];
  v6 = sub_1B4EC67C8(*v0, v0[1]);
  MEMORY[0x1B8C818C0](58, 0xE100000000000000);
  v3 = sub_1B4F68D04();
  MEMORY[0x1B8C818C0](v3);

  MEMORY[0x1B8C818C0](32, 0xE100000000000000);
  v4 = sub_1B4EC6870(v1, v2);
  MEMORY[0x1B8C818C0](v4);

  return v6;
}

uint64_t sub_1B4EC67C8(uint64_t a1, uint64_t a2)
{
  sub_1B4DCAC7C();
  v3 = (sub_1B4F68844() + 16);
  if (*v3)
  {
    a1 = v3[2 * *v3];
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1B4EC6870(uint64_t a1, unint64_t a2)
{
  sub_1B4DCACD0(40, 0xE100000000000000, a1, a2);
  v2 = sub_1B4F680B4();
  v3 = MEMORY[0x1B8C81870](v2);

  return v3;
}

uint64_t static MetricsDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v2);
  return sub_1B4F66A44();
}

uint64_t PlaybackIntent.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F65874();

  return sub_1B4F65884();
}

uint64_t sub_1B4EC6A40(double a1)
{
  sub_1B4F65874();

  return sub_1B4F65884();
}

uint64_t WorkoutPlanCompleted.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F649A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlanCompleted.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WorkoutPlanCompleted(uint64_t a1)
{
  result = qword_1EDB6EB68;
  if (!qword_1EDB6EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EC6BEC(uint64_t a1)
{
  result = sub_1B4F649A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4EC6C58()
{
  result = sub_1B4EC6C78();
  qword_1EDB700E8 = result;
  return result;
}

uint64_t sub_1B4EC6C78()
{
  v0 = MEMORY[0x1B8C7E5F0]();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v2++;
      v6 = v7;
      v8 = v7 >> 6;
      if (v7 >> 6)
      {
        if (v8 != 1 || (sub_1B4F66214() & 1) != 0)
        {
LABEL_12:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B4E25914(0, *(v3 + 16) + 1, 1);
          }

          v5 = *(v3 + 16);
          v4 = *(v3 + 24);
          if (v5 >= v4 >> 1)
          {
            sub_1B4E25914((v4 > 1), v5 + 1, 1);
          }

          *(v3 + 16) = v5 + 1;
          *(v3 + v5 + 32) = v6;
        }
      }

      else if (sub_1B4F66544())
      {
        goto LABEL_12;
      }

      if (!--v1)
      {
        goto LABEL_15;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v9 = sub_1B4DF2C48(v3);

  return v9;
}

uint64_t MetricTopic.isAnonymous.getter(uint64_t a1)
{
  if (!(a1 >> 6))
  {
    return sub_1B4F66544();
  }

  if (a1 >> 6 == 1)
  {
    return sub_1B4F66214();
  }

  return 1;
}

uint64_t static MetricTopic.anonymousTopics.getter()
{
  if (qword_1EDB700E0 != -1)
  {
    swift_once();
  }
}

uint64_t MetricTopic.supportsDemographicEvent.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE361C0]();
  }
}

uint64_t MetricTopic.supportsOptInConsentField.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361D0]();
  }
}

uint64_t MetricTopic.supportsSubscriptionFields.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361D8]();
  }
}

uint64_t MetricTopic.supportsIsSubscribedField.getter(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    return a1 >> 6 == 1;
  }

  else
  {
    return MEMORY[0x1EEE361C8]();
  }
}

uint64_t MetricTopic.supportsPurchaseEventAdditionalDetails.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE361E8]();
  }
}

uint64_t MetricTopic.supportsGroupActivityFields.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361E0]();
  }
}

unint64_t sub_1B4EC6EBC()
{
  result = qword_1EDB71F70;
  if (!qword_1EDB71F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71F70);
  }

  return result;
}

void *RemoteKeyDeliveryClient.__allocating_init(queue:)(void *a1)
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

void *RemoteKeyDeliveryClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t RemoteKeyDeliveryClient.fetchCertificateContext()@<X0>(uint64_t a1@<X8>)
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
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4560, &qword_1B4F6CE10);
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
  v112[0] = 147;
  v32 = *(v30 + 24);
  v104 = sub_1B4F664D4();
  v103 = v27;
  v32(v112, v104, MEMORY[0x1E69CC2F0], MEMORY[0x1E69CC2F8], ObjectType, v30);
  type metadata accessor for ActivityTrace();
  v33 = swift_allocObject();
  *(v33 + 16) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v33 + 24) = 48;
  *(v33 + 32) = 2;
  v34 = v33;
  v35 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v36 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchCertificateContext", v35, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v44 = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v44 + 8) = 48;
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
  *(v52 + 48) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v52 + 56) = 48;
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
  *v67 = sub_1B4ECBD5C;
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
  *(v74 + 32) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v74 + 40) = 48;
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
  *v80 = sub_1B4ECBD98;
  v80[1] = v74;

  sub_1B4F675F4();
  v81 = *(v54 + 8);
  v81(v68, v76);
  (*(v61 + 8))(v108, v109);
  (*(v69 + 8))(v110, v107);
  v81(v103, v76);
}

uint64_t RemoteKeyDeliveryClient.fetchContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66504();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 148;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F64A74();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteKeyDeliveryClient::fetchContext";
  *(v38 + 24) = 37;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchContext", v39, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v48 = "RemoteKeyDeliveryClient::fetchContext";
  *(v48 + 8) = 37;
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
  *(v56 + 48) = "RemoteKeyDeliveryClient::fetchContext";
  *(v56 + 56) = 37;
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
  *v71 = sub_1B4ECBDD8;
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
  *(v78 + 32) = "RemoteKeyDeliveryClient::fetchContext";
  *(v78 + 40) = 37;
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
  *v84 = sub_1B4ECBE14;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteKeyDeliveryClient.fetchStreamingKeyNonce(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v6);
  v97 = v7;
  v98 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = v86 - v10;
  v109 = sub_1B4F64964();
  v102 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v11);
  v101 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v112 = v86 - v15;
  v93 = sub_1B4F67BD4();
  v16 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v17);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1B4F67BA4();
  v20 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v21);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v100 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v24);
  v107 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v95 = v29;
  v96 = v86 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v86 - v32;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v35 = __swift_project_value_buffer(v34, qword_1EDB6DE50);
  v36 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v114[0] = 151;
  v113[0] = a1;
  v113[1] = a2;
  (*(v36 + 32))(v114, v113, MEMORY[0x1E69E6158], MEMORY[0x1E6969080], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CAE40], MEMORY[0x1E69CAE48], ObjectType, v36);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v38 + 24) = 47;
  *(v38 + 32) = 2;
  v39 = v38;
  v40 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v41 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchStreamingKeyNonce", v40, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = 0;
  *(v39 + 40) = v42;
  v105 = v39;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v106 = v33;
  v43 = v23;
  v44 = v16;
  v45 = *(v16 + 16);
  v46 = v93;
  v45(v19, v35, v93);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v48 + 8) = 47;
  *(v48 + 16) = 2;
  v49 = v94;
  (*(v20 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v43, v94);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v45((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v19, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  (*(v44 + 8))(v19, v46);
  (*(v20 + 8))(v43, v49);
  *(v50 + 16) = 0;
  v87 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v50;
  v51 = v105;
  v113[0] = v105;
  v52 = sub_1B4F67F94();
  v94 = v52;
  v54 = v53;
  sub_1B4F64944();
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  *(v55 + 24) = v47;
  *(v55 + 32) = v52;
  *(v55 + 40) = v54;
  v93 = v54;
  *(v55 + 48) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v55 + 56) = 47;
  *(v55 + 64) = 2;

  v56 = v110;
  sub_1B4F675F4();
  v57 = v100;
  v58 = *(v100 + 16);
  v91 = v100 + 16;
  v92 = v58;
  v59 = v107;
  v60 = v108;
  v58(v107, v106, v108);
  v90 = *(v57 + 80);
  v88 = &v95[(v90 + 16) & ~v90];
  v61 = (v90 + 16) & ~v90;
  v89 = v61;
  v62 = swift_allocObject();
  v63 = *(v57 + 32);
  v86[1] = v57 + 32;
  v95 = v63;
  (v63)(v62 + v61, v59, v60);
  v64 = v104;
  v65 = v98;
  v66 = v111;
  (*(v104 + 16))(v98, v56, v111);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = (v97 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  (*(v64 + 32))(v69 + v67, v65, v66);
  v70 = (v69 + v68);
  *v70 = sub_1B4ECBE54;
  v70[1] = v62;
  v71 = v96;
  sub_1B4F675F4();
  v73 = v101;
  v72 = v102;
  v74 = v109;
  (*(v102 + 16))(v101, v112, v109);
  v75 = (*(v72 + 80) + 49) & ~*(v72 + 80);
  v76 = (v99 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v93;
  *(v77 + 16) = v94;
  *(v77 + 24) = v78;
  *(v77 + 32) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v77 + 40) = 47;
  *(v77 + 48) = 2;
  (*(v72 + 32))(v77 + v75, v73, v74);
  *(v77 + v76) = v87;
  *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v105;
  v80 = v107;
  v79 = v108;
  v92(v107, v71, v108);
  v81 = (v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (v95)(v82 + v89, v80, v79);
  v83 = (v82 + v81);
  *v83 = sub_1B4ECBE90;
  v83[1] = v77;

  sub_1B4F675F4();
  v84 = *(v57 + 8);
  v84(v71, v79);
  (*(v64 + 8))(v110, v111);
  (*(v72 + 8))(v112, v109);
  v84(v106, v79);
}

uint64_t RemoteKeyDeliveryClient.renewContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66504();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 149;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F64A74();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteKeyDeliveryClient::renewContext";
  *(v38 + 24) = 37;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::renewContext", v39, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v48 = "RemoteKeyDeliveryClient::renewContext";
  *(v48 + 8) = 37;
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
  *(v56 + 48) = "RemoteKeyDeliveryClient::renewContext";
  *(v56 + 56) = 37;
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
  *v71 = sub_1B4ECC33C;
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
  *(v78 + 32) = "RemoteKeyDeliveryClient::renewContext";
  *(v78 + 40) = 37;
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
  *v84 = sub_1B4ECC334;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteKeyDeliveryClient.releaseContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v31 = sub_1B4F66504();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EDB6DE50);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 150;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteKeyDeliveryClient::releaseContext";
  *(v41 + 24) = 39;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::releaseContext", v43, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v51 = "RemoteKeyDeliveryClient::releaseContext";
  *(v51 + 8) = 39;
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
  *(v60 + 48) = "RemoteKeyDeliveryClient::releaseContext";
  *(v60 + 56) = 39;
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
  *v73 = sub_1B4ECBF74;
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
  *(v79 + 32) = "RemoteKeyDeliveryClient::releaseContext";
  *(v79 + 40) = 39;
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
  *v84 = sub_1B4ECC000;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}

uint64_t RemoteKeyDeliveryClient.fetchPlaybackVoucher(version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66644();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 232;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F65B94();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC598], MEMORY[0x1E69CC5A0], MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v38 + 24) = 48;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchPlaybackVoucher", v39, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v48 = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
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
  *(v56 + 48) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
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
  *v71 = sub_1B4ECC0DC;
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
  *(v78 + 32) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
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
  *v84 = sub_1B4ECC118;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteKeyDeliveryClient.queryPlaybackVoucher()@<X0>(uint64_t a1@<X8>)
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
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
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
  v112[0] = 231;
  v32 = *(v30 + 24);
  v104 = sub_1B4F65B94();
  v103 = v27;
  v32(v112, v104, MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v30);
  type metadata accessor for ActivityTrace();
  v33 = swift_allocObject();
  *(v33 + 16) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v33 + 24) = 48;
  *(v33 + 32) = 2;
  v34 = v33;
  v35 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v36 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::queryPlaybackVoucher", v35, OS_ACTIVITY_FLAG_DEFAULT);
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
  *v44 = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v44 + 8) = 48;
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
  *(v52 + 48) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v52 + 56) = 48;
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
  *v67 = sub_1B4ECC348;
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
  *(v74 + 32) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v74 + 40) = 48;
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
  *v80 = sub_1B4ECC338;
  v80[1] = v74;

  sub_1B4F675F4();
  v81 = *(v54 + 8);
  v81(v68, v76);
  (*(v61 + 8))(v108, v109);
  (*(v69 + 8))(v110, v107);
  v81(v103, v76);
}

uint64_t sub_1B4ECBCEC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

void sub_1B4ECBE90(uint64_t a1)
{
  v3 = *(sub_1B4F64964() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4E1D07C(*a1, *(a1 + 8), *(a1 + 16), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECBF74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B4E20A40(v4, a1);
}

void sub_1B4ECC000(uint64_t a1)
{
  v3 = *(sub_1B4F64964() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4E209F0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECC158(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECC21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_1B4ECC54C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F66634();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4ECC590(uint64_t a1, uint64_t a2)
{
  sub_1B4DE3280();
  sub_1B4DC53AC();
  return sub_1B4F68134();
}

void HealthStore.birthday.getter()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v7[0] = 0;
  v2 = [v1 dateOfBirthComponentsWithError_];
  v3 = v7[0];
  if (v2)
  {
    v4 = v2;
    sub_1B4F64794();
    v5 = v3;
  }

  else
  {
    v6 = v7[0];
    sub_1B4F647C4();

    swift_willThrow();
  }
}

id HealthStore.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  a1[4] = &type metadata for ActivityRingsQueryProvider;
  a1[5] = &protocol witness table for ActivityRingsQueryProvider;
  *a1 = result;
  return result;
}

uint64_t HealthStore.init(healthStore:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[4] = &type metadata for ActivityRingsQueryProvider;
  a2[5] = &protocol witness table for ActivityRingsQueryProvider;
  *a2 = result;
  return result;
}

uint64_t HealthStore.init(activityRingsQueryProvider:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  *a2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];

  return sub_1B4DC933C(a1, (a2 + 1));
}

SEL *sub_1B4ECC850(SEL *a1, SEL *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v10[0] = 0;
  v5 = [v4 *a1];
  if (v5)
  {
    v6 = v5;
    v7 = v10[0];
    a2 = [v6 *a2];
  }

  else
  {
    v8 = v10[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return a2;
}

id sub_1B4ECC9C8(SEL *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v7[0] = 0;
  v3 = [v2 *a1];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v3;
}

uint64_t HealthStore.betaBlockerUse.getter()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v8[0] = 0;
  v2 = [v1 _cardioFitnessMedicationsUseWithError_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    v5 = v8[0];
    v3 = [v4 takingBetaBlockers];
  }

  else
  {
    v6 = v8[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t HealthStore.moveMode.getter(double a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  sub_1B4DF6AB4(23, 0, 0, a1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_1B4F65C74();
    if (v4 != 2)
    {
      return v4 & 1;
    }
  }

  v5 = *v1;
  v12[0] = 0;
  v6 = [v5 activityMoveModeWithError_];
  if (v6)
  {
    v7 = v6;
    v8 = v12[0];
    v9 = [v7 activityMoveMode];

    v4 = sub_1B4E639AC(v9);
    return v4 & 1;
  }

  v11 = v12[0];
  sub_1B4F647C4();

  return swift_willThrow();
}

id HealthStore.fitnessMode.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return (sub_1B4E63A84(v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthStore.save(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECCDA8, 0, 0);
}

{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECD384, 0, 0);
}

uint64_t sub_1B4ECCDA8()
{
  v7 = **(v0 + 152);
  if (*(v0 + 144) >> 62)
  {
    sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);

    sub_1B4F68B34();
  }

  else
  {

    sub_1B4F68D64();
    sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);
  v4 = sub_1B4F681B4();
  *(v0 + 184) = v4;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B4ECD01C;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B4ECD214;
  *(v0 + 104) = &block_descriptor_8;
  [v7 saveObjects:v4 withCompletion:v0 + 80];
  (*(v2 + 8))(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B4ECD01C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B4ECD198;
  }

  else
  {
    v2 = sub_1B4ECD12C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4ECD12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4ECD198(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1B4ECD214(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682B4();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682A4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B4ECD384()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v11 = v1[18];
  v8 = *v1[19];
  v1[2] = v2;
  v1[3] = sub_1B4ECD540;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4ECD214;
  v1[13] = &block_descriptor_4;
  [v8 saveObject:v11 withCompletion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B4ECD540()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1B4ECD6B4;
  }

  else
  {
    v2 = sub_1B4ECD650;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4ECD650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4ECD6B4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t HealthStore.save(_:to:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECD7F8, 0, 0);
}

uint64_t sub_1B4ECD7F8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v10 = *v1[20];
  v11 = v1[19];
  sub_1B4DD8804(0, &unk_1EDB6DA48, 0x1E696C3A8);
  v7 = sub_1B4F681B4();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_1B4ECD9E4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4ECD214;
  v1[13] = &block_descriptor_8;
  [v10 addSamples:v7 toWorkout:v11 completion:v3];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B4ECD9E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1B4ECDB60;
  }

  else
  {
    v2 = sub_1B4ECDAF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4ECDAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4ECDB60(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t HealthStore.queryStatistics(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDC28, 0, 0);
}

uint64_t sub_1B4ECDC28()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1B4ECDCC8;

  return MEMORY[0x1EEDC76A8](v1);
}

uint64_t sub_1B4ECDCC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4ECDDFC, 0, 0);
  }
}

uint64_t sub_1B4ECDDFC()
{
  v1 = v0[6];
  if (v1)
  {
    sub_1B4E6E7B0(v1, v0[2]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[2];
  v4 = sub_1B4F66204();
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t HealthStore.querySamples<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDEDC, 0, 0);
}

uint64_t sub_1B4ECDEDC()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_1B4F67E74();
  *v2 = v0;
  v2[1] = sub_1B4ECDF98;

  return MEMORY[0x1EEDC7698](v1, v3);
}

uint64_t sub_1B4ECDF98(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

NSObject *HealthStore.makeWorkoutSession(session:)@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v6 = sub_1B4F678C4();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  v15[3] = &type metadata for HealthStore;
  v15[4] = &protocol witness table for HealthStore;
  v15[5] = &protocol witness table for HealthStore;
  v15[6] = &protocol witness table for HealthStore;
  v15[7] = &protocol witness table for HealthStore;
  v15[0] = swift_allocObject();
  sub_1B4ECE950(v2, v15[0] + 16);
  v12 = type metadata accessor for HealthWorkoutSession(0);
  v13 = objc_allocWithZone(v12);
  result = HealthWorkoutSession.init(session:healthStore:)(v10, v15);
  if (!v3)
  {
    a2[3] = v12;
    a2[4] = &protocol witness table for HealthWorkoutSession;
    *a2 = result;
  }

  return result;
}

HKWorkoutSession __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HealthStore.makeWorkoutSession(configuration:)(HKWorkoutConfiguration configuration)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C5D0]);
  v11[0] = 0;
  v5 = v3;
  v6 = configuration.super.isa;
  v7 = [v4 initWithHealthStore:v5 configuration:v6 error:v11];
  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v7;
}

HKLiveWorkoutDataSource __swiftcall HealthStore.makeWorkoutDataSource(configuration:)(HKWorkoutConfiguration configuration)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C220]);

  return [v4 initWithHealthStore:v3 workoutConfiguration:configuration.super.isa];
}

id sub_1B4ECE3F4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return (sub_1B4E63A84(v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4ECE494(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDC28, 0, 0);
}

uint64_t sub_1B4ECE4B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDED70;

  return HealthStore.querySamples<A>(_:)(a1, a2);
}

uint64_t sub_1B4ECE55C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthStore.save(_:)(a1);
}

uint64_t sub_1B4ECE5F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthStore.save(_:)(a1);
}

uint64_t sub_1B4ECE684(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return HealthStore.save(_:to:)(a1, a2);
}

NSObject *sub_1B4ECE728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v10 = sub_1B4F678C4();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  v19[3] = a2;
  v19[4] = &protocol witness table for HealthStore;
  v19[5] = &protocol witness table for HealthStore;
  v19[6] = &protocol witness table for HealthStore;
  v19[7] = a3;
  v19[0] = swift_allocObject();
  sub_1B4ECE950(v4, v19[0] + 16);
  v16 = type metadata accessor for HealthWorkoutSession(0);
  v17 = objc_allocWithZone(v16);
  result = HealthWorkoutSession.init(session:healthStore:)(v14, v19);
  if (!v5)
  {
    a4[3] = v16;
    a4[4] = &protocol witness table for HealthWorkoutSession;
    *a4 = result;
  }

  return result;
}

id sub_1B4ECE888(void *a1)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C5D0]);
  v5 = v3;
  v6 = a1;
  v7 = sub_1B4ECE988(v5, v6);

  return v7;
}

id sub_1B4ECE900(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C220]);

  return [v4 initWithHealthStore:v3 workoutConfiguration:a1];
}

id sub_1B4ECE988(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v3 = [v2 initWithHealthStore:a1 configuration:a2 error:v7];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v3;
}

uint64_t type metadata accessor for MultiUserActivityCancelled(uint64_t a1)
{
  result = qword_1EB8F6478;
  if (!qword_1EB8F6478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ECEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return SessionMonitor.sessionUpdated(_:state:)(a1, a2, a3, a4);
}

uint64_t SessionMonitor.sessionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v5[7] = swift_task_alloc();
  v6 = sub_1B4F66964();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v5[11] = swift_task_alloc();
  v7 = sub_1B4F65184();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v5[15] = swift_task_alloc();
  v8 = sub_1B4F67A34();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v10 = sub_1B4F68274();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B4ECEE18, v10, v9);
}

uint64_t sub_1B4ECEE18(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[15];
  sub_1B4F654E4();
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v24 = v1[5];
    (*(v1[17] + 32))(v1[18], v1[15], v1[16]);
    v21 = (*(v24 + 88) + **(v24 + 88));
    v13 = swift_task_alloc();
    v1[21] = v13;
    *v13 = v1;
    v13[1] = sub_1B4ECF2E0;
    v14 = v1[5];
    v15 = v1[3];
    v16 = v1[4];
    v17 = v1[18];
    v18 = v21;

    return v18(v17, v15, v16, v14);
  }

  sub_1B4DD2BC4(v1[15], &qword_1EB8F40B0, &unk_1B4F78920);
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[11];
  sub_1B4F65384();
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v25 = v1[5];
    (*(v1[13] + 32))(v1[14], v1[11], v1[12]);
    v22 = (*(v25 + 96) + **(v25 + 96));
    v19 = swift_task_alloc();
    v1[23] = v19;
    *v19 = v1;
    v19[1] = sub_1B4ECF79C;
    v14 = v1[5];
    v15 = v1[3];
    v16 = v1[4];
    v17 = v1[14];
    v18 = v22;

    return v18(v17, v15, v16, v14);
  }

  sub_1B4DD2BC4(v1[11], &qword_1EB8F7050, &qword_1B4F71500);
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[7];
  sub_1B4F654A4();
  if ((*(v9 + 48))(v10, 1, v8) != 1)
  {
    v26 = v1[5];
    (*(v1[9] + 32))(v1[10], v1[7], v1[8]);
    v23 = (*(v26 + 104) + **(v26 + 104));
    v20 = swift_task_alloc();
    v1[25] = v20;
    *v20 = v1;
    v20[1] = sub_1B4ECFAF8;
    v14 = v1[5];
    v15 = v1[3];
    v16 = v1[4];
    v17 = v1[10];
    v18 = v23;

    return v18(v17, v15, v16, v14);
  }

  sub_1B4DD2BC4(v1[7], &qword_1EB8F4060, &unk_1B4F788D0);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1B4ECF2E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1B4ECFCF4;
  }

  else
  {
    v5 = sub_1B4ECF41C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ECF41C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1B4F65384();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v18 = v0[5];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v16 = (*(v18 + 96) + **(v18 + 96));
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_1B4ECF79C;
    v10 = v0[5];
    v11 = v0[3];
    v12 = v0[4];
    v13 = v0[14];
    v14 = v16;

    return v14(v13, v11, v12, v10);
  }

  sub_1B4DD2BC4(v0[11], &qword_1EB8F7050, &qword_1B4F71500);
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  sub_1B4F654A4();
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v19 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v17 = (*(v19 + 104) + **(v19 + 104));
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_1B4ECFAF8;
    v10 = v0[5];
    v11 = v0[3];
    v12 = v0[4];
    v13 = v0[10];
    v14 = v17;

    return v14(v13, v11, v12, v10);
  }

  sub_1B4DD2BC4(v0[7], &qword_1EB8F4060, &unk_1B4F788D0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4ECF79C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1B4ECFF5C;
  }

  else
  {
    v5 = sub_1B4ECF8D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ECF8D8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1B4F654A4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v0[7], &qword_1EB8F4060, &unk_1B4F788D0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v12 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v11 = (*(v12 + 104) + **(v12 + 104));
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_1B4ECFAF8;
    v7 = v0[10];
    v8 = v0[5];
    v9 = v0[3];
    v10 = v0[4];

    return v11(v7, v9, v10, v8);
  }
}

uint64_t sub_1B4ECFAF8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1B4ED01C4;
  }

  else
  {
    v5 = sub_1B4ECFC34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ECFC34()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4ECFCF4()
{
  v21 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1B4F68F84();
    v12 = sub_1B4DC4F88(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update playback with %@", v7, 0x16u);
    sub_1B4DD2BC4(v8, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }

  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B4ECFF5C()
{
  v21 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1B4F68F84();
    v12 = sub_1B4DC4F88(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update activity rings with %@", v7, 0x16u);
    sub_1B4DD2BC4(v8, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }

  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[14];
  swift_willThrow();
  (*(v16 + 8))(v17, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B4ED01C4()
{
  v21 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1B4F68F84();
    v12 = sub_1B4DC4F88(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update workout device connection with %@", v7, 0x16u);
    sub_1B4DD2BC4(v8, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }

  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B4ED0444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SessionMonitor.handleSessionActivated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionActivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 8);
  v6 = sub_1B4F68274();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0578, v6, v5);
}

uint64_t sub_1B4ED0578()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B4ED0660;

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0660()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1B4E4E61C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1B4E4E614;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}
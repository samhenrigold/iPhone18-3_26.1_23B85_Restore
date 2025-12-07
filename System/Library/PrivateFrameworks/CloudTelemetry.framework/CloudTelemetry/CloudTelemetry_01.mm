void *sub_22B4C2CFC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v9 = qword_280C53550;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_22B4C50A0();
  __swift_project_value_buffer(v11, qword_280C53558);
  v12 = sub_22B4C5080();
  v13 = sub_22B4C52D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B4AC000, v12, v13, "A.", v14, 2u);
    MEMORY[0x2318939B0](v14, -1, -1);
  }

  xpc_connection_set_target_queue(v8, v10);
  v17[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v17[5] = v4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22B4B2724;
  v17[3] = &block_descriptor_17;
  v15 = _Block_copy(v17);

  xpc_connection_set_event_handler(v8, v15);
  _Block_release(v15);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_22B4C2F30(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_22B4C5170();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v16 = qword_280C53550;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_22B4C50A0();
  __swift_project_value_buffer(v18, qword_280C53558);
  v19 = sub_22B4C5080();
  v20 = sub_22B4C52D0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22B4AC000, v19, v20, "B.", v21, 2u);
    MEMORY[0x2318939B0](v21, -1, -1);
  }

  xpc_connection_set_target_queue(mach_service, v17);
  v24[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v24[5] = v7;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_22B4B2724;
  v24[3] = &block_descriptor_14;
  v22 = _Block_copy(v24);

  xpc_connection_set_event_handler(mach_service, v22);
  _Block_release(v22);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

_xpc_connection_s *sub_22B4C31A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v12 = qword_280C53550;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_22B4C50A0();
    __swift_project_value_buffer(v14, qword_280C53558);
    v15 = sub_22B4C5080();
    v16 = sub_22B4C52D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B4AC000, v15, v16, "E.", v17, 2u);
      MEMORY[0x2318939B0](v17, -1, -1);
    }

    xpc_connection_set_target_queue(v11, v13);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4B2724;
    aBlock[3] = &block_descriptor_11;
    v18 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v18);
    _Block_release(v18);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B4C342C()
{
  result = qword_280C52E00;
  if (!qword_280C52E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52E00);
  }

  return result;
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x231893D00](a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B4C35C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8238, &qword_22B4C6D50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B4C71F0;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = *MEMORY[0x277D86340];
  *v5 = sub_22B4C51A0();
  v5[1] = v6;
  type metadata accessor for XPCObject(0);
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86330])
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = *MEMORY[0x277D86330];
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (*MEMORY[0x277D86328])
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = *MEMORY[0x277D86328];
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      v12 = sub_22B4BE678(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

uint64_t static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify(uint64_t a1))()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22B4C3954()
{
  if (qword_280C53740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22B4C3A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8238, &qword_22B4C6D50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B4C7250;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  *v11 = sub_22B4C51A0();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = *MEMORY[0x277D86230];
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = *MEMORY[0x277D86330];
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = *MEMORY[0x277D86358];
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = *MEMORY[0x277D86268];
  *(v20 + v21) = *MEMORY[0x277D862A8];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = *MEMORY[0x277D86280];
  *v23 = 0xD000000000000025;
  v23[1] = 0x800000022B4C77F0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86278])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = *MEMORY[0x277D86278];
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86258])
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = *MEMORY[0x277D86258];
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    v28 = sub_22B4BE678(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v28;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify(uint64_t a1))()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22B4C3F94()
{
  if (qword_280C53738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22B4C4058()
{
  v1 = *v0;
  sub_22B4C5490();
  MEMORY[0x231893460](v1);
  return sub_22B4C54D0();
}

uint64_t sub_22B4C40A0(uint64_t a1)
{
  v2 = *v1;
  sub_22B4C5490();
  MEMORY[0x231893460](v2);
  return sub_22B4C54D0();
}

unint64_t sub_22B4C40E4@<X0>(Swift::Int64 *a1@<X0>, CloudTelemetryShared::XPCMessage::MessageType_optional *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

void XPCMessage.init(fromXPC:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  MEMORY[0x28223BE20](v1 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_22B4C418C(uint64_t a1)
{
  if (a1 != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  swift_unknownObjectRetain();
  XPCDictionary.init(_:)();
  v3 = v2;
  XPCDictionary.subscript.getter(v2, v1);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for XPCObject(0);
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    swift_unknownObjectRelease();
    sub_22B4C4BB8(v1);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_22B4B0CFC(v1);
    return 0;
  }

  result = v3;
  if (*v1 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v41 = type metadata accessor for XPCObject(0);
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v43 = 0;
  v44 = 0xE000000000000000;
  LOBYTE(v42) = a2;
  sub_22B4C5370();
  MEMORY[0x231893130](2683, 0xE200000000000000);
  v40 = a1;
  v10 = XPCDictionary.keys.getter(a1);
  v39 = *(v10 + 2);
  if (!v39)
  {
LABEL_17:

    v33 = sub_22B4C50F0();
    v35 = v34;

    MEMORY[0x231893130](v33, v35);

    MEMORY[0x231893130](125, 0xE100000000000000);
    return v43;
  }

  v11 = 0;
  v38 = (v4 + 48);
  v12 = (v10 + 40);
  v13 = MEMORY[0x277D84F98];
  v37 = v10;
  while (v11 < *(v10 + 2))
  {
    v17 = *(v12 - 1);
    v16 = *v12;

    XPCDictionary.subscript.getter(v40, v9);
    if ((*v38)(v9, 1, v41) == 1)
    {
      goto LABEL_21;
    }

    v18 = v9;
    v19 = v6;
    sub_22B4AF3A0(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v13;
    v21 = sub_22B4AFF74(v17, v16);
    v23 = v13[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v13[3] < v26)
    {
      sub_22B4C463C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22B4AFF74(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v32 = v21;
    sub_22B4C4978();
    v21 = v32;
    if (v27)
    {
LABEL_3:
      v14 = v21;

      v13 = v42;
      v15 = v42[7] + *(v4 + 72) * v14;
      v6 = v19;
      sub_22B4C4C20(v19, v15);
      goto LABEL_4;
    }

LABEL_13:
    v13 = v42;
    v42[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v13[6] + 16 * v21);
    *v29 = v17;
    v29[1] = v16;
    v6 = v19;
    sub_22B4AF3A0(v19, v13[7] + *(v4 + 72) * v21);
    v30 = v13[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v13[2] = v31;
LABEL_4:
    ++v11;
    v12 += 2;
    v10 = v37;
    v9 = v18;
    if (v39 == v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B4C5400();
  __break(1u);
  return result;
}

uint64_t sub_22B4C463C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCObject(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82F8, &unk_22B4C73D0);
  v40 = v4;
  result = sub_22B4C53B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22B4AF3A0(v28, v41);
      }

      else
      {
        sub_22B4B1564(v28, v41);
      }

      sub_22B4C5490();
      sub_22B4C5180();
      result = sub_22B4C54D0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22B4AF3A0(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_22B4C4978()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82F8, &unk_22B4C73D0);
  v4 = *v0;
  v5 = sub_22B4C53A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22B4B1564(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22B4AF3A0(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_22B4C4BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B4C4C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B4C4C88()
{
  result = qword_27D8C82F0;
  if (!qword_27D8C82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C82F0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22B4C4CF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22B4C4D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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
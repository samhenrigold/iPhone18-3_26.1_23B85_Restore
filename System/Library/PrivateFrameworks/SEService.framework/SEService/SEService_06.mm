unint64_t sub_1C7C33390()
{
  result = qword_1EC2646E8;
  if (!qword_1EC2646E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646E8);
  }

  return result;
}

id SEApplet.__allocating_init(identifier:moduleIdentifier:lifecycleState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = sub_1C7BFAA50(a5);
  v16 = 7;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  *&v11[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v16;
  v18.receiver = v11;
  v18.super_class = v5;
  return objc_msgSendSuper2(&v18, sel_init);
}

id SEApplet.init(identifier:moduleIdentifier:lifecycleState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = sub_1C7BFAA50(a5);
  v16 = 7;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  *&v5[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v16;
  v18.receiver = v5;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t static SEApplet.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2646F0 = a1;
  return result;
}

Swift::Void __swiftcall SEApplet.encode(with:)(NSCoder with)
{
  v3 = sub_1C7C7D2E4();
  v4 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_1C7C7D2E4();
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState);
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id SEApplet.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C7C142A8();
  v5 = sub_1C7C7D5E4();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_1C7C7D5E4();
  if (!v7)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v7;
  v9 = sub_1C7C7D304();
  v10 = &v2[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v10 = v9;
  v10[1] = v11;
  v12 = sub_1C7C7D304();
  v13 = &v2[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = v12;
  v13[1] = v14;
  v15 = sub_1C7C7D2E4();
  v16 = [a1 decodeIntegerForKey_];

  result = sub_1C7BFAA50(v16);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = result;

    *&v2[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v19;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

  return result;
}

uint64_t SEApplet.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7C9F0C0);
  MEMORY[0x1CCA6B380](*(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier), *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8));
  MEMORY[0x1CCA6B380](0xD000000000000014, 0x80000001C7C9F0E0);
  MEMORY[0x1CCA6B380](*(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier), *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier + 8));
  MEMORY[0x1CCA6B380](0xD000000000000012, 0x80000001C7C9F100);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](8194314, 0xE300000000000000);
  return 0;
}

id SEApplet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C33CC8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6379636566696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C7C33D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C34668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C33D60(uint64_t a1)
{
  v2 = sub_1C7C343C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C33D9C(uint64_t a1)
{
  v2 = sub_1C7C343C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SEApplet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SEApplet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264718, &qword_1C7C90AB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C343C8();
  sub_1C7C7DBA4();
  v13 = 0;
  sub_1C7C7DA14();
  if (!v2)
  {
    v12 = 1;
    sub_1C7C7DA14();
    v11 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState);
    v10[15] = 2;
    sub_1C7C3441C();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

void *SEApplet.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264730, &qword_1C7C90AC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C343C8();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v9 = sub_1C7C7D984();
    v11 = (v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v19) = 1;
    v13 = sub_1C7C7D984();
    v14 = (v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier);
    *v14 = v13;
    v14[1] = v15;
    v18 = 2;
    sub_1C7C34470();
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState) = v19;
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C34354@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SEApplet.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C343C8()
{
  result = qword_1EC264720;
  if (!qword_1EC264720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264720);
  }

  return result;
}

unint64_t sub_1C7C3441C()
{
  result = qword_1EC264728;
  if (!qword_1EC264728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264728);
  }

  return result;
}

unint64_t sub_1C7C34470()
{
  result = qword_1EC264738;
  if (!qword_1EC264738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264738);
  }

  return result;
}

unint64_t sub_1C7C34564()
{
  result = qword_1EC264748;
  if (!qword_1EC264748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264748);
  }

  return result;
}

unint64_t sub_1C7C345BC()
{
  result = qword_1EC264750;
  if (!qword_1EC264750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264750);
  }

  return result;
}

unint64_t sub_1C7C34614()
{
  result = qword_1EC264758;
  if (!qword_1EC264758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264758);
  }

  return result;
}

uint64_t sub_1C7C34668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9F0A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6379636566696CLL && a2 == 0xEE00657461745365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SERInternalClient.getSESnapshot(token:targetDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  *(v5 + 192) = type metadata accessor for SERXPCRequest(0);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 81) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3483C, 0, 0);
}

uint64_t sub_1C7C3483C()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  *v2 = v5;
  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 16);
  *(v0 + 208) = v6;
  sub_1C7C19710(v5, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C348D8, v6, 0);
}

uint64_t sub_1C7C348D8()
{
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[27] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34968, 0, 0);
}

uint64_t sub_1C7C34968()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 1)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C388FC;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C3890C;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C34B38()
{
  v19 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[27];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[20];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  *(v3 + 176) = type metadata accessor for SERXPCRequest(0);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 81) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34DD0, 0, 0);
}

uint64_t sub_1C7C34DD0()
{
  v1 = *(v0 + 168);
  **(v0 + 184) = *(v0 + 81);
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34E4C, v2, 0);
}

uint64_t sub_1C7C34E4C()
{
  sub_1C7C35A1C(v0[23], v0 + 8);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34EDC, 0, 0);
}

uint64_t sub_1C7C34EDC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 3)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38938;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 184));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C350AC()
{
  v19 = v0;
  sub_1C7C21218(v0[23]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[25];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[20];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.canFit(esimUsage:reclaimUnusedSEMemory:token:targetDevice:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 184) = a5;
  *(v7 + 192) = v6;
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 81) = a3;
  *(v7 + 160) = a1;
  *(v7 + 200) = type metadata accessor for SERXPCRequest(0);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 82) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C35350, 0, 0);
}

uint64_t sub_1C7C35350()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 81);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  *v2 = v7;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  swift_storeEnumTagMultiPayload();
  v8 = *(v4 + 16);
  *(v0 + 216) = v8;
  v9 = v7;
  sub_1C7C19710(v6, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C353FC, v8, 0);
}

uint64_t sub_1C7C353FC()
{
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3548C, 0, 0);
}

uint64_t sub_1C7C3548C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38BE0;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38948;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t SERInternalClient.canFit(usage:reclaimUnusedSEMemory:token:targetDevice:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 184) = a5;
  *(v7 + 192) = v6;
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 81) = a3;
  *(v7 + 160) = a1;
  *(v7 + 200) = type metadata accessor for SERXPCRequest(0);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 82) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3570C, 0, 0);
}

uint64_t sub_1C7C3570C()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 81);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  *v2 = v7;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  swift_storeEnumTagMultiPayload();
  v8 = *(v4 + 16);
  *(v0 + 216) = v8;
  v9 = v7;
  sub_1C7C19710(v6, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C357B8, v8, 0);
}

uint64_t sub_1C7C357B8()
{
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C35848, 0, 0);
}

uint64_t sub_1C7C35848()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7B9E994;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BDC;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C35A1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v46 = a2;
  v7 = sub_1C7C7D1E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = (v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SERXPCRequest(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v45 - v13;
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1C7C7D1B4();
  v16 = __swift_project_value_buffer(v15, qword_1EC264768);
  sub_1C7C38A30(a1, v14, type metadata accessor for SERXPCRequest);
  v45[1] = v16;
  v17 = sub_1C7C7D194();
  v18 = sub_1C7C7D5A4();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45[0] = v5;
    v22 = v21;
    v50 = v21;
    *v20 = 136315138;
    sub_1C7C38A30(v14, v12, type metadata accessor for SERXPCRequest);
    v23 = sub_1C7C7D324();
    v25 = v24;
    sub_1C7C21218(v14);
    v26 = sub_1C7BE42F8(v23, v25, &v50);
    v4 = v3;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1C7B9A000, v17, v18, "SERXPCClient: Sending request %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x1CCA6C990](v22, -1, -1);
    MEMORY[0x1CCA6C990](v20, -1, -1);
  }

  else
  {

    sub_1C7C21218(v14);
  }

  sub_1C7C7D224();

  sub_1C7C7D1D4();
  sub_1C7C7D1C4();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263558, &unk_1C7C90D70);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C7C8F930;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1C7C7D794();

    v50 = 0xD000000000000016;
    v51 = 0x80000001C7C9F210;
    swift_getErrorValue();
    v28 = sub_1C7C7DB04();
    MEMORY[0x1CCA6B380](v28);

    v29 = v50;
    v30 = v51;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 32) = v29;
    *(v27 + 40) = v30;
    sub_1C7C7DB54();

    return swift_willThrow();
  }

  else
  {
    sub_1C7C38A98();
    sub_1C7C38AF0();
    sub_1C7C7D214();
    v32 = v50;
    v33 = v51;
    v34 = v52;
    sub_1C7C7D204();
    sub_1C7C38B44(v32, v33, v34);
    v35 = sub_1C7C7D194();
    v36 = sub_1C7C7D5A4();
    sub_1C7C212A4(v32, v33, v34);
    v48 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      v50 = v32;
      *v37 = 136315138;
      v51 = v33;
      v52 = v34;
      sub_1C7C38B44(v32, v33, v34);
      v38 = sub_1C7C7D324();
      v40 = v36;
      v41 = sub_1C7BE42F8(v38, v39, &v49);

      *(v37 + 4) = v41;
      v42 = v48;
      _os_log_impl(&dword_1C7B9A000, v48, v40, "SERXPCClient: Received response %s", v37, 0xCu);
      v43 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x1CCA6C990](v43, -1, -1);
      MEMORY[0x1CCA6C990](v37, -1, -1);
    }

    else
    {
    }

    v44 = v46;
    *v46 = v32;
    v44[1] = v33;
    *(v44 + 16) = v34;
  }

  return result;
}

uint64_t sub_1C7C35F8C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7C35FC4()
{
  type metadata accessor for SERInternalClient();
  v0 = swift_allocObject();
  type metadata accessor for SERXPCClient();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000029;
  *(v1 + 120) = 0x80000001C7C9F1E0;
  *(v0 + 16) = v1;
  off_1EC264760 = v0;
  return result;
}

uint64_t static SERInternalClient.shared.getter()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }
}

uint64_t SERInternalClient.getSESnapshot(token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C7C24258;

  return SERInternalClient.getSESnapshot(token:targetDevice:)(a1, a2, a3, (v3 + 24));
}

uint64_t SERInternalClient.refresh(dataSource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = type metadata accessor for SERXPCRequest(0);
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C361F0, 0, 0);
}

uint64_t sub_1C7C361F0()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v2;
  swift_storeEnumTagMultiPayload();
  v6 = *(v3 + 16);
  v0[27] = v6;
  v7 = v5;
  sub_1C7BED654(v4, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C7C3628C, v6, 0);
}

uint64_t sub_1C7C3628C()
{
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3631C, 0, 0);
}

uint64_t sub_1C7C3631C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 2)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38BD8;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t SERInternalClient.addReservation(type:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  *(v5 + 192) = type metadata accessor for SERXPCRequest(0);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = *a2;
  *(v5 + 81) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36598, 0, 0);
}

uint64_t sub_1C7C36598()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 81);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v7;
  *(v3 + 24) = v6;
  *(v3 + 32) = v4;
  swift_storeEnumTagMultiPayload();
  v8 = *(v5 + 16);
  *(v0 + 224) = v8;
  sub_1C7BDF708(v1, v2, v7);
  sub_1C7BED654(v6, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36654, v8, 0);
}

uint64_t sub_1C7C36654()
{
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[29] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C366E8, 0, 0);
}

uint64_t sub_1C7C366E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 4)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38950;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C368B8()
{
  v19 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[29];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[20];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.editReservation(uuid:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = type metadata accessor for SERXPCRequest(0);
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C36B4C, 0, 0);
}

uint64_t sub_1C7C36B4C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8) + 48));
  v7 = sub_1C7C7D104();
  (*(*(v7 - 8) + 16))(v1, v5, v7);
  *v6 = v4;
  v6[1] = v2;
  swift_storeEnumTagMultiPayload();
  v8 = *(v3 + 16);
  v0[27] = v8;
  sub_1C7BED654(v4, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36C50, v8, 0);
}

uint64_t sub_1C7C36C50()
{
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C36CE0, 0, 0);
}

uint64_t sub_1C7C36CE0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 5)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38960;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C36EB0()
{
  v19 = v0;
  sub_1C7C21218(v0[26]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[28];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[20];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.findReservation(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for SERXPCRequest(0);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37140, 0, 0);
}

uint64_t sub_1C7C37140()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = sub_1C7C7D104();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 16);
  v0[25] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37200, v5, 0);
}

uint64_t sub_1C7C37200()
{
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37290, 0, 0);
}

uint64_t sub_1C7C37290()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 6)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38970;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 192));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t SERInternalClient.removeReservation(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v3[24] = type metadata accessor for SERXPCRequest(0);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C374F8, 0, 0);
}

uint64_t sub_1C7C374F8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = sub_1C7C7D104();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 16);
  v0[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C7C375B8, v5, 0);
}

uint64_t sub_1C7C375B8()
{
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[27] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37648, 0, 0);
}

uint64_t sub_1C7C37648()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (!(v3 >> 4))
  {
    goto LABEL_7;
  }

  v4 = v3 >> 4 == 10 && (v2 | v1) == 0;
  if (!v4 || v3 != 160)
  {
    sub_1C7C7D794();
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = -96;
    v5 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v5);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 0;
  LOBYTE(v3) = 0;
  v6 = 0;
LABEL_8:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 168);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C377F0()
{
  v19 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[27];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[21];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.reservations()(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = type metadata accessor for SERXPCRequest(0);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37A7C, 0, 0);
}

uint64_t sub_1C7C37A7C()
{
  v1 = *(v0 + 168);
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37AF0, v2, 0);
}

uint64_t sub_1C7C37AF0()
{
  sub_1C7C35A1C(v0[23], v0 + 8);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37B80, 0, 0);
}

uint64_t sub_1C7C37B80()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 7)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38980;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38990;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264798, &qword_1C7C90CD8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 184));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t SERInternalClient.clearReservations()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = type metadata accessor for SERXPCRequest(0);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37DE4, 0, 0);
}

uint64_t sub_1C7C37DE4()
{
  v1 = *(v0 + 176);
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 16);
  *(v0 + 200) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37E58, v2, 0);
}

uint64_t sub_1C7C37E58()
{
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37EE8, 0, 0);
}

uint64_t sub_1C7C37EE8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (!(v3 >> 4))
  {
    goto LABEL_10;
  }

  v5 = v3 >> 4 == 10 && v1 == 1 && v2 == 0;
  if (!v5 || v3 != 160)
  {
    sub_1C7C7D794();
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    *(v0 + 88) = xmmword_1C7C90C50;
    *(v0 + 104) = -96;
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v1 = 0;
  v2 = 0;
  LOBYTE(v3) = 0;
  v7 = 0;
LABEL_11:
  sub_1C7C21218(*(v0 + 192));
  v8 = *(v0 + 168);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C38098()
{
  v19 = v0;
  sub_1C7C21218(v0[24]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[26];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[21];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.addReservation(for:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for SERXPCRequest(0);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C38328, 0, 0);
}

uint64_t sub_1C7C38328()
{
  v1 = v0[22];
  sub_1C7C38A30(v0[21], v0[24], type metadata accessor for SECCredentialConfig);
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 16);
  v0[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C383C8, v2, 0);
}

uint64_t sub_1C7C383C8()
{
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C38458, 0, 0);
}

uint64_t sub_1C7C38458()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 9)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C389BC;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BDC;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 192));
  v7 = *(v0 + 160);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  *(v7 + 17) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C3862C()
{
  v19 = v0;
  sub_1C7C21218(v0[24]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C7C7DB04();
    v10 = sub_1C7BE42F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1CCA6C990](v7, -1, -1);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v11 = v0[26];
  swift_getErrorValue();
  v12 = sub_1C7C7DB04();
  v14 = v13;

  v15 = v0[20];
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 257;

  v16 = v0[1];

  return v16();
}

uint64_t SERInternalClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C7C3887C()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC264768);
  __swift_project_value_buffer(v0, qword_1EC264768);
  return sub_1C7C7D1A4();
}

id sub_1C7C388FC@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 16;
  return a1;
}

id sub_1C7C38938@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 48;
  return a1;
}

id sub_1C7C38950@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 64;
  return a1;
}

id sub_1C7C38960@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 80;
  return a1;
}

id sub_1C7C38970@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 96;
  return a1;
}

uint64_t sub_1C7C38980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 112;
}

uint64_t sub_1C7C389BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = -112;
  return result;
}

uint64_t sub_1C7C38A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C7C38A98()
{
  result = qword_1EC2647A0;
  if (!qword_1EC2647A0)
  {
    type metadata accessor for SERXPCRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2647A0);
  }

  return result;
}

unint64_t sub_1C7C38AF0()
{
  result = qword_1EC2647A8;
  if (!qword_1EC2647A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2647A8);
  }

  return result;
}

id sub_1C7C38B44(id result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 > 3)
  {
    if ((a3 >> 4) > 5u)
    {
      if (v3 == 6)
      {
        return result;
      }

      if (v3 == 7)
      {
      }
    }

    else if (v3 == 4 || v3 == 5)
    {
      return result;
    }
  }

  else if ((a3 >> 4) > 1u)
  {
    if (v3 == 2 || v3 == 3)
    {
      return result;
    }
  }

  else
  {
    if (a3 >> 4)
    {
      return result;
    }

    return sub_1C7C38BB8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1C7C38BB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t SERXPCRequest.description.getter()
{
  v1 = type metadata accessor for SERXPCRequest(0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C7C38CC0(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C7C7D324();
}

uint64_t type metadata accessor for SERXPCRequest(uint64_t a1)
{
  result = qword_1EC264B90;
  if (!qword_1EC264B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C38CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SERXPCRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7C38D64(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7469466E6163;
    v7 = 0x53457469466E6163;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x7461767265736572;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x616E534553746567;
    v2 = 0x7265736552646461;
    v3 = 0x6573655274696465;
    if (a1 != 4)
    {
      v3 = 0x65736552646E6966;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x68736572666572;
    if (a1 != 1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C7C38F30(uint64_t a1)
{
  v2 = sub_1C7C3B424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C38F6C(uint64_t a1)
{
  v2 = sub_1C7C3B424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C38FA8(uint64_t a1)
{
  v2 = sub_1C7C3B0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C38FE4(uint64_t a1)
{
  v2 = sub_1C7C3B0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39020(uint64_t a1)
{
  v2 = sub_1C7C3B22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3905C(uint64_t a1)
{
  v2 = sub_1C7C3B22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39098(uint64_t a1)
{
  v2 = sub_1C7C3B184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C390D4(uint64_t a1)
{
  v2 = sub_1C7C3B184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39110(uint64_t a1)
{
  v2 = sub_1C7C3B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3914C(uint64_t a1)
{
  v2 = sub_1C7C3B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C45A7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C391B8(uint64_t a1)
{
  v2 = sub_1C7C3B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C391F4(uint64_t a1)
{
  v2 = sub_1C7C3B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39230(uint64_t a1)
{
  v2 = sub_1C7C3B3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3926C(uint64_t a1)
{
  v2 = sub_1C7C3B3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C392A8(uint64_t a1)
{
  v2 = sub_1C7C3B37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C392E4(uint64_t a1)
{
  v2 = sub_1C7C3B37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39320()
{
  if (*v0)
  {
    return 0x6544746567726174;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1C7C39360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C3943C(uint64_t a1)
{
  v2 = sub_1C7C3B520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39478(uint64_t a1)
{
  v2 = sub_1C7C3B520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C394D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C39560(uint64_t a1)
{
  v2 = sub_1C7C3B478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3959C(uint64_t a1)
{
  v2 = sub_1C7C3B478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C395D8()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C7C39604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C396D4(uint64_t a1)
{
  v2 = sub_1C7C3B4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39710(uint64_t a1)
{
  v2 = sub_1C7C3B4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3974C(uint64_t a1)
{
  v2 = sub_1C7C3B328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39788(uint64_t a1)
{
  v2 = sub_1C7C3B328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C397C4(uint64_t a1)
{
  v2 = sub_1C7C3B2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39800(uint64_t a1)
{
  v2 = sub_1C7C3B2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SERXPCRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647B0, &qword_1C7C90D80);
  v141 = *(v2 - 8);
  v142 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v110 - v3;
  v138 = type metadata accessor for SECCredentialConfig(0);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647B8, &qword_1C7C90D88);
  v147 = *(v5 - 8);
  v148 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v146 = &v110 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647C0, &qword_1C7C90D90);
  v144 = *(v7 - 8);
  v145 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v110 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647C8, &qword_1C7C90D98);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v110 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647D0, &qword_1C7C90DA0);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v124 = &v110 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647D8, &qword_1C7C90DA8);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v128 = &v110 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647E0, &qword_1C7C90DB0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v110 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647E8, &qword_1C7C90DB8);
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v130 = &v110 - v13;
  v14 = sub_1C7C7D104();
  v15 = *(v14 - 8);
  v150 = v14;
  v151 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v119 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v110 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647F0, &qword_1C7C90DC0);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v110 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647F8, &qword_1C7C90DC8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v23 = &v110 - v22;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264800, &qword_1C7C90DD0);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v110 - v24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264808, &qword_1C7C90DD8);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v26 = &v110 - v25;
  v27 = type metadata accessor for SERXPCRequest(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264810, &unk_1C7C90DE0);
  v154 = *(v30 - 8);
  v155 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C3B080();
  v33 = v32;
  sub_1C7C7DBA4();
  sub_1C7C38CC0(v152, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v82 = v139;
        sub_1C7C3D358(v29, v139, type metadata accessor for SECCredentialConfig);
        LOBYTE(v156) = 11;
        sub_1C7C3B0D4();
        v83 = v140;
        v63 = v155;
        sub_1C7C7D9E4();
        sub_1C7C42BF8(&qword_1EC264828, type metadata accessor for SECCredentialConfig, &protocol conformance descriptor for SECCredentialConfig);
        v84 = v142;
        sub_1C7C7DA44();
        (*(v141 + 8))(v83, v84);
        sub_1C7C3B128(v82);
      }

      else if (EnumCaseMultiPayload == 10)
      {
        LOBYTE(v156) = 7;
        sub_1C7C3B2D4();
        v62 = v124;
        v63 = v155;
        sub_1C7C7D9E4();
        (*(v127 + 8))(v62, v129);
      }

      else
      {
        LOBYTE(v156) = 8;
        sub_1C7C3B280();
        v97 = v131;
        v63 = v155;
        sub_1C7C7D9E4();
        (*(v135 + 8))(v97, v137);
      }
    }

    else
    {
      v43 = v153;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v44 = *v29;
          LODWORD(v151) = v29[8];
          v45 = *(v29 + 2);
          v152 = *(v29 + 3);
          v46 = v29[32];
          LOBYTE(v156) = 9;
          sub_1C7C3B22C();
          v47 = v143;
          v48 = v155;
          sub_1C7C7D9E4();
          v156 = v44;
          v159 = 0;
          type metadata accessor for MemoryUsage();
          sub_1C7C42BF8(&qword_1EC265240, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
          v49 = v145;
          sub_1C7C7DA44();
          if (v43)
          {
            sub_1C7BE49C8(v45, v152);
            v50 = v144;
LABEL_28:
            (*(v50 + 8))(v47, v49);
            (*(v154 + 8))(v33, v48);

            return;
          }

          v153 = v33;
          v100 = v152;
          LOBYTE(v156) = 1;
          v101 = v47;
          sub_1C7C7DA24();
          v156 = v45;
          v157 = v100;
          v105 = v100;
          v159 = 2;
          sub_1C7BED7DC();
          sub_1C7C7DA04();
          v106 = v153;
          LOBYTE(v156) = v46;
          v159 = 3;
          sub_1C7C3B1D8();
          sub_1C7C7DA44();
          v108 = v155;
          sub_1C7BE49C8(v45, v105);

          v109 = v144;
        }

        else
        {
          v44 = *v29;
          LODWORD(v151) = v29[8];
          v88 = *(v29 + 2);
          v152 = *(v29 + 3);
          v89 = v29[32];
          LOBYTE(v156) = 10;
          sub_1C7C3B184();
          v47 = v146;
          v48 = v155;
          sub_1C7C7D9E4();
          v156 = v44;
          v159 = 0;
          type metadata accessor for MemoryUsage();
          sub_1C7C42BF8(&qword_1EC265240, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
          v49 = v148;
          sub_1C7C7DA44();
          if (v43)
          {
            sub_1C7BE49C8(v88, v152);
            v50 = v147;
            goto LABEL_28;
          }

          v153 = v33;
          v104 = v152;
          LOBYTE(v156) = 1;
          v101 = v47;
          sub_1C7C7DA24();
          v156 = v88;
          v157 = v104;
          v107 = v104;
          v159 = 2;
          sub_1C7BED7DC();
          sub_1C7C7DA04();
          v106 = v153;
          LOBYTE(v156) = v89;
          v159 = 3;
          sub_1C7C3B1D8();
          sub_1C7C7DA44();
          v108 = v155;
          sub_1C7BE49C8(v88, v107);

          v109 = v147;
        }

        (*(v109 + 8))(v101, v49);
        (*(v154 + 8))(v106, v108);
        return;
      }

      v70 = v150;
      v71 = v151;
      v72 = v120;
      (*(v151 + 32))();
      LOBYTE(v156) = 6;
      sub_1C7C3B328();
      v73 = v128;
      v63 = v155;
      sub_1C7C7D9E4();
      sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v74 = v133;
      sub_1C7C7DA44();
      (*(v132 + 8))(v73, v74);
      (*(v71 + 8))(v72, v70);
    }

    v95 = *(v154 + 8);
    v96 = v33;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v35 = v153;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v36 = *v29;
        v37 = *(v29 + 1);
        v38 = *(v29 + 2);
        LOBYTE(v156) = 1;
        sub_1C7C3B4CC();
        v39 = v115;
        v40 = v155;
        v41 = v33;
        sub_1C7C7D9E4();
        v156 = v36;
        v159 = 0;
        type metadata accessor for SERDataSource();
        sub_1C7C42BF8(&qword_1EC264888, type metadata accessor for SERDataSource, &protocol conformance descriptor for SERDataSource);
        v42 = v117;
        sub_1C7C7DA44();
        if (v35)
        {
          sub_1C7BDF778(v37, v38);
          (*(v116 + 8))(v39, v42);
          (*(v154 + 8))(v41, v40);
        }

        else
        {
          v156 = v37;
          v157 = v38;
          v159 = 1;
          sub_1C7BED7DC();
          sub_1C7C7DA44();

          (*(v116 + 8))(v39, v42);
          (*(v154 + 8))(v41, v40);
          sub_1C7BDF778(v37, v38);
        }
      }

      else
      {
        v85 = *v29;
        LOBYTE(v156) = 2;
        sub_1C7C3B478();
        v86 = v155;
        sub_1C7C7D9E4();
        LOBYTE(v156) = v85;
        sub_1C7C3B1D8();
        v87 = v114;
        sub_1C7C7DA44();
        (*(v113 + 8))(v23, v87);
        (*(v154 + 8))(v32, v86);
      }
    }

    else
    {
      v64 = *v29;
      v65 = *(v29 + 1);
      v66 = v29[16];
      LOBYTE(v156) = 0;
      sub_1C7C3B520();
      v67 = v155;
      v68 = v33;
      sub_1C7C7D9E4();
      v156 = v64;
      v157 = v65;
      v159 = 0;
      sub_1C7BED7DC();
      v69 = v112;
      sub_1C7C7DA04();
      if (v35)
      {
        (*(v111 + 8))(v26, v69);
        (*(v154 + 8))(v68, v67);
        sub_1C7BE49C8(v64, v65);
      }

      else
      {
        LOBYTE(v156) = v66;
        v159 = 1;
        sub_1C7C3B1D8();
        sub_1C7C7DA44();
        sub_1C7BE49C8(v64, v65);
        (*(v111 + 8))(v26, v69);
        (*(v154 + 8))(v68, v67);
      }
    }

    return;
  }

  v51 = v153;
  if (EnumCaseMultiPayload != 3)
  {
    v52 = v32;
    if (EnumCaseMultiPayload == 4)
    {
      v53 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8) + 48)];
      v55 = *v53;
      v54 = v53[1];
      v148 = v55;
      v152 = v54;
      v56 = v150;
      v57 = v151;
      v58 = v149;
      (*(v151 + 32))(v149, v29, v150);
      LOBYTE(v156) = 4;
      sub_1C7C3B3D0();
      v59 = v130;
      v60 = v155;
      sub_1C7C7D9E4();
      LOBYTE(v156) = 0;
      sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v61 = v136;
      sub_1C7C7DA44();
      if (v51)
      {
        sub_1C7BDF778(v148, v152);
        (*(v134 + 8))(v59, v61);
        (*(v57 + 8))(v58, v56);
        (*(v154 + 8))(v52, v60);
      }

      else
      {
        v153 = v52;
        v102 = v148;
        v103 = v152;
        v156 = v148;
        v157 = v152;
        v159 = 1;
        sub_1C7BED7DC();
        sub_1C7C7DA44();
        (*(v134 + 8))(v59, v61);
        (*(v151 + 8))(v149, v56);
        (*(v154 + 8))(v153, v155);
        sub_1C7BDF778(v102, v103);
      }

      return;
    }

    v90 = v150;
    v91 = v151;
    v92 = v119;
    (*(v151 + 32))(v119, v29, v150);
    LOBYTE(v156) = 5;
    sub_1C7C3B37C();
    v93 = v123;
    v63 = v155;
    sub_1C7C7D9E4();
    sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v94 = v126;
    sub_1C7C7DA44();
    (*(v125 + 8))(v93, v94);
    (*(v91 + 8))(v92, v90);
    v95 = *(v154 + 8);
    v96 = v52;
LABEL_32:
    v95(v96, v63);
    return;
  }

  v75 = *v29;
  v76 = *(v29 + 1);
  v77 = v29[16];
  v78 = *(v29 + 3);
  v151 = *(v29 + 4);
  v152 = v78;
  LOBYTE(v156) = 3;
  sub_1C7C3B424();
  v79 = v118;
  v80 = v155;
  sub_1C7C7D9E4();
  v156 = v75;
  v157 = v76;
  v158 = v77;
  v159 = 0;
  sub_1C7BDF724();
  v81 = v122;
  sub_1C7C7DA44();
  if (v51)
  {
    sub_1C7BDF778(v152, v151);
    (*(v121 + 8))(v79, v81);
    (*(v154 + 8))(v33, v80);
    sub_1C7BEA9D8(v75, v76, v77);
  }

  else
  {
    sub_1C7BEA9D8(v75, v76, v77);
    v99 = v151;
    v98 = v152;
    v156 = v152;
    v157 = v151;
    v159 = 1;
    sub_1C7BED7DC();
    sub_1C7C7DA44();
    (*(v121 + 8))(v79, v81);
    (*(v154 + 8))(v33, v155);
    sub_1C7BDF778(v98, v99);
  }
}

unint64_t sub_1C7C3B080()
{
  result = qword_1EC264818;
  if (!qword_1EC264818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264818);
  }

  return result;
}

unint64_t sub_1C7C3B0D4()
{
  result = qword_1EC264820;
  if (!qword_1EC264820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264820);
  }

  return result;
}

uint64_t sub_1C7C3B128(uint64_t a1)
{
  v2 = type metadata accessor for SECCredentialConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7C3B184()
{
  result = qword_1EC264830;
  if (!qword_1EC264830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264830);
  }

  return result;
}

unint64_t sub_1C7C3B1D8()
{
  result = qword_1EC264838;
  if (!qword_1EC264838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264838);
  }

  return result;
}

unint64_t sub_1C7C3B22C()
{
  result = qword_1EC264840;
  if (!qword_1EC264840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264840);
  }

  return result;
}

unint64_t sub_1C7C3B280()
{
  result = qword_1EC264848;
  if (!qword_1EC264848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264848);
  }

  return result;
}

unint64_t sub_1C7C3B2D4()
{
  result = qword_1EC264850;
  if (!qword_1EC264850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264850);
  }

  return result;
}

unint64_t sub_1C7C3B328()
{
  result = qword_1EC264858;
  if (!qword_1EC264858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264858);
  }

  return result;
}

unint64_t sub_1C7C3B37C()
{
  result = qword_1EC264860;
  if (!qword_1EC264860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264860);
  }

  return result;
}

unint64_t sub_1C7C3B3D0()
{
  result = qword_1EC264868;
  if (!qword_1EC264868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264868);
  }

  return result;
}

unint64_t sub_1C7C3B424()
{
  result = qword_1EC264870;
  if (!qword_1EC264870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264870);
  }

  return result;
}

unint64_t sub_1C7C3B478()
{
  result = qword_1EC264878;
  if (!qword_1EC264878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264878);
  }

  return result;
}

unint64_t sub_1C7C3B4CC()
{
  result = qword_1EC264880;
  if (!qword_1EC264880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264880);
  }

  return result;
}

unint64_t sub_1C7C3B520()
{
  result = qword_1EC264890;
  if (!qword_1EC264890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264890);
  }

  return result;
}

uint64_t SERXPCRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264898, &qword_1C7C90DF0);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v159 = &v117 - v3;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648A0, &qword_1C7C90DF8);
  v151 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v157 = &v117 - v4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648A8, &qword_1C7C90E00);
  v150 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v165 = &v117 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648B0, &qword_1C7C90E08);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v158 = &v117 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648B8, &qword_1C7C90E10);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v155 = &v117 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648C0, &qword_1C7C90E18);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v164 = &v117 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648C8, &qword_1C7C90E20);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v154 = &v117 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648D0, &qword_1C7C90E28);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v156 = &v117 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648D8, &qword_1C7C90E30);
  v135 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v163 = &v117 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648E0, &qword_1C7C90E38);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v153 = &v117 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648E8, &qword_1C7C90E40);
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v162 = &v117 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648F0, &qword_1C7C90E48);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v152 = &v117 - v14;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648F8, &unk_1C7C90E50);
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v16 = &v117 - v15;
  v161 = type metadata accessor for SERXPCRequest(0);
  v17 = MEMORY[0x1EEE9AC00](v161);
  v126 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v123 = (&v117 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v122 = (&v117 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v125 = &v117 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v117 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v127 = &v117 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v117 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v117 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v117 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v117 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v117 - v41;
  v43 = a1[3];
  v170 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1C7C3B080();
  v167 = v16;
  v44 = v169;
  sub_1C7C7DB94();
  if (v44)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v170);
  }

  v120 = v34;
  v117 = v40;
  v118 = v31;
  v119 = v37;
  v46 = v162;
  v45 = v163;
  v47 = v165;
  v169 = 0;
  v48 = v161;
  v121 = v42;
  v50 = v167;
  v49 = v168;
  v51 = sub_1C7C7D9D4();
  v52 = (2 * *(v51 + 16)) | 1;
  v174 = v51;
  v175 = v51 + 32;
  v176 = 0;
  v177 = v52;
  v53 = sub_1C7BEAAD4();
  if (v53 == 12 || v176 != v177 >> 1)
  {
    v57 = v49;
    v58 = sub_1C7C7D7C4();
    swift_allocError();
    v59 = v50;
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v61 = v48;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v58 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    (*(v166 + 8))(v59, v57);
    goto LABEL_11;
  }

  if (v53 <= 5u)
  {
    if (v53 <= 2u)
    {
      v54 = v169;
      if (v53)
      {
        if (v53 == 1)
        {
          LOBYTE(v172) = 1;
          sub_1C7C3B4CC();
          v55 = v50;
          sub_1C7C7D944();
          if (!v54)
          {
            type metadata accessor for SERDataSource();
            LOBYTE(v172) = 0;
            sub_1C7C42BF8(&unk_1EC264FC0, type metadata accessor for SERDataSource, &protocol conformance descriptor for SERDataSource);
            v56 = v132;
            sub_1C7C7D9B4();
            v104 = v50;
            v105 = v171;
            v179 = 1;
            sub_1C7BED744();
            sub_1C7C7D9B4();
            (*(v133 + 8))(v46, v56);
            (*(v166 + 8))(v104, v49);
            swift_unknownObjectRelease();
            v109 = v119;
            *v119 = v105;
            *(v109 + 8) = v172;
LABEL_50:
            swift_storeEnumTagMultiPayload();
            v107 = v109;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v172) = 2;
          sub_1C7C3B478();
          v87 = v153;
          v55 = v50;
          sub_1C7C7D944();
          if (!v54)
          {
            sub_1C7C3D3C0();
            v88 = v131;
            sub_1C7C7D9B4();
            (*(v130 + 8))(v87, v88);
            (*(v166 + 8))(v50, v49);
            swift_unknownObjectRelease();
            v109 = v120;
            *v120 = v172;
            goto LABEL_50;
          }
        }

        goto LABEL_37;
      }

      LOBYTE(v172) = 0;
      sub_1C7C3B520();
      v80 = v152;
      v55 = v50;
      sub_1C7C7D944();
      if (v54)
      {
LABEL_37:
        (*(v166 + 8))(v55, v49);
        goto LABEL_11;
      }

      LOBYTE(v171) = 0;
      sub_1C7BED744();
      v81 = v129;
      sub_1C7C7D974();
      v98 = v172;
      v179 = 1;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v128 + 8))(v80, v81);
      (*(v166 + 8))(v50, v49);
      swift_unknownObjectRelease();
      v108 = v171;
      v116 = v117;
      *v117 = v98;
      *(v116 + 16) = v108;
      goto LABEL_49;
    }

    v71 = v169;
    if (v53 != 3)
    {
      if (v53 == 4)
      {
        LOBYTE(v172) = 4;
        sub_1C7C3B3D0();
        v72 = v156;
        v73 = v50;
        sub_1C7C7D944();
        if (!v71)
        {
          v74 = v49;
          sub_1C7C7D104();
          LOBYTE(v172) = 0;
          sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v75 = v127;
          v76 = v143;
          sub_1C7C7D9B4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8);
          LOBYTE(v172) = 1;
          sub_1C7BED744();
          sub_1C7C7D9B4();
          v109 = v75;
          (*(v141 + 8))(v72, v76);
          (*(v166 + 8))(v73, v74);
          swift_unknownObjectRelease();
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      LOBYTE(v172) = 5;
      sub_1C7C3B37C();
      v91 = v154;
      v73 = v50;
      sub_1C7C7D944();
      if (!v71)
      {
        sub_1C7C7D104();
        sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v92 = v124;
        v93 = v137;
        sub_1C7C7D9B4();
        (*(v136 + 8))(v91, v93);
        (*(v166 + 8))(v50, v49);
        swift_unknownObjectRelease();
LABEL_48:
        swift_storeEnumTagMultiPayload();
        v107 = v92;
LABEL_51:
        v70 = v121;
        sub_1C7C3D358(v107, v121, type metadata accessor for SERXPCRequest);
        v65 = v160;
        goto LABEL_52;
      }

LABEL_43:
      (*(v166 + 8))(v73, v49);
      goto LABEL_11;
    }

    LOBYTE(v172) = 3;
    sub_1C7C3B424();
    sub_1C7C7D944();
    if (!v71)
    {
      LOBYTE(v171) = 0;
      sub_1C7BE4974();
      v83 = v134;
      sub_1C7C7D9B4();
      v99 = v172;
      v100 = v173;
      v179 = 1;
      sub_1C7BED744();
      sub_1C7C7D9B4();
      (*(v135 + 8))(v45, v83);
      (*(v166 + 8))(v50, v168);
      swift_unknownObjectRelease();
      v116 = v118;
      *v118 = v99;
      *(v116 + 16) = v100;
      *(v116 + 3) = v171;
      goto LABEL_49;
    }

    (*(v166 + 8))(v50, v49);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v170);
  }

  if (v53 > 8u)
  {
    if (v53 == 9)
    {
      LOBYTE(v172) = 9;
      sub_1C7C3B22C();
      v84 = v47;
      v73 = v50;
      v85 = v169;
      sub_1C7C7D944();
      if (v85)
      {
        goto LABEL_43;
      }

      type metadata accessor for MemoryUsage();
      LOBYTE(v172) = 0;
      sub_1C7C42BF8(&qword_1EC264410, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
      v86 = v148;
      sub_1C7C7D9B4();
      v101 = v171;
      LOBYTE(v172) = 1;
      v102 = v84;
      v103 = sub_1C7C7D994();
      v179 = 2;
      sub_1C7BED744();
      sub_1C7C7D974();
      v112 = v172;
      v178 = 3;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v150 + 8))(v102, v86);
      (*(v166 + 8))(v167, v49);
      swift_unknownObjectRelease();
      v114 = v179;
      v116 = v122;
      *v122 = v101;
      *(v116 + 8) = v103 & 1;
      *(v116 + 1) = v112;
      *(v116 + 32) = v114;
    }

    else
    {
      if (v53 != 10)
      {
        LOBYTE(v172) = 11;
        sub_1C7C3B0D4();
        v94 = v159;
        v73 = v50;
        v95 = v169;
        sub_1C7C7D944();
        if (!v95)
        {
          type metadata accessor for SECCredentialConfig(0);
          sub_1C7C42BF8(&qword_1EC264900, type metadata accessor for SECCredentialConfig, &protocol conformance descriptor for SECCredentialConfig);
          v92 = v126;
          v97 = v147;
          sub_1C7C7D9B4();
          (*(v146 + 8))(v94, v97);
          (*(v166 + 8))(v50, v49);
          swift_unknownObjectRelease();
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      LOBYTE(v172) = 10;
      sub_1C7C3B184();
      v77 = v157;
      v73 = v50;
      v78 = v169;
      sub_1C7C7D944();
      if (v78)
      {
        goto LABEL_43;
      }

      type metadata accessor for MemoryUsage();
      LOBYTE(v172) = 0;
      sub_1C7C42BF8(&qword_1EC264410, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
      v79 = v149;
      sub_1C7C7D9B4();
      v106 = v171;
      LOBYTE(v172) = 1;
      v110 = v77;
      v111 = sub_1C7C7D994();
      v179 = 2;
      sub_1C7BED744();
      sub_1C7C7D974();
      v113 = v172;
      v178 = 3;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v151 + 8))(v110, v79);
      (*(v166 + 8))(v167, v49);
      swift_unknownObjectRelease();
      v115 = v179;
      v116 = v123;
      *v123 = v106;
      *(v116 + 8) = v111 & 1;
      *(v116 + 1) = v113;
      *(v116 + 32) = v115;
    }

LABEL_49:
    swift_storeEnumTagMultiPayload();
    v107 = v116;
    goto LABEL_51;
  }

  v63 = v50;
  v64 = v49;
  v65 = v160;
  if (v53 == 6)
  {
    LOBYTE(v172) = 6;
    sub_1C7C3B328();
    v82 = v169;
    sub_1C7C7D944();
    if (!v82)
    {
      sub_1C7C7D104();
      sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      v92 = v125;
      v96 = v142;
      sub_1C7C7D9B4();
      (*(v140 + 8))(0, v96);
      (*(v166 + 8))(v63, v64);
      swift_unknownObjectRelease();
      goto LABEL_48;
    }

    (*(v166 + 8))(v63, v64);
    goto LABEL_11;
  }

  v66 = v169;
  if (v53 != 7)
  {
    LOBYTE(v172) = 8;
    sub_1C7C3B280();
    v89 = v158;
    v90 = v66;
    sub_1C7C7D944();
    v69 = v166;
    if (!v90)
    {
      (*(v144 + 8))(v89, v145);
      (*(v69 + 8))(v63, v64);
      swift_unknownObjectRelease();
      v70 = v121;
      goto LABEL_46;
    }

LABEL_39:
    (*(v69 + 8))(v63, v64);
    goto LABEL_11;
  }

  LOBYTE(v172) = 7;
  sub_1C7C3B2D4();
  v67 = v155;
  v68 = v66;
  sub_1C7C7D944();
  v69 = v166;
  if (v68)
  {
    goto LABEL_39;
  }

  (*(v138 + 8))(v67, v139);
  (*(v69 + 8))(v63, v64);
  swift_unknownObjectRelease();
  v70 = v121;
LABEL_46:
  swift_storeEnumTagMultiPayload();
LABEL_52:
  sub_1C7C3D358(v70, v65, type metadata accessor for SERXPCRequest);
  return __swift_destroy_boxed_opaque_existential_0Tm(v170);
}

uint64_t sub_1C7C3D358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C7C3D3C0()
{
  result = qword_1EC264908;
  if (!qword_1EC264908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264908);
  }

  return result;
}

unint64_t sub_1C7C3D414(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    v7 = 0x7469466E6163;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x65736552646E6966;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0x7461767265736572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F727265;
    v2 = 0xD000000000000015;
    v3 = 0x7265736552646461;
    if (a1 != 4)
    {
      v3 = 0x6573655274696465;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x616E534553746567;
    if (a1 != 1)
    {
      v4 = 0x68736572666572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C7C3D600(uint64_t a1)
{
  v2 = sub_1C7C3EEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D63C(uint64_t a1)
{
  v2 = sub_1C7C3EEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D678(uint64_t a1)
{
  v2 = sub_1C7C3EC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D6B4(uint64_t a1)
{
  v2 = sub_1C7C3EC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D6F0(uint64_t a1)
{
  v2 = sub_1C7C3ECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D72C(uint64_t a1)
{
  v2 = sub_1C7C3ECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D768(uint64_t a1)
{
  v2 = sub_1C7C3ED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D7A4(uint64_t a1)
{
  v2 = sub_1C7C3ED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D7E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C45E6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C3D810(uint64_t a1)
{
  v2 = sub_1C7C3EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D84C(uint64_t a1)
{
  v2 = sub_1C7C3EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D888(uint64_t a1)
{
  v2 = sub_1C7C3EE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D8C4(uint64_t a1)
{
  v2 = sub_1C7C3EE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D900(uint64_t a1)
{
  v2 = sub_1C7C3F014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D93C(uint64_t a1)
{
  v2 = sub_1C7C3F014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D978(uint64_t a1)
{
  v2 = sub_1C7C3EE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D9B4(uint64_t a1)
{
  v2 = sub_1C7C3EE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D9F0(uint64_t a1)
{
  v2 = sub_1C7C3EFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DA2C(uint64_t a1)
{
  v2 = sub_1C7C3EFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DA68(uint64_t a1)
{
  v2 = sub_1C7C3EF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DAA4(uint64_t a1)
{
  v2 = sub_1C7C3EF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DAE0(uint64_t a1)
{
  v2 = sub_1C7C3EF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DB1C(uint64_t a1)
{
  v2 = sub_1C7C3EF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DB58(uint64_t a1)
{
  v2 = sub_1C7C3EDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DB94(uint64_t a1)
{
  v2 = sub_1C7C3EDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DBD0(uint64_t a1)
{
  v2 = sub_1C7C3ED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DC0C(uint64_t a1)
{
  v2 = sub_1C7C3ED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERXPCResponse.encode(to:)(void *a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264910, &qword_1C7C90E60);
  v68 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v55 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264918, &qword_1C7C90E68);
  v67 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v55 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264920, &qword_1C7C90E70);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264928, &qword_1C7C90E78);
  v66 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v55 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264930, &qword_1C7C90E80);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v55 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264938, &qword_1C7C90E88);
  v65 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v55 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264940, &qword_1C7C90E90);
  v64 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v55 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264948, &qword_1C7C90E98);
  v62 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v88 = &v55 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264950, &qword_1C7C90EA0);
  v63 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v87 = &v55 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264958, &qword_1C7C90EA8);
  v72 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264960, &qword_1C7C90EB0);
  v71 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264968, &qword_1C7C90EB8);
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264970, &qword_1C7C90EC0);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v20 = &v55 - v19;
  v21 = v1[1];
  v90 = *v1;
  v84 = v21;
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C3EC24();
  v91 = v20;
  sub_1C7C7DBA4();
  v23 = v22 >> 4;
  if (v22 >> 4 <= 4)
  {
    v29 = v18;
    v30 = v13;
    v32 = v85;
    v31 = v86;
    v34 = v87;
    v33 = v88;
    if (v22 >> 4 > 1)
    {
      if (v23 == 2)
      {
        LOBYTE(v93) = 2;
        sub_1C7C3EF6C();
        v45 = v91;
        v24 = v92;
        sub_1C7C7D9E4();
        v93 = v90;
        type metadata accessor for SEState();
        sub_1C7C42BF8(&qword_1EC264F20, type metadata accessor for SEState, &protocol conformance descriptor for SEState);
        sub_1C7C7DA44();
        (*(v72 + 8))(v32, v31);
        v46 = *(v89 + 8);
        v47 = v45;
      }

      else
      {
        v35 = v91;
        v24 = v92;
        if (v23 == 3)
        {
          LOBYTE(v93) = 3;
          sub_1C7C3EF18();
          sub_1C7C7D9E4();
          v93 = v90;
          type metadata accessor for SESnapshot(0);
          sub_1C7C42BF8(&qword_1EC2649D8, type metadata accessor for SESnapshot, &protocol conformance descriptor for SESnapshot);
          v36 = v70;
          sub_1C7C7DA44();
          (*(v63 + 8))(v34, v36);
        }

        else
        {
          LOBYTE(v93) = 4;
          sub_1C7C3EEC4();
          sub_1C7C7D9E4();
          v93 = v90;
          type metadata accessor for Reservation(0);
          sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
          v48 = v73;
          sub_1C7C7DA44();
          (*(v62 + 8))(v33, v48);
        }

        v46 = *(v89 + 8);
        v47 = v35;
      }

      return v46(v47, v24);
    }

    if (v23)
    {
      LOBYTE(v93) = 1;
      sub_1C7C3EFC0();
      v49 = v91;
      v50 = v92;
      sub_1C7C7D9E4();
      v93 = v90;
      type metadata accessor for SESnapshot(0);
      sub_1C7C42BF8(&qword_1EC2649D8, type metadata accessor for SESnapshot, &protocol conformance descriptor for SESnapshot);
      sub_1C7C7DA44();
      (*(v71 + 8))(v15, v30);
      return (*(v89 + 8))(v49, v50);
    }

    else
    {
      LOBYTE(v93) = 0;
      sub_1C7C3F014();
      v42 = v91;
      v43 = v92;
      sub_1C7C7D9E4();
      v93 = v90;
      v94 = v84;
      v95 = v22;
      sub_1C7C3F068();
      sub_1C7C7DA44();
      (*(v69 + 8))(v29, v16);
      return (*(v89 + 8))(v42, v43);
    }
  }

  else
  {
    if (v22 >> 4 <= 7)
    {
      if (v23 == 5)
      {
        LOBYTE(v93) = 5;
        sub_1C7C3EE70();
        v26 = v74;
        v25 = v91;
        v24 = v92;
        sub_1C7C7D9E4();
        v93 = v90;
        type metadata accessor for Reservation(0);
        sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
        v27 = v75;
        sub_1C7C7DA44();
        v28 = &v96;
      }

      else
      {
        v25 = v91;
        v24 = v92;
        if (v23 == 6)
        {
          LOBYTE(v93) = 6;
          sub_1C7C3EE1C();
          v26 = v76;
          sub_1C7C7D9E4();
          v93 = v90;
          type metadata accessor for Reservation(0);
          sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
          v27 = v77;
          sub_1C7C7DA44();
          v28 = &v97;
        }

        else
        {
          LOBYTE(v93) = 8;
          sub_1C7C3ED74();
          v26 = v78;
          sub_1C7C7D9E4();
          v93 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2649A0, &qword_1C7C90EC8);
          sub_1C7C4067C(&qword_1EC2649A8, &unk_1EC264688, &protocol conformance descriptor for Reservation, MEMORY[0x1E69E6300]);
          v27 = v79;
          sub_1C7C7DA44();
          v28 = &v98;
        }
      }

      (*(*(v28 - 32) + 8))(v26, v27);
      v46 = *(v89 + 8);
      v47 = v25;
      return v46(v47, v24);
    }

    if (v23 == 8)
    {
      LOBYTE(v93) = 10;
      sub_1C7C3ECCC();
      v37 = v80;
      v39 = v91;
      v38 = v92;
      sub_1C7C7D9E4();
      v40 = v81;
      sub_1C7C7DA24();
      v41 = &v99;
      goto LABEL_18;
    }

    if (v23 == 9)
    {
      LOBYTE(v93) = 11;
      sub_1C7C3EC78();
      v37 = v82;
      v39 = v91;
      v38 = v92;
      sub_1C7C7D9E4();
      v40 = v83;
      sub_1C7C7DA24();
      v41 = &v100;
LABEL_18:
      (*(*(v41 - 32) + 8))(v37, v40);
      return (*(v89 + 8))(v39, v38);
    }

    if (v84 | v90 || v22 != 160)
    {
      LOBYTE(v93) = 9;
      sub_1C7C3ED20();
      v54 = v59;
      v53 = v91;
      v52 = v92;
      sub_1C7C7D9E4();
      (*(v60 + 8))(v54, v61);
    }

    else
    {
      LOBYTE(v93) = 7;
      sub_1C7C3EDC8();
      v51 = v56;
      v53 = v91;
      v52 = v92;
      sub_1C7C7D9E4();
      (*(v57 + 8))(v51, v58);
    }

    return (*(v89 + 8))(v53, v52);
  }
}

unint64_t sub_1C7C3EC24()
{
  result = qword_1EC264978;
  if (!qword_1EC264978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264978);
  }

  return result;
}

unint64_t sub_1C7C3EC78()
{
  result = qword_1EC264980;
  if (!qword_1EC264980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264980);
  }

  return result;
}

unint64_t sub_1C7C3ECCC()
{
  result = qword_1EC264988;
  if (!qword_1EC264988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264988);
  }

  return result;
}

unint64_t sub_1C7C3ED20()
{
  result = qword_1EC264990;
  if (!qword_1EC264990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264990);
  }

  return result;
}

unint64_t sub_1C7C3ED74()
{
  result = qword_1EC264998;
  if (!qword_1EC264998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264998);
  }

  return result;
}

unint64_t sub_1C7C3EDC8()
{
  result = qword_1EC2649B0;
  if (!qword_1EC2649B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649B0);
  }

  return result;
}

unint64_t sub_1C7C3EE1C()
{
  result = qword_1EC2649B8;
  if (!qword_1EC2649B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649B8);
  }

  return result;
}

unint64_t sub_1C7C3EE70()
{
  result = qword_1EC2649C0;
  if (!qword_1EC2649C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649C0);
  }

  return result;
}

unint64_t sub_1C7C3EEC4()
{
  result = qword_1EC2649C8;
  if (!qword_1EC2649C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649C8);
  }

  return result;
}

unint64_t sub_1C7C3EF18()
{
  result = qword_1EC2649D0;
  if (!qword_1EC2649D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649D0);
  }

  return result;
}

unint64_t sub_1C7C3EF6C()
{
  result = qword_1EC2649E0;
  if (!qword_1EC2649E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649E0);
  }

  return result;
}

unint64_t sub_1C7C3EFC0()
{
  result = qword_1EC2649E8;
  if (!qword_1EC2649E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649E8);
  }

  return result;
}

unint64_t sub_1C7C3F014()
{
  result = qword_1EC2649F0;
  if (!qword_1EC2649F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649F0);
  }

  return result;
}

unint64_t sub_1C7C3F068()
{
  result = qword_1EC2649F8;
  if (!qword_1EC2649F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649F8);
  }

  return result;
}

uint64_t SERXPCResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A00, &qword_1C7C90ED0);
  v102 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v106 = &v75 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A08, &qword_1C7C90ED8);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v75 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A10, &qword_1C7C90EE0);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v112 = &v75 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A18, &qword_1C7C90EE8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v107 = &v75 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A20, &qword_1C7C90EF0);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v105 = &v75 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A28, &qword_1C7C90EF8);
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v111 = &v75 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A30, &qword_1C7C90F00);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v104 = &v75 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A38, &qword_1C7C90F08);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v110 = &v75 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A40, &qword_1C7C90F10);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v109 = &v75 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A48, &qword_1C7C90F18);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v103 = &v75 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A50, &qword_1C7C90F20);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A58, &qword_1C7C90F28);
  v80 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A60, &qword_1C7C90F30);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75 - v20;
  v22 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1C7C3EC24();
  v23 = v114;
  sub_1C7C7DB94();
  if (!v23)
  {
    v77 = v17;
    v76 = v15;
    v78 = v14;
    v24 = v109;
    v25 = v110;
    v26 = v111;
    v27 = v112;
    v28 = v113;
    v79 = 0;
    v114 = v19;
    v29 = sub_1C7C7D9D4();
    v30 = (2 * *(v29 + 16)) | 1;
    v118 = v29;
    v119 = v29 + 32;
    v120 = 0;
    v121 = v30;
    v31 = sub_1C7BEAAD4();
    if (v31 == 12 || v120 != v121 >> 1)
    {
      v35 = v21;
      v36 = sub_1C7C7D7C4();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v38 = &type metadata for SERXPCResponse;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v114 + 8))(v35, v18);
      goto LABEL_12;
    }

    if (v31 <= 5u)
    {
      if (v31 > 2u)
      {
        v45 = v114;
        v46 = v79;
        if (v31 == 3)
        {
          LOBYTE(v115) = 3;
          sub_1C7C3EF18();
          v57 = v24;
          sub_1C7C7D944();
          if (!v46)
          {
            type metadata accessor for SESnapshot(0);
            sub_1C7C42BF8(&qword_1EC264A70, type metadata accessor for SESnapshot, &protocol conformance descriptor for SESnapshot);
            v58 = v86;
            sub_1C7C7D9B4();
            (*(v85 + 8))(v57, v58);
            (*(v45 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v70 = 0;
            v71 = v115;
            v72 = 48;
            goto LABEL_49;
          }
        }

        else if (v31 == 4)
        {
          LOBYTE(v115) = 4;
          sub_1C7C3EEC4();
          sub_1C7C7D944();
          if (!v46)
          {
            type metadata accessor for Reservation(0);
            sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
            v47 = v88;
            sub_1C7C7D9B4();
            (*(v87 + 8))(v25, v47);
            (*(v45 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v70 = 0;
            v71 = v115;
            v72 = 64;
            goto LABEL_49;
          }
        }

        else
        {
          LOBYTE(v115) = 5;
          sub_1C7C3EE70();
          v62 = v104;
          sub_1C7C7D944();
          if (!v46)
          {
            type metadata accessor for Reservation(0);
            sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
            v68 = v90;
            sub_1C7C7D9B4();
            (*(v89 + 8))(v62, v68);
            (*(v45 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v70 = 0;
            v71 = v115;
            v72 = 80;
            goto LABEL_49;
          }
        }

        (*(v45 + 8))(v21, v18);
      }

      else
      {
        v32 = v79;
        if (v31)
        {
          if (v31 == 1)
          {
            LOBYTE(v115) = 1;
            sub_1C7C3EFC0();
            v33 = v78;
            sub_1C7C7D944();
            if (!v32)
            {
              type metadata accessor for SESnapshot(0);
              sub_1C7C42BF8(&qword_1EC264A70, type metadata accessor for SESnapshot, &protocol conformance descriptor for SESnapshot);
              v34 = v82;
              sub_1C7C7D9B4();
              (*(v81 + 8))(v33, v34);
              (*(v114 + 8))(v21, v18);
              swift_unknownObjectRelease();
              v70 = 0;
              v71 = v115;
              v72 = 16;
LABEL_49:
              v41 = v108;
              goto LABEL_50;
            }
          }

          else
          {
            LOBYTE(v115) = 2;
            sub_1C7C3EF6C();
            v60 = v103;
            sub_1C7C7D944();
            if (!v32)
            {
              type metadata accessor for SEState();
              sub_1C7C42BF8(&qword_1EC264A78, type metadata accessor for SEState, &protocol conformance descriptor for SEState);
              v65 = v84;
              sub_1C7C7D9B4();
              v66 = v114;
              (*(v83 + 8))(v60, v65);
              (*(v66 + 8))(v21, v18);
              swift_unknownObjectRelease();
              v70 = 0;
              v71 = v115;
              v72 = 32;
              goto LABEL_49;
            }
          }
        }

        else
        {
          LOBYTE(v115) = 0;
          sub_1C7C3F014();
          v52 = v77;
          sub_1C7C7D944();
          if (!v32)
          {
            sub_1C7C40718();
            v53 = v76;
            sub_1C7C7D9B4();
            (*(v80 + 8))(v52, v53);
            (*(v114 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v71 = v115;
            v70 = v116;
            v72 = v117;
            goto LABEL_49;
          }
        }

        (*(v114 + 8))(v21, v18);
      }

      goto LABEL_12;
    }

    v40 = v21;
    if (v31 <= 8u)
    {
      v41 = v108;
      v42 = v114;
      if (v31 == 6)
      {
        LOBYTE(v115) = 6;
        sub_1C7C3EE1C();
        v54 = v40;
        v55 = v79;
        sub_1C7C7D944();
        if (!v55)
        {
          type metadata accessor for Reservation(0);
          sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
          v56 = v92;
          sub_1C7C7D9B4();
          (*(v94 + 8))(v26, v56);
          (*(v42 + 8))(v40, v18);
          swift_unknownObjectRelease();
          v70 = 0;
          v71 = v115;
          v72 = 96;
          goto LABEL_49;
        }
      }

      else
      {
        v43 = v79;
        if (v31 == 7)
        {
          LOBYTE(v115) = 7;
          sub_1C7C3EDC8();
          v44 = v105;
          sub_1C7C7D944();
          if (v43)
          {
            (*(v42 + 8))(v40, v18);
LABEL_12:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0Tm(v122);
          }

          (*(v91 + 8))(v44, v93);
          (*(v42 + 8))(v40, v18);
          swift_unknownObjectRelease();
          v71 = 0;
          v70 = 0;
          v72 = -96;
          goto LABEL_50;
        }

        LOBYTE(v115) = 8;
        sub_1C7C3ED74();
        v61 = v107;
        v54 = v40;
        sub_1C7C7D944();
        if (!v43)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2649A0, &qword_1C7C90EC8);
          sub_1C7C4067C(&qword_1EC264A68, &qword_1EC264658, &protocol conformance descriptor for Reservation, MEMORY[0x1E69E6330]);
          v67 = v98;
          sub_1C7C7D9B4();
          (*(v97 + 8))(v61, v67);
          (*(v42 + 8))(v40, v18);
          swift_unknownObjectRelease();
          v70 = 0;
          v71 = v115;
          v72 = 112;
          goto LABEL_49;
        }
      }

      (*(v42 + 8))(v54, v18);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v122);
    }

    v41 = v108;
    v48 = v114;
    if (v31 == 9)
    {
      LOBYTE(v115) = 9;
      sub_1C7C3ED20();
      v59 = v79;
      sub_1C7C7D944();
      if (v59)
      {
        (*(v48 + 8))(v40, v18);
        goto LABEL_12;
      }

      (*(v95 + 8))(v27, v96);
      (*(v48 + 8))(v40, v18);
      swift_unknownObjectRelease();
      v70 = 0;
      v72 = -96;
      v71 = 1;
LABEL_50:
      *v41 = v71;
      *(v41 + 8) = v70;
      *(v41 + 16) = v72;
      return __swift_destroy_boxed_opaque_existential_0Tm(v122);
    }

    if (v31 == 10)
    {
      LOBYTE(v115) = 10;
      sub_1C7C3ECCC();
      v49 = v40;
      v50 = v79;
      sub_1C7C7D944();
      if (!v50)
      {
        v51 = v101;
        v73 = sub_1C7C7D994();
        (*(v100 + 8))(v28, v51);
        (*(v48 + 8))(v40, v18);
        swift_unknownObjectRelease();
        v70 = 0;
        v71 = v73 & 1;
        v72 = 0x80;
        goto LABEL_49;
      }
    }

    else
    {
      LOBYTE(v115) = 11;
      sub_1C7C3EC78();
      v63 = v106;
      v49 = v40;
      v64 = v79;
      sub_1C7C7D944();
      if (!v64)
      {
        v69 = v99;
        v74 = sub_1C7C7D994();
        (*(v102 + 8))(v63, v69);
        (*(v48 + 8))(v40, v18);
        swift_unknownObjectRelease();
        v70 = 0;
        v71 = v74 & 1;
        v72 = -112;
        goto LABEL_49;
      }
    }

    (*(v48 + 8))(v49, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v122);
}

uint64_t sub_1C7C4067C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2649A0, &qword_1C7C90EC8);
    sub_1C7C42BF8(a2, type metadata accessor for Reservation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C40718()
{
  result = qword_1EC264A80;
  if (!qword_1EC264A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264A80);
  }

  return result;
}

unint64_t sub_1C7C4079C()
{
  v1 = *v0;
  v2 = 0x456E776F6E6B6E75;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x724574616D726F66;
  }

  v4 = 0x6C616E7265746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D73694D65707974;
  if (v1 != 1)
  {
    v5 = 0x726F727245637078;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C7C408A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C46250(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C408D0(uint64_t a1)
{
  v2 = sub_1C7C41470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C4090C(uint64_t a1)
{
  v2 = sub_1C7C41470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40948(uint64_t a1)
{
  v2 = sub_1C7C4156C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40984(uint64_t a1)
{
  v2 = sub_1C7C4156C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C409C0(uint64_t a1)
{
  v2 = sub_1C7C414C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C409FC(uint64_t a1)
{
  v2 = sub_1C7C414C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40A38(uint64_t a1)
{
  v2 = sub_1C7C415C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40A74(uint64_t a1)
{
  v2 = sub_1C7C415C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40AB0(uint64_t a1)
{
  v2 = sub_1C7C41518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40AEC(uint64_t a1)
{
  v2 = sub_1C7C41518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40B28(uint64_t a1)
{
  v2 = sub_1C7C41668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40B64(uint64_t a1)
{
  v2 = sub_1C7C41668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40BA0(uint64_t a1)
{
  v2 = sub_1C7C416BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40BDC(uint64_t a1)
{
  v2 = sub_1C7C416BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40C18(uint64_t a1)
{
  v2 = sub_1C7C41614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40C54(uint64_t a1)
{
  v2 = sub_1C7C41614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERXPCInternalErrors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A88, &qword_1C7C90F38);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A90, &qword_1C7C90F40);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A98, &qword_1C7C90F48);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AA0, &qword_1C7C90F50);
  v45 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AA8, &qword_1C7C90F58);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AB0, &qword_1C7C90F60);
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AB8, &qword_1C7C90F68);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v43 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AC0, &qword_1C7C90F70);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v19 = &v43 - v18;
  v20 = v1[1];
  v60 = *v1;
  v61 = v20;
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C41470();
  v62 = v19;
  sub_1C7C7DBA4();
  if (v21 > 2)
  {
    if (v21 > 4)
    {
      v22 = v63;
      v23 = v62;
      if (v21 != 5)
      {
        v65 = 0;
        sub_1C7C416BC();
        sub_1C7C7D9E4();
        v38 = *(v43 + 8);
        v39 = v17;
        v42 = v44;
        goto LABEL_16;
      }

      v71 = 6;
      sub_1C7C414C4();
      v37 = v52;
      sub_1C7C7D9E4();
      v25 = v54;
      sub_1C7C7DA14();
      v38 = *(v53 + 8);
      v39 = v37;
    }

    else
    {
      v22 = v63;
      v23 = v62;
      if (v21 == 3)
      {
        v69 = 4;
        sub_1C7C4156C();
        v24 = v46;
        sub_1C7C7D9E4();
        v25 = v48;
        sub_1C7C7DA14();
        v26 = v47;
      }

      else
      {
        v70 = 5;
        sub_1C7C41518();
        v24 = v49;
        sub_1C7C7D9E4();
        v25 = v51;
        sub_1C7C7DA14();
        v26 = v50;
      }

      v38 = *(v26 + 8);
      v39 = v24;
    }

    v42 = v25;
LABEL_16:
    v38(v39, v42);
    return (*(v64 + 8))(v23, v22);
  }

  v28 = v55;
  v27 = v56;
  v29 = v12;
  v31 = v57;
  v30 = v58;
  v32 = v59;
  if (!v21)
  {
    v66 = 1;
    sub_1C7C41668();
    v40 = v62;
    v41 = v63;
    sub_1C7C7D9E4();
    sub_1C7C7DA14();
    (*(v28 + 8))(v15, v13);
    return (*(v64 + 8))(v40, v41);
  }

  if (v21 == 1)
  {
    v67 = 2;
    sub_1C7C41614();
    v33 = v29;
    v34 = v62;
    v35 = v63;
    sub_1C7C7D9E4();
    sub_1C7C7DA14();
    (*(v27 + 8))(v33, v31);
    return (*(v64 + 8))(v34, v35);
  }

  v68 = 3;
  sub_1C7C415C0();
  v23 = v62;
  v22 = v63;
  sub_1C7C7D9E4();
  sub_1C7C7DA14();
  (*(v45 + 8))(v30, v32);
  return (*(v64 + 8))(v23, v22);
}

unint64_t sub_1C7C41470()
{
  result = qword_1EC264AC8;
  if (!qword_1EC264AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AC8);
  }

  return result;
}

unint64_t sub_1C7C414C4()
{
  result = qword_1EC264AD0;
  if (!qword_1EC264AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AD0);
  }

  return result;
}

unint64_t sub_1C7C41518()
{
  result = qword_1EC264AD8;
  if (!qword_1EC264AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AD8);
  }

  return result;
}

unint64_t sub_1C7C4156C()
{
  result = qword_1EC264AE0;
  if (!qword_1EC264AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AE0);
  }

  return result;
}

unint64_t sub_1C7C415C0()
{
  result = qword_1EC264AE8;
  if (!qword_1EC264AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AE8);
  }

  return result;
}

unint64_t sub_1C7C41614()
{
  result = qword_1EC264AF0;
  if (!qword_1EC264AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AF0);
  }

  return result;
}

unint64_t sub_1C7C41668()
{
  result = qword_1EC264AF8;
  if (!qword_1EC264AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AF8);
  }

  return result;
}

unint64_t sub_1C7C416BC()
{
  result = qword_1EC264B00;
  if (!qword_1EC264B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B00);
  }

  return result;
}

uint64_t SERXPCInternalErrors.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B08, &qword_1C7C90F78);
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v106 = &v84 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B10, &qword_1C7C90F80);
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B18, &qword_1C7C90F88);
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B20, &qword_1C7C90F90);
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v84 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B28, &qword_1C7C90F98);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v103 = &v84 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B30, &qword_1C7C90FA0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v12 = &v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B38, &qword_1C7C90FA8);
  v88 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B40, &qword_1C7C90FB0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v84 - v18;
  v20 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C7C41470();
  v21 = v108;
  sub_1C7C7DB94();
  if (v21)
  {
    goto LABEL_12;
  }

  v87 = 0;
  v22 = v15;
  v85 = v13;
  v86 = v12;
  v24 = v103;
  v23 = v104;
  v26 = v105;
  v25 = v106;
  v108 = v17;
  v27 = v16;
  v28 = sub_1C7C7D9D4();
  v29 = (2 * *(v28 + 16)) | 1;
  v109 = v28;
  v110 = v28 + 32;
  v111 = 0;
  v112 = v29;
  v30 = sub_1C7BDF210();
  if (v30 == 7 || v111 != v112 >> 1)
  {
    v37 = sub_1C7C7D7C4();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v39 = &type metadata for SERXPCInternalErrors;
    v40 = v16;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v30 <= 2u)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v113 = 1;
        sub_1C7C41668();
        v43 = v86;
        v44 = v87;
        sub_1C7C7D944();
        if (v44)
        {
          (*(v108 + 8))(v19, v16);
          goto LABEL_11;
        }

        v60 = v90;
        v64 = sub_1C7C7D984();
        v65 = v43;
        v67 = v66;
        (*(v89 + 8))(v65, v60);
        (*(v108 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v71 = v67;
        v72 = v64;
        v73 = 0;
LABEL_32:
        v41 = v107;
        v45 = v102;
LABEL_35:
        *v45 = v72;
        *(v45 + 8) = v71;
        *(v45 + 16) = v73;
        return __swift_destroy_boxed_opaque_existential_0Tm(v41);
      }

      v113 = 2;
      sub_1C7C41614();
      v51 = v24;
      v40 = v16;
      v52 = v87;
      sub_1C7C7D944();
      v45 = v102;
      if (!v52)
      {
        v53 = v92;
        v54 = sub_1C7C7D984();
        v55 = v108;
        v61 = v54;
        v63 = v62;
        (*(v91 + 8))(v51, v53);
        (*(v55 + 8))(v19, v40);
        swift_unknownObjectRelease();
        v71 = v63;
        v72 = v61;
        v73 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v113 = 0;
      sub_1C7C416BC();
      v40 = v16;
      v50 = v87;
      sub_1C7C7D944();
      if (!v50)
      {
        (*(v88 + 8))(v22, v85);
        (*(v108 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v72 = 0;
        v71 = 0;
        v73 = 6;
        goto LABEL_32;
      }
    }

LABEL_10:
    (*(v108 + 8))(v19, v40);
    goto LABEL_11;
  }

  if (v30 <= 4u)
  {
    v31 = v102;
    v32 = v108;
    v33 = v27;
    v34 = v87;
    if (v30 == 3)
    {
      v113 = 3;
      sub_1C7C415C0();
      v35 = v23;
      sub_1C7C7D944();
      if (!v34)
      {
        v36 = v94;
        v68 = sub_1C7C7D984();
        v70 = v69;
        (*(v93 + 8))(v35, v36);
        (*(v32 + 8))(v19, v33);
        swift_unknownObjectRelease();
        v71 = v70;
        v72 = v68;
        v73 = 2;
LABEL_33:
        v41 = v107;
        v45 = v31;
        goto LABEL_35;
      }
    }

    else
    {
      v113 = 4;
      sub_1C7C4156C();
      v56 = v26;
      sub_1C7C7D944();
      if (!v34)
      {
        v57 = v96;
        v77 = sub_1C7C7D984();
        v79 = v78;
        (*(v95 + 8))(v56, v57);
        (*(v32 + 8))(v19, v33);
        swift_unknownObjectRelease();
        v71 = v79;
        v72 = v77;
        v73 = 3;
        goto LABEL_33;
      }
    }

    (*(v32 + 8))(v19, v33);
    goto LABEL_11;
  }

  v45 = v102;
  v46 = v108;
  v47 = v87;
  if (v30 == 5)
  {
    v113 = 5;
    sub_1C7C41518();
    v48 = v101;
    sub_1C7C7D944();
    if (!v47)
    {
      v49 = v99;
      v74 = sub_1C7C7D984();
      v76 = v75;
      (*(v98 + 8))(v48, v49);
      (*(v46 + 8))(v19, v27);
      swift_unknownObjectRelease();
      v71 = v76;
      v72 = v74;
      v73 = 4;
LABEL_34:
      v41 = v107;
      goto LABEL_35;
    }
  }

  else
  {
    v113 = 6;
    sub_1C7C414C4();
    sub_1C7C7D944();
    if (!v47)
    {
      v58 = v97;
      v59 = sub_1C7C7D984();
      v80 = v25;
      v81 = v59;
      v83 = v82;
      (*(v100 + 8))(v80, v58);
      (*(v46 + 8))(v19, v27);
      swift_unknownObjectRelease();
      v71 = v83;
      v72 = v81;
      v73 = 5;
      goto LABEL_34;
    }
  }

  (*(v46 + 8))(v19, v27);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v41 = v107;
  return __swift_destroy_boxed_opaque_existential_0Tm(v41);
}

uint64_t SERState.init(reservationState:deviceCapability:credentialSizes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_1C7C423A4()
{
  v1 = 0x69746E6564657263;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C7C42414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C464B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C4243C(uint64_t a1)
{
  v2 = sub_1C7C42724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C42478(uint64_t a1)
{
  v2 = sub_1C7C42724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B48, &qword_1C7C90FB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C42724();
  v10 = v9;
  sub_1C7C7DBA4();
  v17 = v10;
  v16 = 0;
  type metadata accessor for ReservationState();
  sub_1C7C42BF8(&unk_1EC264F30, type metadata accessor for ReservationState, &protocol conformance descriptor for ReservationState);
  sub_1C7C7DA44();

  if (!v2)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    type metadata accessor for DeviceCapability();
    sub_1C7C42BF8(&unk_1EC264F90, type metadata accessor for DeviceCapability, &protocol conformance descriptor for DeviceCapability);
    sub_1C7C7DA44();
    v17 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42778();
    sub_1C7C7DA44();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C7C42724()
{
  result = qword_1EC264B50;
  if (!qword_1EC264B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B50);
  }

  return result;
}

unint64_t sub_1C7C42778()
{
  result = qword_1EC264B60;
  if (!qword_1EC264B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42BF8(&qword_1EC264B68, type metadata accessor for SERCredentialInfo, &protocol conformance descriptor for SERCredentialInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B60);
  }

  return result;
}

void SERState.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B70, &qword_1C7C90FC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C42724();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    type metadata accessor for ReservationState();
    v15 = 0;
    sub_1C7C42BF8(&unk_1EC264FB0, type metadata accessor for ReservationState, &protocol conformance descriptor for ReservationState);
    sub_1C7C7D9B4();
    v9 = v16;
    type metadata accessor for DeviceCapability();
    v15 = 1;
    sub_1C7C42BF8(&qword_1EC264B78, type metadata accessor for DeviceCapability, &protocol conformance descriptor for DeviceCapability);
    sub_1C7C7D9B4();
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B58, &qword_1C7C90FC0);
    v15 = 2;
    sub_1C7C42B3C();
    sub_1C7C7D9B4();
    (*(v6 + 8))(v8, v5);
    v11 = v16;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    v12 = v9;
    v13 = v10;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

unint64_t sub_1C7C42B3C()
{
  result = qword_1EC264B80;
  if (!qword_1EC264B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42BF8(&qword_1EC264B88, type metadata accessor for SERCredentialInfo, &protocol conformance descriptor for SERCredentialInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B80);
  }

  return result;
}

uint64_t sub_1C7C42BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C7C42CC0(uint64_t a1)
{
  sub_1C7C42DAC(319);
  if (v1 <= 0x3F)
  {
    sub_1C7C42E24(319);
    if (v2 <= 0x3F)
    {
      sub_1C7C42E90();
      if (v3 <= 0x3F)
      {
        sub_1C7C42EC0();
        if (v4 <= 0x3F)
        {
          sub_1C7C42F20(319);
          if (v5 <= 0x3F)
          {
            sub_1C7C7D104();
            if (v6 <= 0x3F)
            {
              sub_1C7C42F88(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SECCredentialConfig(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C7C42DAC(uint64_t a1)
{
  if (!qword_1EC264BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264BA8, &qword_1C7C91170);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BA0);
    }
  }
}

void sub_1C7C42E24(uint64_t a1)
{
  if (!qword_1EC264BB0)
  {
    type metadata accessor for SERDataSource();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BB0);
    }
  }
}

ValueMetadata *sub_1C7C42E90()
{
  result = qword_1EC264BB8;
  if (!qword_1EC264BB8)
  {
    result = &type metadata for SESnapshot.TargetDevice;
    atomic_store(&type metadata for SESnapshot.TargetDevice, &qword_1EC264BB8);
  }

  return result;
}

void sub_1C7C42EC0()
{
  if (!qword_1EC264BC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BC0);
    }
  }
}

void sub_1C7C42F20(uint64_t a1)
{
  if (!qword_1EC264BC8)
  {
    sub_1C7C7D104();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BC8);
    }
  }
}

void sub_1C7C42F88(uint64_t a1)
{
  if (!qword_1EC264BD0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for MemoryUsage();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264BA8, &qword_1C7C91170);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC264BD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SEService20SERXPCInternalErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_9SEService14SERXPCResponseO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1C7C430F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x16 && *(a1 + 17))
  {
    return (*a1 + 22);
  }

  v3 = ((*(a1 + 16) >> 4) & 0xFFFFFFEF | (16 * ((*(a1 + 16) >> 3) & 1))) ^ 0x1F;
  if (v3 >= 0x15)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C43144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x15)
  {
    *(result + 16) = 0;
    *result = a2 - 22;
    *(result + 8) = 0;
    if (a3 >= 0x16)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x16)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_1C7C431A8(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    *(result + 16) = *(result + 16) & 7 | (16 * a2);
  }

  else
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

uint64_t sub_1C7C431E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C4322C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C43270(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C7C432AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C7C432F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7C434A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C7C43534(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C7C436B8()
{
  result = qword_1EC264BD8;
  if (!qword_1EC264BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BD8);
  }

  return result;
}

unint64_t sub_1C7C43710()
{
  result = qword_1EC264BE0;
  if (!qword_1EC264BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BE0);
  }

  return result;
}

unint64_t sub_1C7C43768()
{
  result = qword_1EC264BE8;
  if (!qword_1EC264BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BE8);
  }

  return result;
}

unint64_t sub_1C7C437C0()
{
  result = qword_1EC264BF0;
  if (!qword_1EC264BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BF0);
  }

  return result;
}

unint64_t sub_1C7C43818()
{
  result = qword_1EC264BF8;
  if (!qword_1EC264BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BF8);
  }

  return result;
}

unint64_t sub_1C7C43870()
{
  result = qword_1EC264C00;
  if (!qword_1EC264C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C00);
  }

  return result;
}

unint64_t sub_1C7C438C8()
{
  result = qword_1EC264C08;
  if (!qword_1EC264C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C08);
  }

  return result;
}

unint64_t sub_1C7C43920()
{
  result = qword_1EC264C10;
  if (!qword_1EC264C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C10);
  }

  return result;
}

unint64_t sub_1C7C43978()
{
  result = qword_1EC264C18;
  if (!qword_1EC264C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C18);
  }

  return result;
}

unint64_t sub_1C7C439D0()
{
  result = qword_1EC264C20;
  if (!qword_1EC264C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C20);
  }

  return result;
}

unint64_t sub_1C7C43A28()
{
  result = qword_1EC264C28;
  if (!qword_1EC264C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C28);
  }

  return result;
}

unint64_t sub_1C7C43A80()
{
  result = qword_1EC264C30;
  if (!qword_1EC264C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C30);
  }

  return result;
}

unint64_t sub_1C7C43AD8()
{
  result = qword_1EC264C38;
  if (!qword_1EC264C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C38);
  }

  return result;
}

unint64_t sub_1C7C43B30()
{
  result = qword_1EC264C40;
  if (!qword_1EC264C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C40);
  }

  return result;
}

unint64_t sub_1C7C43B88()
{
  result = qword_1EC264C48;
  if (!qword_1EC264C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C48);
  }

  return result;
}

unint64_t sub_1C7C43BE0()
{
  result = qword_1EC264C50;
  if (!qword_1EC264C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C50);
  }

  return result;
}

unint64_t sub_1C7C43C38()
{
  result = qword_1EC264C58;
  if (!qword_1EC264C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C58);
  }

  return result;
}

unint64_t sub_1C7C43C90()
{
  result = qword_1EC264C60;
  if (!qword_1EC264C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C60);
  }

  return result;
}

unint64_t sub_1C7C43CE8()
{
  result = qword_1EC264C68;
  if (!qword_1EC264C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C68);
  }

  return result;
}

unint64_t sub_1C7C43D40()
{
  result = qword_1EC264C70;
  if (!qword_1EC264C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C70);
  }

  return result;
}

unint64_t sub_1C7C43D98()
{
  result = qword_1EC264C78;
  if (!qword_1EC264C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C78);
  }

  return result;
}

unint64_t sub_1C7C43DF0()
{
  result = qword_1EC264C80;
  if (!qword_1EC264C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C80);
  }

  return result;
}

unint64_t sub_1C7C43E48()
{
  result = qword_1EC264C88;
  if (!qword_1EC264C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C88);
  }

  return result;
}

unint64_t sub_1C7C43EA0()
{
  result = qword_1EC264C90;
  if (!qword_1EC264C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C90);
  }

  return result;
}

unint64_t sub_1C7C43EF8()
{
  result = qword_1EC264C98;
  if (!qword_1EC264C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C98);
  }

  return result;
}

unint64_t sub_1C7C43F50()
{
  result = qword_1EC264CA0;
  if (!qword_1EC264CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CA0);
  }

  return result;
}

unint64_t sub_1C7C43FA8()
{
  result = qword_1EC264CA8;
  if (!qword_1EC264CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CA8);
  }

  return result;
}

unint64_t sub_1C7C44000()
{
  result = qword_1EC264CB0;
  if (!qword_1EC264CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CB0);
  }

  return result;
}

unint64_t sub_1C7C44058()
{
  result = qword_1EC264CB8;
  if (!qword_1EC264CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CB8);
  }

  return result;
}

unint64_t sub_1C7C440B0()
{
  result = qword_1EC264CC0;
  if (!qword_1EC264CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CC0);
  }

  return result;
}

unint64_t sub_1C7C44108()
{
  result = qword_1EC264CC8;
  if (!qword_1EC264CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CC8);
  }

  return result;
}

unint64_t sub_1C7C44160()
{
  result = qword_1EC264CD0;
  if (!qword_1EC264CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CD0);
  }

  return result;
}

unint64_t sub_1C7C441B8()
{
  result = qword_1EC264CD8;
  if (!qword_1EC264CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CD8);
  }

  return result;
}

unint64_t sub_1C7C44210()
{
  result = qword_1EC264CE0;
  if (!qword_1EC264CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CE0);
  }

  return result;
}

unint64_t sub_1C7C44268()
{
  result = qword_1EC264CE8;
  if (!qword_1EC264CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CE8);
  }

  return result;
}

unint64_t sub_1C7C442C0()
{
  result = qword_1EC264CF0;
  if (!qword_1EC264CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CF0);
  }

  return result;
}

unint64_t sub_1C7C44318()
{
  result = qword_1EC264CF8;
  if (!qword_1EC264CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CF8);
  }

  return result;
}

unint64_t sub_1C7C44370()
{
  result = qword_1EC264D00;
  if (!qword_1EC264D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D00);
  }

  return result;
}

unint64_t sub_1C7C443C8()
{
  result = qword_1EC264D08;
  if (!qword_1EC264D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D08);
  }

  return result;
}

unint64_t sub_1C7C44420()
{
  result = qword_1EC264D10;
  if (!qword_1EC264D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D10);
  }

  return result;
}

unint64_t sub_1C7C44478()
{
  result = qword_1EC264D18;
  if (!qword_1EC264D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D18);
  }

  return result;
}

unint64_t sub_1C7C444D0()
{
  result = qword_1EC264D20;
  if (!qword_1EC264D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D20);
  }

  return result;
}

unint64_t sub_1C7C44528()
{
  result = qword_1EC264D28;
  if (!qword_1EC264D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D28);
  }

  return result;
}

unint64_t sub_1C7C44580()
{
  result = qword_1EC264D30;
  if (!qword_1EC264D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D30);
  }

  return result;
}

unint64_t sub_1C7C445D8()
{
  result = qword_1EC264D38;
  if (!qword_1EC264D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D38);
  }

  return result;
}

unint64_t sub_1C7C44630()
{
  result = qword_1EC264D40;
  if (!qword_1EC264D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D40);
  }

  return result;
}

unint64_t sub_1C7C44688()
{
  result = qword_1EC264D48;
  if (!qword_1EC264D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D48);
  }

  return result;
}

unint64_t sub_1C7C446E0()
{
  result = qword_1EC264D50;
  if (!qword_1EC264D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D50);
  }

  return result;
}

unint64_t sub_1C7C44738()
{
  result = qword_1EC264D58;
  if (!qword_1EC264D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D58);
  }

  return result;
}

unint64_t sub_1C7C44790()
{
  result = qword_1EC264D60;
  if (!qword_1EC264D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D60);
  }

  return result;
}

unint64_t sub_1C7C447E8()
{
  result = qword_1EC264D68;
  if (!qword_1EC264D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D68);
  }

  return result;
}

unint64_t sub_1C7C44840()
{
  result = qword_1EC264D70;
  if (!qword_1EC264D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D70);
  }

  return result;
}

unint64_t sub_1C7C44898()
{
  result = qword_1EC264D78;
  if (!qword_1EC264D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D78);
  }

  return result;
}

unint64_t sub_1C7C448F0()
{
  result = qword_1EC264D80;
  if (!qword_1EC264D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D80);
  }

  return result;
}

unint64_t sub_1C7C44948()
{
  result = qword_1EC264D88;
  if (!qword_1EC264D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D88);
  }

  return result;
}

unint64_t sub_1C7C449A0()
{
  result = qword_1EC264D90;
  if (!qword_1EC264D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D90);
  }

  return result;
}

unint64_t sub_1C7C449F8()
{
  result = qword_1EC264D98;
  if (!qword_1EC264D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D98);
  }

  return result;
}

unint64_t sub_1C7C44A50()
{
  result = qword_1EC264DA0;
  if (!qword_1EC264DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DA0);
  }

  return result;
}

unint64_t sub_1C7C44AA8()
{
  result = qword_1EC264DA8;
  if (!qword_1EC264DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DA8);
  }

  return result;
}

unint64_t sub_1C7C44B00()
{
  result = qword_1EC264DB0;
  if (!qword_1EC264DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DB0);
  }

  return result;
}

unint64_t sub_1C7C44B58()
{
  result = qword_1EC264DB8;
  if (!qword_1EC264DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DB8);
  }

  return result;
}

unint64_t sub_1C7C44BB0()
{
  result = qword_1EC264DC0;
  if (!qword_1EC264DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DC0);
  }

  return result;
}

unint64_t sub_1C7C44C08()
{
  result = qword_1EC264DC8;
  if (!qword_1EC264DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DC8);
  }

  return result;
}

unint64_t sub_1C7C44C60()
{
  result = qword_1EC264DD0;
  if (!qword_1EC264DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DD0);
  }

  return result;
}

unint64_t sub_1C7C44CB8()
{
  result = qword_1EC264DD8;
  if (!qword_1EC264DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DD8);
  }

  return result;
}

unint64_t sub_1C7C44D10()
{
  result = qword_1EC264DE0;
  if (!qword_1EC264DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DE0);
  }

  return result;
}

unint64_t sub_1C7C44D68()
{
  result = qword_1EC264DE8;
  if (!qword_1EC264DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DE8);
  }

  return result;
}

unint64_t sub_1C7C44DC0()
{
  result = qword_1EC264DF0;
  if (!qword_1EC264DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DF0);
  }

  return result;
}

unint64_t sub_1C7C44E18()
{
  result = qword_1EC264DF8;
  if (!qword_1EC264DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DF8);
  }

  return result;
}

unint64_t sub_1C7C44E70()
{
  result = qword_1EC264E00;
  if (!qword_1EC264E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E00);
  }

  return result;
}

unint64_t sub_1C7C44EC8()
{
  result = qword_1EC264E08;
  if (!qword_1EC264E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E08);
  }

  return result;
}

unint64_t sub_1C7C44F20()
{
  result = qword_1EC264E10;
  if (!qword_1EC264E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E10);
  }

  return result;
}

unint64_t sub_1C7C44F78()
{
  result = qword_1EC264E18;
  if (!qword_1EC264E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E18);
  }

  return result;
}

unint64_t sub_1C7C44FD0()
{
  result = qword_1EC264E20;
  if (!qword_1EC264E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E20);
  }

  return result;
}

unint64_t sub_1C7C45028()
{
  result = qword_1EC264E28;
  if (!qword_1EC264E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E28);
  }

  return result;
}

unint64_t sub_1C7C45080()
{
  result = qword_1EC264E30;
  if (!qword_1EC264E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E30);
  }

  return result;
}

unint64_t sub_1C7C450D8()
{
  result = qword_1EC264E38;
  if (!qword_1EC264E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E38);
  }

  return result;
}

unint64_t sub_1C7C45130()
{
  result = qword_1EC264E40;
  if (!qword_1EC264E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E40);
  }

  return result;
}

unint64_t sub_1C7C45188()
{
  result = qword_1EC264E48;
  if (!qword_1EC264E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E48);
  }

  return result;
}

unint64_t sub_1C7C451E0()
{
  result = qword_1EC264E50;
  if (!qword_1EC264E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E50);
  }

  return result;
}

unint64_t sub_1C7C45238()
{
  result = qword_1EC264E58;
  if (!qword_1EC264E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E58);
  }

  return result;
}

unint64_t sub_1C7C45290()
{
  result = qword_1EC264E60;
  if (!qword_1EC264E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E60);
  }

  return result;
}

unint64_t sub_1C7C452E8()
{
  result = qword_1EC264E68;
  if (!qword_1EC264E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E68);
  }

  return result;
}

unint64_t sub_1C7C45340()
{
  result = qword_1EC264E70;
  if (!qword_1EC264E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E70);
  }

  return result;
}

unint64_t sub_1C7C45398()
{
  result = qword_1EC264E78;
  if (!qword_1EC264E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E78);
  }

  return result;
}

unint64_t sub_1C7C453F0()
{
  result = qword_1EC264E80;
  if (!qword_1EC264E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E80);
  }

  return result;
}

unint64_t sub_1C7C45448()
{
  result = qword_1EC264E88;
  if (!qword_1EC264E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E88);
  }

  return result;
}

unint64_t sub_1C7C454A0()
{
  result = qword_1EC264E90;
  if (!qword_1EC264E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E90);
  }

  return result;
}

unint64_t sub_1C7C454F8()
{
  result = qword_1EC264E98;
  if (!qword_1EC264E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E98);
  }

  return result;
}

unint64_t sub_1C7C45550()
{
  result = qword_1EC264EA0;
  if (!qword_1EC264EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EA0);
  }

  return result;
}

unint64_t sub_1C7C455A8()
{
  result = qword_1EC264EA8;
  if (!qword_1EC264EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EA8);
  }

  return result;
}

unint64_t sub_1C7C45600()
{
  result = qword_1EC264EB0;
  if (!qword_1EC264EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EB0);
  }

  return result;
}

unint64_t sub_1C7C45658()
{
  result = qword_1EC264EB8;
  if (!qword_1EC264EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EB8);
  }

  return result;
}

unint64_t sub_1C7C456B0()
{
  result = qword_1EC264EC0;
  if (!qword_1EC264EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EC0);
  }

  return result;
}

unint64_t sub_1C7C45708()
{
  result = qword_1EC264EC8;
  if (!qword_1EC264EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EC8);
  }

  return result;
}

unint64_t sub_1C7C45760()
{
  result = qword_1EC264ED0;
  if (!qword_1EC264ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264ED0);
  }

  return result;
}

unint64_t sub_1C7C457B8()
{
  result = qword_1EC264ED8;
  if (!qword_1EC264ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264ED8);
  }

  return result;
}

unint64_t sub_1C7C45810()
{
  result = qword_1EC264EE0;
  if (!qword_1EC264EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EE0);
  }

  return result;
}

unint64_t sub_1C7C45868()
{
  result = qword_1EC264EE8;
  if (!qword_1EC264EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EE8);
  }

  return result;
}

unint64_t sub_1C7C458C0()
{
  result = qword_1EC264EF0;
  if (!qword_1EC264EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EF0);
  }

  return result;
}

uint64_t sub_1C7C45914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617375 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C7C45A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E534553746567 && a2 == 0xED0000746F687370;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68736572666572 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265736552646461 && a2 == 0xEE006E6F69746176 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573655274696465 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736552646E6966 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461767265736572 && a2 == 0xEC000000736E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2C0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7469466E6163 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x53457469466E6163 && a2 == 0xEA00000000006D69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F2E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1C7C45E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E534553746567 && a2 == 0xED0000746F687370 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68736572666572 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265736552646461 && a2 == 0xEE006E6F69746176 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573655274696465 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65736552646E6966 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461767265736572 && a2 == 0xEC000000736E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2C0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7469466E6163 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F2E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1C7C46250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D73694D65707974 && a2 == 0xEC00000068637461 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9F300 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F320 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x724574616D726F66 && a2 == 0xEB00000000726F72)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1C7C464B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9CC30 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9CC70 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEF73657A69536C61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C7C46608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001C7C9CC70;
  if (a1 != 4)
  {
    v4 = 0x72756F5361746164;
    v5 = 0xEA00000000006563;
  }

  if (a1 == 3)
  {
    v4 = 1684632949;
    v5 = 0xE400000000000000;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000001C7C9CC30;
  if (a1 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001C7C9CC50;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x65746174536573;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE400000000000000;
      if (v8 != 1684632949)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001C7C9CC70;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xEA00000000006563;
      if (v8 != 0x72756F5361746164)
      {
LABEL_34:
        v11 = sub_1C7C7DAA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x80000001C7C9CC30;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0x80000001C7C9CC50;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    if (v8 != 0x65746174536573)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1C7C467DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7061654870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6582115;
    }

    else
    {
      v4 = 0x69646E4964657375;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEB00000000736563;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7499619;
    }

    else
    {
      v4 = 0x7061654870;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE300000000000000;
  v8 = 6582115;
  if (a2 != 2)
  {
    v8 = 0x69646E4964657375;
    v7 = 0xEB00000000736563;
  }

  if (a2)
  {
    v2 = 7499619;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C7C7DAA4();
  }

  return v11 & 1;
}

uint64_t sub_1C7C46914(unsigned __int8 a1)
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C46A20(uint64_t a1, unsigned __int8 a2)
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t SESnapshot.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7C7CFA4();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
  sub_1C7C4F884(&qword_1EC264668, sub_1C7BDF724, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  v26 = sub_1C7C7CF94();
  v27 = v4;

  v5 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v6 = *(v3 + v5);
  swift_allocObject();
  v7 = v6;
  sub_1C7C7CFA4();
  type metadata accessor for SEState();
  sub_1C7C4C6C8(&qword_1EC264F20, type metadata accessor for SEState, &protocol conformance descriptor for SEState);
  v8 = sub_1C7C7CF94();
  v10 = v9;
  v11 = sub_1C7C7D034();
  v13 = v12;

  sub_1C7BDF778(v8, v10);

  MEMORY[0x1CCA6B380](v11, v13);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  swift_allocObject();
  sub_1C7C7CFA4();
  type metadata accessor for ReservationState();
  sub_1C7C4C6C8(&unk_1EC264F30, type metadata accessor for ReservationState, &protocol conformance descriptor for ReservationState);
  v14 = sub_1C7C7CF94();
  v16 = v15;
  v17 = sub_1C7C7D034();
  v19 = v18;
  sub_1C7BDF778(v14, v16);

  MEMORY[0x1CCA6B380](v17, v19);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  v20 = sub_1C7C7D034();
  MEMORY[0x1CCA6B380](v20);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  v21 = [*(v3 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource) description];
  v22 = sub_1C7C7D304();
  v24 = v23;

  MEMORY[0x1CCA6B380](v22, v24);

  sub_1C7BDF778(v26, v27);

  return 0;
}

uint64_t SESnapshot.maxAllowedIndices.getter()
{
  v1 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  if (*(*(v0 + v1) + OBJC_IVAR____TtC9SEService7SEState_seType) >= 3u)
  {
    return 14000;
  }

  else
  {
    return 24526;
  }
}

uint64_t SESnapshot.CanFitResult.FailureReason.debugDescription.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1C7C2A8F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1C7C2A8F0((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x7061654870;
    *(v5 + 5) = 0xE500000000000000;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1C7C2A8F0((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 7499619;
    *(v9 + 5) = 0xE300000000000000;
    if ((v1 & 4) == 0)
    {
LABEL_8:
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
      }

      v14 = *(v2 + 2);
      v13 = *(v2 + 3);
      if (v14 >= v13 >> 1)
      {
        v2 = sub_1C7C2A8F0((v13 > 1), v14 + 1, 1, v2);
      }

      *(v2 + 2) = v14 + 1;
      v15 = &v2[16 * v14];
      *(v15 + 4) = 0x73656369646E69;
      *(v15 + 5) = 0xE700000000000000;
      goto LABEL_26;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_1C7C2A8F0((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  v12 = &v2[16 * v11];
  *(v12 + 4) = 6582115;
  *(v12 + 5) = 0xE300000000000000;
  if ((v1 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (*(v2 + 2))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    sub_1C7C4F0D4();
    v6 = sub_1C7C7D2A4();

    return v6;
  }

  return 0x73736563637573;
}

BOOL sub_1C7C47528(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1C7C47558@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1C7C47584@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

BOOL static SESnapshot.CanFitResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1] == 1)
  {
    return (a2[1] & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1C7C476A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1] == 1)
  {
    return (a2[1] & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1C7C476FC()
{
  v1 = sub_1C7C54984(v0 + 16);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 33) = 0;
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1C7C15364;

  return sub_1C7C15A44(v3, v4, (v0 + 33));
}

uint64_t SESnapshot.refresh(with:seid:)(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C47860, 0, 0);
}

uint64_t sub_1C7C47860()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0[15] + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
  v2 = sub_1C7C54984((v0 + 8));
  v0[16] = v3;
  v0[17] = v2;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1C7C479E8;

  return SERInternalClient.refresh(dataSource:token:)((v0 + 5), v1, v4, v5);
}

uint64_t sub_1C7C479E8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);

  sub_1C7BDF778(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C7C47B18, 0, 0);
}

uint64_t sub_1C7C47B18()
{
  v25 = v0;
  if (*(v0 + 57))
  {
    v1 = *(v0 + 56);
    *(v0 + 88) = *(v0 + 40);
    *(v0 + 104) = v1;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    v23 = *(v0 + 40);
    swift_beginAccess();
    v10 = *(v8 + v9);
    *(v8 + v9) = v23;

    if (qword_1EC2621E8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 120);
    v12 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v12, qword_1EC288338);
    v13 = v11;
    v14 = sub_1C7C7D194();
    v15 = sub_1C7C7D5A4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v19 = SESnapshot.debugDescription.getter(v17, v18);
      v21 = sub_1C7BE42F8(v19, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C7B9A000, v14, v15, "Refreshed Snapshot %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1CCA6C990](v17, -1, -1);
      MEMORY[0x1CCA6C990](v16, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1C7C47D98()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  *(v0 + 34) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C7C47E74;

  return SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(v0 + 16, (v0 + 34));
}

uint64_t sub_1C7C47E74()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C15F90, 0, 0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.canFit(credentials:)(Swift::OpaquePointer credentials)
{
  SESnapshot.canFitWithReason(credentials:)(credentials._rawValue, v4);
  if (!v1)
  {
    v2 = v4[1];
  }

  return v2 & 1;
}

void SESnapshot.canFitWithReason(credentials:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v153[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25C0C(0, v3, 0);
    v6 = v153[0];
    v7 = (a1 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = v8;
      v11 = *(v7 - 1);
      v12 = *v7;
      if (v9 == 3)
      {
        v10 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = 3;
        if (v8 <= 0x19)
        {
          v11 = 0;
          v12 = 0;
          v10 = qword_1C7C93DA8[v8];
        }
      }

      sub_1C7BDF708(v8, *(v7 - 1), v9);
      v153[0] = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1C7C25C0C((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v6 = v153[0];
      }

      v7 += 24;
      *(v6 + 16) = v15;
      v16 = v6 + 24 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12;
      --v3;
    }

    while (v3);
    v17 = v143;
  }

  else
  {
    v17 = v2;
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      v138 = 0;
      v25 = 1;
      v145 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  v145 = v6;
  v18 = (v6 + 48);
  v19 = v15;
  do
  {
    v22 = *(v18 - 2);
    v21 = *(v18 - 1);
    v23 = *v18;
    if (v23 == 3)
    {
      if (v22 == 26 && v21 == 0)
      {

        sub_1C7BEADA0();
        swift_allocError();
        *v26 = 0xD000000000000038;
        *(v26 + 8) = 0x80000001C7C9F370;
        *(v26 + 16) = 2;
        swift_willThrow();
        return;
      }
    }

    else if (v23 == 2)
    {

      sub_1C7BEADA0();
      swift_allocError();
      *v24 = 0xD000000000000035;
      *(v24 + 8) = 0x80000001C7C9F3B0;
      *(v24 + 16) = 2;
      swift_willThrow();
      sub_1C7BEA9D8(v22, v21, 2u);
      return;
    }

    v18 += 24;
    --v19;
  }

  while (v19);
  v138 = v15;
  v25 = 0;
LABEL_24:
  v27 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v133 = v27;
  v28 = *(v17 + v27);
  v29 = *(*(v28 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v29 <= 0)
  {
    v30 = *(v28 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v31 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v29 = *(v30 + v31);
  }

  v130 = v29;
  v32 = *(v28 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
  v33 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v136 = *(v32 + v33);
  v34 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v134 = *(v32 + v34);
  v154 = v25;
  if (v25)
  {
    if (!*(v4 + 16))
    {
      v35 = MEMORY[0x1E69E7CC8];
      goto LABEL_35;
    }
  }

  else
  {
    v152[0] = v4;
    v36 = v138;
    sub_1C7C25BEC(0, v138, 0);
    v37 = (v145 + 48);
    do
    {
      v39 = *(v37 - 2);
      v38 = *(v37 - 1);
      v40 = *v37;
      sub_1C7BDF708(v39, v38, *v37);
      v152[0] = v4;
      v42 = *(v4 + 16);
      v41 = *(v4 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C7C25BEC((v41 > 1), v42 + 1, 1);
        v4 = v152[0];
      }

      v37 += 24;
      *(v4 + 16) = v42 + 1;
      v43 = v4 + 32 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v38;
      *(v43 + 48) = v40;
      *(v43 + 56) = 1;
      --v36;
    }

    while (v36);
    v17 = v143;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v35 = sub_1C7C7D914();
LABEL_35:
  v152[0] = v35;

  sub_1C7C322BC(v44, 1, v152);
  v45 = v140;
  if (v140)
  {
LABEL_124:

    __break(1u);

    __break(1u);
    return;
  }

  swift_bridgeObjectRelease_n();
  v46 = v152[0];
  v47 = *(v17 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v48 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v49 = *(v47 + v48);
  v50 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v51 = *(v17 + v50);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v151 = v49;
  sub_1C7BFC468(v51, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v151);

  v53 = *v151;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v151 = v53;
  sub_1C7BFC468(v46, sub_1C7C4F7A8, 0, v54, v151);
  v45 = 0;

  v55 = *v151;
  v56 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v151[0] = 0;
  v57 = sub_1C7BFE8C4(v56, v17, v151, 0, 1, 0, 1);

  v151[0] = 0;
  v58 = sub_1C7BFE8C4(v55, v17, v151, 0, 1, 0, 1);
  v59 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v151[0] = 1;
  v60 = v17;
  v61 = sub_1C7BFE8C4(v59, v17, v151, 3uLL, 0, 0, 0);

  v62 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v151[0] = 1;
  v63 = sub_1C7BFE8C4(v62, v60, v151, 1uLL, 0, 1uLL, 0);

  v64 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v151[0] = 2;
  v141 = sub_1C7BFE8C4(v64, v60, v151, 1uLL, 0, 0, 1);

  v65 = v61 + v63;
  if (__OFADD__(v61, v63))
  {
    __break(1u);
    goto LABEL_106;
  }

  v151[0] = 1;
  v66 = sub_1C7BFE8C4(v55, v60, v151, 3uLL, 0, 0, 0);
  v151[0] = 1;
  v67 = sub_1C7BFE8C4(v55, v60, v151, 1uLL, 0, 1uLL, 0);
  v151[0] = 2;
  v45 = 0;
  v129 = sub_1C7BFE8C4(v55, v60, v151, 1uLL, 0, 0, 1);
  v68 = __OFADD__(v66, v67);
  v63 = v66 + v67;
  if (v68)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v151[0] = 3;
  sub_1C7BFFC28(v55, v60, v151);
  v70 = v69;

  v155 = 0;
  if ((v70 / 32 - 0x40000000000000) >> 55 != 511)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v71 = (v70 / 32) << 9;
  v128 = v70;
  if ((v70 < 0) ^ __OFSUB__((v70 / 32 - 0x40000000000000) >> 55, 511) | ((v70 & 0x800000000000001FLL) == 0))
  {
LABEL_43:
    v127 = v71;
    goto LABEL_44;
  }

  v68 = __OFADD__(v71, 512);
  v71 += 512;
  v127 = v71;
  if (v68)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  v72 = v130 + v57;
  if (__OFADD__(v130, v57))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v68 = __OFSUB__(v72, v58);
  v73 = v72 - v58;
  if (v68)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v68 = __OFADD__(v73, -25600);
  v74 = v73 - 25600;
  if (v68)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v75 = v74 - v127;
  if (__OFSUB__(v74, v127))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v75 < 0)
  {
    if (qword_1EC2621E8 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_51;
  }

  for (i = 0; ; i = 1)
  {
    if (__OFSUB__(v63, v65))
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v126 = v63 - v65;
    if (v136 < v63 - v65)
    {
      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v80 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v80, qword_1EC288338);
      v81 = sub_1C7C7D194();
      v82 = sub_1C7C7D564();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        if (__OFSUB__(v126, v136))
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v65 = v83;
        *(v83 + 4) = v126 - v136;
        _os_log_impl(&dword_1C7B9A000, v81, v82, "Missing %ld bytes COR", v83, 0xCu);
        MEMORY[0x1CCA6C990](v65, -1, -1);
      }

      i |= 2u;
      v155 = i;
    }

    if (__OFSUB__(v129, v141))
    {
      goto LABEL_113;
    }

    if (((v129 - v141) / 16 - 0x7FFFFFFFFFFFFFFLL) >> 60 != 15)
    {
      goto LABEL_114;
    }

    v141 = ((v129 - v141 + (v129 - v141 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0) + 16;
    if (v134 < v141)
    {
      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v84 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v84, qword_1EC288338);
      v85 = sub_1C7C7D194();
      v86 = sub_1C7C7D564();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 134217984;
        if (__OFSUB__(v141, v134))
        {
          goto LABEL_120;
        }

        v88 = v87;
        *(v87 + 4) = v141 - v134;
        _os_log_impl(&dword_1C7B9A000, v85, v86, "Missing %ld bytes COD", v87, 0xCu);
        MEMORY[0x1CCA6C990](v88, -1, -1);
      }

      i |= 4u;
      v155 = i;
    }

    v65 = *&v60[v133];
    v89 = *(v65 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v90 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
    swift_beginAccess();
    v91 = *(v89 + v90);
    v68 = __OFADD__(v128, v91);
    v92 = v128 + v91;
    if (!v68)
    {
      if (*(v65 + OBJC_IVAR____TtC9SEService7SEState_seType) >= 3u)
      {
        if (v92 <= 14000)
        {
          goto LABEL_87;
        }
      }

      else if (v92 < 24527)
      {
        goto LABEL_87;
      }

      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v93 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v93, qword_1EC288338);
      v136 = v60;
      v94 = sub_1C7C7D194();
      LODWORD(v134) = sub_1C7C7D564();
      if (os_log_type_enabled(v94, v134))
      {
        v95 = swift_slowAlloc();
        *v95 = 134217984;
        v96 = *&v60[v133];
        v63 = *(v96 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
        v65 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        swift_beginAccess();
        v97 = *(v63 + v65);
        v68 = __OFADD__(v128, v97);
        v98 = v128 + v97;
        if (v68)
        {
          goto LABEL_121;
        }

        v99 = 14000;
        if (*(v96 + OBJC_IVAR____TtC9SEService7SEState_seType) < 3u)
        {
          v99 = 24526;
        }

        v68 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v68)
        {
          goto LABEL_122;
        }

        *(v95 + 4) = v100;

        _os_log_impl(&dword_1C7B9A000, v94, v134, "Missing %ld indices", v95, 0xCu);
        MEMORY[0x1CCA6C990](v95, -1, -1);
      }

      else
      {

        v94 = v136;
      }

      v155 = i | 8;
LABEL_87:
      if (qword_1EC2621E8 == -1)
      {
        goto LABEL_88;
      }

      goto LABEL_116;
    }

LABEL_115:
    __break(1u);
LABEL_116:
    swift_once();
LABEL_88:
    v101 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v101, qword_1EC288338);
    v75 = sub_1C7C7D194();
    v102 = sub_1C7C7D564();
    if (!os_log_type_enabled(v75, v102))
    {
      goto LABEL_91;
    }

    v103 = swift_slowAlloc();
    *v103 = 134219008;
    if (!__OFSUB__(v58, v57))
    {
      break;
    }

    __break(1u);
LABEL_118:
    swift_once();
LABEL_51:
    v76 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v76, qword_1EC288338);
    v77 = sub_1C7C7D194();
    v132 = sub_1C7C7D564();
    if (os_log_type_enabled(v77, v132))
    {
      v78 = swift_slowAlloc();
      *v78 = 134217984;
      if (__OFSUB__(0, v75))
      {
        goto LABEL_123;
      }

      v79 = v78;
      *(v78 + 4) = -v75;
      _os_log_impl(&dword_1C7B9A000, v77, v132, "Missing %ld bytes pHeap", v78, 0xCu);
      MEMORY[0x1CCA6C990](v79, -1, -1);
    }

    v155 = 1;
  }

  v104 = v103;
  *(v103 + 4) = v58 - v57;
  *(v103 + 12) = 2048;
  *(v103 + 14) = v141;
  *(v103 + 22) = 2048;
  *(v103 + 24) = v126;
  *(v103 + 32) = 2048;
  *(v103 + 34) = v128;
  *(v103 + 42) = 2048;
  *(v103 + 44) = v127;
  _os_log_impl(&dword_1C7B9A000, v75, v102, "Requires pHeap:%ld COD:%ld COR:%ld Indices:%ld IndicesPHeap:%ld", v103, 0x34u);
  MEMORY[0x1CCA6C990](v104, -1, -1);
LABEL_91:

  v105 = v155;

  v106 = sub_1C7C7D194();
  v107 = sub_1C7C7D564();

  v144 = v107;
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v147 = v142;
    *v108 = 136315650;
    *(v108 + 4) = sub_1C7BE42F8(0xD00000000000001ELL, 0x80000001C7C9F3F0, &v147);
    *(v108 + 12) = 2080;
    if (v154)
    {

      v109 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v146 = MEMORY[0x1E69E7CC0];
      sub_1C7C2599C(0, v138, 0);
      v109 = v146;
      v110 = (v145 + 48);
      do
      {
        v111 = *(v110 - 1);
        v112 = *v110;
        v148 = *(v110 - 2);
        v149 = v111;
        v150 = v112;
        sub_1C7BDF708(v148, v111, v112);
        v113 = sub_1C7C7D324();
        v116 = *(v146 + 16);
        v115 = *(v146 + 24);
        if (v116 >= v115 >> 1)
        {
          v135 = v114;
          v137 = v113;
          sub_1C7C2599C((v115 > 1), v116 + 1, 1);
          v114 = v135;
          v113 = v137;
        }

        v110 += 24;
        *(v146 + 16) = v116 + 1;
        v117 = v146 + 16 * v116;
        *(v117 + 32) = v113;
        *(v117 + 40) = v114;
        --v138;
      }

      while (v138);
    }

    v118 = MEMORY[0x1CCA6B440](v109, MEMORY[0x1E69E6158]);
    v120 = v119;

    v121 = sub_1C7BE42F8(v118, v120, &v147);

    *(v108 + 14) = v121;
    *(v108 + 22) = 2080;
    LOBYTE(v148) = v105;
    CanFit = SESnapshot.CanFitResult.FailureReason.debugDescription.getter();
    v124 = sub_1C7BE42F8(CanFit, v123, &v147);

    *(v108 + 24) = v124;
    _os_log_impl(&dword_1C7B9A000, v106, v144, "%s %s => %s", v108, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v142, -1, -1);
    MEMORY[0x1CCA6C990](v108, -1, -1);
  }

  else
  {
  }

  if (v105)
  {
    swift_beginAccess();
    v125 = v155;
  }

  else
  {
    v125 = 0;
  }

  *a2 = v125;
  a2[1] = v105 == 0;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.addToSnapshot(credentials:)(Swift::OpaquePointer credentials)
{
  v3 = v1;
  v4 = *(credentials._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v50[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25C0C(0, v4, 0);
    v5 = v50[0];
    v7 = credentials._rawValue + 48;
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = v8;
      v11 = *(v7 - 1);
      v12 = *v7;
      if (v9 == 3)
      {
        v10 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = 3;
        if (v8 <= 0x19)
        {
          v11 = 0;
          v12 = 0;
          v10 = qword_1C7C93DA8[v8];
        }
      }

      sub_1C7BDF708(v8, *(v7 - 1), v9);
      v50[0] = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C7C25C0C((v13 > 1), v14 + 1, 1);
        v5 = v50[0];
      }

      v7 += 24;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 24 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
      --v4;
    }

    while (v4);
    v2 = v47;
    v3 = v48;
  }

  SESnapshot.canFitWithReason(credentials:)(v5, v50);
  if (v2)
  {

    return v16 & 1;
  }

  if ((v50[0] & 0x100) == 0)
  {

    v16 = 0;
    return v16 & 1;
  }

  v17 = *(v5 + 16);
  if (v17)
  {
    v49 = v3;
    v50[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v17, 0);
    v18 = v50[0];
    v19 = (v5 + 48);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_1C7BDF708(v20, v21, *v19);
      v50[0] = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C7C25BEC((v23 > 1), v24 + 1, 1);
        v18 = v50[0];
      }

      v19 += 24;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 32 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      *(v25 + 48) = v22;
      *(v25 + 56) = 1;
      --v17;
    }

    while (v17);
    v3 = v49;
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v26 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v26 = sub_1C7C7D914();
LABEL_22:
  v50[0] = v26;

  sub_1C7C322BC(v27, 1, v50);

  v28 = v50[0];
  v29 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&v3[v29];
  *&v3[v29] = 0x8000000000000000;
  sub_1C7BFC468(v28, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v51);

  *&v3[v29] = v51;
  swift_endAccess();
  v31 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&v3[v31];
  *&v3[v31] = 0x8000000000000000;
  sub_1C7BFC468(v28, sub_1C7C4F7A8, 0, v32, &v51);

  *&v3[v31] = v51;
  swift_endAccess();

  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v33 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v33, qword_1EC288338);

  v34 = v3;
  v35 = sub_1C7C7D194();
  v36 = sub_1C7C7D564();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v37 = 136315394;
    v39 = MEMORY[0x1CCA6B440](v5, &type metadata for CredentialType);
    v41 = v40;

    v42 = sub_1C7BE42F8(v39, v41, v50);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_1C7C7D0A4();
    v45 = sub_1C7BE42F8(v43, v44, v50);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_1C7B9A000, v35, v36, "Added %s to snapshot, UUID: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v38, -1, -1);
    MEMORY[0x1CCA6C990](v37, -1, -1);
  }

  else
  {
  }

  v16 = 1;
  return v16 & 1;
}

void SESnapshot.removeFromSnapshot(credential:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v68[0] = *a1;
  v2 = v68[0];
  v68[1] = v3;
  v69 = v4;
  CredentialType.init(fromLegacy:)(v68, &v65);
  v6 = v65;
  v5 = v66;
  v7 = v67;
  v8 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v70 = v1;
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  sub_1C7BDF708(v2, v3, v4);
  if (!v10 || (v11 = sub_1C7C70278(v6, v5, v7), (v12 & 1) == 0))
  {
    v13 = v6;
    v14 = v5;
    LOBYTE(v15) = v7;
    swift_endAccess();
    goto LABEL_9;
  }

  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(*(v9 + 56) + 8 * v11);
  swift_endAccess();
  if (v16 <= 0)
  {
LABEL_9:
    sub_1C7BEA9D8(v13, v14, v15);
    sub_1C7BEADA0();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 5;
    swift_willThrow();
    return;
  }

  v17 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  v18 = v70;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68[0] = *(v18 + v17);
  v20 = v68[0];
  *(v18 + v17) = 0x8000000000000000;
  v21 = v13;
  v22 = v14;
  v23 = sub_1C7C70278(v13, v14, v15);
  v25 = v20[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v24;
  if (v20[3] >= v28)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = v23;
      sub_1C7C71E84();
      v23 = v63;
      v20 = v68[0];
    }
  }

  else
  {
    sub_1C7C704D4(v28, isUniquelyReferenced_nonNull_native);
    v20 = v68[0];
    v23 = sub_1C7C70278(v13, v22, v15);
    if ((v29 & 1) != (v30 & 1))
    {
      goto LABEL_19;
    }
  }

  isUniquelyReferenced_nonNull_native = v70;
  *(v70 + v17) = v20;
  if ((v29 & 1) == 0)
  {
    v20[(v23 >> 6) + 8] |= 1 << v23;
    v32 = v20[6] + 24 * v23;
    *v32 = v21;
    *(v32 + 8) = v22;
    *(v32 + 16) = v15;
    *(v20[7] + 8 * v23) = 0;
    v33 = v20[2];
    v27 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v27)
    {
      __break(1u);
LABEL_35:
      v64 = v23;
      sub_1C7C71E84();
      v23 = v64;
      v20 = v68[0];
      *(isUniquelyReferenced_nonNull_native + v8) = v68[0];
      if (v29)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v35 = v23;
    v20[2] = v34;
    sub_1C7BDF708(v21, v22, v15);
    v23 = v35;
  }

  v36 = v20[7];
  v37 = *(v36 + 8 * v23);
  v27 = __OFSUB__(v37, 1);
  v38 = v37 - 1;
  if (v27)
  {
    goto LABEL_30;
  }

  *(v36 + 8 * v23) = v38;
  swift_endAccess();
  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v68[0] = *(isUniquelyReferenced_nonNull_native + v8);
  v20 = v68[0];
  *(isUniquelyReferenced_nonNull_native + v8) = 0x8000000000000000;
  v23 = sub_1C7C70278(v21, v22, v15);
  v40 = v20[2];
  v41 = (v39 & 1) == 0;
  v27 = __OFADD__(v40, v41);
  v42 = v40 + v41;
  if (v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = v39;
  if (v20[3] >= v42)
  {
    goto LABEL_20;
  }

  sub_1C7C704D4(v42, v13);
  v20 = v68[0];
  v23 = sub_1C7C70278(v21, v22, v15);
  if ((v29 & 1) == (v43 & 1))
  {
    goto LABEL_21;
  }

LABEL_19:
  v23 = sub_1C7C7DAF4();
  __break(1u);
LABEL_20:
  if ((v13 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  *(isUniquelyReferenced_nonNull_native + v8) = v20;
  if (v29)
  {
    goto LABEL_24;
  }

LABEL_22:
  v20[(v23 >> 6) + 8] |= 1 << v23;
  v44 = v20[6] + 24 * v23;
  *v44 = v21;
  *(v44 + 8) = v22;
  *(v44 + 16) = v15;
  *(v20[7] + 8 * v23) = 0;
  v45 = v20[2];
  v27 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (v27)
  {
    __break(1u);
    return;
  }

  v47 = v23;
  v20[2] = v46;
  sub_1C7BDF708(v21, v22, v15);
  v23 = v47;
LABEL_24:
  v48 = v20[7];
  v49 = *(v48 + 8 * v23);
  v27 = __OFSUB__(v49, 1);
  v50 = v49 - 1;
  if (!v27)
  {
    *(v48 + 8 * v23) = v50;
    swift_endAccess();
    if (qword_1EC2621E8 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_26:
  v51 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v51, qword_1EC288338);
  sub_1C7BDF708(v21, v22, v15);
  v52 = isUniquelyReferenced_nonNull_native;
  v53 = sub_1C7C7D194();
  v54 = sub_1C7C7D564();
  sub_1C7BEA9D8(v21, v22, v15);

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68[0] = v56;
    *v55 = 136315394;
    v65 = v21;
    v66 = v22;
    v67 = v15;
    v57 = sub_1C7C7D324();
    v59 = sub_1C7BE42F8(v57, v58, v68);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = sub_1C7C7D0A4();
    v62 = sub_1C7BE42F8(v60, v61, v68);

    *(v55 + 14) = v62;
    _os_log_impl(&dword_1C7B9A000, v53, v54, "Removed %s from snapshot, UUID: %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v56, -1, -1);
    MEMORY[0x1CCA6C990](v55, -1, -1);
  }

  else
  {

    sub_1C7BEA9D8(v21, v22, v15);
  }
}

Swift::Void __swiftcall SESnapshot.resetSnapshot()()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v47 = v3;
  v4 = *(v0 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v51 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  v9 = (v6 + 63) >> 6;
  v49 = v4;

  v10 = 0;
  v11 = 0;
  v48 = v5;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(v49 + 48) + 24 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v50 = *(*(v49 + 56) + 8 * v13);
      v1 = v51;
      swift_beginAccess();
      sub_1C7BDF708(v15, v16, v17);
      sub_1C7C2D47C(v10, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v2;
      v2 = isUniquelyReferenced_nonNull_native;
      v52 = *(v19 + v51);
      v20 = v52;
      v21 = v19;
      *(v19 + v51) = 0x8000000000000000;
      v22 = sub_1C7C70278(v15, v16, v17);
      v24 = v20[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        break;
      }

      v1 = v23;
      if (v20[3] >= v27)
      {
        if ((v2 & 1) == 0)
        {
          v35 = v22;
          sub_1C7C71E84();
          v22 = v35;
          v20 = v52;
        }
      }

      else
      {
        sub_1C7C704D4(v27, v2);
        v20 = v52;
        v22 = sub_1C7C70278(v15, v16, v17);
        if ((v1 & 1) != (v28 & 1))
        {
          sub_1C7C7DAF4();
          __break(1u);
          return;
        }
      }

      v2 = v21;
      *(v21 + v51) = v20;
      if ((v1 & 1) == 0)
      {
        v20[(v22 >> 6) + 8] |= 1 << v22;
        v29 = v20[6] + 24 * v22;
        *v29 = v15;
        *(v29 + 8) = v16;
        *(v29 + 16) = v17;
        *(v20[7] + 8 * v22) = 0;
        v30 = v20[2];
        v26 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v26)
        {
          goto LABEL_27;
        }

        v20[2] = v31;
        v1 = v22;
        sub_1C7BDF708(v15, v16, v17);
        v22 = v1;
      }

      v32 = v20[7];
      v33 = *(v32 + 8 * v22);
      v26 = __OFSUB__(v33, v50);
      v34 = v33 - v50;
      if (v26)
      {
        goto LABEL_26;
      }

      v8 &= v8 - 1;
      *(v32 + 8 * v22) = v34;
      swift_endAccess();
      sub_1C7BEA9D8(v15, v16, v17);
      v10 = sub_1C7C1A4CC;
      v11 = v12;
      v5 = v48;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v1 = v10;

    swift_beginAccess();

    v37 = sub_1C7C4F138(v36);

    *(v2 + v51) = v37;

    *(v2 + v47) = MEMORY[0x1E69E7CC8];

    if (qword_1EC2621E8 != -1)
    {
      goto LABEL_28;
    }
  }

  v38 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v38, qword_1EC288338);
  v39 = v2;
  v40 = sub_1C7C7D194();
  v41 = sub_1C7C7D564();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v42 = 136315138;
    v44 = sub_1C7C7D0A4();
    v46 = sub_1C7BE42F8(v44, v45, &v52);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_1C7B9A000, v40, v41, "Removed all staged credentials from snapshot, UUID: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x1CCA6C990](v43, -1, -1);
    MEMORY[0x1CCA6C990](v42, -1, -1);
  }

  sub_1C7C2D47C(v1, 0);
}

Swift::tuple_used_Int_total_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.totalUsage(includeIndices:)(Swift::Bool includeIndices)
{
  v4 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(*(v5 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v6 <= 0)
  {
    v7 = *(v5 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v8 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v6 = *(v7 + v8);
  }

  v9 = v6 - 25600;
  if (__OFADD__(v6, -25600))
  {
    goto LABEL_22;
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v11 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v13 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v14 = *(v1 + v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v12;
  sub_1C7BFC468(v14, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v31);
  if (!v2)
  {

    v16 = v31;
    LOBYTE(v31) = 0;
    v17 = sub_1C7BFE8C4(v16, v1, &v31, 0, 1, 0, 1);
    if (includeIndices)
    {
      LOBYTE(v31) = 3;
      v18 = sub_1C7BFE8C4(v16, v1, &v31, 0, 1, 0, 1);
    }

    else
    {

      v18 = 0;
    }

    v19 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
    LOBYTE(v31) = 0;
    v20 = sub_1C7BFE8C4(v19, v1, &v31, 0, 1, 0, 1);

    if (includeIndices)
    {
      v21 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
      LOBYTE(v31) = 3;
      v22 = sub_1C7BFE8C4(v21, v1, &v31, 0, 1, 0, 1);
    }

    else
    {
      v22 = 0;
    }

    if ((v18 / 32 - 0x40000000000000) >> 55 != 511)
    {
      goto LABEL_23;
    }

    v23 = (v18 / 32) << 9;
    if ((v18 & 0x800000000000001FLL) >= 1)
    {
      v24 = __OFADD__(v23, 512);
      v23 += 512;
      if (v24)
      {
        goto LABEL_27;
      }
    }

    v25 = v17 + v23;
    if (__OFADD__(v17, v23))
    {
      goto LABEL_24;
    }

    v26 = v9 & ~(v9 >> 63);
    v24 = __OFADD__(v20, v26);
    v27 = v20 + v26;
    if (v24)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ((v22 / 32 - 0x40000000000000) >> 55 != 511)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v28 = (v22 / 32) << 9;
    if ((v22 & 0x800000000000001FLL) >= 1)
    {
      v24 = __OFADD__(v28, 512);
      v28 += 512;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v29 = v27 + v28;
    if (!__OFADD__(v27, v28))
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_29:

  __break(1u);
LABEL_30:
  result.total = v29;
  result.used = v25;
  return result;
}

Swift::tuple_used_Int_total_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.totalUsage()()
{
  v2 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(*(v3 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v4 <= 0)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v6 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v4 = *(v5 + v6);
  }

  v7 = *(v0 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v11 = *(v0 + v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v9;
  sub_1C7BFC468(v11, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v28);
  if (v1)
  {
    goto LABEL_23;
  }

  v13 = v28;
  LOBYTE(v28) = 0;
  v14 = sub_1C7BFE8C4(v13, v0, &v28, 0, 1, 0, 1);
  LOBYTE(v28) = 3;
  v15 = sub_1C7BFE8C4(v13, v0, &v28, 0, 1, 0, 1);

  v16 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v28) = 0;
  v17 = sub_1C7BFE8C4(v16, v0, &v28, 0, 1, 0, 1);

  v18 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v28) = 3;
  v19 = sub_1C7BFE8C4(v18, v0, &v28, 0, 1, 0, 1);

  v20 = v14 + 25600;
  if (__OFADD__(v14, 25600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v15 / 32 - 0x40000000000000) >> 55 != 511)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = (v15 / 32) << 9;
  if ((v15 & 0x800000000000001FLL) >= 1)
  {
    v22 = __OFADD__(v21, 512);
    v21 += 512;
    if (v22)
    {
      goto LABEL_21;
    }
  }

  v23 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_18;
  }

  v24 = v17 + v4;
  if (__OFADD__(v17, v4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v19 / 32 - 0x40000000000000) >> 55 == 511)
  {
    v25 = (v19 / 32) << 9;
    if ((v19 & 0x800000000000001FLL) >= 1)
    {
      v22 = __OFADD__(v25, 512);
      v25 += 512;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v26 = v24 + v25;
    if (!__OFADD__(v24, v25))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
LABEL_24:
  result.total = v26;
  result.used = v23;
  return result;
}
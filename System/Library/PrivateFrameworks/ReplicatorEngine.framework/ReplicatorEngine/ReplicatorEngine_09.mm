uint64_t sub_1DEEE41E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1DEEE4290()
{
  result = qword_1ECDE2CF0;
  if (!qword_1ECDE2CF0)
  {
    sub_1DEF8D698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CF0);
  }

  return result;
}

uint64_t sub_1DEEE42FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEE4360(uint64_t a1)
{
  v2 = type metadata accessor for PairingRelationship(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DEEE43BC(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void sub_1DEEE43C8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DEEE4424()
{
  v3 = *v0;

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  return v3;
}

uint64_t sub_1DEEE44A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_beginAccess();
  sub_1DEE13C90(v5, a2);
  swift_endAccess();
  return sub_1DEE1425C();
}

uint64_t sub_1DEEE4594(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE1425C();
  }

  return result;
}

uint64_t sub_1DEEE45EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *(&v20 - v14) = *a1;
  sub_1DEE13B74(a2, &v20 + *(v10 + 56) - v14);
  sub_1DEE154B4(v15, v12);
  v16 = &v12[*(v10 + 56)];
  v17 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(v6 + 16))(v8, v16 + *(v17 + 24), v5);
  sub_1DEE152E4(v16);
  v18 = sub_1DEF8D2F8();
  (*(v6 + 8))(v8, v5);
  sub_1DEE15524(v15);
  return v18 & 1;
}

uint64_t sub_1DEEE47C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEE4834(uint64_t a1)
{
  result = sub_1DEF8D378();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DEEE48B8()
{
  v11 = sub_1DEF8DD08();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DEE3C630();
  v10[0] = "OverheldConnection";
  v10[1] = v6;
  sub_1DEF8D6C8();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DEE15340(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  v7 = sub_1DEF8DD38();
  v8 = MEMORY[0x1E69E7CC8];
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = 0;
  type metadata accessor for BugCapture();
  v0[5] = swift_allocObject();
  return v0;
}

uint64_t sub_1DEEE4B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PinnedIdentityManager.__allocating_init(firstLockStateProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PinnedIdentityManager.init(firstLockStateProvider:)(a1);
  return v2;
}

uint64_t PinnedIdentityManager.init(firstLockStateProvider:)(__int128 *a1)
{
  v16 = a1;
  v14 = sub_1DEF8DD08();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v13[1] = sub_1DEE3C630();
  v15 = "ctionDurationMonitor";
  sub_1DEF8D6C8();
  v18 = MEMORY[0x1E69E7CC0];
  v13[4] = sub_1DEE2BB40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v6 = *MEMORY[0x1E69E8098];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v13[2] = v7;
  v9 = v14;
  v8(v3, v6, v14);
  *(v17 + 64) = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v8(v3, v6, v9);
  v10 = sub_1DEF8DD38();
  v11 = v17;
  *(v17 + 72) = v10;
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x1E69A48A0]) init];
  sub_1DEE2F1AC(v16, v11 + 24);
  return v11;
}

void sub_1DEEE4F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_1DEEE5ABC;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEEE554C;
  v9[3] = &block_descriptor_20_0;
  v8 = _Block_copy(v9);

  [v6 fetchIdentityForPinningWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1DEEE5040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DEF8D698();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1ECDE2E58;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF6028);
  v18 = v16;
  v19 = sub_1DEF8D4D8();
  v20 = sub_1DEF8DCB8();
  if (!os_log_type_enabled(v19, v20))
  {

    v19 = v18;
LABEL_16:

    v30 = swift_allocObject();
    v30[2] = a4;
    v30[3] = a5;
    v30[4] = v18;
    aBlock[4] = sub_1DEEE5AC8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_26_1;
    v31 = _Block_copy(aBlock);
    v32 = v18;

    sub_1DEF8D6B8();
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v14, v11, v31);
    _Block_release(v31);
    (*(v38 + 8))(v11, v9);
    (*(v36 + 8))(v14, v37);
  }

  v33[1] = a3;
  v34 = a4;
  v35 = a5;
  v21 = swift_slowAlloc();
  *v21 = 134349056;
  v22 = [v18 identityBlob];
  v23 = sub_1DEF8D278();
  v25 = v24;

  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      sub_1DEE1BFA0(v23, v25);
      v27 = 0;
      goto LABEL_15;
    }

    v28 = *(v23 + 16);
    v33[0] = *(v23 + 24);
    sub_1DEE1BFA0(v23, v25);
    v27 = v33[0] - v28;
    if (!__OFSUB__(v33[0], v28))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v26)
  {
    sub_1DEE1BFA0(v23, v25);
    v27 = BYTE6(v25);
LABEL_15:
    a4 = v34;
    a5 = v35;
    *(v21 + 4) = v27;

    _os_log_impl(&dword_1DEE0F000, v19, v20, "Fetched IDS identity blob of size: %{public}ld", v21, 0xCu);
    MEMORY[0x1E12CCD70](v21, -1, -1);
    goto LABEL_16;
  }

  result = sub_1DEE1BFA0(v23, v25);
  LODWORD(v27) = HIDWORD(v23) - v23;
  if (!__OFSUB__(HIDWORD(v23), v23))
  {
    v27 = v27;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEE54B4(void (*a1)(uint64_t, unint64_t), int a2, id a3)
{
  if (a3)
  {
    v4 = [a3 identityBlob];
    v5 = sub_1DEF8D278();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  a1(v5, v7);

  return sub_1DEE2416C(v5, v7);
}

void sub_1DEEE554C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void PinnedIdentityManager.setIdentityBlob(blob:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1DEF8D268();
  v6[4] = sub_1DEEE5698;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEEE5838;
  v6[3] = &block_descriptor_9;
  v5 = _Block_copy(v6);
  [v3 pinIdentityBlob:v4 withCompletion:v5];
  _Block_release(v5);
}

void sub_1DEEE5698(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DEF8D508();
    __swift_project_value_buffer(v3, qword_1ECDF6028);
    v4 = a1;
    oslog = sub_1DEF8D4D8();
    v5 = sub_1DEF8DC98();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1DEE0F000, oslog, v5, "Error while attempting to pin IDS identity blob: %{public}@", v6, 0xCu);
      sub_1DEEE2A84(v7);
      MEMORY[0x1E12CCD70](v7, -1, -1);
      MEMORY[0x1E12CCD70](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_1DEEE5838(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t PinnedIdentityManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t PinnedIdentityManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1DEEE592C(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v4 = sub_1DEF8D268();
  v6[4] = sub_1DEEE5698;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEEE5838;
  v6[3] = &block_descriptor_14_0;
  v5 = _Block_copy(v6);
  [v3 pinIdentityBlob:v4 withCompletion:v5];
  _Block_release(v5);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEE5AF0()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48D8, &qword_1DEF93728);
    sub_1DEE1B548(&qword_1ECDE2D20, &qword_1ECDE48D8, &qword_1DEF93728, MEMORY[0x1E695BF88]);
    v2 = sub_1DEF8D5B8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEEE5BCC()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48C8, &qword_1DEF93720);
    sub_1DEE1B548(&qword_1ECDE2D10, &unk_1ECDE48C8, &qword_1DEF93720, MEMORY[0x1E695BF88]);
    v2 = sub_1DEF8D5B8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEEE5CA8()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48B8, &qword_1DEF93718);
    sub_1DEE1B548(&unk_1ECDE2D50, &unk_1ECDE48B8, &qword_1DEF93718, MEMORY[0x1E695BF88]);
    v2 = sub_1DEF8D5B8();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1DEEE5D84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v2 + 32);
  sub_1DEE4650C(v3, v4, v5, v6);
}

uint64_t sub_1DEEE5DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48E0, &qword_1DEF93730);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ECDE3360 = result;
  return result;
}

id sub_1DEEE5E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = a2;
  v7 = sub_1DEF8DD08();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1DEE13224(v32, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    *a4 = v15;
    return v15;
  }

  else
  {
    v17 = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
    v27[0] = ".IDSServiceWrapper";
    v27[1] = v17;
    sub_1DEF8D6C8();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DEEE9F58(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v29 = a4;
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
    sub_1DEF8DE08();
    (*(v30 + 104))(v9, *MEMORY[0x1E69E8098], v31);
    v18 = sub_1DEF8DD38();
    v19 = objc_allocWithZone(type metadata accessor for IDSServiceWrapper());

    v20 = v18;
    v21 = v32;
    sub_1DEEE6170(v32, a3, v20);
    v23 = v22;

    v24 = v23;
    v25 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v25;
    sub_1DEF3F2DC(v24, v21, a3, isUniquelyReferenced_nonNull_native);

    *v25 = v33;
    *v29 = v24;
  }

  return result;
}

void sub_1DEEE6170(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher] = 0;
  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__messagePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48D8, &qword_1DEF93728);
  swift_allocObject();
  *&v3[v6] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher] = 0;
  v7 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__devicesDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48C8, &qword_1DEF93720);
  swift_allocObject();
  *&v3[v7] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher] = 0;
  v8 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__didUpdatePairedDevicePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48B8, &qword_1DEF93718);
  swift_allocObject();
  *&v3[v8] = sub_1DEF8D598();
  v9 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  v11 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken] = -1;
  v12 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v13 = sub_1DEF8D918();
  v14 = [v12 initWithService_];

  if (v14)
  {

    *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService] = v14;
    *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue] = a3;
    v22.receiver = v4;
    v22.super_class = type metadata accessor for IDSServiceWrapper();
    v15 = a3;
    v16 = objc_msgSendSuper2(&v22, sel_init);
    v17 = *&v16[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock];
    MEMORY[0x1EEE9AC00](v16);
    MEMORY[0x1EEE9AC00](v18);
    v20 = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1DEE15434(v21);
    os_unfair_lock_unlock(v17 + 4);

    [*&v20[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService] addDelegate:v20 queue:*&v20[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue]];
    sub_1DEEE6494();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DEEE6430(uint64_t a1)
{
  sub_1DEEE79C4(v9);
  v2 = v10;
  v3 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v4 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v5 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 8);
  v6 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 16);
  v7 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 24);
  v8 = v9[1];
  *v3 = v9[0];
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  sub_1DEE46550(v4, v5, v6, v7);
}

uint64_t sub_1DEEE6494()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3678] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3688] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3660] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3668] object:0];

  sub_1DEF8D948();
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_1DEEE9FBC;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DEF422C8;
  v12[3] = &block_descriptor_9;
  v8 = _Block_copy(v12);

  v9 = sub_1DEF8D998();

  v10 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (v0 + v10), v6, v8);
  swift_endAccess();
  _Block_release(v8);
}

id sub_1DEEE66E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSServiceWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DEEE6904@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v7 = a3;
  result = sub_1DEEE695C(a1, a2, &v7);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1DEEE695C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v87[5] = *MEMORY[0x1E69E9840];
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v14 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue);
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  v17 = *(v9 + 8);
  v16 = (v9 + 8);
  v17(v12, v8);
  if (v14)
  {
    v87[3] = type metadata accessor for Message(0);
    v87[4] = sub_1DEEE9F58(&unk_1ECDE48A0, type metadata accessor for Message, &protocol conformance descriptor for Message);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
    sub_1DEE1EAF4(a1, boxed_opaque_existential_1);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    v20 = sub_1DEE29274(v87);
    v32 = sub_1DEE1187C(v20);
    v34 = v33;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v87);
    *&v85 = 0x6567617373656DLL;
    *(&v85 + 1) = 0xE700000000000000;
    sub_1DEF8DEC8();
    v86 = MEMORY[0x1E6969080];
    *&v85 = v32;
    *(&v85 + 1) = v34;
    sub_1DEE117C0(&v85, v84);
    sub_1DEE1BFF4(v32, v34);
    v35 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83[1] = v35;
    sub_1DEF3F454(v84, v87, isUniquelyReferenced_nonNull_native);
    sub_1DEEBC62C(v87);
    if (!*(sub_1DEEE73BC(a2) + 2))
    {

      if (qword_1ECDE2E38 != -1)
      {
        swift_once();
      }

      v57 = sub_1DEF8D508();
      __swift_project_value_buffer(v57, qword_1ECDF5FC8);

      v58 = sub_1DEF8D4D8();
      v59 = sub_1DEF8DC98();

      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_28;
      }

      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v87[0] = v61;
      *v60 = 136446210;
      v62 = sub_1DEF8DBF8();
      v64 = sub_1DEE12A5C(v62, v63, v87);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1DEE0F000, v58, v59, "Unable to find matching IDS identifier for destinations: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1E12CCD70](v61, -1, -1);
      v65 = v60;
      goto LABEL_27;
    }

    v83[0] = v34;
    v37 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService);
    v38 = sub_1DEF8D828();

    v39 = sub_1DEF8DBE8();

    v40 = sub_1DEF8D828();
    v87[0] = 0;
    *&v85 = 0;
    LODWORD(v37) = [v37 sendMessage:v38 toDestinations:v39 priority:-100 * v13 + 300 options:v40 identifier:v87 error:&v85];

    v41 = v87[0];
    if (v37)
    {
      v42 = qword_1ECDE2E38;
      v43 = v85;
      if (v41)
      {
        v44 = v41;
        v45 = v83[0];
        if (v42 != -1)
        {
          swift_once();
        }

        v46 = sub_1DEF8D508();
        __swift_project_value_buffer(v46, qword_1ECDF5FC8);
        v47 = v44;

        v48 = sub_1DEF8D4D8();
        v49 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v87[0] = v52;
          *v50 = 138543618;
          *(v50 + 4) = v47;
          *v51 = v41;
          *(v50 + 12) = 2082;
          v53 = v47;
          v54 = sub_1DEF8DBF8();
          v56 = sub_1DEE12A5C(v54, v55, v87);

          *(v50 + 14) = v56;
          _os_log_impl(&dword_1DEE0F000, v48, v49, "Sent IDS message %{public}@ to %{public}s", v50, 0x16u);
          sub_1DEE171B4(v51, &unk_1ECDE4880, &qword_1DEF93420);
          MEMORY[0x1E12CCD70](v51, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1E12CCD70](v52, -1, -1);
          MEMORY[0x1E12CCD70](v50, -1, -1);
          sub_1DEE1BFA0(v32, v45);
        }

        else
        {
          sub_1DEE1BFA0(v32, v45);
        }

        return 1;
      }

      v34 = v83[0];
      if (v42 != -1)
      {
        swift_once();
      }

      v80 = sub_1DEF8D508();
      __swift_project_value_buffer(v80, qword_1ECDF5FC8);
      v58 = sub_1DEF8D4D8();
      v81 = sub_1DEF8DC98();
      if (!os_log_type_enabled(v58, v81))
      {
LABEL_28:

        sub_1DEEE9F04();
        v16 = swift_allocError();
        sub_1DEE1BFA0(v32, v34);
        return v16;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1DEE0F000, v58, v81, "Failed to retrieve identifier for message", v82, 2u);
      v65 = v82;
LABEL_27:
      MEMORY[0x1E12CCD70](v65, -1, -1);
      goto LABEL_28;
    }

    v66 = v85;
    v67 = v41;
    v16 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v68 = sub_1DEF8D508();
    __swift_project_value_buffer(v68, qword_1ECDF5FC8);
    v69 = v16;
    v70 = sub_1DEF8D4D8();
    v71 = sub_1DEF8DC98();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v83[0];
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v87[0] = v75;
      *v74 = 136446210;
      *&v85 = v16;
      v76 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v77 = sub_1DEF8D988();
      v79 = sub_1DEE12A5C(v77, v78, v87);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_1DEE0F000, v70, v71, "Failed to send message: %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v74, -1, -1);
    }

    sub_1DEE1BFA0(v32, v73);
  }

  else
  {
    __break(1u);
    swift_once();
    v21 = sub_1DEF8D508();
    __swift_project_value_buffer(v21, qword_1ECDF5FC8);
    v22 = v16;
    v23 = sub_1DEF8D4D8();
    v24 = sub_1DEF8DC98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87[0] = v26;
      *v25 = 136446210;
      *&v85 = v16;
      v27 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v28 = sub_1DEF8D988();
      v30 = sub_1DEE12A5C(v28, v29, v87);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1DEE0F000, v23, v24, "Failed to encode message: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12CCD70](v26, -1, -1);
      MEMORY[0x1E12CCD70](v25, -1, -1);
    }
  }

  return v16;
}

id sub_1DEEE73BC(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService) devices];
  if (v3)
  {
    v4 = v3;
    sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
    v5 = sub_1DEF8DAD8();

    if (v5 >> 62)
    {
LABEL_37:
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v6 = sub_1DEF8DE68();
      v38 = v5;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v5;
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v40 = v5 & 0xC000000000000001;
        v5 += 32;
        v8 = a1 + 56;
        v39 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v40)
          {
            v9 = MEMORY[0x1E12CB6E0](v7, v38);
          }

          else
          {
            if (v7 >= *(v41 + 16))
            {
              goto LABEL_36;
            }

            v9 = *(v5 + 8 * v7);
          }

          v10 = v9;
          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          result = [v9 uniqueIDOverride];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          v14 = sub_1DEF8D948();
          v16 = v15;

          if (*(a1 + 16) && (sub_1DEF8E7A8(), sub_1DEF8D9B8(), v17 = sub_1DEF8E7F8(), v18 = -1 << *(a1 + 32), v19 = v17 & ~v18, ((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
          {
            v20 = ~v18;
            while (1)
            {
              v21 = (*(a1 + 48) + 16 * v19);
              v22 = *v21 == v14 && v21[1] == v16;
              if (v22 || (sub_1DEF8E4E8() & 1) != 0)
              {
                break;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v23 = IDSCopyIDForDevice();
            if (!v23)
            {
              goto LABEL_21;
            }

            v24 = v23;
            v25 = sub_1DEF8D948();
            v27 = v26;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1DEF3805C(0, *(v39 + 2) + 1, 1, v39);
            }

            v29 = *(v39 + 2);
            v28 = *(v39 + 3);
            if (v29 >= v28 >> 1)
            {
              v39 = sub_1DEF3805C((v28 > 1), v29 + 1, 1, v39);
            }

            *(v39 + 2) = v29 + 1;
            v30 = &v39[16 * v29];
            *(v30 + 4) = v25;
            *(v30 + 5) = v27;
            if (v7 == v6)
            {
              goto LABEL_39;
            }
          }

          else
          {
LABEL_19:

LABEL_21:

            if (v7 == v6)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v35 = sub_1DEEA3AD8(v39);

    sub_1DEEE7790(v35);
    v37 = v36;

    return v37;
  }

  else
  {
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v31 = sub_1DEF8D508();
    __swift_project_value_buffer(v31, qword_1ECDF5FC8);
    v32 = sub_1DEF8D4D8();
    v33 = sub_1DEF8DC98();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DEE0F000, v32, v33, "Unable to find any IDS devices", v34, 2u);
      MEMORY[0x1E12CCD70](v34, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

void sub_1DEEE7790(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4898, &unk_1DEF93708);
    v2 = sub_1DEF8DF08();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    v12 = sub_1DEF8DEA8();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    v10 = *(v2 + 48) + 40 * v9;
    *(v10 + 32) = v22;
    *v10 = v20;
    *(v10 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DEEE79C4(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService) devices];
  if (v3)
  {
    v4 = v3;
    v44 = a1;
    v5 = sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
    v6 = sub_1DEF8DAD8();

    if (qword_1ECDE2E38 != -1)
    {
LABEL_32:
      swift_once();
    }

    v7 = sub_1DEF8D508();
    __swift_project_value_buffer(v7, qword_1ECDF5FC8);

    v8 = sub_1DEF8D4D8();
    v9 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45[0] = v11;
      *v10 = 136446210;
      v12 = MEMORY[0x1E12CB290](v6, v5);
      v14 = sub_1DEE12A5C(v12, v13, v45);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DEE0F000, v8, v9, "Finding active paired device in devices: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12CCD70](v11, -1, -1);
      MEMORY[0x1E12CCD70](v10, -1, -1);
    }

    if (v6 >> 62)
    {
      v5 = sub_1DEF8DE68();
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_7:
        v15 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1E12CB6E0](v15, v6);
          }

          else
          {
            if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v16 = *(v6 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ([v16 isLocallyPaired] && (objc_msgSend(v17, sel_isActive) & 1) != 0)
          {
            break;
          }

          ++v15;
          if (v18 == v5)
          {
            goto LABEL_34;
          }
        }

        v23 = [v17 uniqueIDOverride];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1DEF8D948();
          v27 = v26;

          v28 = [v17 name];
          if (v28)
          {
            v29 = v28;

            v30 = sub_1DEF8D948();
            v32 = v31;

            v33 = [v17 deviceType];
            if (v33 >= 7)
            {
              v34 = 0;
            }

            else
            {
              v34 = 0x3040101010200uLL >> (8 * v33);
            }

            v35 = sub_1DEF8D4D8();
            v36 = sub_1DEF8DCB8();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v47 = v42;
              *v37 = 136446210;
              v45[0] = v25;
              v45[1] = v27;
              v45[2] = v30;
              v45[3] = v32;
              v46 = v34;

              v38 = PairedDevice.description.getter();
              v43 = v30;
              v40 = v39;

              v41 = sub_1DEE12A5C(v38, v40, &v47);
              v30 = v43;

              *(v37 + 4) = v41;
              _os_log_impl(&dword_1DEE0F000, v35, v36, "IDS PairedDevice is %{public}s", v37, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v42);
              MEMORY[0x1E12CCD70](v42, -1, -1);
              MEMORY[0x1E12CCD70](v37, -1, -1);
            }

            *v44 = v25;
            *(v44 + 8) = v27;
            *(v44 + 16) = v30;
            *(v44 + 24) = v32;
            *(v44 + 32) = v34;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

LABEL_34:

    *(v44 + 32) = 0;
    *v44 = 0u;
    *(v44 + 16) = 0u;
    return;
  }

  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF5FC8);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DC98();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Unable to find any IDS devices; cannot find paired device", v22, 2u);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

void sub_1DEEE82F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);

  v3 = v5;
  if (v4 == 1)
  {
    sub_1DEF8D588();
    v3 = v5;
  }

  sub_1DEE46550(v3, v6, v7, v8);
}

void sub_1DEEE8424(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 8);
  v4 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 16);
  v5 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 24);
  v52 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v62 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 32);
  sub_1DEE4650C(v2, v3, v4, v5);
  sub_1DEEE79C4(&v64);
  v7 = v64;
  v6 = v65;
  v8 = v66;
  v9 = v67;
  v61 = v68;
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF5FC8);
  sub_1DEE4650C(v2, v3, v4, v5);
  v11 = v6;
  v12 = v8;
  v53 = v8;
  v13 = v6;
  v14 = v7;
  sub_1DEE4650C(v7, v11, v12, v9);
  v15 = sub_1DEF8D4D8();
  v16 = sub_1DEF8DCB8();
  v17 = v9;
  v18 = v16;
  v57 = v3;
  v58 = v2;
  v19 = v3;
  v20 = v5;
  v21 = v5;
  v22 = v17;
  sub_1DEE46550(v2, v19, v4, v21);
  sub_1DEE46550(v7, v13, v53, v22);
  v51 = v18;
  log = v15;
  v23 = os_log_type_enabled(v15, v18);
  v24 = v4;
  v59 = v22;
  v60 = v20;
  v55 = v13;
  if (v23)
  {
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v69 = v50;
    *v25 = 136446466;
    v64 = v2;
    v65 = v57;
    v66 = v4;
    v67 = v20;
    v68 = v62;
    sub_1DEE4650C(v2, v57, v4, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB0, &unk_1DEF90930);
    v26 = sub_1DEF8D988();
    v28 = sub_1DEE12A5C(v26, v27, &v69);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    v64 = v14;
    v65 = v13;
    v66 = v53;
    v67 = v22;
    v68 = v61;
    sub_1DEE4650C(v14, v13, v53, v22);
    v29 = sub_1DEF8D988();
    v31 = sub_1DEE12A5C(v29, v30, &v69);

    *(v25 + 14) = v31;
    v32 = v53;
    v33 = v14;
    v24 = v4;
    _os_log_impl(&dword_1DEE0F000, log, v51, "Updating paired device from %{public}s to %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v50, -1, -1);
    v34 = v61;
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  else
  {

    v32 = v53;
    v33 = v14;
    v34 = v61;
  }

  if (!v57)
  {
    v35 = v55;
    if (!v55)
    {
      v36 = v58;
      v40 = v60;
      LOBYTE(v34) = v62;
      sub_1DEE4650C(v58, 0, v24, v60);
      sub_1DEE46550(v58, 0, v24, v60);
      v38 = 0;
      v35 = 0;
      v39 = v24;
      goto LABEL_23;
    }

    v41 = v24;
    v42 = v59;
    sub_1DEE4650C(v33, v55, v32, v59);
    v43 = v60;
    v44 = v33;
    v45 = v32;
    v46 = v58;
    goto LABEL_19;
  }

  v35 = v55;
  if (!v55)
  {
    v41 = v24;
    v42 = v59;
    sub_1DEE4650C(v33, 0, v32, v59);
    v44 = v33;
    v45 = v32;
    v46 = v58;
    v43 = v60;
    sub_1DEE4650C(v58, v57, v41, v60);

LABEL_19:
    sub_1DEE46550(v46, v57, v41, v43);
    sub_1DEE46550(v44, v35, v45, v42);
    v32 = v45;
    v33 = v44;
    v40 = v42;
LABEL_22:
    v47 = *v52;
    v48 = *(v52 + 8);
    v49 = *(v52 + 24);
    v63 = *(v52 + 16);
    *v52 = v33;
    *(v52 + 8) = v35;
    *(v52 + 16) = v32;
    *(v52 + 24) = v40;
    v36 = v33;
    v39 = v32;
    *(v52 + 32) = v34;
    sub_1DEE4650C(v36, v35, v32, v40);
    sub_1DEE46550(v47, v48, v63, v49);
    v38 = 1;
    goto LABEL_23;
  }

  v36 = v58;
  if ((v58 != v33 || v57 != v55) && (sub_1DEF8E4E8() & 1) == 0 || (v24 != v32 || v60 != v59) && (sub_1DEF8E4E8() & 1) == 0)
  {
    sub_1DEE4650C(v58, v57, v24, v60);
    sub_1DEE4650C(v33, v55, v32, v59);
    sub_1DEE4650C(v58, v57, v24, v60);
    v37 = v60;
    sub_1DEE46550(v33, v55, v32, v59);

    sub_1DEE46550(v58, v57, v24, v60);
    goto LABEL_21;
  }

  sub_1DEE4650C(v58, v57, v24, v60);
  sub_1DEE4650C(v33, v55, v32, v59);
  sub_1DEE4650C(v58, v57, v24, v60);
  v37 = v60;
  sub_1DEE46550(v33, v55, v32, v59);

  sub_1DEE46550(v58, v57, v24, v60);
  if (v62 != v34)
  {
LABEL_21:
    sub_1DEE46550(v58, v57, v24, v37);
    v40 = v59;
    goto LABEL_22;
  }

  LOBYTE(v34) = v62;
  sub_1DEE46550(v33, v55, v32, v59);
  v38 = 0;
  v35 = v57;
  v39 = v24;
  v40 = v60;
LABEL_23:
  *a2 = v38;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35;
  *(a2 + 24) = v39;
  *(a2 + 32) = v40;
  *(a2 + 40) = v34;
}

void sub_1DEEE8B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF5FC8);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Paired watch updated, will check for pairing change", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    sub_1DEEE82F8();
  }
}

void sub_1DEEE8C28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v53 - v15;
  v16 = type metadata accessor for Message(0);
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v18 = sub_1DEF8D508();
  v19 = __swift_project_value_buffer(v18, qword_1ECDF5FC8);
  v20 = a3;
  v63 = v19;
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DC78();

  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_12;
  }

  v54 = v16;
  v55 = v4;
  v56 = a1;
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v64[0] = v24;
  *v23 = 136446210;
  if (!a3)
  {
    goto LABEL_10;
  }

  v25 = [v20 originalGUID];
  if (!v25)
  {
    a3 = 0;
LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

  v26 = v25;
  a3 = sub_1DEF8D948();
  v28 = v27;

LABEL_11:
  v65 = a3;
  v66 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v29 = sub_1DEF8D988();
  v31 = sub_1DEE12A5C(v29, v30, v64);

  *(v23 + 4) = v31;
  _os_log_impl(&dword_1DEE0F000, v21, v22, "IDS incomingResourceAt:%{public}s", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v24);
  MEMORY[0x1E12CCD70](v24, -1, -1);
  MEMORY[0x1E12CCD70](v23, -1, -1);

  a1 = v56;
  v16 = v54;
LABEL_12:
  if (a2)
  {
    *&v69[0] = 0x6567617373656DLL;
    *(&v69[0] + 1) = 0xE700000000000000;
    sub_1DEF8DEC8();
    if (*(a2 + 16) && (v32 = sub_1DEEAF640(&v65), (v33 & 1) != 0))
    {
      sub_1DEE12F7C(*(a2 + 56) + 32 * v32, v64);
      sub_1DEEBC62C(&v65);
      if (swift_dynamicCast())
      {
        v34 = v69[0];
        type metadata accessor for OPACKCoder();
        sub_1DEE115C8(v69);
        sub_1DEE12F7C(v69, v67);
        v47 = MEMORY[0x1E69E7CC0];
        v48 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
        v65 = v47;
        v66 = v48;
        v67[4] = 0;
        v68 = 1;
        v64[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
        v64[4] = sub_1DEE1DC98();
        v64[0] = swift_allocObject();
        sub_1DEE1DCEC(&v65, v64[0] + 16);
        v49 = v61;
        Message.init(from:)(v64, v61);
        sub_1DEE1EBB4(&v65);
        __swift_destroy_boxed_opaque_existential_1(v69);
        (*(v60 + 56))(v49, 0, 1, v16);
        v50 = v57;
        sub_1DEEE9E30(v49, v57);
        v51 = *(v58 + 48);
        v52 = v59;
        sub_1DEE1EAF4(v50, v59);
        sub_1DEE2C3D8(a1, v52 + v51);
        sub_1DEF8D588();
        sub_1DEE1BFA0(v34, *(&v34 + 1));
        sub_1DEE171B4(v52, &qword_1ECDE3AD0, &qword_1DEF90988);
        sub_1DEE1EB58(v50);
        return;
      }
    }

    else
    {
      sub_1DEEBC62C(&v65);
    }

    sub_1DEE2C3D8(a1, v12);

    v35 = sub_1DEF8D4D8();
    v36 = sub_1DEF8DC98();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v65 = v38;
      *v37 = 136315394;
      sub_1DEE2C3D8(v12, v62);
      v39 = sub_1DEF8D988();
      v41 = v40;
      sub_1DEE171B4(v12, &qword_1ECDE4890, &qword_1DEF90990);
      v42 = sub_1DEE12A5C(v39, v41, &v65);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;

      v43 = sub_1DEF8D868();
      v45 = v44;

      v46 = sub_1DEE12A5C(v43, v45, &v65);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1DEE0F000, v35, v36, "Message has no payload, url:%s, metadata.keys:%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v38, -1, -1);
      MEMORY[0x1E12CCD70](v37, -1, -1);
    }

    else
    {

      sub_1DEE171B4(v12, &qword_1ECDE4890, &qword_1DEF90990);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DEEE9470(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for Message(0);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v17 = sub_1DEF8D508();
  v18 = __swift_project_value_buffer(v17, qword_1ECDF5FC8);
  v19 = a2;
  v56 = v18;
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DC78();

  if (os_log_type_enabled(v20, v21))
  {
    v51 = v14;
    v52 = v11;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v57[0] = v23;
    *v22 = 136446210;
    if (a2)
    {
      v50 = v3;
      v24 = v6;
      v25 = v8;
      v26 = [v19 originalGUID];
      if (v26)
      {
        v27 = v26;
        a2 = sub_1DEF8D948();
        v29 = v28;
      }

      else
      {
        a2 = 0;
        v29 = 0;
      }

      v8 = v25;
      v6 = v24;
    }

    else
    {
      v29 = 0;
    }

    v58 = a2;
    v59 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    v30 = sub_1DEF8D988();
    v32 = sub_1DEE12A5C(v30, v31, v57);

    *(v22 + 4) = v32;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "IDS incomingMessage:%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);

    v11 = v52;
    v14 = v51;
  }

  else
  {
  }

  if (a1)
  {
    *&v62[0] = 0x6567617373656DLL;
    *(&v62[0] + 1) = 0xE700000000000000;
    sub_1DEF8DEC8();
    if (*(a1 + 16) && (v33 = sub_1DEEAF640(&v58), (v34 & 1) != 0))
    {
      sub_1DEE12F7C(*(a1 + 56) + 32 * v33, v57);
      sub_1DEEBC62C(&v58);
      if (swift_dynamicCast())
      {
        v35 = v62[0];
        type metadata accessor for OPACKCoder();
        sub_1DEE115C8(v62);
        sub_1DEE12F7C(v62, v60);
        v44 = v14;
        v45 = MEMORY[0x1E69E7CC0];
        v46 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
        v58 = v45;
        v59 = v46;
        v60[4] = 0;
        v61 = 1;
        v57[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
        v57[4] = sub_1DEE1DC98();
        v57[0] = swift_allocObject();
        sub_1DEE1DCEC(&v58, v57[0] + 16);
        Message.init(from:)(v57, v44);
        sub_1DEE1EBB4(&v58);
        __swift_destroy_boxed_opaque_existential_1(v62);
        (*(v54 + 56))(v44, 0, 1, v55);
        v47 = v53;
        sub_1DEEE9E30(v44, v53);
        v48 = sub_1DEF8D1E8();
        (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
        v49 = *(v6 + 48);
        sub_1DEE1EAF4(v47, v8);
        sub_1DEEE9E94(v11, &v8[v49]);
        sub_1DEF8D588();
        sub_1DEE1BFA0(v35, *(&v35 + 1));
        sub_1DEE171B4(v8, &qword_1ECDE3AD0, &qword_1DEF90988);
        sub_1DEE1EB58(v47);
        return;
      }
    }

    else
    {
      sub_1DEEBC62C(&v58);
    }

    v36 = sub_1DEF8D4D8();
    v37 = sub_1DEF8DC98();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v38 = 136315138;

      v40 = sub_1DEF8D868();
      v42 = v41;

      v43 = sub_1DEE12A5C(v40, v42, &v58);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1DEE0F000, v36, v37, "Message has no payload, message.keys:%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E12CCD70](v39, -1, -1);
      MEMORY[0x1E12CCD70](v38, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DEEE9BFC(uint64_t a1, unint64_t a2, char a3, NSObject *a4)
{
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v8 = sub_1DEF8D508();
  __swift_project_value_buffer(v8, qword_1ECDF5FC8);

  v9 = a4;
  oslog = sub_1DEF8D4D8();
  v10 = sub_1DEF8DC78();

  if (!os_log_type_enabled(oslog, v10))
  {

    v17 = a4;

    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v19 = v13;
  *v11 = 136446722;

  if (a2)
  {
    *(v11 + 4) = sub_1DEE12A5C(a1, a2, &v19);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a3 & 1;
    *(v11 + 18) = 2114;
    if (a4)
    {
      v14 = a4;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v11 + 20) = v15;
    *v12 = v16;
    _os_log_impl(&dword_1DEE0F000, oslog, v10, "IDS message:%{public}s didSendWithSuccess:%{BOOL,public}d error:%{public}@", v11, 0x1Cu);
    sub_1DEE171B4(v12, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12CCD70](v13, -1, -1);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    v17 = oslog;

LABEL_9:

    return;
  }

  __break(1u);
}

uint64_t sub_1DEEE9E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEE9E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEEE9F04()
{
  result = qword_1ECDE48B0;
  if (!qword_1ECDE48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE48B0);
  }

  return result;
}

uint64_t sub_1DEEE9F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DEEE9FD8()
{
  result = qword_1ECDE48E8;
  if (!qword_1ECDE48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE48E8);
  }

  return result;
}

uint64_t sub_1DEEEA02C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEEEA100(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEEEA02C();
  return sub_1DEEEA148;
}

void sub_1DEEEA158(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA270((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void sub_1DEEEA1B8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), v2);

  os_unfair_lock_unlock((v3 + 24));
}

BOOL sub_1DEEEA21C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEA270((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t *sub_1DEEEA270@<X0>(uint64_t *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      sub_1DEE29594(v5, &v15);
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      if ((*(v8 + 16))(v7, v8))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v15);
      }

      else
      {
        sub_1DEE2F1AC(&v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7E68(0, *(v6 + 16) + 1, 1);
          v6 = v18;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1DEEC7E68((v10 > 1), v11 + 1, 1);
          v6 = v18;
        }

        *(v6 + 16) = v11 + 1;
        result = sub_1DEE2F1AC(v14, v6 + 40 * v11 + 32);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v12 = *(v6 + 16);

    *a2 = v12 == 0;
  }

  return result;
}

void sub_1DEEEA3E8(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), v2);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1DEEEA448(void *a1, char a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E68(0, v4, 0);
    v6 = v18;
    v7 = v3 + 32;
    do
    {
      sub_1DEE29594(v7, v14);
      sub_1DEE29594(v14, &v15);
      v8 = v16;
      v9 = v17;
      __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
      (*(v9 + 24))(a2 & 1, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DEEC7E68((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      sub_1DEE2F1AC(&v15, v6 + 40 * v11 + 32);
      v7 += 40;
      --v4;
    }

    while (v4);

    v2 = v13;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v6;
  return result;
}

void (*sub_1DEEEA5A8(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA270((v3 + 16), &v5);
  *(a1 + 8) = 0;
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 16) = v5;
  return sub_1DEEEA628;
}

void sub_1DEEEA628(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  os_unfair_lock_lock(*a1 + 6);
  sub_1DEEEA448((v1 + 16), v2);

  os_unfair_lock_unlock((v1 + 24));
}

void *MuxingZoneAdvertiser.__allocating_init(zoneAdvertisers:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1DEEEADF4(a1);

  return v2;
}

void *MuxingZoneAdvertiser.init(zoneAdvertisers:)(uint64_t a1)
{
  v1 = sub_1DEEEADF4(a1);

  return v1;
}

uint64_t sub_1DEEEA704(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1DEF8D588();
  }

  return result;
}

void sub_1DEEEA780()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEB024(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DEEEA7D4(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v4 = *result + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 40))(a2, v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1DEEEA880()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 48))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  os_unfair_lock_unlock((v1 + 24));
}

BOOL sub_1DEEEA928()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEB040((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1DEEEA984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v19 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  result = *a1 + 32;
  v8 = -v6;
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_5:
      *a4 = v10 != -1;
      return result;
    }

    if (++v9 >= *(v5 + 16))
    {
      break;
    }

    v11 = result + 40;
    sub_1DEE29594(result, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v13 + 56))(a2, v19, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = v11;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t MuxingZoneAdvertiser.deinit()
{

  return v0;
}

uint64_t MuxingZoneAdvertiser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL sub_1DEEEAB18()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEA270((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1DEEEAB70(char a1)
{
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t (*sub_1DEEEABD4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DEEEA5A8(v2);
  return sub_1DEEEAC48;
}

void sub_1DEEEAC48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1DEEEAC90()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEB240(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1DEEEACE8()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 48))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  os_unfair_lock_unlock((v1 + 24));
}

BOOL sub_1DEEEAD94()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEB258((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void *sub_1DEEEADF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48F0, &qword_1DEF93858);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v1[2] = v3;
  v1[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  v4 = sub_1DEF8D598();
  v1[5] = MEMORY[0x1E69E7CD0];
  v1[4] = v4;
  v5 = v1[2];

  os_unfair_lock_lock((v5 + 24));
  sub_1DEEEB1F0((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      sub_1DEE29594(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 8))(v8, v9);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E40, qword_1DEF93860);
      sub_1DEE1B548(&qword_1ECDE2D98, &qword_1ECDE3E40, qword_1DEF93860, MEMORY[0x1E695BED8]);
      sub_1DEF8D5E8();

      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v11);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return v1;
}

double sub_1DEEEB1F0(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_1DEEEB2E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = v4[7];
  if (v9 && *(v9 + 16))
  {
    *(v9 + 16) = 0;

    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1DEF8DD88();
  }

  type metadata accessor for KeepAliveTransaction();
  swift_allocObject();
  v4[7] = sub_1DEE2CB34(0x76696C417065654BLL, 0xEE0072656D695465);

  v10 = v4[5];
  v11 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  v14 = *(v11 + 8);

  v14(a1, sub_1DEEEB698, v13, v10, v11, a4);
}

uint64_t sub_1DEEEB488(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    a2();
    v5 = *(v4 + 56);
    if (v5)
    {
      if (*(v5 + 16))
      {
        *(v5 + 16) = 0;

        swift_unknownObjectRelease();
        swift_getObjectType();
        sub_1DEF8DD88();
      }
    }

    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t sub_1DEEEB540()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[7];
  if (v3 && *(v3 + 16))
  {
    *(v3 + 16) = 0;

    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1DEF8DD88();
  }

  v0[7] = 0;
}

uint64_t sub_1DEEEB5EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEEB6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4910, &qword_1DEF93918);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PersonaIntroducer.IntroductionMessage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFC90();
  sub_1DEF8E848();
  if (!v2)
  {
    v12 = v15;
    sub_1DEEEFF5C(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
    v13 = v17;
    sub_1DEF8E1F8();
    (*(v16 + 8))(v8, v6);
    sub_1DEEEFCE4(v13, v11, type metadata accessor for DeviceDescriptor);
    sub_1DEEEFCE4(v11, v12, type metadata accessor for PersonaIntroducer.IntroductionMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DEEEB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DEF9CC50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DEEEB9C8(uint64_t a1)
{
  v2 = sub_1DEEEFC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEEBA04(uint64_t a1)
{
  v2 = sub_1DEEEFC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEEBA58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4960, &qword_1DEF93B00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFC90();
  sub_1DEF8E858();
  type metadata accessor for DeviceDescriptor(0);
  sub_1DEEEFF5C(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
  sub_1DEF8E298();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DEEEBBD0(uint64_t a1)
{
  v2 = sub_1DEEEFF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEEBC0C(uint64_t a1)
{
  v2 = sub_1DEEEFF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEEBC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4950, &qword_1DEF93AF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFF08();
  sub_1DEF8E858();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DEEEBD84()
{
  if (qword_1ED786060 != -1)
  {
    result = swift_once();
  }

  qword_1ECDE48F8 = *(&xmmword_1ED786068 + 1);
  return result;
}

uint64_t PersonaIntroducer.__allocating_init(personaMonitor:syncService:replicator:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 120) = MEMORY[0x1E69E7CD0];
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  sub_1DEEA8734(a4, (v8 + 72));
  return v8;
}

uint64_t PersonaIntroducer.init(personaMonitor:syncService:replicator:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 120) = MEMORY[0x1E69E7CD0];
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a1 + 4);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  sub_1DEEA8734(a4, (v4 + 72));
  return v4;
}

uint64_t sub_1DEEEBEA0()
{
  v1 = v0;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF5FB0);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Starting persona introducer", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  (*(v6 + 24))(v1, &protocol witness table for PersonaIntroducer, ObjectType, v6);
  sub_1DEE17214(v1 + 16, &v11, &qword_1ECDE3BF0, &unk_1DEF938B0);
  if (!v12)
  {
    return sub_1DEE171B4(&v11, &qword_1ECDE3BF0, &unk_1DEF938B0);
  }

  sub_1DEE2F1AC(&v11, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *&v11 = (*(v9 + 8))(v8, v9);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E20, &qword_1DEF91748);
  sub_1DEEEEBF0();
  sub_1DEF8D5E8();

  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DEEEC0F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v6 & 0x80000000) == 0 && (v6 & 1) == 0)
    {
      sub_1DEEEC180(v2, v3, v4, v5);
    }
  }

  return result;
}

uint64_t sub_1DEEEC180(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF5FB0);

  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_1DEE12A5C(a1, a2, &v21);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1DEE12A5C(a3, a4, &v21);
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Fetching local device ID for introduction message to %{public}s:%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v15, -1, -1);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  v16 = v5[8];
  ObjectType = swift_getObjectType();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v5;
  v18[7] = v10;
  v19 = *(v16 + 80);

  v19(sub_1DEEEF8F0, v18, ObjectType, v16);
}

void sub_1DEEEC3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v103 = a7;
  v107 = a3;
  v108 = a5;
  v95 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = &v87 - v11;
  v94 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v94);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PersonaIntroducer.IntroductionMessage(0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v87 - v18;
  v100 = type metadata accessor for DeviceDescriptor(0);
  v92 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  v90 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v109 = (&v87 - v31);
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v32 = sub_1DEF8D508();
  v33 = __swift_project_value_buffer(v32, qword_1ECDF5FB0);

  v105 = v33;
  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCB8();

  v36 = os_log_type_enabled(v34, v35);
  v106 = v28;
  v99 = v20;
  if (v36)
  {
    v37 = a2;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v111[0] = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_1DEE12A5C(v107, a4, v111);
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_1DEE12A5C(v108, a6, v111);
    _os_log_impl(&dword_1DEE0F000, v34, v35, "Sending introduction message to %{public}s:%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v39, -1, -1);
    v40 = v38;
    a2 = v37;
    MEMORY[0x1E12CCD70](v40, -1, -1);
  }

  if (a2)
  {
    v89 = v13;
    v41 = v103[12];
    v42 = a2;
    v43 = v103[14];
    __swift_project_boxed_opaque_existential_1(v103 + 9, v41);
    v44 = *(v43 + 48);
    v98 = v42;

    v45 = v109;
    v44(v41, v43);
    isa = v45[5].isa;
    v47 = sub_1DEF8D3F8();
    v48 = *(v47 - 8);
    v49 = *(v48 + 56);
    v50 = v48 + 56;
    v51 = v101;
    v49(v101, 1, 1, v47);
    *(v25 + 72) = 0u;
    *(v25 + 56) = 0u;
    *(v25 + 44) = 256;
    v97 = xmmword_1DEF90FE0;
    *(v25 + 7) = xmmword_1DEF90FE0;
    v52 = *(v100 + 60);
    v88 = v47;
    v100 = v49;
    v87 = v50;
    v49(&v25[v52], 1, 1, v47);
    *v25 = v107;
    *(v25 + 1) = a4;
    *(v25 + 2) = 0x6E776F6E6B6E75;
    *(v25 + 3) = 0xE700000000000000;
    *(v25 + 4) = isa;
    *(v25 + 5) = isa;
    v25[48] = 0;
    *(v25 + 56) = 0u;
    *(v25 + 72) = 0u;
    *(v25 + 44) = 256;
    v53 = *(v25 + 14);
    v54 = *(v25 + 15);

    sub_1DEE2416C(v53, v54);
    *(v25 + 7) = v97;
    *(v25 + 8) = 0u;
    *(v25 + 9) = 0u;
    *(v25 + 20) = v108;
    *(v25 + 21) = a6;

    sub_1DEEA882C(v51, &v25[v52]);
    v55 = MEMORY[0x1E69E7CC8];
    *(v25 + 12) = MEMORY[0x1E69E7CC8];
    sub_1DEE171B4(v51, &unk_1ECDE3E80, &unk_1DEF90970);
    *(v25 + 13) = v55;
    sub_1DEEEFCE4(v25, v106, type metadata accessor for DeviceDescriptor);
    v56 = v45;
    v57 = v104;
    sub_1DEEEFA1C(v56, v104, type metadata accessor for DeviceDescriptor);
    v111[3] = v102;
    v111[4] = sub_1DEEEFF5C(&qword_1ECDE4908, type metadata accessor for PersonaIntroducer.IntroductionMessage, &unk_1DEF93AA8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
    sub_1DEEEFA1C(v57, boxed_opaque_existential_1, type metadata accessor for PersonaIntroducer.IntroductionMessage);
    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v59 = qword_1ECDE48F8;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v59;
    *(inited + 24) = 0;
    v61 = sub_1DEE29274(v111);
    v62 = sub_1DEE1187C(v61);
    v64 = v63;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v111);
    v108 = v62;
    v68 = v91;
    v69 = v88;
    v70 = v100;
    (v100)(v91, 1, 1, v88);
    v107 = qword_1ECDE48F8;
    v71 = v89;
    sub_1DEF8D3E8();
    v72 = v94;
    v73 = *(v94 + 20);
    v70(v71 + v73, 1, 1, v69);
    sub_1DEE1E70C(v68, v71 + v73);
    v74 = (v71 + v72[6]);
    *v74 = 0xD000000000000015;
    v74[1] = 0x80000001DEF9CBB0;
    v75 = (v71 + v72[7]);
    v76 = v98;
    *v75 = v95;
    v75[1] = v76;
    v77 = v108;
    *(v71 + v72[8]) = v107;
    v78 = (v71 + v72[9]);
    *v78 = v77;
    v78[1] = v64;
    v79 = v103[8];
    ObjectType = swift_getObjectType();
    v81 = sub_1DEF8D1E8();
    v82 = v96;
    (*(*(v81 - 8) + 56))(v96, 1, 1, v81);
    v110[0] = 0;
    v111[0] = 0x403E000000000000;
    v111[1] = 5;
    v83 = v106;
    v84 = v93;
    sub_1DEEEFA1C(v106, v93, type metadata accessor for DeviceDescriptor);
    v85 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v86 = swift_allocObject();
    sub_1DEEEFCE4(v84, v86 + v85, type metadata accessor for DeviceDescriptor);
    (*(v79 + 48))(v71, v82, v110 + 1, v83, v110, v111, sub_1DEEEF9AC, v86, ObjectType, v79);

    sub_1DEE171B4(v82, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEEF94C(v57, type metadata accessor for PersonaIntroducer.IntroductionMessage);
    sub_1DEEEF94C(v83, type metadata accessor for DeviceDescriptor);
    sub_1DEEEF94C(v109, type metadata accessor for DeviceDescriptor);
    sub_1DEEEF94C(v71, type metadata accessor for Message);
  }

  else
  {
    v109 = sub_1DEF8D4D8();
    v65 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v109, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DEE0F000, v109, v65, "Cannot send introduction message as we have no local device ID", v66, 2u);
      MEMORY[0x1E12CCD70](v66, -1, -1);
    }

    v67 = v109;
  }
}

void sub_1DEEED078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v34 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v34 - v11);
  sub_1DEE17214(a1, &v34 - v11, &qword_1ECDE3D20, &unk_1DEF91630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v14 = sub_1DEF8D508();
    __swift_project_value_buffer(v14, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a2, v6, type metadata accessor for DeviceDescriptor);
    v15 = v13;
    v16 = sub_1DEF8D4D8();
    v17 = sub_1DEF8DC98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v18 = 136446466;
      v21 = *v6;
      v22 = v6[1];

      sub_1DEEEF94C(v6, type metadata accessor for DeviceDescriptor);
      v23 = sub_1DEE12A5C(v21, v22, &v35);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2114;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v25;
      *v19 = v25;
      _os_log_impl(&dword_1DEE0F000, v16, v17, "Sync service failed to send introduction message to %{public}s: %{public}@", v18, 0x16u);
      sub_1DEE171B4(v19, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12CCD70](v20, -1, -1);
      MEMORY[0x1E12CCD70](v18, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v6, type metadata accessor for DeviceDescriptor);
    }
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v26 = sub_1DEF8D508();
    __swift_project_value_buffer(v26, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a2, v9, type metadata accessor for DeviceDescriptor);
    v27 = sub_1DEF8D4D8();
    v28 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136446210;
      v31 = *v9;
      v32 = v9[1];

      sub_1DEEEF94C(v9, type metadata accessor for DeviceDescriptor);
      v33 = sub_1DEE12A5C(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1DEE0F000, v27, v28, "Sent introduction message to %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12CCD70](v30, -1, -1);
      MEMORY[0x1E12CCD70](v29, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v9, type metadata accessor for DeviceDescriptor);
    }

    sub_1DEE171B4(v12, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

void sub_1DEEED534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v69 - v9;
  v72 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceDescriptor(0);
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v69 - v15;
  v75 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v69 - v18);
  v20 = sub_1DEF8D3F8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v26 = sub_1DEF8D508();
  v27 = __swift_project_value_buffer(v26, qword_1ECDF5FB0);
  v81 = *(v21 + 16);
  v82 = v21 + 16;
  v81(v25, a1, v20);
  v84 = a2;
  sub_1DEEEFA1C(a2, v19, type metadata accessor for DeviceDescriptor);
  v85 = v27;
  v28 = sub_1DEF8D4D8();
  v29 = sub_1DEF8DCB8();
  v30 = os_log_type_enabled(v28, v29);
  v80 = v13;
  v83 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v70 = a1;
    v86 = v20;
    v32 = v31;
    v33 = swift_slowAlloc();
    v88[0] = v33;
    *v32 = 136446466;
    sub_1DEEEFF5C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = sub_1DEF8E2E8();
    v35 = v3;
    v37 = v36;
    v78 = *(v21 + 8);
    v78(v25, v86);
    v38 = sub_1DEE12A5C(v34, v37, v88);
    v3 = v35;

    *(v32 + 4) = v38;
    *(v32 + 12) = 2082;
    v39 = *v19;
    v40 = v19[1];

    sub_1DEEEF94C(v19, type metadata accessor for DeviceDescriptor);
    v41 = sub_1DEE12A5C(v39, v40, v88);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_1DEE0F000, v28, v29, "Sending ack message for %{public}s to %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v33, -1, -1);
    v42 = v32;
    v20 = v86;
    a1 = v70;
    MEMORY[0x1E12CCD70](v42, -1, -1);
  }

  else
  {

    sub_1DEEEF94C(v19, type metadata accessor for DeviceDescriptor);
    v78 = *(v21 + 8);
    v78(v25, v20);
  }

  v43 = *(v3 + 64);
  ObjectType = swift_getObjectType();
  v45 = (*(v43 + 16))(ObjectType, v43);
  if (v46)
  {
    v47 = v46;
    v86 = v45;
    v88[3] = &type metadata for PersonaIntroducer.AckMessage;
    v88[4] = sub_1DEEEF81C();
    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v48 = qword_1ECDE48F8;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v48;
    *(inited + 24) = 0;
    v50 = sub_1DEE29274(v88);
    v85 = sub_1DEE1187C(v50);
    v80 = v54;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v88);
    v55 = v71;
    v81(v71, a1, v20);
    v81 = *(v83 + 56);
    (v81)(v55, 0, 1, v20);
    v82 = 0x80000001DEF9CBD0;
    v83 = qword_1ECDE48F8;
    v56 = v76;
    sub_1DEF8D3E8();
    v57 = v72;
    v58 = *(v72 + 20);
    (v81)(v56 + v58, 1, 1, v20);
    sub_1DEE1E70C(v55, v56 + v58);
    v59 = (v56 + v57[6]);
    *v59 = 0xD000000000000014;
    v59[1] = v82;
    v60 = (v56 + v57[7]);
    *v60 = v86;
    v60[1] = v47;
    *(v56 + v57[8]) = v83;
    v61 = (v56 + v57[9]);
    v62 = v80;
    *v61 = v85;
    v61[1] = v62;
    v63 = sub_1DEF8D1E8();
    v64 = v77;
    (*(*(v63 - 8) + 56))(v77, 1, 1, v63);
    LOBYTE(v88[0]) = 0;
    v87[0] = 0;
    v65 = v84;
    v66 = v74;
    sub_1DEEEFA1C(v84, v74, type metadata accessor for DeviceDescriptor);
    v67 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v68 = swift_allocObject();
    sub_1DEEEFCE4(v66, v68 + v67, type metadata accessor for DeviceDescriptor);
    (*(v43 + 40))(v56, v64, v88, v65, v87, sub_1DEEEF870, v68, ObjectType, v43);

    sub_1DEE171B4(v64, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEEF94C(v56, type metadata accessor for Message);
  }

  else
  {
    v51 = sub_1DEF8D4D8();
    v52 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DEE0F000, v51, v52, "Cannot send ack message as we have no local device ID", v53, 2u);
      MEMORY[0x1E12CCD70](v53, -1, -1);
    }
  }
}

void sub_1DEEEE0B0(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  if (a2)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v8, type metadata accessor for DeviceDescriptor);
    v13 = a1;
    v14 = sub_1DEF8D4D8();
    v15 = sub_1DEF8DC98();
    sub_1DEE39214(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v16 = 136446466;
      v19 = *v8;
      v20 = v8[1];

      sub_1DEEEF94C(v8, type metadata accessor for DeviceDescriptor);
      v21 = sub_1DEE12A5C(v19, v20, &v34);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_1DEE0F000, v14, v15, "Sync service failed to send ack message to %{public}s: %{public}@", v16, 0x16u);
      sub_1DEE171B4(v17, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12CCD70](v18, -1, -1);
      MEMORY[0x1E12CCD70](v16, -1, -1);

      return;
    }

    v32 = v8;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v24 = sub_1DEF8D508();
    __swift_project_value_buffer(v24, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v11, type metadata accessor for DeviceDescriptor);
    v25 = sub_1DEF8D4D8();
    v26 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446210;
      v29 = *v11;
      v30 = v11[1];

      sub_1DEEEF94C(v11, type metadata accessor for DeviceDescriptor);
      v31 = sub_1DEE12A5C(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DEE0F000, v25, v26, "Sent ack message to %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12CCD70](v28, -1, -1);
      MEMORY[0x1E12CCD70](v27, -1, -1);

      return;
    }

    v32 = v11;
  }

  sub_1DEEEF94C(v32, type metadata accessor for DeviceDescriptor);
}

void sub_1DEEEE4C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = ~a2;
  v7 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v42 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  if (v6)
  {
    if (v4)
    {
      if (qword_1ECDE2E30 != -1)
      {
        swift_once();
      }

      v16 = sub_1DEF8D508();
      __swift_project_value_buffer(v16, qword_1ECDF5FB0);
      sub_1DEEEFA1C(a3, v12, type metadata accessor for DeviceDescriptor);
      sub_1DEE39150(a1, 1);
      v17 = sub_1DEF8D4D8();
      v18 = sub_1DEF8DC98();
      sub_1DEEEFC78(a1, v4);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v43 = v21;
        *v19 = 136446466;
        v22 = *v12;
        v23 = v12[1];

        sub_1DEEEF94C(v12, type metadata accessor for DeviceDescriptor);
        v24 = sub_1DEE12A5C(v22, v23, &v43);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2114;
        sub_1DEE39150(a1, 1);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v25;
        *v20 = v25;
        _os_log_impl(&dword_1DEE0F000, v17, v18, "Failed to pair with device %{public}s: %{public}@", v19, 0x16u);
        sub_1DEE171B4(v20, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1E12CCD70](v21, -1, -1);
        MEMORY[0x1E12CCD70](v19, -1, -1);

        return;
      }

      v41 = v12;
      goto LABEL_19;
    }

    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v35 = sub_1DEF8D508();
    __swift_project_value_buffer(v35, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v15, type metadata accessor for DeviceDescriptor);
    v27 = sub_1DEF8D4D8();
    v36 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v27, v36))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v29 = 136446210;
      v38 = *v15;
      v39 = v15[1];

      sub_1DEEEF94C(v15, type metadata accessor for DeviceDescriptor);
      v40 = sub_1DEE12A5C(v38, v39, &v43);

      *(v29 + 4) = v40;
      _os_log_impl(&dword_1DEE0F000, v27, v36, "Successfully paired with device %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v34 = v37;
      goto LABEL_15;
    }

    v41 = v15;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v26 = sub_1DEF8D508();
    __swift_project_value_buffer(v26, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v9, type metadata accessor for DeviceDescriptor);
    v27 = sub_1DEF8D4D8();
    v28 = sub_1DEF8DC98();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136446210;
      v31 = *v9;
      v32 = v9[1];

      sub_1DEEEF94C(v9, type metadata accessor for DeviceDescriptor);
      v33 = sub_1DEE12A5C(v31, v32, &v43);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1DEE0F000, v27, v28, "Received unexpected response to pairing attempt with device %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v34 = v30;
LABEL_15:
      MEMORY[0x1E12CCD70](v34, -1, -1);
      MEMORY[0x1E12CCD70](v29, -1, -1);

      return;
    }

    v41 = v9;
  }

LABEL_19:
  sub_1DEEEF94C(v41, type metadata accessor for DeviceDescriptor);
}

void *PersonaIntroducer.deinit()
{
  sub_1DEE171B4(v0 + 16, &qword_1ECDE3BF0, &unk_1DEF938B0);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return v0;
}

uint64_t PersonaIntroducer.__deallocating_deinit()
{
  sub_1DEE171B4(v0 + 16, &qword_1ECDE3BF0, &unk_1DEF938B0);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t PersonaIntroducer.syncService(_:shouldAcceptIncomingMessage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for Message(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v5;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {
    return 1;
  }

  if (v4 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v5)
  {
    return 1;
  }

  return sub_1DEF8E4E8();
}

unint64_t sub_1DEEEEBF0()
{
  result = qword_1ECDE3E28;
  if (!qword_1ECDE3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3E20, &qword_1DEF91748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E28);
  }

  return result;
}

void sub_1DEEEEC54(uint64_t a1)
{
  v2 = type metadata accessor for DeviceDescriptor(0);
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = v3;
  v71 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PersonaIntroducer.IntroductionMessage(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v68 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v68 - v19;
  v22 = (a1 + *(v21 + 24));
  v23 = *v22;
  v24 = v22[1];
  v25 = *v22 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v24;
  if (v25 || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v26 = sub_1DEF8D508();
    __swift_project_value_buffer(v26, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v20, type metadata accessor for Message);
    v27 = sub_1DEF8D4D8();
    v28 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68[1] = v17;
      v31 = v30;
      v75[0] = v30;
      *v29 = 136446210;
      v32 = &v20[*(v6 + 28)];
      v33 = *v32;
      v34 = v32[1];

      sub_1DEEEF94C(v20, type metadata accessor for Message);
      v35 = sub_1DEE12A5C(v33, v34, v75);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1DEE0F000, v27, v28, "Received introduction message from %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v29, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v20, type metadata accessor for Message);
    }

    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v36 = qword_1ECDE48F8;
    type metadata accessor for OPACKCoder();
    sub_1DEE115C8(v78);
    sub_1DEE12F7C(v78, v76);
    v37 = MEMORY[0x1E69E7CC0];
    v38 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v75[0] = v37;
    v75[1] = v38;
    v76[4] = v36;
    v77 = 0;
    v74[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
    v74[4] = sub_1DEE1DC98();
    v74[0] = swift_allocObject();
    sub_1DEE1DCEC(v75, v74[0] + 16);
    v39 = v73;
    sub_1DEEEB6A4(v74, v73);
    sub_1DEE1EBB4(v75);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v50 = v72[12];
    v51 = v72[13];
    __swift_project_boxed_opaque_existential_1(v72 + 9, v50);
    v52 = v71;
    sub_1DEEEFA1C(v39, v71, type metadata accessor for DeviceDescriptor);
    v53 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v54 = swift_allocObject();
    sub_1DEEEFCE4(v52, v54 + v53, type metadata accessor for DeviceDescriptor);
    (*(v51 + 16))(v39, sub_1DEEEFBF8, v54, v50, v51);

    sub_1DEEED534(a1, v39);
    v55 = type metadata accessor for PersonaIntroducer.IntroductionMessage;
    v56 = v39;
    goto LABEL_28;
  }

  if (v23 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v24 || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v40 = sub_1DEF8D508();
    __swift_project_value_buffer(v40, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v14, type metadata accessor for Message);
    v41 = sub_1DEF8D4D8();
    v42 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75[0] = v44;
      *v43 = 136446210;
      v45 = &v14[*(v6 + 28)];
      v46 = *v45;
      v47 = v45[1];

      sub_1DEEEF94C(v14, type metadata accessor for Message);
      v48 = sub_1DEE12A5C(v46, v47, v75);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1DEE0F000, v41, v42, "Received ack message from %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v49 = v44;
LABEL_26:
      MEMORY[0x1E12CCD70](v49, -1, -1);
      MEMORY[0x1E12CCD70](v43, -1, -1);

      return;
    }

    v55 = type metadata accessor for Message;
    v56 = v14;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v57 = sub_1DEF8D508();
    __swift_project_value_buffer(v57, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v11, type metadata accessor for Message);
    sub_1DEEEFA1C(a1, v8, type metadata accessor for Message);
    v41 = sub_1DEF8D4D8();
    v58 = sub_1DEF8DC98();
    if (os_log_type_enabled(v41, v58))
    {
      v43 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75[0] = v59;
      *v43 = 136446466;
      v60 = &v11[*(v6 + 24)];
      v61 = *v60;
      v62 = v60[1];

      sub_1DEEEF94C(v11, type metadata accessor for Message);
      v63 = sub_1DEE12A5C(v61, v62, v75);

      *(v43 + 4) = v63;
      *(v43 + 12) = 2082;
      v64 = &v8[*(v6 + 28)];
      v65 = *v64;
      v66 = v64[1];

      sub_1DEEEF94C(v8, type metadata accessor for Message);
      v67 = sub_1DEE12A5C(v65, v66, v75);

      *(v43 + 14) = v67;
      _os_log_impl(&dword_1DEE0F000, v41, v58, "Received unexpected message type %{public}s from %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      v49 = v59;
      goto LABEL_26;
    }

    sub_1DEEEF94C(v8, type metadata accessor for Message);
    v56 = v11;
    v55 = type metadata accessor for Message;
  }

LABEL_28:
  sub_1DEEEF94C(v56, v55);
}

unint64_t sub_1DEEEF81C()
{
  result = qword_1ECDE4900;
  if (!qword_1ECDE4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4900);
  }

  return result;
}

void sub_1DEEEF870(void *a1, char a2)
{
  v5 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DEEEE0B0(a1, a2 & 1, v6);
}

uint64_t type metadata accessor for PersonaIntroducer.IntroductionMessage(uint64_t a1)
{
  result = qword_1ECDE4928;
  if (!qword_1ECDE4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEEEF94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DEEEF9AC(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DEEED078(a1, v4);
}

uint64_t sub_1DEEEFA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for DeviceDescriptor(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(v1 + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1DEEEFBF8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DEEEE4C0(a1, a2, v6);
}

void sub_1DEEEFC78(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DEE39214(a1, a2 & 1);
  }
}

unint64_t sub_1DEEEFC90()
{
  result = qword_1ECDE4918;
  if (!qword_1ECDE4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4918);
  }

  return result;
}

uint64_t sub_1DEEEFCE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEEFD84(uint64_t a1)
{
  result = type metadata accessor for DeviceDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEEFE04()
{
  result = qword_1ECDE4938;
  if (!qword_1ECDE4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4938);
  }

  return result;
}

unint64_t sub_1DEEEFE5C()
{
  result = qword_1ECDE4940;
  if (!qword_1ECDE4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4940);
  }

  return result;
}

unint64_t sub_1DEEEFEB4()
{
  result = qword_1ECDE4948;
  if (!qword_1ECDE4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4948);
  }

  return result;
}

unint64_t sub_1DEEEFF08()
{
  result = qword_1ECDE4958;
  if (!qword_1ECDE4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4958);
  }

  return result;
}

uint64_t sub_1DEEEFF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DEEEFFB8()
{
  result = qword_1ECDE4970;
  if (!qword_1ECDE4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4970);
  }

  return result;
}

unint64_t sub_1DEEF0010()
{
  result = qword_1ECDE4978;
  if (!qword_1ECDE4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4978);
  }

  return result;
}

void sub_1DEEF0064()
{
  if (__OFSUB__(*(v0 + 16), *(v0 + 32)))
  {
    __break(1u);
  }
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

void *ExponentialBackoffRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t ExponentialBackoffRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t ExponentialBackoffRetryTimer.deinit()
{

  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SessionManager.__allocating_init(expirationDuration:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  SessionManager.init(expirationDuration:)(a1, a2 & 1);
  return v4;
}

uint64_t SessionManager.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t SessionManager.Session.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionManager.Session.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double SessionManager.Session.handshakeDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionManager.Session(0) + 20);
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v3 + 40);

  return result;
}

__n128 SessionManager.Session.handshakeDescriptor.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];
  v7 = (v1 + *(type metadata accessor for SessionManager.Session(0) + 20));

  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u64[1] = v3;
  v7[2].n128_u8[0] = v4;
  v7[2].n128_u64[1] = v5;
  v7[3].n128_u64[0] = v6;
  return result;
}

uint64_t SessionManager.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SessionManager.Session(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SessionManager.Session.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionManager.Session(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SessionManager.Session.lastInteractionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionManager.Session(0) + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionManager.Session.lastInteractionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionManager.Session(0) + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionManager.Session.expirationDuration.setter(double a1)
{
  result = type metadata accessor for SessionManager.Session(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SessionManager.Session.handshakeFailureCount.setter(uint64_t a1)
{
  result = type metadata accessor for SessionManager.Session(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1DEEF0904()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4980, &unk_1DEF93BF0);
    sub_1DEE1B548(&qword_1ECDE2D48, &qword_1ECDE4980, &unk_1DEF93BF0, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEEF09D8(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEEF0904();
  return sub_1DEEF0A20;
}

double *SessionManager.init(expirationDuration:)(uint64_t a1, int a2)
{
  v3 = v2;
  v22 = a2;
  v21 = a1;
  v23 = sub_1DEF8DD08();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v20 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v2[2] = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4980, &unk_1DEF93BF0);
  swift_allocObject();
  *(v2 + 3) = sub_1DEF8D598();
  v8 = sub_1DEE3C630();
  v18 = "ialBackoffRetryTimer";
  v19 = v8;
  sub_1DEF8D6C8();
  v24 = MEMORY[0x1E69E7CC0];
  v17[2] = sub_1DEE2BB88(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  v9 = *MEMORY[0x1E69E8090];
  v10 = v4 + 104;
  v11 = *(v4 + 104);
  v17[0] = v10;
  v12 = v20;
  v11(v20, v9, v23);
  *(v2 + 4) = sub_1DEF8DD38();
  v18 = "onManager.internal";
  sub_1DEF8D6C8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v11(v12, v9, v23);
  *(v2 + 5) = sub_1DEF8DD38();
  *(v2 + 7) = MEMORY[0x1E69E7CC8];
  type metadata accessor for BasicTimer();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 24) = v14;
  *(v3 + 8) = v13;
  v3[9] = 0.0;
  v15 = *&v21;
  if (v22)
  {
    v15 = 30.0;
  }

  v3[6] = v15;
  return v3;
}

uint64_t type metadata accessor for SessionManager.Session(uint64_t a1)
{
  result = qword_1ECDE3490;
  if (!qword_1ECDE3490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEEF0E40(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for SessionManager.Session(0);
    return sub_1DEF8DD18();
  }

  return result;
}

uint64_t sub_1DEEF0F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v43 = a4;
  v46 = a3;
  v39 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v37 - v8;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  if (qword_1ECDE3810 != -1)
  {
    swift_once();
  }

  v15 = sub_1DEF8D508();
  __swift_project_value_buffer(v15, qword_1ECDF6100);
  v16 = *(v10 + 16);
  v44 = a1;
  v40 = v10 + 16;
  v41 = v16;
  v16(v14, a1, v9);
  sub_1DEEA8BAC(a2, v47);
  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47[0] = v38;
    *v19 = 136446466;
    sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1DEF8E2E8();
    v22 = v21;
    (*(v10 + 8))(v14, v9);
    v23 = sub_1DEE12A5C(v20, v22, v47);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1DEE12A5C(*a2, *(a2 + 8), v47);
    _os_log_impl(&dword_1DEE0F000, v17, v18, "Created session %{public}s for remote device %{public}s", v19, 0x16u);
    v24 = v38;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v24, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v25 = v39;
  v26 = v44;
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v41(v39, v44, v27);
  v30 = *(v46 + 48);
  v31 = type metadata accessor for SessionManager.Session(0);
  sub_1DEEA8BAC(a2, v47);
  sub_1DEF8D348();
  v32 = v25 + v31[5];
  v33 = *(a2 + 16);
  *v32 = *a2;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a2 + 32);
  *(v32 + 48) = *(a2 + 48);
  *(v25 + v31[6]) = 0;
  *(v25 + v31[8]) = v30;
  v34 = v42;
  *(v25 + v31[9]) = v43;
  v29(v34, v26, v28);
  v35 = v45;
  sub_1DEEF50DC(v25, v45);
  (*(*(v31 - 1) + 56))(v35, 0, 1, v31);
  swift_beginAccess();
  sub_1DEF339BC(v35, v34);
  swift_endAccess();
  return sub_1DEEF2640();
}

void sub_1DEEF13D8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v41[-v7];
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41[-v12];
  v49 = type metadata accessor for SessionManager.Session(0);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41[-v17];
  swift_beginAccess();
  v19 = *(a1 + 56);
  if (*(v19 + 16))
  {

    v48 = a2;
    v20 = sub_1DEEAF350(a2);
    if (v21)
    {
      sub_1DEEF50DC(*(v19 + 56) + *(v52 + 72) * v20, v18);

      if (qword_1ECDE3810 != -1)
      {
        swift_once();
      }

      v22 = sub_1DEF8D508();
      __swift_project_value_buffer(v22, qword_1ECDF6100);
      v46 = *(v9 + 16);
      v47 = v9 + 16;
      v46(v13, v48, v8);
      sub_1DEEF50DC(v18, v15);
      v23 = sub_1DEF8D4D8();
      v24 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v45 = v3;
        v26 = v25;
        v44 = swift_slowAlloc();
        v53[0] = v44;
        *v26 = 136446466;
        sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v43 = v23;
        v27 = sub_1DEF8E2E8();
        v42 = v24;
        v29 = v28;
        (*(v9 + 8))(v13, v8);
        v30 = sub_1DEE12A5C(v27, v29, v53);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v31 = v49;
        v32 = &v15[*(v49 + 20)];
        v33 = *v32;
        v34 = v32[1];

        sub_1DEEF51AC(v15);
        v35 = sub_1DEE12A5C(v33, v34, v53);

        *(v26 + 14) = v35;
        v36 = v43;
        _os_log_impl(&dword_1DEE0F000, v43, v42, "Cancelled session %{public}s for remote device %{public}s", v26, 0x16u);
        v37 = v44;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v37, -1, -1);
        MEMORY[0x1E12CCD70](v26, -1, -1);
      }

      else
      {

        sub_1DEEF51AC(v15);
        (*(v9 + 8))(v13, v8);
        v31 = v49;
      }

      v39 = v50;
      v46(v50, v48, v8);
      v40 = v51;
      v38 = 1;
      (*(v52 + 56))(v51, 1, 1, v31);
      swift_beginAccess();
      sub_1DEF339BC(v40, v39);
      swift_endAccess();
      sub_1DEEF2640();
      sub_1DEEF51AC(v18);
    }

    else
    {

      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  *v54 = v38;
}

uint64_t sub_1DEEF1968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v61 = a2;
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  swift_beginAccess();
  v18 = *(a1 + 56);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  v64 = v5;
  v57 = v18;
  v58 = v17;
  v55 = v23;
  v56 = v18 + 64;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = __clz(__rbit64(v22)) | (v26 << 6);
      v28 = *(v18 + 48);
      v29 = sub_1DEF8D3F8();
      v30 = *(v29 - 8);
      v31 = v59;
      (*(v30 + 16))(v59, v28 + *(v30 + 72) * v27, v29);
      v32 = *(v18 + 56);
      v33 = (type metadata accessor for SessionManager.Session(0) - 8);
      v34 = v64;
      sub_1DEEF50DC(v32 + *(*v33 + 72) * v27, v31 + *(v64 + 48));
      v35 = v63;
      sub_1DEE1BA88(v31, v63, &qword_1ECDE4998, &qword_1DEF93D80);
      v36 = v60;
      sub_1DEEF5208(v35, v60);
      v37 = v36 + *(v34 + 48);
      v38 = (v37 + v33[7]);
      v40 = *v38;
      v39 = v38[1];

      sub_1DEEF51AC(v37);
      if (v40 == v61 && v39 == v62)
      {
        break;
      }

      v42 = sub_1DEF8E4E8();

      (*(v30 + 8))(v36, v29);
      if (v42)
      {
        goto LABEL_17;
      }

      v22 &= v22 - 1;
      result = sub_1DEE171B4(v63, &qword_1ECDE4998, &qword_1DEF93D80);
      v25 = v26;
      v18 = v57;
      v17 = v58;
      v5 = v64;
      v23 = v55;
      v19 = v56;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    (*(v30 + 8))(v36, v29);
LABEL_17:

    v17 = v58;
    v5 = v64;
    sub_1DEE1BA88(v63, v58, &qword_1ECDE4998, &qword_1DEF93D80);
    v43 = v53;
    (*(v53 + 56))(v17, 0, 1, v5);
LABEL_18:
    v44 = v54;
    v45 = v52;

    sub_1DEE1BA88(v17, v45, &qword_1ECDE4990, &qword_1DEF93D78);
    v46 = 1;
    if ((*(v43 + 48))(v45, 1, v5) != 1)
    {
      v47 = v51;
      sub_1DEE1BA88(v45, v51, &qword_1ECDE4998, &qword_1DEF93D80);
      sub_1DEEF5140(v47 + *(v5 + 48), v44);
      v48 = sub_1DEF8D3F8();
      (*(*(v48 - 8) + 8))(v47, v48);
      v46 = 0;
    }

    v49 = type metadata accessor for SessionManager.Session(0);
    return (*(*(v49 - 8) + 56))(v44, v46, 1, v49);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v43 = v53;
        (*(v53 + 56))(v17, 1, 1, v5);
        goto LABEL_18;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF1F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  if (*(v6 + 16))
  {

    v7 = sub_1DEEAF350(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for SessionManager.Session(0);
      v12 = *(v11 - 8);
      sub_1DEEF50DC(v10 + *(v12 + 72) * v9, a3);

      return (*(v12 + 56))(a3, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for SessionManager.Session(0);
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t sub_1DEEF20C0(uint64_t a1, char *a2)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = *a2;
  v10 = *(v2 + 32);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v12 + v11 + v7) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DEEABDF0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEEF22F4(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v24 - v5;
  v6 = sub_1DEF8D3F8();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D378();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionManager.Session(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  swift_beginAccess();
  v20 = *(a1 + 56);
  if (*(v20 + 16))
  {

    v21 = sub_1DEEAF350(v29);
    if (v22)
    {
      sub_1DEEF50DC(*(v20 + 56) + *(v14 + 72) * v21, v16);

      sub_1DEEF5140(v16, v19);
      sub_1DEF8D348();
      (*(v10 + 40))(&v19[*(v13 + 28)], v12, v9);
      v19[*(v13 + 24)] = v27 & 1;
      (*(v25 + 16))(v8, v29, v26);
      v23 = v28;
      sub_1DEEF50DC(v19, v28);
      (*(v14 + 56))(v23, 0, 1, v13);
      swift_beginAccess();
      sub_1DEF339BC(v23, v8);
      swift_endAccess();
      sub_1DEEF2640();
      sub_1DEEF51AC(v19);
    }

    else
    {
    }
  }
}

uint64_t sub_1DEEF2640()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1[4];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v45 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  v18 = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v44 = v8;
  v19 = v1[8];
  v20 = *(v19 + 24);
  MEMORY[0x1EEE9AC00](v18);
  *(&v43 - 2) = sub_1DEE15450;
  *(&v43 - 1) = v19;

  os_unfair_lock_lock(v20 + 4);
  sub_1DEE15434(v21);
  os_unfair_lock_unlock(v20 + 4);

  sub_1DEEF2C58(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DEE171B4(v4, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (qword_1ECDE3810 == -1)
    {
LABEL_4:
      v22 = sub_1DEF8D508();
      __swift_project_value_buffer(v22, qword_1ECDF6100);
      v23 = sub_1DEF8D4D8();
      v24 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DEE0F000, v23, v24, "No more sessions; cancelling keep-alive", v25, 2u);
        MEMORY[0x1E12CCD70](v25, -1, -1);
      }

      v26 = v1[9];
      if (v26 && *(v26 + 16))
      {
        *(v26 + 16) = 0;

        swift_unknownObjectRelease();
        swift_getObjectType();
        sub_1DEF8DD88();
      }

      v1[9] = 0;
    }

LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  v27 = v11;
  (*(v6 + 32))(v11, v4, v5);
  if (!v1[9])
  {
    if (qword_1ECDE3810 != -1)
    {
      swift_once();
    }

    v28 = sub_1DEF8D508();
    __swift_project_value_buffer(v28, qword_1ECDF6100);
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "Creating keep-alive transaction while sessions exist", v31, 2u);
      MEMORY[0x1E12CCD70](v31, -1, -1);
    }

    type metadata accessor for KeepAliveTransaction();
    swift_allocObject();
    v1[9] = sub_1DEE2CB34(0x5320657669746341, 0xEF736E6F69737365);
  }

  v32 = v1[8];

  v33 = v44;
  sub_1DEF8D348();
  sub_1DEF8D2D8();
  v35 = v34;
  v36 = *(v6 + 8);
  v37 = v36(v33, v5);
  v38 = *(v32 + 24);
  MEMORY[0x1EEE9AC00](v37);
  *(&v43 - 6) = v32;
  *(&v43 - 5) = v35;
  *(&v43 - 4) = v45;
  *(&v43 - 3) = sub_1DEEF5278;
  *(&v43 - 2) = v1;
  MEMORY[0x1EEE9AC00](v39);
  *(&v43 - 2) = sub_1DEE1B740;
  *(&v43 - 1) = v40;

  os_unfair_lock_lock(v38 + 4);
  sub_1DEE3DEF0(v41);
  os_unfair_lock_unlock(v38 + 4);

  v36(v27, v5);
}

void sub_1DEEF2C58(char *a1@<X8>)
{
  v67 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v63 - v4;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + 32);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19, v21);
  v25 = v24;
  LOBYTE(v24) = sub_1DEF8D7B8();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v64 = v18;
    v65 = v12;
    v77 = v5;
    swift_beginAccess();
    v26 = *(v1 + 56);

    v78 = v15;
    sub_1DEF8D2C8();
    v27 = *(v26 + 64);
    v68 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v66 = v6;
    v74 = (v6 + 32);
    v75 = (v6 + 8);
    v76 = v26;

    v32 = 0;
    while (v30)
    {
      v33 = v32;
LABEL_11:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v33 << 6);
      v37 = v76;
      v38 = *(v76 + 48);
      v39 = sub_1DEF8D3F8();
      v40 = *(v39 - 8);
      v79 = v39;
      v80 = v40;
      v41 = v71;
      (*(v40 + 16))(v71, v38 + *(v40 + 72) * v36, v39);
      v42 = *(v37 + 56);
      v43 = v42 + *(*(type metadata accessor for SessionManager.Session(0) - 8) + 72) * v36;
      v44 = v73;
      sub_1DEEF50DC(v43, v41 + *(v73 + 48));
      v45 = v72;
      sub_1DEEF5208(v41, v72);
      v46 = v45 + *(v44 + 48);
      v47 = v70;
      sub_1DEF8D2E8();
      sub_1DEEF51AC(v46);
      sub_1DEE2BB88(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v49 = v77;
      v48 = v78;
      v50 = sub_1DEF8D8E8();
      sub_1DEE171B4(v41, &qword_1ECDE4998, &qword_1DEF93D80);
      if (v50)
      {
        v51 = v48;
      }

      else
      {
        v51 = v47;
      }

      if (v50)
      {
        v52 = v47;
      }

      else
      {
        v52 = v48;
      }

      (*v75)(v51, v49);
      v53 = *v74;
      v54 = v69;
      (*v74)(v69, v52, v49);
      (*(v80 + 8))(v45, v79);
      v53(v48, v54, v49);
    }

    v34 = v78;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v33 >= v31)
      {
        break;
      }

      v30 = *(v68 + 8 * v33);
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_11;
      }
    }

    v55 = *v74;
    v56 = v64;
    v57 = v77;
    (*v74)(v64, v34, v77);

    v58 = v65;
    sub_1DEF8D2C8();
    v59 = sub_1DEF8D308();
    v60 = *v75;
    (*v75)(v58, v57);
    if (v59)
    {
      v61 = v67;
      v55(v67, v56, v57);
      v62 = 0;
    }

    else
    {
      v60(v56, v57);
      v62 = 1;
      v61 = v67;
    }

    (*(v66 + 56))(v61, v62, 1, v57);
  }

  else
  {
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1DEEF3288()
{
  v1 = sub_1DEF8D698();
  v109 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8D6D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v103 - v8;
  v9 = type metadata accessor for SessionManager.Session(0);
  v126 = *(v9 - 8);
  v127 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v103 - v16;
  v125 = sub_1DEF8D3F8();
  v17 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v123 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v103 - v26;
  v27 = sub_1DEF8D788();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = v0;
  v32 = *(v0 + 32);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x1E69E8020], v27, v29);
  v33 = v32;
  LOBYTE(v32) = sub_1DEF8D7B8();
  result = (*(v28 + 8))(v31, v27);
  if (v32)
  {
    v104 = v5;
    v105 = v3;
    v106 = v4;
    v107 = v1;
    swift_beginAccess();

    sub_1DEEF458C(v35);
    v37 = v36;

    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v110 = (v39 + 63) >> 6;
    v128 = (v17 + 32);
    v129 = (v17 + 16);
    v117 = (v126 + 56);
    v114 = v37;

    v42 = 0;
    *&v43 = 136446722;
    v111 = v43;
    v44 = v125;
    v119 = v17;
    v118 = v37 + 64;
    v131 = (v17 + 8);
    while (v41)
    {
      v48 = v42;
LABEL_17:
      v51 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v52 = v51 | (v48 << 6);
      v53 = v114;
      v54 = v112;
      (*(v17 + 16))(v112, *(v114 + 48) + *(v17 + 72) * v52, v44);
      v55 = v44;
      v56 = v113;
      sub_1DEEF50DC(*(v53 + 56) + *(v126 + 72) * v52, v113);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v58 = *(v57 + 48);
      v59 = *(v17 + 32);
      v60 = v123;
      v59(v123, v54, v55);
      sub_1DEEF5140(v56, v60 + v58);
      (*(*(v57 - 8) + 56))(v60, 0, 1, v57);
LABEL_18:
      v61 = v122;
      sub_1DEE1BA88(v60, v122, &qword_1ECDE4990, &qword_1DEF93D78);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
      v64 = v124;
      v65 = v135;
      if (v63 == 1)
      {
        v96 = v114;

        v97 = v134;
        v98 = swift_allocObject();
        *(v98 + 16) = v96;
        *(v98 + 24) = v97;
        aBlock[4] = sub_1DEEF51A4;
        aBlock[5] = v98;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEE3F0C0;
        aBlock[3] = &block_descriptor_24_0;
        v99 = _Block_copy(aBlock);

        v100 = v108;
        sub_1DEF8D6B8();
        v136 = MEMORY[0x1E69E7CC0];
        sub_1DEE2BB88(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
        v101 = v105;
        v102 = v107;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v100, v101, v99);
        _Block_release(v99);
        (*(v109 + 8))(v101, v102);
        (*(v104 + 8))(v100, v106);

        return sub_1DEEF2640();
      }

      v66 = *(v62 + 48);
      v44 = v125;
      (*v128)(v135, v61, v125);
      v67 = v61 + v66;
      v68 = v132;
      sub_1DEEF5140(v67, v132);
      if (qword_1ECDE3810 != -1)
      {
        swift_once();
      }

      v69 = sub_1DEF8D508();
      __swift_project_value_buffer(v69, qword_1ECDF6100);
      (*v129)(v64, v65, v44);
      v70 = v133;
      sub_1DEEF50DC(v68, v133);
      v71 = v68;
      v72 = v120;
      sub_1DEEF50DC(v71, v120);
      v73 = sub_1DEF8D4D8();
      v74 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        aBlock[0] = v116;
        *v75 = v111;
        sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v115 = v74;
        v76 = sub_1DEF8E2E8();
        v78 = v77;
        v130 = *v131;
        v130(v64, v44);
        v79 = sub_1DEE12A5C(v76, v78, aBlock);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2082;
        v80 = (v133 + *(v127 + 20));
        v81 = *v80;
        v82 = v80[1];

        sub_1DEEF51AC(v133);
        v83 = sub_1DEE12A5C(v81, v82, aBlock);

        *(v75 + 14) = v83;
        *(v75 + 22) = 2082;
        sub_1DEF8D378();
        sub_1DEE2BB88(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v84 = sub_1DEF8E2E8();
        v86 = v85;
        sub_1DEEF51AC(v72);
        v87 = sub_1DEE12A5C(v84, v86, aBlock);

        *(v75 + 24) = v87;
        _os_log_impl(&dword_1DEE0F000, v73, v115, "Purging expired session %{public}s for device %{public}s (last interaction %{public}s", v75, 0x20u);
        v88 = v116;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v88, -1, -1);
        MEMORY[0x1E12CCD70](v75, -1, -1);
      }

      else
      {

        sub_1DEEF51AC(v72);
        sub_1DEEF51AC(v70);
        v130 = *v131;
        v130(v64, v44);
      }

      v17 = v119;
      swift_beginAccess();
      v89 = sub_1DEEAF350(v135);
      if (v90)
      {
        v91 = v89;
        v92 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = *(v92 + 56);
        v136 = v94;
        *(v92 + 56) = 0x8000000000000000;
        v47 = v121;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DEEB9BF4();
          v94 = v136;
        }

        v46 = v130;
        v130((*(v94 + 48) + *(v17 + 72) * v91), v44);
        sub_1DEEF5140(*(v94 + 56) + *(v126 + 72) * v91, v47);
        sub_1DEF776E4(v91, v94);
        v45 = 0;
        *(v134 + 56) = v94;
        v38 = v118;
      }

      else
      {
        v45 = 1;
        v38 = v118;
        v46 = v130;
        v47 = v121;
      }

      (*v117)(v47, v45, 1, v127);
      sub_1DEE171B4(v47, &qword_1ECDE3D08, &unk_1DEF95E50);
      swift_endAccess();
      sub_1DEEF51AC(v132);
      result = v46(v135, v44);
    }

    if (v110 <= v42 + 1)
    {
      v49 = v42 + 1;
    }

    else
    {
      v49 = v110;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v48 >= v110)
      {
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
        v60 = v123;
        (*(*(v95 - 8) + 56))(v123, 1, 1, v95);
        v41 = 0;
        v42 = v50;
        goto LABEL_18;
      }

      v41 = *(v38 + 8 * v48);
      ++v42;
      if (v41)
      {
        v42 = v48;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEEF40A4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for SessionManager.Session(0);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1DEF8D3F8();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = *(a1 + 64);
  v35 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v34 = (v14 + 63) >> 6;
  v36 = v5 + 32;
  v37 = v5 + 16;
  v41 = v5;
  v43 = a1;
  v44 = (v5 + 8);

  v17 = 0;
  v38 = v12;
  v39 = v9;
  v19 = v46;
  v18 = v47;
  if (v16)
  {
    while (1)
    {
      v20 = v17;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v43;
      v26 = v40;
      v27 = v41;
      (*(v41 + 16))(v40, *(v43 + 48) + *(v41 + 72) * v24, v18);
      sub_1DEEF50DC(*(v25 + 56) + *(v42 + 72) * v24, v19);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v29 = *(v28 + 48);
      v30 = *(v27 + 32);
      v9 = v39;
      v30(v39, v26, v18);
      sub_1DEEF5140(v19, &v9[v29]);
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      v22 = v20;
      v12 = v38;
LABEL_13:
      sub_1DEE1BA88(v9, v12, &qword_1ECDE4990, &qword_1DEF93D78);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
      {
        break;
      }

      v32 = v46;
      sub_1DEEF5140(&v12[*(v31 + 48)], v46);
      sub_1DEF8D588();
      sub_1DEEF51AC(v32);
      (*v44)(v12, v47);
      v17 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v34 <= v17 + 1)
    {
      v21 = v17 + 1;
    }

    else
    {
      v21 = v34;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v34)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
        (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v35 + 8 * v20);
      ++v17;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t SessionManager.deinit()
{

  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1DEEF458C(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1DEEF4BDC(v7, v4, v2);
      MEMORY[0x1E12CCD70](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEEF46EC(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1DEEF46EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v62 = sub_1DEF8D378();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v43 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v43 - v10;
  v11 = type metadata accessor for SessionManager.Session(0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DEF8D3F8();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v53);
  v66 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v63 = a3;
  v17 = *(a3 + 64);
  v48 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v46 = 0;
  v47 = (v18 + 63) >> 6;
  v51 = (v4 + 8);
  v52 = v13 + 2;
  v67 = v13;
  v50 = v13 + 1;
  while (v20)
  {
    v21 = __clz(__rbit64(v20));
    v65 = (v20 - 1) & v20;
LABEL_11:
    v24 = v21 | (v16 << 6);
    v25 = v63;
    v26 = v67[2];
    v27 = v66;
    v28 = v53;
    v26(v66, v63[6] + v67[9] * v24, v53, v14);
    v29 = v25[7];
    v30 = v54;
    v31 = *(v55 + 72);
    v49 = v24;
    sub_1DEEF50DC(v29 + v31 * v24, v54);
    v32 = v57;
    (v26)(v57, v27, v28);
    v33 = v59;
    sub_1DEEF50DC(v30, v32 + *(v59 + 48));
    v34 = v58;
    sub_1DEEF5208(v32, v58);
    v35 = v34 + *(v33 + 48);
    v36 = v60;
    sub_1DEF8D2E8();
    sub_1DEEF51AC(v35);
    v37 = v61;
    sub_1DEF8D348();
    v64 = sub_1DEF8D308();
    v38 = *v51;
    v39 = v37;
    v40 = v62;
    (*v51)(v39, v62);
    v38(v36, v40);
    sub_1DEE171B4(v32, &qword_1ECDE4998, &qword_1DEF93D80);
    v41 = v67[1];
    v41(v34, v28);
    sub_1DEEF51AC(v30);
    v41(v66, v28);
    v20 = v65;
    if (v64)
    {
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC7584(v45, v44, v46, v63);
        return;
      }
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v47)
    {
      goto LABEL_15;
    }

    v23 = *(v48 + 8 * v16);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v65 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1DEEF4BDC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEEF46EC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

BOOL _s16ReplicatorEngine14SessionManagerC0C0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DEF8D3A8() & 1) != 0 && (v4 = type metadata accessor for SessionManager.Session(0), v5 = a1 + v4[5], v6 = *(v5 + 8), v7 = *(v5 + 16), v8 = *(v5 + 24), v9 = *(v5 + 32), v20[0] = *v5, v20[1] = v6, v20[2] = v7, v20[3] = v8, v21 = v9, v22 = *(v5 + 40), v10 = a2 + v4[5], v11 = *(v10 + 8), v12 = *(v10 + 16), v13 = *(v10 + 24), v14 = *(v10 + 32), v17[0] = *v10, v17[1] = v11, v17[2] = v12, v17[3] = v13, v18 = v14, v19 = *(v10 + 40), v15 = _s16ReplicatorEngine19HandshakeDescriptorV2eeoiySbAC_ACtFZ_0(v20, v17), , , , , , , , , v15) && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_1DEF8D338() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEF4DC0()
{
  result = qword_1ECDE4988;
  if (!qword_1ECDE4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4988);
  }

  return result;
}

uint64_t sub_1DEEF5018(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    result = sub_1DEF8D378();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEEF50DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.Session(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEF5140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEF51AC(uint64_t a1)
{
  v2 = type metadata accessor for SessionManager.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEEF5208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DEEF5284(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  if (!a2)
  {
    a3(a1);
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v29);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v28 = sub_1DEF8D948();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  v16 = [v11 currentPersona];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_1DEF8D918();

  (a3)();
  v19 = [v11 currentPersona];
  if (!v19)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v20 = v19;

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    if (v15)
    {
      v25 = v28;
    }

    else
    {
      v25 = 7104878;
    }

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_1DEE12A5C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Reverting persona back to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {
  }
}

void sub_1DEEF561C(uint64_t a1, unint64_t a2, void (*a3)(void **__return_ptr))
{
  if (!a2)
  {
    (a3)(&v32, a1);
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v32);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v29 = sub_1DEF8D948();
    v15 = v14;
    v16 = [v11 currentPersona];
  }

  else
  {
    v15 = 0;
    v16 = [v11 currentPersona];
  }

  v17 = v16;
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = sub_1DEF8D918();

  a3(&v32);
  v20 = [v11 currentPersona];
  if (!v20)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v21 = v20;

  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136446210;
    if (v15)
    {
      v26 = v30;
    }

    else
    {
      v26 = 7104878;
    }

    if (v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1DEE12A5C(v26, v27, &v31);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Reverting persona back to %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12CCD70](v25, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  else
  {
  }
}

void sub_1DEEF59BC(uint64_t a1, unint64_t a2, void (*a3)(void **__return_ptr))
{
  if (!a2)
  {
    (a3)(&v29, a1);
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v29);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v28 = sub_1DEF8D948();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  v16 = [v11 currentPersona];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_1DEF8D918();

  a3(&v29);
  v19 = [v11 currentPersona];
  if (!v19)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v20 = v19;

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136446210;
    if (v15)
    {
      v25 = v28;
    }

    else
    {
      v25 = 7104878;
    }

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_1DEE12A5C(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Reverting persona back to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {
  }
}

id sub_1DEEF5D60@<X0>(char a3@<W4>, nw_browser_t *a4@<X8>, uint64_t x0_0@<X0>, uint64_t x1_0@<X1>)
{
  v8 = sub_1DEEF61B4(x0_0, x1_0);
  v9 = sub_1DEF8D918();
  v10 = [v9 UTF8String];
  result = v9;
  if (v10)
  {
    application_service = nw_browse_descriptor_create_application_service(v10);
    nw_browse_descriptor_set_browse_scope();
    if (a3 == 2 || a3 == 1)
    {
      nw_browse_descriptor_set_device_types();
    }

    v13 = nw_browser_create(application_service, v8);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v14 = sub_1DEF8D508();
    __swift_project_value_buffer(v14, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v15 = sub_1DEF8D4D8();
    v16 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v19 = sub_1DEF8D988();
      v21 = sub_1DEE12A5C(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DEE0F000, v15, v16, "Browser created %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12CCD70](v18, -1, -1);
      MEMORY[0x1E12CCD70](v17, -1, -1);
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *a4 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF5F88(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v5 = sub_1DEF8D508();
  __swift_project_value_buffer(v5, qword_1ECDF6010);
  v6 = sub_1DEF8D4D8();
  v7 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DEE0F000, v6, v7, "Starting browser", v8, 2u);
    MEMORY[0x1E12CCD70](v8, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v9);
  if (qword_1ECDE33F0 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
  sub_1DEF8DD18();
  return v12;
}

void sub_1DEEF6180(void *a1@<X8>)
{
  sub_1DEEF561C(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_1DEEF61B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A8, &qword_1DEF93D88);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = MEMORY[0x1E12CC4F0](v4);
  v8 = xpc_array_create(0, 0);
  v9 = sub_1DEF8D518();
  v10 = sub_1DEF8D998();
  xpc_array_set_string(v8, v9, (v10 + 32));

  v11 = xpc_array_create(0, 0);
  v12 = sub_1DEF8D518();
  v13 = sub_1DEF8D998();
  xpc_array_set_string(v11, v12, (v13 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  if (a2)
  {
    sub_1DEF8D658();
    v14 = sub_1DEF8D668();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_1DEEF642C(v6);
    }

    else
    {
      sub_1DEF8D648();
      (*(v15 + 8))(v6, v14);
    }

    nw_parameters_set_application_id();
    swift_unknownObjectRelease();
  }

  nw_parameters_set_include_screen_off_devices();
  nw_parameters_set_include_ble();
  v16 = xpc_array_create(0, 0);
  v17 = sub_1DEF8D518();
  xpc_array_set_uint64(v16, v17, 0x3E9uLL);
  nw_parameters_set_preferred_interface_subtypes();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1DEEF642C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A8, &qword_1DEF93D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t PersonaMonitorEvent.DeviceEvent.deviceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.deviceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PersonaMonitorEvent.DeviceEvent.personaID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.personaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_1DEEF666C()
{
  result = qword_1ECDE49B0;
  if (!qword_1ECDE49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49B0);
  }

  return result;
}

uint64_t sub_1DEEF66CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DEEF671C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1DEEF67AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DEEF67F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEEF6894(uint64_t a1)
{
  v3 = type metadata accessor for PairingRelationship(0);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7D60(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_1DEF8DE18();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_1DEEE42FC(*(a1 + 48) + *(v39 + 72) * v14, v38);
    (*v36)(v8, v19, v5);
    sub_1DEEE4360(v19);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1DEEC7D60((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1DEE2F804(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t UnifyingPairingRelationshipFilter.__allocating_init(filters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UnifyingPairingRelationshipFilter.init(filters:)(a1);
  return v2;
}

uint64_t UnifyingPairingRelationshipFilter.init(filters:)(uint64_t a1)
{
  v17 = a1;
  v15 = sub_1DEF8DD08();
  v1 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v14[1] = sub_1DEE3C630();
  v16 = "RapportBrowseAgent";
  sub_1DEF8D6C8();
  v19 = MEMORY[0x1E69E7CC0];
  v14[4] = sub_1DEE2BBD0(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v6 = *MEMORY[0x1E69E8090];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v14[2] = v7;
  v9 = v15;
  v8(v3, v6, v15);
  *(v18 + 24) = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v8(v3, v6, v9);
  v10 = sub_1DEF8DD38();
  v12 = v17;
  v11 = v18;
  *(v18 + 32) = v10;
  *(v11 + 16) = v12;
  return v11;
}

uint64_t UnifyingPairingRelationshipFilter.deinit()
{

  return v0;
}

uint64_t UnifyingPairingRelationshipFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v34 = a1;
  v5 = sub_1DEF8D698();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CD0];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(v3 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    do
    {
      sub_1DEE29594(v14, aBlock);
      dispatch_group_enter(v9);
      v15 = v40;
      v36 = v39;
      __swift_project_boxed_opaque_existential_1(aBlock, v39);
      v16 = swift_allocObject();
      v16[2] = v3;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v9;
      v35 = *(v15 + 1);

      v17 = v9;
      v35(v34, sub_1DEEF76E8, v16, v36, v15);

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  v36 = *(v3 + 24);
  v18 = swift_allocObject();
  v19 = v26;
  v20 = v27;
  v18[2] = v11;
  v18[3] = v19;
  v18[4] = v20;
  v18[5] = v10;
  v18[6] = v4;
  v40 = sub_1DEEF7EB0;
  v41 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  v39 = &block_descriptor_11;
  v21 = _Block_copy(aBlock);

  v22 = v28;
  sub_1DEF8D6B8();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BBD0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v23 = v31;
  v24 = v33;
  sub_1DEF8DE08();
  sub_1DEF8DCC8();
  _Block_release(v21);

  (*(v32 + 8))(v23, v24);
  (*(v29 + 8))(v22, v30);
}

uint64_t sub_1DEEF7430(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v8 = *(a3 + 24);
  if (a2)
  {
    v9 = a5 + 16;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v12 = sub_1DEEF8074;
    *(v11 + 16) = sub_1DEEF8074;
    *(v11 + 24) = v10;
    v26 = sub_1DEE13B20;
    v27 = v11;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DEE134F4;
    v25 = &block_descriptor_26_2;
    v13 = _Block_copy(&v22);
    sub_1DEEE43BC(a1, 1);

    dispatch_sync(v8, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v16 = 0;
LABEL_6:
      dispatch_group_leave(a6);
      sub_1DEE3DBD0(v16);
      return sub_1DEE3DBD0(v12);
    }

    __break(1u);
  }

  else
  {
    v17 = a4 + 16;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    v19 = swift_allocObject();
    v16 = sub_1DEEF807C;
    *(v19 + 16) = sub_1DEEF807C;
    *(v19 + 24) = v18;
    v26 = sub_1DEE46D40;
    v27 = v19;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DEE134F4;
    v25 = &block_descriptor_36;
    v20 = _Block_copy(&v22);
    sub_1DEEE43BC(a1, 0);

    dispatch_sync(v8, v20);
    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEF76F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairingRelationship(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    do
    {
      sub_1DEEE42FC(v11, v6);
      sub_1DEF395BC(v9, v6);
      sub_1DEEE4360(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return swift_endAccess();
}

id sub_1DEEF7840(void **a1, void *a2)
{
  swift_beginAccess();
  v4 = *a1;
  *a1 = a2;

  return a2;
}

void sub_1DEEF7890(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a2;
  v52 = a3;
  v8 = sub_1DEF8D698();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = v16;
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v18 = sub_1DEF8D508();
    __swift_project_value_buffer(v18, qword_1ECDF5FF8);
    v19 = v16;
    v20 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = v16;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1DEE0F000, v20, v21, "Failed to filter relationships: %{public}@", v22, 0xCu);
      sub_1DEEE2A84(v23);
      MEMORY[0x1E12CCD70](v23, -1, -1);
      MEMORY[0x1E12CCD70](v22, -1, -1);
    }

    v26 = v16;
    v51(v16, 1);
  }

  else
  {
    v47 = a5;
    v49 = v13;
    v50 = v12;
    swift_beginAccess();
    v48 = a4;

    v28 = sub_1DEEF6894(v27);

    sub_1DEEA3B70(v28);

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF5FF8);

    v30 = sub_1DEF8D4D8();
    v31 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = v9;
      v33 = v32;
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v33 = 136446210;
      sub_1DEF8D3F8();
      sub_1DEE2BBD0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v34 = sub_1DEF8DBF8();
      v36 = v35;

      v37 = sub_1DEE12A5C(v34, v36, aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1DEE0F000, v30, v31, "Fetched known relationships from filters: %{public}s", v33, 0xCu);
      v38 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12CCD70](v38, -1, -1);
      v39 = v33;
      v9 = v46;
      MEMORY[0x1E12CCD70](v39, -1, -1);
    }

    else
    {
    }

    v40 = v48;
    v41 = swift_allocObject();
    v42 = v52;
    v41[2] = v51;
    v41[3] = v42;
    v41[4] = v40;
    aBlock[4] = sub_1DEEF8068;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_17_0;
    v43 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BBD0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v15, v11, v43);
    _Block_release(v43);
    (*(v9 + 8))(v11, v8);
    (*(v49 + 8))(v15, v50);
  }
}

uint64_t sub_1DEEF7EC0(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    a1(MEMORY[0x1E69E7CC0], 0);
  }

  v7 = sub_1DEF2B350(v6, 0);
  v8 = *(type metadata accessor for PairingRelationship(0) - 8);
  sub_1DEF2E0B8(&v13, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;
  v11 = v13;

  result = sub_1DEE2774C(v11);
  if (v10 == v6)
  {
    a1(v7, 0);
  }

  __break(1u);
  return result;
}

uint64_t PairingRelationship.init(id:remoteDevice:lastIncomingConnectionDate:lastOutgoingConnectionDate:state:initialPairingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = sub_1DEF8D3F8();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for PairingRelationship(0);
  sub_1DEEFA048(a2, a7 + v16[5]);
  v17 = v16[6];
  v18 = sub_1DEF8D378();
  v22 = *(*(v18 - 8) + 32);
  (v22)((v18 - 8), a7 + v17, a3, v18);
  v22(a7 + v16[7], a4, v18);
  v19 = (a7 + v16[8]);
  *v19 = v13;
  v19[1] = v14;
  v20 = a7 + v16[9];

  return (v22)(v20, a6, v18);
}

BOOL PairingRelationship.isPaired.getter()
{
  v1 = *(v0 + *(type metadata accessor for PairingRelationship(0) + 32) + 8);
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_1DEEF8230()
{
  v1 = *v0;
  v2 = 0x6375646F72746E69;
  v3 = 0x646572696170;
  v4 = 0x6E6974617267696DLL;
  if (v1 != 3)
  {
    v4 = 0x6576697463616E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6972696170;
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

uint64_t sub_1DEEF82D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEEFAD14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEEF8304(uint64_t a1)
{
  v2 = sub_1DEEFA0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8340(uint64_t a1)
{
  v2 = sub_1DEEFA0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF837C(uint64_t a1)
{
  v2 = sub_1DEEFA100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF83B8(uint64_t a1)
{
  v2 = sub_1DEEFA100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF83F4(uint64_t a1)
{
  v2 = sub_1DEEFA250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8430(uint64_t a1)
{
  v2 = sub_1DEEFA250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEEF8504(uint64_t a1)
{
  v2 = sub_1DEEFA154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8540(uint64_t a1)
{
  v2 = sub_1DEEFA154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF857C(uint64_t a1)
{
  v2 = sub_1DEEFA1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF85B8(uint64_t a1)
{
  v2 = sub_1DEEFA1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF85F4(uint64_t a1)
{
  v2 = sub_1DEEFA1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8630(uint64_t a1)
{
  v2 = sub_1DEEFA1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PairingRelationship.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49B8, &qword_1DEF93F80);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49C0, &qword_1DEF93F88);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49C8, &qword_1DEF93F90);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49D0, &qword_1DEF93F98);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49D8, &qword_1DEF93FA0);
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49E0, &qword_1DEF93FA8);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = v1[1];
  v28 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFA0AC();
  sub_1DEF8E858();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v45 = 2;
      sub_1DEEFA1A8();
      v20 = v32;
      v19 = v42;
      sub_1DEF8E248();
      v22 = v33;
      v21 = v34;
    }

    else
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      v47 = 4;
      sub_1DEEFA100();
      v20 = v36;
      v19 = v42;
      sub_1DEF8E248();
      v22 = v39;
      v21 = v40;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v41 + 8))(v17, v19);
  }

  if (!v18)
  {
    v43 = 0;
    sub_1DEEFA250();
    v27 = v42;
    sub_1DEF8E248();
    (*(v29 + 8))(v14, v12);
    return (*(v41 + 8))(v17, v27);
  }

  if (v18 != 1)
  {
LABEL_8:
    v46 = 3;
    sub_1DEEFA154();
    v23 = v35;
    v24 = v42;
    sub_1DEF8E248();
    v25 = v38;
    sub_1DEF8E278();
    (*(v37 + 8))(v23, v25);
    return (*(v41 + 8))(v17, v24);
  }

  v44 = 1;
  sub_1DEEFA1FC();
  v19 = v42;
  sub_1DEF8E248();
  (*(v30 + 8))(v11, v31);
  return (*(v41 + 8))(v17, v19);
}

uint64_t PairingRelationship.State.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      return MEMORY[0x1E12CBF60](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E12CBF60](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1E12CBF60](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12CBF60](v3);
    }
  }

  MEMORY[0x1E12CBF60](3);

  return sub_1DEF8D9B8();
}

uint64_t PairingRelationship.State.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1DEF8E7A8();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v2);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF8D9C()
{
  v1 = *(v0 + 8);
  sub_1DEF8E7A8();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v2);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF8E54(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      return MEMORY[0x1E12CBF60](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E12CBF60](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1E12CBF60](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12CBF60](v3);
    }
  }

  MEMORY[0x1E12CBF60](3);

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEEF8F04(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DEF8E7A8();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v3);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t PairingRelationship.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PairingRelationship.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PairingRelationship.remoteDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PairingRelationship(0) + 20);

  return sub_1DEEFA2A4(a1, v3);
}

uint64_t PairingRelationship.lastIncomingConnectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 24);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.lastIncomingConnectionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 24);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.lastOutgoingConnectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.lastOutgoingConnectionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PairingRelationship(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1DEE4F8C0(v4, v5);
}

uint64_t PairingRelationship.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for PairingRelationship(0) + 32);
  result = sub_1DEE4F8D4(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t PairingRelationship.initialPairingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 36);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.initialPairingDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship(0) + 36);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.description.getter()
{
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8D3F8();
  sub_1DEEFA504(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  MEMORY[0x1E12CB180](0x3A6574617473203BLL, 0xE900000000000020);
  v2 = (v0 + *(type metadata accessor for PairingRelationship(0) + 32));
  v3 = v2[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0xE600000000000000;
      v5 = 0x646572696170;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = 0xE800000000000000;
      v5 = 0x6576697463616E69;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1E12CB180](*v2);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    v5 = 0x6E6974617267696DLL;
    v4 = 0xEA00000000002867;
    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = 0xEA00000000006465;
    v5 = 0x6375646F72746E69;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 0xE700000000000000;
  v5 = 0x676E6972696170;
LABEL_11:
  MEMORY[0x1E12CB180](v5, v4);

  MEMORY[0x1E12CB180](0x726961507369203BLL, 0xEC000000203A6465);
  v6 = v2[1];
  if (v6 != 3 && v6)
  {
    v7 = 0xE400000000000000;
    v8 = 1702195828;
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x65736C6166;
  }

  MEMORY[0x1E12CB180](v8, v7);

  MEMORY[0x1E12CB180](0x4465746F6D657220, 0xEF203A6563697665);
  v9 = DeviceDescriptor.shortDescription.getter();
  MEMORY[0x1E12CB180](v9);

  MEMORY[0x1E12CB180](0xD00000000000001ELL, 0x80000001DEF9CF00);
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v10 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v10);

  MEMORY[0x1E12CB180](0xD000000000000016, 0x80000001DEF9CF20);
  v11 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v11);

  MEMORY[0x1E12CB180](59, 0xE100000000000000);
  return 0;
}

uint64_t PairingRelationship.hash(into:)(__int128 *a1)
{
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v3 = type metadata accessor for PairingRelationship(0);
  DeviceDescriptor.hash(into:)(a1);
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DEF8D8C8();
  sub_1DEF8D8C8();
  v4 = *(v1 + *(v3 + 32) + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v5 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (v4 == 1)
    {
      v5 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v5);
      return sub_1DEF8D8C8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8D8C8();
}

uint64_t PairingRelationship.hashValue.getter()
{
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v1 = type metadata accessor for PairingRelationship(0);
  DeviceDescriptor.hash(into:)(v5);
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DEF8D8C8();
  sub_1DEF8D8C8();
  v2 = *(v0 + *(v1 + 32) + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v3);
      goto LABEL_12;
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  sub_1DEF8D8C8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF9CCC(uint64_t a1, uint64_t a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  DeviceDescriptor.hash(into:)(v7);
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DEF8D8C8();
  sub_1DEF8D8C8();
  v4 = *(v2 + *(a2 + 32) + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v5 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (v4 == 1)
    {
      v5 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v5);
      goto LABEL_12;
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  sub_1DEF8D8C8();
  return sub_1DEF8E7F8();
}

uint64_t _s16ReplicatorEngine19PairingRelationshipV5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1DEE4F8D4(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1DEE4F8D4(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1DEE4F8D4(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1DEE4F8D4(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1DEE4F8D4(*a1, 1uLL);
      sub_1DEE4F8D4(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1DEE4F8C0(*a2, *(a2 + 8));
    sub_1DEE4F8C0(v2, v3);
    sub_1DEE4F8D4(v2, v3);
    sub_1DEE4F8D4(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1DEE4F8C0(*a1, v3);
    sub_1DEE4F8C0(v2, v3);
    sub_1DEE4F8D4(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = sub_1DEF8E4E8();
  sub_1DEE4F8C0(v4, v5);
  sub_1DEE4F8C0(v2, v3);
  sub_1DEE4F8D4(v2, v3);
  sub_1DEE4F8D4(v4, v5);
  return v10 & 1;
}

uint64_t sub_1DEEFA048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEEFA0AC()
{
  result = qword_1ECDE49E8;
  if (!qword_1ECDE49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49E8);
  }

  return result;
}

unint64_t sub_1DEEFA100()
{
  result = qword_1ECDE49F0;
  if (!qword_1ECDE49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49F0);
  }

  return result;
}

unint64_t sub_1DEEFA154()
{
  result = qword_1ECDE49F8;
  if (!qword_1ECDE49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49F8);
  }

  return result;
}

unint64_t sub_1DEEFA1A8()
{
  result = qword_1ECDE4A00;
  if (!qword_1ECDE4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A00);
  }

  return result;
}

unint64_t sub_1DEEFA1FC()
{
  result = qword_1ECDE4A08;
  if (!qword_1ECDE4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A08);
  }

  return result;
}

unint64_t sub_1DEEFA250()
{
  result = qword_1ECDE4A10;
  if (!qword_1ECDE4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A10);
  }

  return result;
}

uint64_t sub_1DEEFA2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16ReplicatorEngine19PairingRelationshipV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DEF8D3A8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PairingRelationship(0);
  if ((static DeviceDescriptor.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DEF8D338() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DEF8D338() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = *(a1 + v5 + 8);
  v13 = *(a1 + v5);
  v14 = v6;
  v7 = (a2 + v5);
  v8 = v7[1];
  v11 = *v7;
  v12 = v8;
  sub_1DEE4F8C0(v13, v6);
  sub_1DEE4F8C0(v11, v8);
  v9 = _s16ReplicatorEngine19PairingRelationshipV5StateO2eeoiySbAE_AEtFZ_0(&v13, &v11);
  sub_1DEE4F8D4(v11, v12);
  sub_1DEE4F8D4(v13, v14);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1DEF8D338();
}

unint64_t sub_1DEEFA420()
{
  result = qword_1ECDE4A48;
  if (!qword_1ECDE4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A48);
  }

  return result;
}

uint64_t sub_1DEEFA504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEEFA54C(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DeviceDescriptor(319);
    if (v3 <= 0x3F)
    {
      result = sub_1DEF8D378();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DEEFA5F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEEFA648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairedDevice.PairedDeviceClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairedDevice.PairedDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEEFA848()
{
  result = qword_1ECDE4A50;
  if (!qword_1ECDE4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A50);
  }

  return result;
}

unint64_t sub_1DEEFA8A0()
{
  result = qword_1ECDE4A58;
  if (!qword_1ECDE4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A58);
  }

  return result;
}

unint64_t sub_1DEEFA8F8()
{
  result = qword_1ECDE4A60;
  if (!qword_1ECDE4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A60);
  }

  return result;
}

unint64_t sub_1DEEFA950()
{
  result = qword_1ECDE4A68;
  if (!qword_1ECDE4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A68);
  }

  return result;
}

unint64_t sub_1DEEFA9A8()
{
  result = qword_1ECDE4A70;
  if (!qword_1ECDE4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A70);
  }

  return result;
}

unint64_t sub_1DEEFAA00()
{
  result = qword_1ECDE4A78;
  if (!qword_1ECDE4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A78);
  }

  return result;
}

unint64_t sub_1DEEFAA58()
{
  result = qword_1ECDE4A80;
  if (!qword_1ECDE4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A80);
  }

  return result;
}

unint64_t sub_1DEEFAAB0()
{
  result = qword_1ECDE4A88;
  if (!qword_1ECDE4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A88);
  }

  return result;
}

unint64_t sub_1DEEFAB08()
{
  result = qword_1ECDE4A90;
  if (!qword_1ECDE4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A90);
  }

  return result;
}

unint64_t sub_1DEEFAB60()
{
  result = qword_1ECDE4A98;
  if (!qword_1ECDE4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A98);
  }

  return result;
}

unint64_t sub_1DEEFABB8()
{
  result = qword_1ECDE4AA0;
  if (!qword_1ECDE4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AA0);
  }

  return result;
}

unint64_t sub_1DEEFAC10()
{
  result = qword_1ECDE4AA8;
  if (!qword_1ECDE4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AA8);
  }

  return result;
}

unint64_t sub_1DEEFAC68()
{
  result = qword_1ECDE4AB0;
  if (!qword_1ECDE4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AB0);
  }

  return result;
}

unint64_t sub_1DEEFACC0()
{
  result = qword_1ECDE4AB8;
  if (!qword_1ECDE4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AB8);
  }

  return result;
}

uint64_t sub_1DEEFAD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6972696170 && a2 == 0xE700000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646572696170 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6974617267696DLL && a2 == 0xE900000000000067 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DEEFAED4()
{
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEFAF48(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEFAF8C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEFC764(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DEEFB074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DEF8D3F8();
  __swift_allocate_value_buffer(v3, qword_1ECDF60C0);
  v4 = __swift_project_value_buffer(v3, qword_1ECDF60C0);
  sub_1DEF8D388();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DEEFB1A4()
{
  v89 = *MEMORY[0x1E69E9840];
  v78 = sub_1DEF8D3D8();
  v79 = v1;
  v80 = v2;
  v81 = v3;
  v82 = v4;
  v83 = v5;
  v84 = v6;
  v85 = v7;
  v86 = v8;
  v9 = type metadata accessor for NetworkSyncHeader(0);
  __src = *(v0 + v9[5]);
  v68 = sub_1DEF8D3D8();
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  v75 = v16;
  v76 = v17;
  v59 = sub_1DEF8D3D8();
  v60 = v18;
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = v22;
  v65 = v23;
  v66 = v24;
  v67 = v25;
  v26 = v9[9];
  v58 = *(v0 + v9[8]);
  v57 = *(v0 + v26);
  v27 = *(v0 + v9[10]);
  v55 = *(v0 + v9[11]);
  v56 = v27;
  v54 = *(v0 + v9[12]);
  v87 = sub_1DEEFC774(&v78, 0x10uLL);
  v88 = v28;
  v29 = sub_1DEEFC6AC(&__src, &v78);
  v31 = v30;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v29, v31 & 0xFFFFFFFFFFFFFFLL);
  v32 = sub_1DEEFC774(&v68, 0x10uLL);
  v34 = v33;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v32, v34);
  v35 = sub_1DEEFC774(&v59, 0x10uLL);
  v37 = v36;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v35, v37);
  v38 = sub_1DEEFC6AC(&v58, &v59);
  v40 = v39;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v38, v40 & 0xFFFFFFFFFFFFFFLL);
  v41 = sub_1DEEFC6AC(&v57, &v58);
  v43 = v42;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v41, v43 & 0xFFFFFFFFFFFFFFLL);
  v44 = sub_1DEEFC6AC(&v56, &v57);
  v46 = v45;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v44, v46 & 0xFFFFFFFFFFFFFFLL);
  v47 = sub_1DEEFC6AC(&v55, &v56);
  v49 = v48;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v47, v49 & 0xFFFFFFFFFFFFFFLL);
  v50 = sub_1DEEFC6AC(&v54, &v55);
  v52 = v51;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v50, v52 & 0xFFFFFFFFFFFFFFLL);
  return v87;
}

uint64_t sub_1DEEFB530(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x786966657270;
    v6 = 0x496567617373656DLL;
    if (a1 != 2)
    {
      v6 = 0x44497265646E6573;
    }

    if (a1)
    {
      v5 = 0x654C726564616568;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65636E6575716573;
    v2 = 0x65636E6575716573;
    if (a1 != 7)
    {
      v2 = 0x797469726F697270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6874676E656CLL;
    if (a1 != 4)
    {
      v3 = 0x546567617373656DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DEEFB670(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B18, &qword_1DEF94A20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFCA98();
  sub_1DEF8E858();
  v11[31] = 0;
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE3640, MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = type metadata accessor for NetworkSyncHeader(0);
    v11[30] = 1;
    sub_1DEF8E2A8();
    v11[29] = 2;
    sub_1DEF8E298();
    v11[28] = 3;
    sub_1DEF8E298();
    v11[27] = 4;
    sub_1DEF8E2A8();
    v11[26] = *(v3 + *(v9 + 36));
    v11[25] = 5;
    sub_1DEEFCC54();
    sub_1DEF8E298();
    v11[24] = 6;
    sub_1DEF8E2A8();
    v11[15] = 7;
    sub_1DEF8E2A8();
    v11[14] = *(v3 + *(v9 + 48));
    v11[13] = 8;
    sub_1DEEFCCA8();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEEFB998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1DEF8D3F8();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4AF8, &qword_1DEF94A18);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFCA98();
  v45 = v14;
  v18 = v46;
  sub_1DEF8E848();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v5;
  v38 = v8;
  v46 = v15;
  v19 = v17;
  v57 = 0;
  sub_1DEE1E37C(&qword_1ECDE3630, MEMORY[0x1E69695D0]);
  v20 = v41;
  v21 = v42;
  sub_1DEF8E1F8();
  v22 = *(v40 + 32);
  v23 = (v40 + 32);
  v22(v19, v44, v20);
  v56 = 1;
  v24 = sub_1DEF8E208();
  v36 = v22;
  v44 = v23;
  *&v19[v46[5]] = v24;
  v55 = 2;
  v25 = v38;
  sub_1DEF8E1F8();
  v26 = v46[6];
  v35 = v19;
  v27 = v25;
  v28 = v36;
  v36(&v19[v26], v27, v20);
  v54 = 3;
  v29 = v37;
  sub_1DEF8E1F8();
  v30 = v46;
  v28(v35 + v46[7], v29, v20);
  v53 = 4;
  v31 = sub_1DEF8E208();
  v32 = v35;
  *(v35 + v30[8]) = v31;
  v51 = 5;
  sub_1DEEFCAEC();
  sub_1DEF8E1F8();
  *(v32 + v30[9]) = v52;
  v50 = 6;
  *(v32 + v30[10]) = sub_1DEF8E208();
  v49 = 7;
  *(v32 + v30[11]) = sub_1DEF8E208();
  v47 = 8;
  sub_1DEEFCB40();
  sub_1DEF8E1F8();
  (*(v43 + 8))(v45, v21);
  *(v32 + v30[12]) = v48;
  sub_1DEEFCB94(v32, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEEFCBF8(v32);
}

uint64_t sub_1DEEFBFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEEFCFA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEEFC02C(uint64_t a1)
{
  v2 = sub_1DEEFCA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEFC068(uint64_t a1)
{
  v2 = sub_1DEEFCA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEFC0D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_17:
      sub_1DEEFC824();
      swift_allocError();
      swift_willThrow();
      return sub_1DEE1BFA0(a1, a2);
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  if (BYTE6(a2) != 20)
  {
    goto LABEL_17;
  }

  while (1)
  {
LABEL_8:
    v36 = a3;
    if (v10 == 2)
    {
      v35 = v7;
      v20 = *(a1 + 16);
      v21 = sub_1DEF8D018();
      if (!v21)
      {
        sub_1DEF8D038();
LABEL_48:
        __break(1u);
LABEL_49:
        sub_1DEF8D038();
        __break(1u);
        goto LABEL_50;
      }

      v22 = v21;
      v23 = sub_1DEF8D048();
      if (!__OFSUB__(v20, v23))
      {
        v18 = v20 - v23 + v22;
        sub_1DEF8D038();
        v7 = v35;
        if (v18)
        {
LABEL_21:
          (*(v7 + 16))(v9, v18, v6);
          goto LABEL_23;
        }

        goto LABEL_48;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v10 != 1)
    {
      break;
    }

    v35 = v7;
    if (a1 > a1 >> 32)
    {
      goto LABEL_41;
    }

    v15 = sub_1DEF8D018();
    if (!v15)
    {
      goto LABEL_49;
    }

    v16 = v15;
    v17 = sub_1DEF8D048();
    if (__OFSUB__(a1, v17))
    {
      goto LABEL_43;
    }

    v18 = a1 - v17 + v16;
    a3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1DEF8D038();
    v7 = v35;
    if (v18)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_40;
    }

    if (HIDWORD(a1) - a1 != 20)
    {
      goto LABEL_17;
    }
  }

  v37 = a1;
  v38 = a2;
  v39 = BYTE2(a2);
  v40 = BYTE3(a2);
  v41 = BYTE4(a2);
  v42 = BYTE5(a2);
  (*(v7 + 16))(v9, &v37, v6);
LABEL_23:
  if (qword_1ECDE37F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1ECDF60C0);
  if ((sub_1DEF8D3A8() & 1) == 0 || !v10)
  {
    goto LABEL_37;
  }

  if (v10 != 2)
  {
    if (a1 <= a1 >> 32)
    {
      v29 = sub_1DEF8D018();
      if (!v29)
      {
        goto LABEL_52;
      }

      v30 = v29;
      v31 = sub_1DEF8D048();
      if (!__OFSUB__(a1, v31))
      {
        v28 = a1 - v31 + v30;
        result = sub_1DEF8D038();
        if (!v28)
        {
          goto LABEL_53;
        }

LABEL_36:
        v32 = *(v28 + 16);
        v33 = v36;
        if (v32 >= 0x48)
        {
          sub_1DEE1BFA0(a1, a2);
          (*(v7 + 32))(v33, v9, v6);
          result = type metadata accessor for NetworkSyncHeaderPreamble(0);
          *(v33 + *(result + 20)) = v32;
          return result;
        }

LABEL_37:
        sub_1DEEFC824();
        swift_allocError();
        swift_willThrow();
        sub_1DEE1BFA0(a1, a2);
        return (*(v7 + 8))(v9, v6);
      }

LABEL_46:
      __break(1u);
    }

    goto LABEL_44;
  }

  v24 = *(a1 + 16);
  v25 = sub_1DEF8D018();
  if (!v25)
  {
LABEL_50:
    sub_1DEF8D038();
    goto LABEL_51;
  }

  v26 = v25;
  v27 = sub_1DEF8D048();
  if (__OFSUB__(v24, v27))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v28 = v24 - v27 + v26;
  sub_1DEF8D038();
  if (v28)
  {
    goto LABEL_36;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1DEF8D038();
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

BOOL sub_1DEEFC5A4(uint64_t a1, uint64_t a2)
{
  if (sub_1DEF8D3A8() & 1) != 0 && (v4 = type metadata accessor for NetworkSyncHeader(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (sub_1DEF8D3A8()) && (sub_1DEF8D3A8() & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]))
  {
    return *(a1 + v5[12]) == *(a2 + v5[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEFC68C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEFC6AC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1DEEFC764(uint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1DEEFC774(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DEEFC6AC(a1, &a1[a2]);
  }

  sub_1DEF8D068();
  swift_allocObject();
  sub_1DEF8D008();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DEF8D238();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DEEFC824()
{
  result = qword_1ECDE4AC0;
  if (!qword_1ECDE4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AC0);
  }

  return result;
}

uint64_t sub_1DEEFC8B0(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DEEFC94C(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEFC9EC()
{
  result = qword_1ECDE4AE8;
  if (!qword_1ECDE4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AE8);
  }

  return result;
}

unint64_t sub_1DEEFCA44()
{
  result = qword_1ECDE4AF0;
  if (!qword_1ECDE4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AF0);
  }

  return result;
}

unint64_t sub_1DEEFCA98()
{
  result = qword_1ECDE4B00;
  if (!qword_1ECDE4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B00);
  }

  return result;
}

unint64_t sub_1DEEFCAEC()
{
  result = qword_1ECDE4B08;
  if (!qword_1ECDE4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B08);
  }

  return result;
}

unint64_t sub_1DEEFCB40()
{
  result = qword_1ECDE4B10;
  if (!qword_1ECDE4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B10);
  }

  return result;
}

uint64_t sub_1DEEFCB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSyncHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEFCBF8(uint64_t a1)
{
  v2 = type metadata accessor for NetworkSyncHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEFCC54()
{
  result = qword_1ECDE4B20;
  if (!qword_1ECDE4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B20);
  }

  return result;
}

unint64_t sub_1DEEFCCA8()
{
  result = qword_1ECDE4B28;
  if (!qword_1ECDE4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B28);
  }

  return result;
}

unint64_t sub_1DEEFCCFC()
{
  result = qword_1ECDE4B30;
  if (!qword_1ECDE4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkSyncHeader.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkSyncHeader.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DEEFCEA4()
{
  result = qword_1ECDE4B38;
  if (!qword_1ECDE4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B38);
  }

  return result;
}

unint64_t sub_1DEEFCEFC()
{
  result = qword_1ECDE4B40;
  if (!qword_1ECDE4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B40);
  }

  return result;
}

unint64_t sub_1DEEFCF54()
{
  result = qword_1ECDE4B48;
  if (!qword_1ECDE4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B48);
  }

  return result;
}

uint64_t sub_1DEEFCFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654C726564616568 && a2 == 0xEC0000006874676ELL || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED0000746E756F43 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED00007865646E49 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 HandshakeDescriptor.init(remoteDeviceID:personaID:deviceType:protocolVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t HandshakeDescriptor.remoteDeviceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HandshakeDescriptor.remoteDeviceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandshakeDescriptor.personaID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HandshakeDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 HandshakeDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 HandshakeDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

uint64_t HandshakeDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v2)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v3);
  MEMORY[0x1E12CBF90](v5);
  return MEMORY[0x1E12CBF90](v4);
}

uint64_t HandshakeDescriptor.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v1)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v2);
  MEMORY[0x1E12CBF90](v4);
  MEMORY[0x1E12CBF90](v3);
  return sub_1DEF8E7F8();
}
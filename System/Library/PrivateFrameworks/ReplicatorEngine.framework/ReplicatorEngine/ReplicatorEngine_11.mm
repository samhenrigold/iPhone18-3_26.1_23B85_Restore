uint64_t sub_1DEF130B4(uint64_t a1)
{
  v2 = sub_1DEE23D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF130F0(uint64_t a1)
{
  v2 = sub_1DEE23D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScreenDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C08, &qword_1DEF95620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23D60();
  sub_1DEF8E858();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  type metadata accessor for CGSize(0);
  sub_1DEE23CD0(&qword_1ECDE2BA0, MEMORY[0x1E695EF88]);
  sub_1DEF8E298();
  if (!v2)
  {
    v12 = v14;
    v16 = v10;
    v15 = 1;
    sub_1DEF13594();
    sub_1DEF8E298();
    v16 = v12;
    LOBYTE(v17) = v11;
    v15 = 2;
    sub_1DEF8E258();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ScreenDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E12CBF90](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1E12CBF90](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1E12CBF90](*&v7);
  if (v5 == 1)
  {
    return sub_1DEF8E7C8();
  }

  sub_1DEF8E7C8();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1E12CBF90](v9);
}

uint64_t ScreenDescriptor.hashValue.getter()
{
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF13470()
{
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF134D8(uint64_t a1)
{
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine16ScreenDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_1DEF13594()
{
  result = qword_1ECDE3600;
  if (!qword_1ECDE3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3600);
  }

  return result;
}

unint64_t sub_1DEF135EC()
{
  result = qword_1ECDE4C18;
  if (!qword_1ECDE4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4C18);
  }

  return result;
}

unint64_t sub_1DEF13654()
{
  result = qword_1ECDE4C20;
  if (!qword_1ECDE4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4C20);
  }

  return result;
}

unint64_t sub_1DEF136AC()
{
  result = qword_1ECDE33D0;
  if (!qword_1ECDE33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33D0);
  }

  return result;
}

unint64_t sub_1DEF13704()
{
  result = qword_1ECDE33D8;
  if (!qword_1ECDE33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33D8);
  }

  return result;
}

uint64_t sub_1DEF13758(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

void *sub_1DEF13870(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1DEF8DE68();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1DEF2B57C(v3, 0);
  sub_1DEF2CFA8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DEF13904(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E98, &qword_1DEF95B58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF301A8();
  sub_1DEF8E858();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E60, &qword_1DEF95B40);
  sub_1DEF30468(&unk_1ECDE4EA0, sub_1DEEBBEC0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1DEF8E298();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DEF13AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_1DEF13B44(uint64_t a1)
{
  v2 = sub_1DEF301A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF13B80(uint64_t a1)
{
  v2 = sub_1DEF301A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DEF13BBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DEF2E474(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DEF13C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DE8, &qword_1DEF95AD0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1ECDE4C30 = result;
  return result;
}

void sub_1DEF13C4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v5 = *(a1 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v7;
    return;
  }

  v10[9] = v2;
  v7 = sub_1DEF2B2A4(v6, 0);
  v8 = sub_1DEF2E31C(v10, v7 + 4, v6, v5);
  v9 = v10[0];

  sub_1DEE2774C(v9);
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1DEF13D38(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  v13 = sub_1DEF8D7B8();
  v14 = (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v15 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
  MEMORY[0x1EEE9AC00](v14);
  *(&v22 - 2) = a1;
  *(&v22 - 1) = a2;
  os_unfair_lock_lock((v15 + 32));
  sub_1DEF30114((v15 + 16), v23);
  os_unfair_lock_unlock((v15 + 32));
  v10 = v23[2];
  if (LOBYTE(v23[0]) != 1)
  {
  }

  v13 = v23[1];
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = sub_1DEF8D508();
  __swift_project_value_buffer(v16, qword_1ECDF6010);

  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1DEE12A5C(a1, a2, v23);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1DEE12A5C(v13, v10, v23);
    _os_log_impl(&dword_1DEE0F000, v17, v18, "set terminusRemoteDeviceID:%{public}s changed from %{public}s; updating connections key", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  sub_1DEF140DC(a1, a2, v13, v10);
}

double sub_1DEF14034@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == a2 && v6 == a3)
  {
    v11 = 0;
  }

  else if (sub_1DEF8E4E8())
  {
    v11 = 0;
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
    v11 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;

  return result;
}

uint64_t sub_1DEF140DC(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v38 = a2;
  v36 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  v21 = *(v5 + 56);
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v18 = a3;
  v22 = sub_1DEE13224(a3, a4);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_1DEE15068(*(v21 + 56) + *(v37 + 72) * v22, v13, type metadata accessor for NetworkMessenger.ExpiringConnection);
  swift_endAccess();
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v35 = v11;
  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6010);

  v25 = v38;

  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_1DEE12A5C(a3, a4, v39);
    *(v28 + 12) = 2082;
    v30 = v36;
    *(v28 + 14) = sub_1DEE12A5C(v36, v38, v39);
    _os_log_impl(&dword_1DEE0F000, v26, v27, "updating connection key from %{public}s to %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v31 = v29;
    v25 = v38;
    MEMORY[0x1E12CCD70](v31, -1, -1);
    v32 = v28;
    v18 = a3;
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  else
  {

    v30 = v36;
  }

  swift_beginAccess();
  sub_1DEF759B0(v18, a4, v10);
  swift_endAccess();
  sub_1DEE171B4(v10, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  sub_1DEE15068(v13, v10, type metadata accessor for NetworkMessenger.ExpiringConnection);
  (*(v37 + 56))(v10, 0, 1, v35);
  swift_beginAccess();

  sub_1DEE136B8(v10, v30, v25);
  swift_endAccess();
  return sub_1DEE15388(v13, type metadata accessor for NetworkMessenger.ExpiringConnection);
}

uint64_t sub_1DEF1458C(NSObject *isEscapingClosureAtFileLocation)
{
  v2 = v1;
  v28 = *MEMORY[0x1E69E9840];
  out_token = -1;
  v5 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v26 = sub_1DEF304EC;
  v27 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1DEF422C8;
  v25 = &block_descriptor_396;
  v7 = _Block_copy(&aBlock);

  v8 = sub_1DEF8D998();
  v9 = notify_register_dispatch((v8 + 32), &out_token, isEscapingClosureAtFileLocation, v7);

  _Block_release(v7);
  if (!v9)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);

    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DCB8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_10;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    v18 = sub_1DEE12A5C(v5, v4, &aBlock);

    *(v13 + 4) = v18;
    v16 = "registered for %s notifications";
    goto LABEL_9;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF6028);

    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DC98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = sub_1DEE12A5C(v5, v4, &aBlock);

      *(v13 + 4) = v15;
      v16 = "Could not register for %s notifications";
LABEL_9:
      _os_log_impl(&dword_1DEE0F000, v11, v12, v16, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12CCD70](v14, -1, -1);
      MEMORY[0x1E12CCD70](v13, -1, -1);
    }

    else
    {
LABEL_10:
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = &out_token;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1DEF304F4;
    *(v4 + 24) = v19;
    v26 = sub_1DEE46D40;
    v27 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DEE134F4;
    v25 = &block_descriptor_406;
    v5 = _Block_copy(&aBlock);

    dispatch_sync(isEscapingClosureAtFileLocation, v5);
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  return result;
}

id *sub_1DEF149D4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
  v2 = sub_1DEF8D1E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber));
  return v0;
}

uint64_t sub_1DEF14ADC()
{
  sub_1DEF149D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF14B5C(uint64_t a1)
{
  result = sub_1DEF8D1E8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1DEF14CC0()
{
  if (!qword_1ECDE4D18)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE4D18);
    }
  }
}

uint64_t sub_1DEF14D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = a5(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEF14DF0()
{
  result = qword_1ECDE4D38;
  if (!qword_1ECDE4D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECDE4D38);
  }

  return result;
}

NSObject *sub_1DEF14E54()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[3];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_1DEF8D508();
  __swift_project_value_buffer(v9, qword_1ECDF6010);

  v10 = sub_1DEF8D4D8();
  v11 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    v14 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType);
    *v12 = 136446210;
    if (v14)
    {
      v15 = 0xD000000000000011;
    }

    else
    {
      v15 = 0x72656E657473696CLL;
    }

    if (v14)
    {
      v16 = 0x80000001DEF9D810;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_1DEE12A5C(v15, v16, &aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DEE0F000, v10, v11, "Starting %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12CCD70](v13, -1, -1);
    MEMORY[0x1E12CCD70](v12, -1, -1);
  }

  v18 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType;
  LOBYTE(aBlock) = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType);
  result = sub_1DEF2ED98(&aBlock);
  if (result)
  {
    v20 = result;
    v21 = sub_1DEF8D918();
    v22 = [v21 UTF8String];
    result = v21;
    if (v22)
    {
      application_service = nw_advertise_descriptor_create_application_service(v22);
      v24 = nw_listener_create(v20);
      if (v24)
      {
        v25 = v24;

        swift_unknownObjectRetain();
        v26 = sub_1DEF8D4D8();
        v27 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock = v29;
          *v28 = 136446466;
          v30 = *(v1 + v18) == 0;
          if (*(v1 + v18))
          {
            v31 = 0xD000000000000011;
          }

          else
          {
            v31 = 0x72656E657473694CLL;
          }

          v44[0] = application_service;
          v32 = v8;
          if (v30)
          {
            v33 = 0xE800000000000000;
          }

          else
          {
            v33 = 0x80000001DEF9D7F0;
          }

          v34 = sub_1DEE12A5C(v31, v33, &aBlock);

          *(v28 + 4) = v34;
          *(v28 + 12) = 2082;
          v44[1] = v25;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
          v35 = sub_1DEF8D988();
          v37 = sub_1DEE12A5C(v35, v36, &aBlock);

          *(v28 + 14) = v37;
          v8 = v32;
          application_service = v44[0];
          _os_log_impl(&dword_1DEE0F000, v26, v27, "%{public}s created %{public}s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v29, -1, -1);
          MEMORY[0x1E12CCD70](v28, -1, -1);
        }

        nw_listener_set_advertise_descriptor(v25, application_service);
        v38 = swift_allocObject();
        swift_weakInit();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v39 + 24) = v25;
        v49 = sub_1DEE129C4;
        v50 = v39;
        aBlock = MEMORY[0x1E69E9820];
        v46 = 1107296256;
        v47 = sub_1DEE11B94;
        v48 = &block_descriptor_352;
        v40 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        nw_listener_set_new_connection_handler(v25, v40);
        _Block_release(v40);
        v41 = swift_allocObject();
        *(v41 + 16) = v25;
        v49 = sub_1DEF30388;
        v50 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v46 = 1107296256;
        v47 = sub_1DEF23788;
        v48 = &block_descriptor_358;
        v42 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        MEMORY[0x1E12CC4B0](v25, v42);
        _Block_release(v42);
        v1[5] = v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        nw_listener_set_queue(v25, v8);
        nw_listener_start(v25);
        v43 = v1[6];
        if (v43)
        {
          v1[6] = 0;
          sub_1DEF2EEE4(v43);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DEF154A0(NSObject *a1, NSObject *a2, unint64_t a3)
{
  v4 = v3;
  v136 = a2;
  v7 = sub_1DEF8D3F8();
  v126 = *(v7 - 8);
  v127 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = (&v121 - v10);
  v133 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v11 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v121 - v20;
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v4 + 24);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21, v23);
  v27 = v26;
  LOBYTE(v26) = sub_1DEF8D7B8();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  v122 = v13;
  v128 = v16;
  v13 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType;
  if (*(v4 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1 && !a3)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v132 = v11;
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_43;
  }

LABEL_5:
  v28 = sub_1DEF8D508();
  v29 = __swift_project_value_buffer(v28, qword_1ECDF6010);

  swift_unknownObjectRetain();
  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DCB8();

  swift_unknownObjectRelease();

  v32 = os_log_type_enabled(v30, v31);
  v135 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v138 = v34;
    *v33 = 136315650;
    if (v13[v4])
    {
      v35 = 0x73756E696D726574;
    }

    else
    {
      v35 = 0x647261646E617473;
    }

    v36 = sub_1DEE12A5C(v35, 0xE800000000000000, &v138);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    aBlock = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E00, &unk_1DEF95AE8);
    v37 = sub_1DEF8D988();
    v39 = sub_1DEE12A5C(v37, v38, &v138);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    v40 = 0xE000000000000000;
    if (a3)
    {
      aBlock = 0;
      v140 = 0xE000000000000000;
      sub_1DEF8DF28();

      aBlock = 0xD000000000000012;
      v140 = 0x80000001DEF9D6C0;
      v137[0] = v136;
      v137[1] = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v41 = sub_1DEF8D988();
      MEMORY[0x1E12CB180](v41);

      v42 = aBlock;
      v40 = v140;
    }

    else
    {
      v42 = 0;
    }

    v43 = sub_1DEE12A5C(v42, v40, &v138);

    *(v33 + 24) = v43;
    _os_log_impl(&dword_1DEE0F000, v30, v31, "Creating %s connection from %{public}s%s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v34, -1, -1);
    MEMORY[0x1E12CCD70](v33, -1, -1);
  }

  else
  {
  }

  if (v13[v4] != 1)
  {
    v44 = 0;
LABEL_18:
    LOBYTE(aBlock) = v44;
    v45 = sub_1DEF2F0C4(&aBlock);
    if (!v45)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v46 = v45;
    v47 = swift_slowAlloc();
    *v47 = 0;
    v47[1] = 0;
    nw_endpoint_set_agent_identifier();
    if (a3)
    {

      v48 = sub_1DEF8D4D8();
      v49 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_1DEE12A5C(v136, a3, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v48, v49, "Using overrideDeviceID %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1E12CCD70](v51, -1, -1);
        MEMORY[0x1E12CCD70](v50, -1, -1);
      }

      v52 = nw_connection_create(a1, v46);
      v53 = a3;
    }

    else
    {
      v52 = nw_connection_create(a1, v46);
      swift_getObjectType();
      v136 = sub_1DEE12B28();
      v53 = v54;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v55 = sub_1DEF8D4D8();
    v56 = sub_1DEF8DCB8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v57 = os_log_type_enabled(v55, v56);
    v134 = v4;
    v129 = v47;
    v130 = v46;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v137[0] = v59;
      *v58 = 136446722;
      aBlock = v52;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v60 = sub_1DEF8D988();
      v62 = sub_1DEE12A5C(v60, v61, v137);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2082;
      aBlock = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E00, &unk_1DEF95AE8);
      v63 = sub_1DEF8D988();
      v65 = sub_1DEE12A5C(v63, v64, v137);

      *(v58 + 14) = v65;
      *(v58 + 22) = 2082;
      v4 = v134;
      aBlock = v136;
      v140 = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v66 = sub_1DEF8D988();
      v68 = sub_1DEE12A5C(v66, v67, v137);

      *(v58 + 24) = v68;
      _os_log_impl(&dword_1DEE0F000, v55, v56, "New outgoing connection created %{public}s from %{public}s; DeviceID: %{public}s", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v59, -1, -1);
      MEMORY[0x1E12CCD70](v58, -1, -1);
    }

    if (v53)
    {
      swift_unknownObjectRetain();

      v69 = sub_1DEF8D4D8();
      v70 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v71 = 136446466;
        *(v71 + 4) = sub_1DEE12A5C(v136, v53, &aBlock);
        *(v71 + 12) = 2082;
        v137[0] = v52;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v73 = sub_1DEF8D988();
        v75 = sub_1DEE12A5C(v73, v74, &aBlock);

        *(v71 + 14) = v75;
        _os_log_impl(&dword_1DEE0F000, v69, v70, "DeviceID %{public}s will be used for connection: %{public}s", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v72, -1, -1);
        MEMORY[0x1E12CCD70](v71, -1, -1);
      }

      v76 = v132;
      v77 = v128;
      swift_beginAccess();
      v78 = *(v4 + 56);
      if (!*(v78 + 16) || (v79 = sub_1DEE13224(v136, v53), (v80 & 1) == 0))
      {
        swift_endAccess();
LABEL_40:
        v111 = v133;
        swift_unknownObjectRetain();

        v112 = v131;
        sub_1DEF8D348();
        *v112 = v52;
        *(v112 + *(v111 + 24)) = 0;
        (*(v76 + 56))(v112, 0, 1, v111);
        v113 = v134;
        swift_beginAccess();
        v114 = v136;
        sub_1DEE136B8(v112, v136, v53);
        swift_endAccess();
        v115 = *(v113 + 112);
        id = nw_connection_get_id();
        v117 = *(v115 + 16);
        v118 = swift_allocObject();
        v118[2] = v114;
        v118[3] = v53;
        v118[4] = id;
        v118[5] = v115;
        v119 = swift_allocObject();
        *(v119 + 16) = sub_1DEF30810;
        *(v119 + 24) = v118;
        v143 = sub_1DEE46D40;
        v144 = v119;
        aBlock = MEMORY[0x1E69E9820];
        v140 = 1107296256;
        v141 = sub_1DEE134F4;
        v142 = &block_descriptor_286;
        v120 = _Block_copy(&aBlock);

        dispatch_sync(v117, v120);
        _Block_release(v120);
        LOBYTE(v117) = swift_isEscapingClosureAtFileLocation();

        if ((v117 & 1) == 0)
        {
LABEL_41:
          sub_1DEE16294(v52);
          MEMORY[0x1E12CCD70](v129, -1, -1);
          swift_unknownObjectRelease();
          return;
        }

        __break(1u);
        goto LABEL_45;
      }

      v81 = v123;
      sub_1DEE15068(*(v78 + 56) + *(v76 + 72) * v79, v123, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v82 = v81;
      v83 = v124;
      sub_1DEE1C4F0(v82, v124, type metadata accessor for NetworkMessenger.ExpiringConnection);
      swift_endAccess();
      sub_1DEE15068(v83, v77, type metadata accessor for NetworkMessenger.ExpiringConnection);

      v84 = sub_1DEF8D4D8();
      v85 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        aBlock = v87;
        *v86 = 136446466;
        sub_1DEE15068(v77, v122, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v88 = sub_1DEF8D988();
        v89 = v77;
        v91 = v90;
        sub_1DEE15388(v89, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v92 = sub_1DEE12A5C(v88, v91, &aBlock);

        *(v86 + 4) = v92;
        *(v86 + 12) = 2082;
        *(v86 + 14) = sub_1DEE12A5C(v136, v53, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v84, v85, "Canceling existing connection %{public}s for DeviceID %{public}s", v86, 0x16u);
        swift_arrayDestroy();
        v93 = v87;
        v76 = v132;
        MEMORY[0x1E12CCD70](v93, -1, -1);
        MEMORY[0x1E12CCD70](v86, -1, -1);

LABEL_39:
        nw_connection_cancel(*v83);
        sub_1DEE15388(v83, type metadata accessor for NetworkMessenger.ExpiringConnection);
        goto LABEL_40;
      }
    }

    else
    {
      v94 = v125;
      sub_1DEF8D3E8();
      v95 = sub_1DEF8D398();
      v53 = v96;
      (*(v126 + 8))(v94, v127);
      swift_unknownObjectRetain();

      v97 = sub_1DEF8D4D8();
      v98 = sub_1DEF8DCB8();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock = v100;
        *v99 = 136446466;
        v137[0] = v52;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v101 = sub_1DEF8D988();
        v103 = sub_1DEE12A5C(v101, v102, &aBlock);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2082;
        *(v99 + 14) = sub_1DEE12A5C(v95, v53, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v97, v98, "Unable to get DeviceID from connection: %{public}s; Using uuidString %{public}s instead", v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v100, -1, -1);
        MEMORY[0x1E12CCD70](v99, -1, -1);
      }

      v105 = v132;
      v104 = v133;
      swift_unknownObjectRetain();

      v106 = v131;
      sub_1DEF8D348();
      *v106 = v52;
      *(v106 + *(v104 + 24)) = 0;
      (*(v105 + 56))(v106, 0, 1, v104);
      v83 = v134;
      swift_beginAccess();
      sub_1DEE136B8(v106, v95, v53);
      swift_endAccess();
      v76 = *(v83 + 112);
      v107 = nw_connection_get_id();
      v108 = *(v76 + 16);
      v84 = swift_allocObject();
      v84[2].isa = v95;
      v84[3].isa = v53;
      v84[4].isa = v107;
      v84[5].isa = v76;
      v109 = swift_allocObject();
      *(v109 + 16) = sub_1DEE1413C;
      *(v109 + 24) = v84;
      v143 = sub_1DEE46D40;
      v144 = v109;
      aBlock = MEMORY[0x1E69E9820];
      v140 = 1107296256;
      v141 = sub_1DEE134F4;
      v142 = &block_descriptor_275;
      v110 = _Block_copy(&aBlock);
      v77 = v144;

      dispatch_sync(v108, v110);
      _Block_release(v110);
      LOBYTE(v110) = swift_isEscapingClosureAtFileLocation();

      if ((v110 & 1) == 0)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    sub_1DEE15388(v77, type metadata accessor for NetworkMessenger.ExpiringConnection);
    goto LABEL_39;
  }

  if (a3)
  {
    sub_1DEF13D38(v136, a3);
    v44 = v13[v4];
    goto LABEL_18;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1DEF16638(NSObject *a1, unint64_t a2)
{
  v3 = v2;
  v44 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (*(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1)
    {
      if (qword_1ECDE2E50 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF6010);

  v18 = sub_1DEF8D4D8();
  v19 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1DEE12A5C(a1, a2, &v35);
    _os_log_impl(&dword_1DEE0F000, v18, v19, "Creating terminus connection to %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E12CCD70](v21, -1, -1);
    MEMORY[0x1E12CCD70](v20, -1, -1);
  }

  sub_1DEF8D3E8();
  v35 = sub_1DEF8D3D8();
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  sub_1DEF8D998();
  application_service = nw_endpoint_create_application_service();

  sub_1DEF154A0(application_service, a1, a2);
  v32 = v31;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v32;
}

uint64_t sub_1DEF16A10(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF300A8;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE46D40;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_265;
  v6 = _Block_copy(v8);

  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF16BA0(NSObject *a1)
{
  v3 = v1;
  v5 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v17 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v17);
  *(&v45 - 2) = a1;

  v19 = sub_1DEF2F4F0(v18, sub_1DEF2F820, (&v45 - 4));
  v21 = v20;
  v15 = v22;
  v23 = ~v22;

  if (v23)
  {
    swift_beginAccess();
    sub_1DEF2F854(v19, v21, v15 & 1);
    sub_1DEF2CE0C(v7, v19, v21);
    swift_endAccess();

    sub_1DEF2F83C(v19, v21, v15);
    sub_1DEE15388(v7, type metadata accessor for NetworkMessenger.ExpiringConnection);
  }

  v46 = v21;
  v47 = v19;
  sub_1DEF23790();
  v24 = *(v3 + 112);
  id = nw_connection_get_id();
  v2 = *(v24 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = id;
  v7 = swift_allocObject();
  *(v7 + 2) = sub_1DEF2F834;
  *(v7 + 3) = v26;
  v53 = sub_1DEE46D40;
  v54 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1DEE134F4;
  v52 = &block_descriptor_206;
  v27 = _Block_copy(&aBlock);

  dispatch_sync(v2, v27);
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_16;
  }

  swift_getObjectType();
  v29 = sub_1DEE12B28();
  if (v30)
  {
    v2 = v29;
    v7 = v30;
  }

  else if (*(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1)
  {
    v31 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
    os_unfair_lock_lock((v31 + 32));
    v2 = *(v31 + 16);
    v7 = *(v31 + 24);

    os_unfair_lock_unlock((v31 + 32));
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v32 = sub_1DEF8D508();
  __swift_project_value_buffer(v32, qword_1ECDF6010);

  swift_unknownObjectRetain();
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    aBlock = a1;
    *v35 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v37 = sub_1DEF8D988();
    v39 = sub_1DEE12A5C(v37, v38, &v48);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    aBlock = v2;
    v50 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    v40 = sub_1DEF8D988();
    v42 = sub_1DEE12A5C(v40, v41, &v48);

    *(v35 + 14) = v42;

    _os_log_impl(&dword_1DEE0F000, v33, v34, "Canceling connection %{public}s for deviceID: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v36, -1, -1);
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }

  else
  {
  }

  v43 = v46;
  nw_connection_cancel(a1);
  return sub_1DEF2F83C(v47, v43, v15);
}

uint64_t sub_1DEF1718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  swift_beginAccess();
  v11 = *(a1 + 56);
  if (*(v11 + 16) && (v12 = sub_1DEE13224(a2, a3), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    v17 = *(v16 - 8);
    sub_1DEE15068(v15 + *(v17 + 72) * v14, v10, type metadata accessor for NetworkMessenger.ExpiringConnection);
    (*(v17 + 56))(v10, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  }

  type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16))
  {
    sub_1DEE171B4(v10, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    result = swift_endAccess();
    v19 = 0;
  }

  else
  {
    v19 = *v10;
    swift_unknownObjectRetain();
    sub_1DEE171B4(v10, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    result = swift_endAccess();
  }

  *a4 = v19;
  return result;
}

uint64_t sub_1DEF173D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v49 = a6;
  v54 = a4;
  v51 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v44 - v13;
  v14 = type metadata accessor for Message(0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v48 = *a5;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6010);
  sub_1DEE15068(a1, v18, type metadata accessor for Message);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v55 = v24;
    *v23 = 136446210;
    v25 = Message.description.getter();
    v44 = v12;
    v26 = a1;
    v27 = v11;
    v29 = v28;
    sub_1DEE15388(v18, type metadata accessor for Message);
    v30 = sub_1DEE12A5C(v25, v29, &v55);
    v11 = v27;
    a1 = v26;
    v12 = v44;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Queuing message: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    v31 = v23;
    a2 = v45;
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  else
  {

    sub_1DEE15388(v18, type metadata accessor for Message);
  }

  v32 = v52;
  v33 = *(v52 + 24);
  v44 = "nearbyCompanionSubscriber";
  v45 = v33;
  v34 = v47;
  sub_1DEE15068(a1, v47, type metadata accessor for Message);
  v35 = v50;
  sub_1DEE17214(a2, v50, &qword_1ECDE4890, &qword_1DEF90990);
  v36 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v37 = (v15 + *(v11 + 80) + v36) & ~*(v11 + 80);
  v38 = &v12[v37];
  v39 = swift_allocObject();
  v40 = v49;
  *(v39 + 16) = v32;
  *(v39 + 24) = v40;
  v41 = v53;
  *(v39 + 32) = v53;
  sub_1DEE1C4F0(v34, v39 + v36, type metadata accessor for Message);
  sub_1DEE1BA88(v35, v39 + v37, &qword_1ECDE4890, &qword_1DEF90990);
  v38[v39] = v51 & 1;
  v42 = (v39 + (v38 & 0xFFFFFFFFFFFFFFF8));
  *(v42 + 1) = v54;
  v42[16] = v48;

  sub_1DEE2CB00(v40, v41);
  swift_unknownObjectRetain();
  sub_1DEE2C448(0xD000000000000018, v44 | 0x8000000000000000, v45, sub_1DEF2FD98, v39, 0.0);
}

uint64_t sub_1DEF17844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10)
{
  v69 = a8;
  v67 = a2;
  v68 = a5;
  v70 = a4;
  v61 = a3;
  v66 = a1;
  v65 = a10;
  v63 = a9;
  v64 = sub_1DEF8D788();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Message(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  sub_1DEE15068(a6, &v57 - v22, type metadata accessor for Message);
  sub_1DEE17214(a7, v17, &qword_1ECDE4890, &qword_1DEF90990);
  v57 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DEE15068(v23, v57, type metadata accessor for Message);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE17214(v17, v58, &qword_1ECDE4890, &qword_1DEF90990);
  v24 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v25 = (v20 + *(v59 + 80) + v24) & ~*(v59 + 80);
  v26 = swift_allocObject();
  v28 = v67;
  v27 = v68;
  v26[2] = v70;
  v26[3] = v27;
  v26[4] = v66;
  v26[5] = v28;
  v29 = v61;
  v26[6] = v61;
  v30 = v26 + v24;
  v31 = v29;
  sub_1DEE1C4F0(v23, v30, type metadata accessor for Message);
  sub_1DEE1BA88(v17, v26 + v25, &qword_1ECDE4890, &qword_1DEF90990);
  *(v26 + v25 + v14) = v69;
  v32 = v26 + ((v25 + v14) & 0xFFFFFFFFFFFFFFF8);
  v33 = v62;
  v34 = v63;
  *(v32 + 1) = v63;
  v32[16] = v65;
  v35 = *(v31 + 24);
  v36 = v60;
  *v60 = v35;
  v37 = v64;
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v64);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(v70, v27);
  v38 = v35;
  LOBYTE(v35) = sub_1DEF8D7B8();
  result = (*(v33 + 8))(v36, v37);
  if (v35)
  {
    v40 = v31 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
    v41 = *(v31 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
    v42 = *(v31 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
    v43 = __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v41);
    v44 = *(v41 - 8);
    v45 = MEMORY[0x1EEE9AC00](v43);
    v47 = &v57 - v46;
    (*(v44 + 16))(&v57 - v46, v45);
    LOBYTE(v42) = (*(v42 + 40))(v41, v42);
    (*(v44 + 8))(v47, v41);
    if (v42)
    {
      LOBYTE(v71[0]) = v65;
      v48 = swift_allocObject();
      v49 = v70;
      v50 = v68;
      v48[2] = v70;
      v48[3] = v50;
      v48[4] = v66;
      v48[5] = v67;

      sub_1DEE2CB00(v49, v50);
      v52 = v57;
      v51 = v58;
      sub_1DEF1812C(v57, v58, v69 & 1, v34, v71, sub_1DEF2FFF0, v48);

      sub_1DEE171B4(v51, &qword_1ECDE4890, &qword_1DEF90990);
      return sub_1DEE15388(v52, type metadata accessor for Message);
    }

    else
    {
      sub_1DEE29594(v40, v71);
      v53 = v72;
      v54 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v55 = swift_allocObject();
      v55[2] = v31;
      v55[3] = sub_1DEF2FEC8;
      v55[4] = v26;
      v56 = *(v54 + 48);

      v56(sub_1DEF3074C, v55, v53, v54);

      sub_1DEE171B4(v58, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v57, type metadata accessor for Message);
      return __swift_destroy_boxed_opaque_existential_1(v71);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF17EB4(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, char a9, NSObject *a10, char a11)
{
  if (a1)
  {
    v16 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);
    v18 = a1;
    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1DEE0F000, v19, v20, "Cannot send message because prerequisites are not met: %{public}@", v21, 0xCu);
      sub_1DEE171B4(v22, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v22, -1, -1);
      MEMORY[0x1E12CCD70](v21, -1, -1);
    }

    if (a2)
    {
      v25 = a1;
      a2(a1, 1);
    }

    a4();
  }

  else
  {
    v29 = a11;
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = a3;
    v28[4] = a4;
    v28[5] = a5;
    sub_1DEE2CB00(a2, a3);

    sub_1DEF1812C(a7, a8, a9 & 1, a10, &v29, sub_1DEF3080C, v28);
  }
}

uint64_t sub_1DEF1812C(void (*a1)(char *, uint64_t), uint64_t a2, int a3, NSObject *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v204 = a6;
  v205 = a7;
  v177 = a3;
  v193 = a2;
  v207 = a1;
  v181 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v181);
  v184 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D698();
  v199 = *(v12 - 8);
  v200 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v197 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D6D8();
  v201 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v178 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v183 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v173 - v19;
  v179 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v173 - v22;
  v194 = sub_1DEF8D1E8();
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v176 = (&v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v173 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v190 = &v173 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v173 - v29;
  v31 = sub_1DEF8D3F8();
  v202 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v185 = &v173 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v195 = &v173 - v36;
  v189 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v189);
  v38 = &v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DEF8D788();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = (&v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = *a5;
  v44 = *(v8 + 24);
  *v43 = v44;
  (*(v40 + 104))(v43, *MEMORY[0x1E69E8020], v39, v41);
  v45 = v44;
  LOBYTE(v44) = sub_1DEF8D7B8();
  (*(v40 + 8))(v43, v39);
  if (v44)
  {
    v196 = v14;
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v188 = a4;
  v46 = sub_1DEF8D508();
  v47 = __swift_project_value_buffer(v46, qword_1ECDF6010);
  sub_1DEE15068(v207, v38, type metadata accessor for Message);
  v203 = v47;
  v48 = sub_1DEF8D4D8();
  v49 = sub_1DEF8DC88();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v50 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v52 = v31;
    v53 = sub_1DEF8E2E8();
    v54 = v8;
    v56 = v55;
    sub_1DEE15388(v38, type metadata accessor for Message);
    v57 = sub_1DEE12A5C(v53, v56, &aBlock);
    v8 = v54;

    *(v50 + 4) = v57;
    _os_log_impl(&dword_1DEE0F000, v48, v49, "sending message with ID %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1E12CCD70](v51, -1, -1);
    MEMORY[0x1E12CCD70](v50, -1, -1);
  }

  else
  {
    v52 = v31;

    sub_1DEE15388(v38, type metadata accessor for Message);
  }

  v206 = v8;
  v58 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v59 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v60 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v58);
  v61 = *(v58 - 8);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v173 - v63;
  (*(v61 + 16))(&v173 - v63, v62);
  v65 = (*(v59 + 24))(v58, v59);
  v67 = v66;
  (*(v61 + 8))(v64, v58);
  if (!v67)
  {
    v77 = sub_1DEF8D4D8();
    v78 = sub_1DEF8DC98();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v196;
    if (v79)
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1DEE0F000, v77, v78, "Cannot send messages before we have a local device ID", v81, 2u);
      MEMORY[0x1E12CCD70](v81, -1, -1);
    }

    v82 = swift_allocObject();
    v83 = v205;
    *(v82 + 16) = v204;
    *(v82 + 24) = v83;
    v213 = sub_1DEF30750;
    v214 = v82;
    aBlock = MEMORY[0x1E69E9820];
    v210 = 1107296256;
    v211 = sub_1DEE3F0C0;
    v212 = &block_descriptor_54;
    v84 = _Block_copy(&aBlock);

    v85 = v198;
    sub_1DEF8D6B8();
    v208 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v86 = v197;
    v87 = v200;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v85, v86, v84);
    _Block_release(v84);
    (*(v199 + 1))(v86, v87);
    (*(v201 + 8))(v85, v80);
  }

  sub_1DEF8D388();
  v68 = v202;
  v69 = v52;
  if ((*(v202 + 48))(v30, 1, v52) == 1)
  {
    sub_1DEE171B4(v30, &unk_1ECDE3E80, &unk_1DEF90970);

    v70 = sub_1DEF8D4D8();
    v71 = sub_1DEF8DC98();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v196;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136446210;
      v76 = sub_1DEE12A5C(v65, v67, &aBlock);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_1DEE0F000, v70, v71, "Cannot create UUID from sender device ID: %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v74, -1, -1);
    }

    else
    {
    }

    v95 = v204;
    v94 = v205;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v94;
    v213 = sub_1DEF30750;
    v214 = v96;
    aBlock = MEMORY[0x1E69E9820];
    v210 = 1107296256;
    v211 = sub_1DEE3F0C0;
    v212 = &block_descriptor_60;
    v97 = _Block_copy(&aBlock);

    v98 = v198;
    sub_1DEF8D6B8();
    v208 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v99 = v197;
    v100 = v200;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v98, v99, v97);
    _Block_release(v97);
    (*(v199 + 1))(v99, v100);
    (*(v201 + 8))(v98, v73);
  }

  v174 = *(v68 + 32);
  v174(v195, v30, v52);
  v88 = v191;
  sub_1DEE17214(v193, v191, &qword_1ECDE4890, &qword_1DEF90990);
  v89 = v192;
  v90 = *(v192 + 48);
  v91 = v194;
  v92 = v90(v88, 1, v194);
  v175 = v69;
  if (v92 == 1)
  {
    sub_1DEE171B4(v88, &qword_1ECDE4890, &qword_1DEF90990);
    v93 = v206;
  }

  else
  {
    v101 = v90;
    v102 = v190;
    (*(v89 + 32))(v190, v88, v91);
    v103 = v89;
    v104 = [objc_opt_self() defaultManager];
    sub_1DEF8D1B8();
    v105 = sub_1DEF8D918();

    v106 = [v104 fileExistsAtPath_];

    if ((v106 & 1) == 0)
    {
      v112 = v187;
      (*(v103 + 16))(v187, v102, v91);
      v113 = sub_1DEF8D4D8();
      v114 = sub_1DEF8DCA8();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        aBlock = v116;
        *v115 = 136446210;
        v117 = sub_1DEF8D1B8();
        v118 = v91;
        v120 = v119;
        v207 = *(v103 + 8);
        v207(v112, v118);
        v121 = sub_1DEE12A5C(v117, v120, &aBlock);

        *(v115 + 4) = v121;
        _os_log_impl(&dword_1DEE0F000, v113, v114, "File at given url doesn't exist: %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x1E12CCD70](v116, -1, -1);
        MEMORY[0x1E12CCD70](v115, -1, -1);
      }

      else
      {

        v207 = *(v103 + 8);
        v207(v112, v91);
      }

      v123 = v204;
      v122 = v205;
      v124 = v196;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v122;
      v213 = sub_1DEF2E9A0;
      v214 = v125;
      aBlock = MEMORY[0x1E69E9820];
      v210 = 1107296256;
      v211 = sub_1DEE3F0C0;
      v212 = &block_descriptor_75;
      v126 = _Block_copy(&aBlock);

      v127 = v198;
      sub_1DEF8D6B8();
      v208 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
      v128 = v197;
      v129 = v200;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v127, v128, v126);
      _Block_release(v126);
      (*(v199 + 1))(v128, v129);
      (*(v201 + 8))(v127, v124);
      v207(v190, v194);
      (*(v202 + 8))(v195, v175);
    }

    (*(v103 + 8))(v102, v91);
    v93 = v206;
    v90 = v101;
  }

  v212 = v189;
  v213 = sub_1DEE1B9F8(&unk_1ECDE48A0, type metadata accessor for Message, &protocol conformance descriptor for Message);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v108 = v207;
  sub_1DEE15068(v207, boxed_opaque_existential_1, type metadata accessor for Message);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  v110 = sub_1DEE29274(&aBlock);
  v111 = sub_1DEE1187C(v110);
  v131 = v130;
  v201 = v111;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v132 = *(v202 + 16);
  v132(v185, v108, v69);
  result = (v132)(v186, v195, v69);
  v134 = v131 >> 62;
  if ((v131 >> 62) > 1)
  {
    if (v134 != 2)
    {
      goto LABEL_37;
    }

    v137 = *(v201 + 16);
    v136 = *(v201 + 24);
    v135 = v136 - v137;
    if (!__OFSUB__(v136, v137))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v134)
  {
    LODWORD(v135) = BYTE6(v131);
    goto LABEL_38;
  }

  if (__OFSUB__(HIDWORD(v201), v201))
  {
    __break(1u);
    return result;
  }

  v135 = HIDWORD(v201) - v201;
LABEL_34:
  if ((v135 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v135))
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    LODWORD(v135) = 0;
LABEL_38:
    if (v90(v193, 1, v194) == 1)
    {
      v138 = 1;
    }

    else
    {
      v138 = 3;
    }

    LODWORD(v200) = v138;
    if (qword_1ECDE37F8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_42:
  v198 = v131;
  v199 = v90;
  v139 = __swift_project_value_buffer(v69, qword_1ECDF60C0);
  v140 = v184;
  v132(v184, v139, v69);
  v141 = v181;
  *(v140 + *(v181 + 20)) = 72;
  v142 = v174;
  v174((v140 + v141[6]), v185, v69);
  v142(v140 + v141[7], v186, v69);
  *(v140 + v141[8]) = v135;
  *(v140 + v141[9]) = 0;
  *(v140 + v141[10]) = v200;
  *(v140 + v141[11]) = 0;
  v143 = v141[12];
  *(v140 + v143) = v180;
  v144 = sub_1DEEFB1A4();
  v146 = v145;
  v147 = v188;
  sub_1DEF1CB90(v144, v145, v188, 0, 0);
  swift_unknownObjectRetain();
  v148 = sub_1DEF8D4D8();
  v149 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v150 = os_log_type_enabled(v148, v149);
  v197 = v146;
  v196 = v144;
  v191 = v143;
  if (v150)
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v208 = v147;
    aBlock = v152;
    *v151 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v153 = sub_1DEF8D988();
    v155 = sub_1DEE12A5C(v153, v154, &aBlock);

    *(v151 + 4) = v155;
    _os_log_impl(&dword_1DEE0F000, v148, v149, "Sending encoded message to connected remote device %{public}s", v151, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v152);
    v93 = v206;
    MEMORY[0x1E12CCD70](v152, -1, -1);
    MEMORY[0x1E12CCD70](v151, -1, -1);
  }

  v156 = v179;
  v157 = v178;
  v158 = v193;
  v159 = v182;
  sub_1DEE17214(v193, v182, &qword_1ECDE4890, &qword_1DEF90990);
  v160 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v161 = (v156 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
  v162 = swift_allocObject();
  sub_1DEE1BA88(v159, v162 + v160, &qword_1ECDE4890, &qword_1DEF90990);
  *(v162 + v161) = v93;
  v163 = (v162 + ((v161 + 15) & 0xFFFFFFFFFFFFFFF8));
  v165 = v204;
  v164 = v205;
  *v163 = v204;
  v163[1] = v164;

  v166 = v201;
  v167 = v198;
  sub_1DEF1CB90(v201, v198, v188, sub_1DEF2E8D8, v162);

  v168 = v183;
  sub_1DEE17214(v158, v183, &qword_1ECDE4890, &qword_1DEF90990);
  v169 = v194;
  if (v199(v168, 1, v194) == 1)
  {
    sub_1DEE1BFA0(v196, v197);
    sub_1DEE1BFA0(v166, v167);
    sub_1DEE15388(v184, type metadata accessor for NetworkSyncHeader);
    (*(v202 + 8))(v195, v175);
    return sub_1DEE171B4(v168, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v170 = v192;
    v171 = v176;
    (*(v192 + 32))(v176, v168, v169);
    v172 = v184;
    LOBYTE(aBlock) = v184[v191];
    sub_1DEF1D1FC(v171, v177 & 1, v207, v200, 1, &aBlock, v188, v165, v164);
    sub_1DEE1BFA0(v196, v197);
    sub_1DEE1BFA0(v166, v167);
    (*(v170 + 8))(v171, v169);
    sub_1DEE15388(v172, type metadata accessor for NetworkSyncHeader);
    return (*(v202 + 8))(v195, v175);
  }
}

uint64_t sub_1DEF19CE8(uint64_t a1, NSObject *a2, int a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v55 = a7;
  v59 = a4;
  v56 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v47 - v15;
  v16 = type metadata accessor for Message(0);
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v53 = *a5;
  v21 = *a6;
  v52 = a6[1];
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF6010);
  sub_1DEE15068(a1, v20, type metadata accessor for Message);
  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = a2;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136446210;
    v28 = Message.description.getter();
    v48 = v14;
    v29 = a1;
    v30 = v13;
    v32 = v31;
    sub_1DEE15388(v20, type metadata accessor for Message);
    v33 = sub_1DEE12A5C(v28, v32, aBlock);
    v13 = v30;
    a1 = v29;
    v14 = v48;

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1DEE0F000, v23, v24, "Queuing message with expected response: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v34 = v27;
    a2 = v49;
    MEMORY[0x1E12CCD70](v34, -1, -1);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  else
  {

    sub_1DEE15388(v20, type metadata accessor for Message);
  }

  v35 = v57;
  v49 = *(v57 + 24);
  v36 = v51;
  sub_1DEE15068(a1, v51, type metadata accessor for Message);
  v37 = v54;
  sub_1DEE17214(a2, v54, &qword_1ECDE4890, &qword_1DEF90990);
  v38 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v39 = (v17 + *(v13 + 80) + v38) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v41 = v55;
  v40[2] = v35;
  v40[3] = v41;
  v40[4] = v58;
  sub_1DEE1C4F0(v36, v40 + v38, type metadata accessor for Message);
  sub_1DEE1BA88(v37, v40 + v39, &qword_1ECDE4890, &qword_1DEF90990);
  *(v40 + v39 + v14) = v56 & 1;
  v42 = v40 + ((v39 + v14) & 0xFFFFFFFFFFFFFFF8);
  *(v42 + 1) = v59;
  v42[16] = v53;
  *(v42 + 3) = v21;
  *(v42 + 4) = v52;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1DEF2B188;
  *(v43 + 24) = v40;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_14;
  v44 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  dispatch_sync(v49, v44);
  _Block_release(v44);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9, uint64_t a10)
{
  v99 = a8;
  v101 = a7;
  v102 = a2;
  LODWORD(v96) = a6;
  v103 = a3;
  v95 = a1;
  v100 = a10;
  v89 = sub_1DEF8D3F8();
  v85 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = v13;
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = type metadata accessor for Message(0);
  v91 = *(v25 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v86 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v90 = a4;
  sub_1DEE15068(a4, &v81 - v31, type metadata accessor for Message);
  sub_1DEE17214(a5, v24, &qword_1ECDE4890, &qword_1DEF90990);
  v97 = v29;
  sub_1DEE15068(v32, v29, type metadata accessor for Message);
  v98 = v21;
  sub_1DEE17214(v24, v21, &qword_1ECDE4890, &qword_1DEF90990);
  v33 = *(v91 + 80);
  v34 = (v33 + 32) & ~v33;
  v35 = (v26 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v92 + 80);
  v37 = (v36 + v35 + 8) & ~v36;
  v91 = v26;
  v92 = v18;
  v38 = v37 + v18;
  v82 = v33;
  v81 = v36;
  v39 = (v37 + v18) & 0xFFFFFFFFFFFFFFF8;
  v83 = v33 | v36 | 7;
  v40 = swift_allocObject();
  v41 = v103;
  *(v40 + 16) = v102;
  *(v40 + 24) = v41;
  v42 = v32;
  v43 = v95;
  sub_1DEE1C4F0(v42, v40 + v34, type metadata accessor for Message);
  *(v40 + v35) = v43;
  v44 = v24;
  v45 = v96;
  sub_1DEE1BA88(v44, v40 + v37, &qword_1ECDE4890, &qword_1DEF90990);
  *(v40 + v38) = v45;
  v46 = v40 + v39;
  *(v46 + 8) = v101;
  *(v46 + 16) = v99;
  *(v46 + 24) = a9;
  *(v46 + 32) = v100;
  v47 = *(v43 + 24);
  *v16 = v47;
  v49 = v93;
  v48 = v94;
  v93[13](v16, *MEMORY[0x1E69E8020], v94);
  swift_unknownObjectRetain();

  v50 = v47;
  LOBYTE(v34) = sub_1DEF8D7B8();
  result = (*(v49 + 8))(v16, v48);
  if (v34)
  {
    v52 = v43 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
    v53 = *(v43 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
    v54 = *(v43 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
    v55 = __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v53);
    v56 = *(v53 - 8);
    v57 = MEMORY[0x1EEE9AC00](v55);
    v59 = &v81 - v58;
    (*(v56 + 16))(&v81 - v58, v57);
    LOBYTE(v54) = (*(v54 + 40))(v53, v54);
    (*(v56 + 8))(v59, v53);
    if (v54)
    {
      v60 = v82;
      v61 = v81;
      LODWORD(v94) = v45 & 1;
      v96 = "nearbyCompanionSubscriber";
      v62 = v97;
      sub_1DEE15068(v97, v86, type metadata accessor for Message);
      sub_1DEE17214(v98, v87, &qword_1ECDE4890, &qword_1DEF90990);
      v63 = v85;
      (*(v85 + 16))(v88, v62, v89);
      v64 = (v60 + 24) & ~v60;
      v65 = v43;
      v66 = (v91 + v61 + v64) & ~v61;
      v67 = v66 + v92;
      v93 = v50;
      v68 = (((v66 + v92) & 0xFFFFFFFFFFFFFFF8) + *(v63 + 80) + 17) & ~*(v63 + 80);
      v69 = (v84 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = swift_allocObject();
      *(v70 + 16) = v65;
      sub_1DEE1C4F0(v86, v70 + v64, type metadata accessor for Message);
      v71 = v70 + v66;
      v43 = v65;
      sub_1DEE1BA88(v87, v71, &qword_1ECDE4890, &qword_1DEF90990);
      *(v70 + v67) = v94;
      v72 = v70 + (v67 & 0xFFFFFFFFFFFFFFF8);
      *(v72 + 8) = v101;
      *(v72 + 16) = v99;
      (*(v63 + 32))(v70 + v68, v88, v89);
      v73 = v70 + v69;
      *v73 = a9;
      *(v73 + 8) = v100;
      swift_unknownObjectRetain();

      sub_1DEE2C448(0xD000000000000018, v96 | 0x8000000000000000, v93, sub_1DEF2BBC4, v70, 0.0);

      sub_1DEE171B4(v98, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v97, type metadata accessor for Message);
    }

    else
    {
      sub_1DEE29594(v52, v105);
      v74 = v106;
      v75 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v76 = swift_allocObject();
      v76[2] = v43;
      v76[3] = sub_1DEF2B604;
      v76[4] = v40;
      v77 = *(v75 + 48);

      v77(sub_1DEF2B738, v76, v74, v75);

      sub_1DEE171B4(v98, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v97, type metadata accessor for Message);
      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    v78 = swift_allocObject();
    v79 = v103;
    *(v78 + 16) = v102;
    *(v78 + 24) = v79;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v43 + 64);
    *(v43 + 64) = 0x8000000000000000;
    sub_1DEF3F79C(sub_1DEF2B744, v78, v90, isUniquelyReferenced_nonNull_native);
    *(v43 + 64) = v104;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1AB9C(void *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, unsigned __int8 a10, uint64_t a11)
{
  v51 = a8;
  v50 = a7;
  v48 = a6;
  v49 = a4;
  v56 = a5;
  v53 = a2;
  v54 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  MEMORY[0x1EEE9AC00](v52);
  v14 = (&v45 - v13);
  v55 = sub_1DEF8D3F8();
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v47 = *(v17 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - v19;
  v21 = type metadata accessor for Message(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v26 = sub_1DEF8D508();
    __swift_project_value_buffer(v26, qword_1ECDF6028);
    v27 = a1;
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = a1;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1DEE0F000, v28, v29, "Cannot send message because prerequisites are not met: %{public}@", v30, 0xCu);
      sub_1DEE171B4(v31, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v30, -1, -1);
    }

    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v34 = a1;
    (v53)(v14);

    return sub_1DEE171B4(v14, &qword_1ECDE4D48, &qword_1DEF95A70);
  }

  else
  {
    v46 = a10;
    v52 = a11;
    v53 = "nearbyCompanionSubscriber";
    v54 = *(v56 + 24);
    v36 = v49;
    sub_1DEE15068(v49, &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
    sub_1DEE17214(v48, v20, &qword_1ECDE4890, &qword_1DEF90990);
    v37 = *(v15 + 16);
    v45 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37(v45, v36, v55);
    v38 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v39 = (v23 + *(v47 + 80) + v38) & ~*(v47 + 80);
    v40 = v39 + v18;
    v41 = (*(v15 + 80) + (v40 & 0xFFFFFFFFFFFFFFF8) + 17) & ~*(v15 + 80);
    v49 = (v16 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v56;
    sub_1DEE1C4F0(v24, v42 + v38, type metadata accessor for Message);
    sub_1DEE1BA88(v20, v42 + v39, &qword_1ECDE4890, &qword_1DEF90990);
    *(v42 + v40) = v50 & 1;
    v43 = v42 + (v40 & 0xFFFFFFFFFFFFFFF8);
    *(v43 + 8) = v51;
    *(v43 + 16) = v46;
    (*(v15 + 32))(v42 + v41, v45, v55);
    v44 = v42 + v49;
    *v44 = a9;
    *(v44 + 8) = v52;

    swift_unknownObjectRetain();
    sub_1DEE2C448(0xD000000000000018, v53 | 0x8000000000000000, v54, sub_1DEF30808, v42, 0.0);
  }
}

uint64_t sub_1DEF1B108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, int a6, NSObject *a7, char a8, double a9, uint64_t a10)
{
  v66 = a7;
  LODWORD(v65) = a6;
  v63 = a4;
  v64 = a5;
  v68 = a3;
  v69 = a1;
  v70 = a2;
  v12 = sub_1DEF8D698();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DEF8D6D8();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DEF8D688();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1DEF8D758();
  v56 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v47 - v19;
  v20 = sub_1DEF8D3F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = a8;
  v25 = *(v21 + 16);
  v54 = a10;
  v48 = v25;
  (v25)(v24, a10, v20, v23);
  v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v68;
  v28 = *(v21 + 32);
  v50 = v26;
  v47 = v28;
  v28(v27 + v26, v24, v20);
  v51 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + v51);
  v30 = v70;
  *v29 = v69;
  v29[1] = v30;

  sub_1DEF1812C(v63, v64, v65, v66, aBlock, sub_1DEF2E630, v27);

  v31 = v17;
  result = sub_1DEF8D738();
  v33 = (a9 + 1.0) * 1000.0;
  if (COERCE__INT64(fabs(v33)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v33 < 9.22337204e18)
  {
    v34 = v49;
    *v49 = v33;
    v35 = v52;
    v36 = v53;
    (*(v52 + 104))(v34, *MEMORY[0x1E69E7F38], v53);
    v37 = v55;
    sub_1DEF8D748();
    (*(v35 + 8))(v34, v36);
    v38 = v68;
    v66 = *(v56 + 8);
    (v66)(v31, v67);
    v65 = *(v38 + 24);
    v48(v24, v54, v20);
    v39 = v51;
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v47(v40 + v50, v24, v20);
    v41 = (v40 + v39);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    aBlock[4] = sub_1DEF2E7C0;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_39_1;
    v43 = _Block_copy(aBlock);

    v44 = v57;
    sub_1DEF8D6B8();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v45 = v59;
    v46 = v62;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v37, v44, v45, v43);
    _Block_release(v43);
    (*(v61 + 8))(v45, v46);
    (*(v58 + 8))(v44, v60);
    (v66)(v37, v67);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DEF1B838(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  v12 = sub_1DEF8D698();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D6D8();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = v17;
    v29 = a6;
    v30 = a5;
    MEMORY[0x1EEE9AC00](v16);
    v27[-2] = a3;
    v27[-1] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DF0, &qword_1DEF95AD8);
    sub_1DEF8DD18();
    v21 = aBlock;
    if (aBlock)
    {
      v22 = v34;
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v27[1] = *(a3 + 32);
      v24 = swift_allocObject();
      v24[2] = sub_1DEF30814;
      v24[3] = v23;
      v24[4] = a1;
      v37 = sub_1DEF2F8E0;
      v38 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1DEE3F0C0;
      v36 = &block_descriptor_216;
      v25 = _Block_copy(&aBlock);
      swift_retain_n();
      sub_1DEE39150(a1, 1);
      sub_1DEF8D6B8();
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v20, v14, v25);
      _Block_release(v25);

      (*(v31 + 8))(v14, v12);
      (*(v28 + 8))(v20, v15);
    }

    a5 = v30;
  }

  return a5(v18);
}

uint64_t sub_1DEF1BC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 64);
  if (*(v10 + 16) && (v11 = sub_1DEEAF350(a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = swift_allocObject();
    *(v15 + 16) = *(v14 + 16 * v13);

    v16 = 0;
    v19 = sub_1DEF30814;
  }

  else
  {
    v19 = 0;
    v15 = 0;
    v16 = 1;
  }

  swift_endAccess();
  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v9);
  swift_endAccess();
  v17 = 0;
  result = 0;
  if ((v16 & 1) == 0)
  {
    result = swift_allocObject();
    *(result + 16) = v19;
    *(result + 24) = v15;
    v17 = sub_1DEF30730;
  }

  *a3 = v17;
  a3[1] = result;
  return result;
}

uint64_t sub_1DEF1BDE4(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a3;
  swift_storeEnumTagMultiPayload();
  v8 = a3;
  a1(v7);
  return sub_1DEE171B4(v7, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF1BEB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v56 = a3;
  v7 = sub_1DEF8D698();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DEF8D6D8();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  swift_beginAccess();
  v17 = *(a1 + 64);
  if (!*(v17 + 16))
  {
    return swift_endAccess();
  }

  v18 = sub_1DEEAF350(a2);
  if ((v19 & 1) == 0)
  {
    return swift_endAccess();
  }

  v20 = v18;
  v49 = a4;
  v50 = a2;
  v48 = v7;
  v21 = *(v17 + 56);
  v22 = swift_allocObject();
  v46 = *(v21 + 16 * v20);
  v47 = v22;
  *(v22 + 16) = v46;
  swift_endAccess();
  v23 = qword_1ECDE2E50;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6010);
  v25 = *(v11 + 16);
  v25(v16, v50, v10);
  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = v28;
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v28 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = sub_1DEF8E2E8();
    *&v46 = v25;
    v31 = v30;
    (*(v11 + 8))(v16, v10);
    v32 = sub_1DEE12A5C(v29, v31, aBlock);
    v25 = v46;

    v33 = v44;
    *(v44 + 1) = v32;
    v34 = v33;
    _os_log_impl(&dword_1DEE0F000, v26, v27, "Backstop fired; timeout when waiting for response for message: %{public}s", v33, 0xCu);
    v35 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v34, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v25(v13, v50, v10);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v13);
  swift_endAccess();
  v37 = swift_allocObject();
  v38 = v47;
  *(v37 + 16) = sub_1DEF2E854;
  *(v37 + 24) = v38;
  aBlock[4] = sub_1DEF2E87C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_48;
  v39 = _Block_copy(aBlock);

  v40 = v51;
  sub_1DEF8D6B8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v41 = v53;
  v42 = v48;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v40, v41, v39);
  _Block_release(v39);
  (*(v55 + 8))(v41, v42);
  (*(v52 + 8))(v40, v54);

  v56(v43);
}

uint64_t sub_1DEF1C4F0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - v3);
  sub_1DEF2E884();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_1DEE171B4(v4, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF1C5D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E88, &qword_1DEF95B50);
  sub_1DEE1B548(&qword_1ECDE2D40, &unk_1ECDE4E88, &qword_1DEF95B50, MEMORY[0x1E695BF88]);
  return sub_1DEF8D5B8();
}

uint64_t sub_1DEF1C668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  sub_1DEF8DD18();
  return v1;
}

uint64_t sub_1DEF1C6DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEF30420;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_390;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1C854()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEF30338;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_345;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1C98C@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  result = sub_1DEF8DD18();
  *a2 = v4;
  return result;
}

uint64_t sub_1DEF1CA10@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  result = sub_1DEF8DD18();
  *a3 = v5;
  return result;
}

uint64_t sub_1DEF1CABC@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DF8, &qword_1DEF95AE0);
  result = sub_1DEF8DD18();
  *a3 = v5;
  return result;
}

uint64_t sub_1DEF1CB90(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a1;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + 24);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  v18 = sub_1DEF8D7B8();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    if (qword_1ECDE3800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = off_1ECDE4C30;
  os_unfair_lock_lock(off_1ECDE4C30 + 6);
  v20 = *(v19 + 2);
  if (v20 == -1)
  {
    __break(1u);
  }

  else
  {
    v33 = a2;
    *(v19 + 2) = &v20->isa + 1;
    os_unfair_lock_unlock(v19 + 6);
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v21 = sub_1DEF8D508();
  __swift_project_value_buffer(v21, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = a5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v35 = a3;
    v36 = v26;
    *v25 = 134349314;
    *(v25 + 4) = v20;
    *(v25 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v27 = sub_1DEF8D988();
    v29 = sub_1DEE12A5C(v27, v28, &v36);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Sending data (sendID:%{public}llu) to: %{public}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12CCD70](v26, -1, -1);
    v30 = v25;
    a5 = v32;
    MEMORY[0x1E12CCD70](v30, -1, -1);
  }

  sub_1DEE19808(a3);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a4, a5);
  return sub_1DEF2C5F4(v34, v33, a3, v6, v20, a4, a5);
}

uint64_t sub_1DEF1CEBC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1DEF8D698();
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DEF8D6D8();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D1E8();
  result = (*(*(v17 - 8) + 48))(a3, 1, v17);
  if (result == 1)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    *(v19 + 32) = a1;
    v20 = a2 & 1;
    *(v19 + 40) = a2 & 1;
    aBlock[4] = sub_1DEF2ECAC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_168;
    v21 = _Block_copy(aBlock);

    sub_1DEE39150(a1, v20);
    sub_1DEF8D6B8();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v16, v13, v21);
    _Block_release(v21);
    (*(v24 + 8))(v13, v11);
    (*(v14 + 8))(v16, v23);
  }

  return result;
}

uint64_t sub_1DEF1D1FC(NSObject *a1, int a2, uint64_t a3, int a4, int a5, unsigned __int8 *a6, NSObject *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v333 = a8;
  v319 = a7;
  v309 = a5;
  v308 = a4;
  v305 = a3;
  v317 = a2;
  v318 = a1;
  v342 = *MEMORY[0x1E69E9840];
  v300 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v300);
  v296 = v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v298 = v291 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v306 = v291 - v16;
  v17 = sub_1DEF8D698();
  v18 = *(v17 - 8);
  v328 = v17;
  v329 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v327 = v291 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = sub_1DEF8D6D8();
  v20 = *(v331 - 1);
  MEMORY[0x1EEE9AC00](v331);
  v330 = v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_1DEF8D168();
  v314 = *(v315 - 1);
  MEMORY[0x1EEE9AC00](v315);
  v313 = v291 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_1DEF8D1E8();
  v321 = *(v320 - 8);
  v23 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v312 = v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v310 = v291 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v311 = v291 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v303 = v291 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v302 = v291 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v294 = v291 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v295 = v291 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v291 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v322 = v291 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = v291 - v42;
  v44 = sub_1DEF8D3F8();
  v325 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v301 = v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v304 = v291 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v299 = v291 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v316 = v291 - v51;
  v297 = v52;
  MEMORY[0x1EEE9AC00](v53);
  v323 = v291 - v54;
  v55 = sub_1DEF8D788();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = (v291 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v307 = *a6;
  v60 = *(v10 + 24);
  *v59 = v60;
  (*(v56 + 104))(v59, *MEMORY[0x1E69E8020], v55, v57);
  v61 = v60;
  LOBYTE(v60) = sub_1DEF8D7B8();
  (*(v56 + 8))(v59, v55);
  if ((v60 & 1) == 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  v326 = v20;
  v324 = v44;
  v332 = a9;
  v334 = v10;
  v62 = *(v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v63 = *(v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v64 = __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v62);
  v65 = *(v62 - 8);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = v291 - v67;
  (*(v65 + 16))(v291 - v67, v66);
  v69 = (*(v63 + 24))(v62, v63);
  v71 = v70;
  (*(v65 + 8))(v68, v62);
  if (!v71)
  {
    if (qword_1ECDE2E50 == -1)
    {
LABEL_9:
      v80 = sub_1DEF8D508();
      __swift_project_value_buffer(v80, qword_1ECDF6010);
      v81 = sub_1DEF8D4D8();
      v82 = sub_1DEF8DC98();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v332;
      if (v83)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1DEE0F000, v81, v82, "Cannot send messages before we have a local device ID", v85, 2u);
        MEMORY[0x1E12CCD70](v85, -1, -1);
      }

      v86 = swift_allocObject();
      *(v86 + 16) = v333;
      *(v86 + 24) = v84;
      v340 = sub_1DEF30750;
      v341 = v86;
      aBlock = MEMORY[0x1E69E9820];
      v337 = 1107296256;
      v338 = sub_1DEE3F0C0;
      v339 = &block_descriptor_81;
      v87 = _Block_copy(&aBlock);
      goto LABEL_17;
    }

LABEL_86:
    swift_once();
    goto LABEL_9;
  }

  sub_1DEF8D388();
  v73 = v324;
  v72 = v325;
  if ((*(v325 + 48))(v43, 1, v324) == 1)
  {
    sub_1DEE171B4(v43, &unk_1ECDE3E80, &unk_1DEF90970);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v74 = sub_1DEF8D508();
    __swift_project_value_buffer(v74, qword_1ECDF6010);

    v75 = sub_1DEF8D4D8();
    v76 = sub_1DEF8DC98();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136446210;
      v79 = sub_1DEE12A5C(v69, v71, &aBlock);

      *(v77 + 4) = v79;
      _os_log_impl(&dword_1DEE0F000, v75, v76, "Cannot create UUID from sender device ID: %{public}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1E12CCD70](v78, -1, -1);
      MEMORY[0x1E12CCD70](v77, -1, -1);
    }

    else
    {
    }

    v104 = v332;
    v105 = swift_allocObject();
    *(v105 + 16) = v333;
    *(v105 + 24) = v104;
    v340 = sub_1DEF2E9C0;
    v341 = v105;
    aBlock = MEMORY[0x1E69E9820];
    v337 = 1107296256;
    v338 = sub_1DEE3F0C0;
    v339 = &block_descriptor_87_0;
    v87 = _Block_copy(&aBlock);
LABEL_17:

    v106 = v330;
    sub_1DEF8D6B8();
    v335 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v108 = v327;
    v107 = v328;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v106, v108, v87);
    _Block_release(v87);
    (*(v329 + 8))(v108, v107);
    (*(v326 + 8))(v106, v331);
  }

  v88 = *(v72 + 32);
  v88(v323, v43, v73);
  sub_1DEF8D628();
  v89 = v319;
  v90 = swift_unknownObjectRetain();
  v91 = MEMORY[0x1E12CADE0](v90);
  if (!v91)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v109 = sub_1DEF8D508();
    __swift_project_value_buffer(v109, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v110 = sub_1DEF8D4D8();
    v111 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v335 = v89;
      aBlock = v113;
      *v112 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v114 = sub_1DEF8D988();
      v116 = sub_1DEE12A5C(v114, v115, &aBlock);

      *(v112 + 4) = v116;
      _os_log_impl(&dword_1DEE0F000, v110, v111, "Cannot create NWConnection from nw_connection_t for %{public}s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x1E12CCD70](v113, -1, -1);
      MEMORY[0x1E12CCD70](v112, -1, -1);
    }

    v117 = v332;
    v118 = swift_allocObject();
    *(v118 + 16) = v333;
    *(v118 + 24) = v117;
    v340 = sub_1DEF30750;
    v341 = v118;
    aBlock = MEMORY[0x1E69E9820];
    v337 = 1107296256;
    v338 = sub_1DEE3F0C0;
    v339 = &block_descriptor_93;
    v119 = _Block_copy(&aBlock);

    v120 = v330;
    sub_1DEF8D6B8();
    v335 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v122 = v327;
    v121 = v328;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v120, v122, v119);
    _Block_release(v119);
    (*(v329 + 8))(v122, v121);
    (*(v326 + 8))(v120, v331);
    goto LABEL_51;
  }

  v293 = v91;
  v292 = v88;
  if (v317)
  {
    v291[1] = v72 + 32;
    v92 = v316;
    sub_1DEF8D3E8();
    v93 = sub_1DEF8D398();
    v95 = v94;
    v96 = *(v325 + 8);
    v291[3] = v325 + 8;
    v291[2] = v96;
    v96(v92, v73);
    aBlock = v93;
    v337 = v95;
    v97 = v314;
    v98 = v313;
    v99 = v315;
    (v314[13].isa)(v313, *MEMORY[0x1E6968F70], v315);
    sub_1DEF2EB78();
    v100 = v322;
    sub_1DEF8D1D8();
    (v97[1].isa)(v98, v99);

    sub_1DEEE1914();
    v101 = *(v321 + 16);
    v102 = v320;
    v101(v38, v318, v320);
    v103 = sub_1DEF291F4(v38, &selRef_fileHandleForReadingFromURL_error_);
    v315 = v101;
    sub_1DEEA37CC(MEMORY[0x1E69E7CC0]);
    sub_1DEEE1C14(v100);

    v197 = v321;
  }

  else
  {
    v197 = v321;
    v102 = v320;
    v315 = *(v321 + 16);
    (v315)(v322, v318, v320);
  }

  v123 = objc_opt_self();
  v124 = [v123 defaultManager];
  sub_1DEF8D1B8();
  v125 = sub_1DEF8D918();

  aBlock = 0;
  v126 = [v124 attributesOfItemAtPath:v125 error:&aBlock];

  v127 = aBlock;
  if (!v126)
  {
    v173 = aBlock;
    v174 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v175 = sub_1DEF8D508();
    __swift_project_value_buffer(v175, qword_1ECDF6010);
    v176 = v310;
    (v315)(v310, v322, v102);
    v177 = sub_1DEF8D4D8();
    v178 = sub_1DEF8DC98();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      aBlock = v180;
      *v179 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v181 = sub_1DEF8E2E8();
      v183 = v182;
      v321 = *(v197 + 8);
      (v321)(v176, v102);
      v184 = sub_1DEE12A5C(v181, v183, &aBlock);

      *(v179 + 4) = v184;
      _os_log_impl(&dword_1DEE0F000, v177, v178, "Cannot get attributes of file at resolved URL: %{public}s", v179, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v180);
      MEMORY[0x1E12CCD70](v180, -1, -1);
      MEMORY[0x1E12CCD70](v179, -1, -1);
    }

    else
    {

      v321 = *(v197 + 8);
      (v321)(v176, v102);
    }

    v190 = v332;
    v189 = v333;
    v191 = swift_allocObject();
    *(v191 + 16) = v189;
    *(v191 + 24) = v190;
    v340 = sub_1DEF30750;
    v341 = v191;
    aBlock = MEMORY[0x1E69E9820];
    v337 = 1107296256;
    v188 = &block_descriptor_99;
    goto LABEL_50;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DEE1B9F8(&qword_1ECDE2BF0, type metadata accessor for FileAttributeKey, &unk_1DEF90310);
  v128 = sub_1DEF8D848();
  v129 = v127;

  if (!*(v128 + 16) || (v130 = *MEMORY[0x1E696A3B8], v131 = sub_1DEEAF718(*MEMORY[0x1E696A3B8]), (v132 & 1) == 0))
  {

    goto LABEL_38;
  }

  sub_1DEE12F7C(*(v128 + 56) + 32 * v131, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v102 = v320;
    v160 = v322;
    v161 = v321;
    v162 = v315;
    v163 = v311;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v164 = sub_1DEF8D508();
    __swift_project_value_buffer(v164, qword_1ECDF6010);
    v162(v163, v160, v102);
    v165 = sub_1DEF8D4D8();
    v166 = sub_1DEF8DC98();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      aBlock = v168;
      *v167 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v169 = sub_1DEF8E2E8();
      v171 = v170;
      v321 = *(v161 + 8);
      (v321)(v163, v102);
      v172 = sub_1DEE12A5C(v169, v171, &aBlock);

      *(v167 + 4) = v172;
      _os_log_impl(&dword_1DEE0F000, v165, v166, "Cannot retrieve size of file at resolved URL: %{public}s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v168);
      MEMORY[0x1E12CCD70](v168, -1, -1);
      MEMORY[0x1E12CCD70](v167, -1, -1);
    }

    else
    {

      v321 = *(v161 + 8);
      (v321)(v163, v102);
    }

    v186 = v332;
    v185 = v333;
    v187 = swift_allocObject();
    *(v187 + 16) = v185;
    *(v187 + 24) = v186;
    v340 = sub_1DEF30750;
    v341 = v187;
    aBlock = MEMORY[0x1E69E9820];
    v337 = 1107296256;
    v188 = &block_descriptor_105;
    goto LABEL_50;
  }

  v314 = v335;
  if (v317)
  {
    v133 = [v123 defaultManager];
    sub_1DEF8D1B8();
    v134 = sub_1DEF8D918();

    aBlock = 0;
    v135 = v133;
    v136 = [v133 attributesOfItemAtPath:v134 error:&aBlock];

    v137 = aBlock;
    if (v136)
    {
      v138 = sub_1DEF8D848();
      v139 = v137;

      if (*(v138 + 16))
      {
        v140 = sub_1DEEAF718(v130);
        v141 = v320;
        v142 = v321;
        v143 = v315;
        v144 = 0x1ECDE2000uLL;
        if (v145)
        {
          sub_1DEE12F7C(*(v138 + 56) + 32 * v140, &aBlock);

          if (swift_dynamicCast())
          {
            v146 = v335;
            if (qword_1ECDE2E50 != -1)
            {
              swift_once();
            }

            v147 = sub_1DEF8D508();
            __swift_project_value_buffer(v147, qword_1ECDF6010);
            v148 = sub_1DEF8D4D8();
            v149 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v335 = v146;
              aBlock = v151;
              *v150 = 136446466;
              v152 = sub_1DEF8E2E8();
              v154 = sub_1DEE12A5C(v152, v153, &aBlock);

              *(v150 + 4) = v154;
              *(v150 + 12) = 2050;
              *(v150 + 14) = v314;
              v155 = "Uncompressed: %{public}s; compressed: %{public}ld";
              v156 = v149;
              v157 = v148;
              v158 = v150;
              v159 = 22;
LABEL_57:
              _os_log_impl(&dword_1DEE0F000, v157, v156, v155, v158, v159);
              __swift_destroy_boxed_opaque_existential_1(v151);
              MEMORY[0x1E12CCD70](v151, -1, -1);
              MEMORY[0x1E12CCD70](v150, -1, -1);
              goto LABEL_58;
            }

            goto LABEL_58;
          }
        }

        else
        {
        }
      }

      else
      {

        v141 = v320;
        v142 = v321;
        v143 = v315;
        v144 = 0x1ECDE2000;
      }

      v269 = v295;
      if (*(v144 + 3664) != -1)
      {
        swift_once();
      }

      v270 = sub_1DEF8D508();
      __swift_project_value_buffer(v270, qword_1ECDF6010);
      v143(v269, v318, v141);
      v271 = sub_1DEF8D4D8();
      v272 = sub_1DEF8DC98();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        aBlock = v274;
        *v273 = 136446210;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v275 = sub_1DEF8E2E8();
        v276 = v141;
        v278 = v277;
        v279 = *(v142 + 8);
        v279(v269, v276);
        v280 = sub_1DEE12A5C(v275, v278, &aBlock);

        *(v273 + 4) = v280;
        _os_log_impl(&dword_1DEE0F000, v271, v272, "Cannot retrieve size of file at URL: %{public}s", v273, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v274);
        MEMORY[0x1E12CCD70](v274, -1, -1);
        MEMORY[0x1E12CCD70](v273, -1, -1);
      }

      else
      {

        v279 = *(v142 + 8);
        v279(v269, v141);
      }

      v282 = v332;
      v281 = v333;
      v283 = swift_allocObject();
      *(v283 + 16) = v281;
      *(v283 + 24) = v282;
      v340 = sub_1DEF30750;
      v341 = v283;
      aBlock = MEMORY[0x1E69E9820];
      v337 = 1107296256;
      v338 = sub_1DEE3F0C0;
      v339 = &block_descriptor_123;
      v284 = _Block_copy(&aBlock);

      v285 = v330;
      sub_1DEF8D6B8();
      v335 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
      v287 = v327;
      v286 = v328;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v285, v287, v284);
      _Block_release(v284);

      (*(v329 + 8))(v287, v286);
      (*(v326 + 8))(v285, v331);
      v279(v322, v320);
LABEL_51:
      (*(v325 + 8))(v323, v324);
    }

    v256 = aBlock;
    v257 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v258 = sub_1DEF8D508();
    __swift_project_value_buffer(v258, qword_1ECDF6010);
    v259 = v321;
    v260 = v294;
    v102 = v320;
    (v315)(v294, v318, v320);
    v261 = sub_1DEF8D4D8();
    v262 = sub_1DEF8DC98();
    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      aBlock = v264;
      *v263 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v265 = sub_1DEF8E2E8();
      v267 = v266;
      v321 = *(v259 + 8);
      (v321)(v260, v102);
      v268 = sub_1DEE12A5C(v265, v267, &aBlock);

      *(v263 + 4) = v268;
      _os_log_impl(&dword_1DEE0F000, v261, v262, "Cannot get attributes of file at URL: %{public}s", v263, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v264);
      MEMORY[0x1E12CCD70](v264, -1, -1);
      MEMORY[0x1E12CCD70](v263, -1, -1);
    }

    else
    {

      v321 = *(v259 + 8);
      (v321)(v260, v102);
    }

    v289 = v332;
    v288 = v333;
    v290 = swift_allocObject();
    *(v290 + 16) = v288;
    *(v290 + 24) = v289;
    v340 = sub_1DEF30750;
    v341 = v290;
    aBlock = MEMORY[0x1E69E9820];
    v337 = 1107296256;
    v188 = &block_descriptor_117;
LABEL_50:
    v338 = sub_1DEE3F0C0;
    v339 = v188;
    v192 = _Block_copy(&aBlock);

    v193 = v330;
    sub_1DEF8D6B8();
    v335 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v195 = v327;
    v194 = v328;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v193, v195, v192);
    _Block_release(v192);

    (*(v329 + 8))(v195, v194);
    (*(v326 + 8))(v193, v331);
    (v321)(v322, v102);
    goto LABEL_51;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v198 = sub_1DEF8D508();
  __swift_project_value_buffer(v198, qword_1ECDF6010);
  v148 = sub_1DEF8D4D8();
  v199 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v148, v199))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v150 = 136446210;
    v335 = v314;
    aBlock = v151;
    v200 = sub_1DEF8E2E8();
    v202 = sub_1DEE12A5C(v200, v201, &aBlock);

    *(v150 + 4) = v202;
    v155 = "Uncompressed: %{public}s";
    v156 = v199;
    v157 = v148;
    v158 = v150;
    v159 = 12;
    goto LABEL_57;
  }

LABEL_58:

  v203 = v334;
  v204 = v319;
  v205 = v306;
  v206 = v299;
  LOBYTE(aBlock) = v307;
  v207 = v305;
  sub_1DEF200C4(v318, v305, v308, v309, &aBlock, v319, 0, 0);
  v208 = v325 + 16;
  v209 = *(v325 + 16);
  v209(v206, v207, v73);
  v209(v304, v323, v73);
  if ((v314 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (v314 >> 32)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v317)
  {
    LOBYTE(v207) = 4;
  }

  else
  {
    LOBYTE(v207) = 1;
  }

  v203 = v309 + 1;
  if (v309 == -1)
  {
    goto LABEL_89;
  }

  if (qword_1ECDE37F8 != -1)
  {
LABEL_90:
    swift_once();
  }

  v210 = __swift_project_value_buffer(v73, qword_1ECDF60C0);
  v330 = v209;
  v209(v205, v210, v73);
  v211 = v300;
  *(v205 + *(v300 + 20)) = 72;
  v212 = v206;
  v213 = v292;
  v292(v205 + v211[6], v212, v73);
  v213(v205 + v211[7], v304, v73);
  *(v205 + v211[8]) = v314;
  *(v205 + v211[9]) = v207;
  *(v205 + v211[10]) = v308;
  *(v205 + v211[11]) = v203;
  *(v205 + v211[12]) = v307;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v214 = sub_1DEF8D508();
  __swift_project_value_buffer(v214, qword_1ECDF6010);
  v215 = v298;
  sub_1DEE15068(v205, v298, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v216 = sub_1DEF8D4D8();
  v217 = v204;
  v218 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v219 = os_log_type_enabled(v216, v218);
  v329 = v208;
  if (v219)
  {
    v220 = swift_slowAlloc();
    v331 = swift_slowAlloc();
    aBlock = v331;
    *v220 = 136446466;
    v221 = v217;
    sub_1DEE15068(v215, v296, type metadata accessor for NetworkSyncHeader);
    v222 = sub_1DEF8D988();
    v224 = v223;
    sub_1DEE15388(v215, type metadata accessor for NetworkSyncHeader);
    v225 = sub_1DEE12A5C(v222, v224, &aBlock);

    *(v220 + 4) = v225;
    *(v220 + 12) = 2082;
    v335 = v221;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v226 = sub_1DEF8D988();
    v228 = sub_1DEE12A5C(v226, v227, &aBlock);
    v217 = v221;

    *(v220 + 14) = v228;
    _os_log_impl(&dword_1DEE0F000, v216, v218, "Sending file header: %{public}s to %{public}s", v220, 0x16u);
    v229 = v331;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v229, -1, -1);
    MEMORY[0x1E12CCD70](v220, -1, -1);
  }

  else
  {

    sub_1DEE15388(v215, type metadata accessor for NetworkSyncHeader);
  }

  v230 = v320;
  v231 = v322;
  v232 = sub_1DEEFB1A4();
  v327 = v233;
  v328 = v232;
  sub_1DEF1CB90(v232, v233, v217, 0, 0);
  v331 = swift_allocObject();
  swift_weakInit();
  v234 = v321;
  v235 = v315;
  (v315)(v302, v318, v230);
  v236 = v330;
  (v330)(v316, v305, v73);
  v236(v301, v323, v73);
  v235(v303, v231, v230);
  v237 = *(v234 + 80);
  v238 = (v237 + 32) & ~v237;
  v239 = *(v325 + 80);
  v240 = (v23 + v239 + v238) & ~v239;
  v241 = (v297 + v239 + v240) & ~v239;
  v329 = v241 + v297;
  v326 = (v241 + v297) & 0xFFFFFFFFFFFFFFFCLL;
  v334 = (v326 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v318 = ((v334 + 11) & 0xFFFFFFFFFFFFFFF8);
  v242 = (&v318[1].isa + 7) & 0xFFFFFFFFFFFFFFF8;
  v315 = ((v242 + 23) & 0xFFFFFFFFFFFFFFF8);
  v243 = (v315 + v237 + 8) & ~v237;
  v330 = (v243 + v23);
  v244 = swift_allocObject();
  v245 = v293;
  *(v244 + 16) = v331;
  *(v244 + 24) = v245;
  v246 = v230;
  v247 = *(v234 + 32);
  v247(v244 + v238, v302, v246);
  v248 = v324;
  v249 = v292;
  v292(v244 + v240, v316, v324);
  v249(v244 + v241, v301, v248);
  *(v244 + v329) = v307;
  *(v244 + v326 + 4) = v308;
  v250 = v333;
  *(v244 + v334) = v309;
  *(&v318->isa + v244) = v319;
  v251 = (v244 + v242);
  v252 = v332;
  *v251 = v250;
  v251[1] = v252;
  *(v315 + v244) = v314;
  v253 = v244 + v243;
  v254 = v320;
  v247(v253, v303, v320);
  v330[v244] = v317 & 1;
  sub_1DEF8D608();
  swift_unknownObjectRetain();

  sub_1DEF8D5F8();
  v255 = v322;
  sub_1DEF8D618();

  sub_1DEE1BFA0(v328, v327);

  sub_1DEE15388(v306, type metadata accessor for NetworkSyncHeader);
  (*(v321 + 8))(v255, v254);
  (*(v325 + 8))(v323, v248);
}

void sub_1DEF200C4(NSObject *a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v184 = a8;
  v187 = a7;
  v170 = a3;
  v173 = a2;
  v191 = a1;
  v179 = sub_1DEF8D698();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v175 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1DEF8D6D8();
  v176 = *(v177 - 1);
  MEMORY[0x1EEE9AC00](v177);
  v174 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_isa = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](p_isa);
  v171 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v190 = &v160 - v17;
  v18 = sub_1DEF8D3F8();
  v188 = *(v18 - 8);
  v189 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v160 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v160 - v23;
  v185 = sub_1DEF8D1E8();
  v24 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v26 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v160 - v28;
  v169 = *a5;
  v183 = v8;
  v31 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v30 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v32 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v31);
  v33 = *(v31 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v160 - v35;
  (*(v33 + 16))(&v160 - v35, v34);
  v182 = (*(v30 + 24))(v31, v30);
  v38 = v37;
  (*(v33 + 8))(v36, v31);
  if (v38)
  {
    v164 = v26;
    v167 = a4;
    if (qword_1ECDE2E50 != -1)
    {
LABEL_63:
      swift_once();
    }

    v39 = sub_1DEF8D508();
    v40 = __swift_project_value_buffer(v39, qword_1ECDF6010);
    v41 = v24 + 16;
    v42 = *(v24 + 16);
    v43 = v24;
    v24 = v185;
    v163 = v41;
    v162 = v42;
    v42(v29, v191, v185);
    swift_unknownObjectRetain();
    v180 = v40;
    v44 = sub_1DEF8D4D8();
    v45 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    v46 = os_log_type_enabled(v44, v45);
    v168 = a6;
    v166 = p_isa;
    v165 = v43;
    if (v46)
    {
      p_isa = swift_slowAlloc();
      v161 = swift_slowAlloc();
      aBlock = v161;
      *p_isa = 136446466;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v47 = sub_1DEF8E2E8();
      v49 = v48;
      v50 = *(v43 + 8);
      v50(v29, v24);
      v51 = sub_1DEE12A5C(v47, v49, &aBlock);

      *(p_isa + 4) = v51;
      *(p_isa + 6) = 2082;
      v192 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v52 = sub_1DEF8D988();
      v54 = sub_1DEE12A5C(v52, v53, &aBlock);

      *(p_isa + 14) = v54;
      _os_log_impl(&dword_1DEE0F000, v44, v45, "Sending file attributes for URL %{public}s to %{public}s", p_isa, 0x16u);
      v55 = v161;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v55, -1, -1);
      MEMORY[0x1E12CCD70](p_isa, -1, -1);
    }

    else
    {

      v50 = *(v43 + 8);
      v50(v29, v24);
    }

    v65 = v189;
    v66 = v190;
    v67 = v182;
    sub_1DEF8D388();
    v68 = v188;
    if ((*(v188 + 48))(v66, 1, v65) == 1)
    {
      sub_1DEE171B4(v66, &unk_1ECDE3E80, &unk_1DEF90970);

      v69 = sub_1DEF8D4D8();
      v70 = sub_1DEF8DC98();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v71 = 136446210;
        v73 = sub_1DEE12A5C(v67, v38, &aBlock);

        *(v71 + 4) = v73;
        _os_log_impl(&dword_1DEE0F000, v69, v70, "Cannot create UUID from sender device ID: %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x1E12CCD70](v72, -1, -1);
        MEMORY[0x1E12CCD70](v71, -1, -1);
      }

      else
      {
      }

      v60 = v187;
      if (v187)
      {
        v95 = swift_allocObject();
        v63 = v184;
        *(v95 + 16) = v60;
        *(v95 + 24) = v63;
        v197 = sub_1DEF30750;
        v198 = v95;
        aBlock = MEMORY[0x1E69E9820];
        v194 = 1107296256;
        v64 = &block_descriptor_153;
        goto LABEL_20;
      }

      return;
    }

    v177 = v50;

    v74 = *(v68 + 32);
    v29 = (v68 + 32);
    v74(v186, v66, v65);
    v75 = 0;
    v76 = URL.extendedAttributeNames()();
    v179 = v29;
    v178 = v74;
    v100 = v76;
    v182 = *(v76 + 16);
    if (v182)
    {
      v101 = 0;
      v38 = (v76 + 40);
      a6 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v101 >= *(v100 + 16))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v24 = *(v38 - 1);
        v29 = *v38;
        MEMORY[0x1EEE9AC00](v76);
        *(&v160 - 2) = v24;
        *(&v160 - 1) = v29;

        sub_1DEF8D198(&aBlock);
        if (v75)
        {

          v77 = v75;
          v75 = 0;
          v78 = v164;
          v79 = v185;
          v162(v164, v191, v185);
          v80 = v77;
          v81 = sub_1DEF8D4D8();
          v82 = sub_1DEF8DC98();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v191 = a6;
            v84 = v83;
            v85 = swift_slowAlloc();
            aBlock = v85;
            *v84 = 136446466;
            sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v86 = sub_1DEF8E2E8();
            v88 = v87;
            v177(v78, v79);
            v89 = sub_1DEE12A5C(v86, v88, &aBlock);

            *(v84 + 4) = v89;
            *(v84 + 12) = 2082;
            v192 = v77;
            v90 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
            v91 = sub_1DEF8D988();
            v93 = sub_1DEE12A5C(v91, v92, &aBlock);

            *(v84 + 14) = v93;
            _os_log_impl(&dword_1DEE0F000, v81, v82, "Could not fetch extended attributes for URL %{public}s; error: %{public}s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v85, -1, -1);
            v94 = v84;
            a6 = v191;
            MEMORY[0x1E12CCD70](v94, -1, -1);
          }

          else
          {

            v177(v78, v79);
          }

          goto LABEL_40;
        }

        v190 = 0;
        v106 = v100;
        p_isa = &aBlock->isa;
        v107 = v194;
        sub_1DEE1BFF4(aBlock, v194);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = a6;
        v109 = sub_1DEE13224(v24, v29);
        v111 = a6;
        isa = a6[2].isa;
        v113 = (v110 & 1) == 0;
        v114 = __OFADD__(isa, v113);
        v115 = isa + v113;
        if (v114)
        {
          goto LABEL_62;
        }

        v116 = v110;
        if (v111[3].isa < v115)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v122 = v109;
        sub_1DEEBA178();
        v109 = v122;
        if (v116)
        {
LABEL_23:
          v102 = v109;

          a6 = aBlock;
          v103 = (aBlock[7].isa + 16 * v102);
          v104 = *v103;
          v105 = v103[1];
          *v103 = p_isa;
          v103[1] = v107;
          sub_1DEE1BFA0(v104, v105);
          v76 = sub_1DEE1BFA0(p_isa, v107);
          goto LABEL_24;
        }

LABEL_33:
        a6 = aBlock;
        aBlock[(v109 >> 6) + 8].isa = (aBlock[(v109 >> 6) + 8].isa | (1 << v109));
        v118 = (a6[6].isa + 16 * v109);
        *v118 = v24;
        v118[1] = v29;
        v119 = (a6[7].isa + 16 * v109);
        *v119 = p_isa;
        v119[1] = v107;
        v76 = sub_1DEE1BFA0(p_isa, v107);
        v120 = a6[2].isa;
        v114 = __OFADD__(v120, 1);
        v121 = (v120 + 1);
        if (v114)
        {
          __break(1u);
          goto LABEL_65;
        }

        a6[2].isa = v121;
LABEL_24:
        ++v101;
        v38 += 2;
        v100 = v106;
        v75 = v190;
        if (v182 == v101)
        {
          goto LABEL_39;
        }
      }

      sub_1DEEB5F5C(v115, isUniquelyReferenced_nonNull_native);
      v109 = sub_1DEE13224(v24, v29);
      if ((v116 & 1) != (v117 & 1))
      {
        goto LABEL_70;
      }

LABEL_32:
      if (v116)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    a6 = MEMORY[0x1E69E7CC8];
LABEL_39:

LABEL_40:
    v123 = sub_1DEF8D4D8();
    v124 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock = v126;
      *v125 = 136446210;

      v127 = a6;
      v128 = sub_1DEF8D858();
      v130 = v129;

      v131 = sub_1DEE12A5C(v128, v130, &aBlock);

      *(v125 + 4) = v131;
      _os_log_impl(&dword_1DEE0F000, v123, v124, "Attributes: %{public}s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x1E12CCD70](v126, -1, -1);
      MEMORY[0x1E12CCD70](v125, -1, -1);
    }

    else
    {

      v127 = a6;
    }

    v132 = v168;
    v133 = v167;
    v134 = v172;
    v196 = &type metadata for NetworkMessenger.ExtendedAttributes;
    v197 = sub_1DEF2EC1C();
    aBlock = v127;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    v191 = v127;

    v136 = sub_1DEE29274(&aBlock);
    if (!v75)
    {
      v137 = sub_1DEE1187C(v136);
      v139 = v138;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v140 = v189;
      v141 = *(v188 + 16);
      v141(v181, v173, v189);
      v141(v134, v186, v140);
      v142 = v139 >> 62;
      if ((v139 >> 62) > 1)
      {
        if (v142 != 2)
        {
          goto LABEL_56;
        }

        v145 = *(v137 + 16);
        v144 = *(v137 + 24);
        v143 = v144 - v145;
        if (!__OFSUB__(v144, v145))
        {
LABEL_53:
          if ((v143 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          if (!HIDWORD(v143))
          {
LABEL_57:
            v190 = v137;
            if (qword_1ECDE37F8 == -1)
            {
LABEL_58:
              v146 = v189;
              v147 = __swift_project_value_buffer(v189, qword_1ECDF60C0);
              v148 = v171;
              v141(v171, v147, v146);
              v149 = v166;
              *(v148 + v166[5]) = 72;
              v150 = v178;
              v178(v148 + v149[6], v181, v146);
              v150(v148 + v149[7], v134, v146);
              *(v148 + v149[8]) = v143;
              *(v148 + v149[9]) = 2;
              *(v148 + v149[10]) = v170;
              *(v148 + v149[11]) = v133;
              *(v148 + v149[12]) = v169;
              v151 = sub_1DEEFB1A4();
              v153 = v152;
              v154 = v183;
              sub_1DEF1CB90(v151, v152, v132, 0, 0);
              v155 = v132;
              v156 = swift_allocObject();
              v157 = v187;
              v156[2] = v154;
              v156[3] = v157;
              v158 = v184;
              v156[4] = v184;

              sub_1DEE2CB00(v157, v158);
              v159 = v190;
              sub_1DEF1CB90(v190, v139, v155, sub_1DEF2EC70, v156);

              sub_1DEE1BFA0(v151, v153);
              sub_1DEE1BFA0(v159, v139);
              sub_1DEE15388(v148, type metadata accessor for NetworkSyncHeader);
              (*(v188 + 8))(v186, v146);

              return;
            }

LABEL_67:
            swift_once();
            goto LABEL_58;
          }

          __break(1u);
LABEL_56:
          LODWORD(v143) = 0;
          goto LABEL_57;
        }

        __break(1u);
      }

      else if (!v142)
      {
        LODWORD(v143) = BYTE6(v139);
        goto LABEL_57;
      }

      if (!__OFSUB__(HIDWORD(v137), v137))
      {
        v143 = HIDWORD(v137) - v137;
        goto LABEL_53;
      }

      __break(1u);
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    swift_unexpectedError();
    __break(1u);
LABEL_70:
    sub_1DEF8E6E8();
    __break(1u);
    return;
  }

  if (qword_1ECDE2E50 != -1)
  {
LABEL_65:
    swift_once();
  }

  v56 = sub_1DEF8D508();
  __swift_project_value_buffer(v56, qword_1ECDF6010);
  v57 = sub_1DEF8D4D8();
  v58 = sub_1DEF8DC98();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v187;
  if (v59)
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1DEE0F000, v57, v58, "Cannot send messages before we have a local device ID", v61, 2u);
    MEMORY[0x1E12CCD70](v61, -1, -1);
  }

  if (v60)
  {
    v62 = swift_allocObject();
    v63 = v184;
    *(v62 + 16) = v60;
    *(v62 + 24) = v63;
    v197 = sub_1DEF30750;
    v198 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v194 = 1107296256;
    v64 = &block_descriptor_147;
LABEL_20:
    v195 = sub_1DEE3F0C0;
    v196 = v64;
    v96 = _Block_copy(&aBlock);
    sub_1DEE2CB00(v60, v63);

    v97 = v174;
    sub_1DEF8D6B8();
    v192 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v98 = v175;
    v99 = v179;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v97, v98, v96);
    _Block_release(v96);
    sub_1DEE3DBD0(v60);
    (*(v178 + 1))(v98, v99);
    (*(v176 + 8))(v97, v177);
  }
}

uint64_t sub_1DEF21530(int *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, char *a8, char a9, int a10, int a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v160 = a7;
  v169 = a6;
  v173 = a5;
  v171 = a3;
  v158 = a2;
  v156 = a1;
  v183 = *MEMORY[0x1E69E9840];
  v18 = sub_1DEF8D698();
  v167 = *(v18 - 8);
  v168 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v164 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1DEF8D6D8();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v163 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1DEF8D1E8();
  v24 = *(v175 - 1);
  MEMORY[0x1EEE9AC00](v175);
  v154 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v149 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v149 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v172 = &v149 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D80, &unk_1DEF95A88);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v149 - v34;
  v36 = sub_1DEF8D678();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v155 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v149 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v170 = &v149 - v43;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v162 = a14;
    v161 = a13;
    sub_1DEE17214(v171, v35, &qword_1ECDE4D80, &unk_1DEF95A88);
    LODWORD(v171) = (*(v37 + 48))(v35, 1, v36);
    if (v171 == 1)
    {
      sub_1DEE171B4(v35, &qword_1ECDE4D80, &unk_1DEF95A88);
      v44 = v175;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v45 = sub_1DEF8D508();
      v46 = __swift_project_value_buffer(v45, qword_1ECDF6010);
      v47 = *(v24 + 16);
      v160 = a16;
      v170 = v47;
      (v47)(v30, a16, v44);
      v48 = v173;

      v172 = v46;
      v49 = sub_1DEF8D4D8();
      v50 = sub_1DEF8DCB8();

      v51 = os_log_type_enabled(v49, v50);
      v157 = v24;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = v24;
        v54 = swift_slowAlloc();
        v176 = v48;
        aBlock = v54;
        *v52 = 136315906;
        sub_1DEF8D628();

        v55 = sub_1DEF8D988();
        v57 = sub_1DEE12A5C(v55, v56, &aBlock);

        *(v52 + 4) = v57;
        *(v52 + 12) = 2050;
        *(v52 + 14) = a15;
        *(v52 + 22) = 2050;
        *(v52 + 24) = v156;
        *(v52 + 32) = 2082;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v58 = sub_1DEF8E2E8();
        v60 = v59;
        v61 = *(v53 + 8);
        v61(v30, v175);
        v62 = sub_1DEE12A5C(v58, v60, &aBlock);

        *(v52 + 34) = v62;
        _os_log_impl(&dword_1DEE0F000, v49, v50, "%s; file size: %{public}ld; bytes sent: %{public}ld; file path: %{public}s", v52, 0x2Au);
        swift_arrayDestroy();
        v44 = v175;
        MEMORY[0x1E12CCD70](v54, -1, -1);
        MEMORY[0x1E12CCD70](v52, -1, -1);
      }

      else
      {

        v61 = *(v24 + 8);
        v61(v30, v44);
      }

      v89 = v159;
      if ((v158 & 1) == 0)
      {
        goto LABEL_29;
      }

      (v170)(v159, v169, v44);
      v90 = v173;

      v91 = sub_1DEF8D4D8();
      v92 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = v89;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v176 = v90;
        aBlock = v95;
        *v94 = 136315394;
        sub_1DEF8D628();

        v96 = sub_1DEF8D988();
        v98 = sub_1DEE12A5C(v96, v97, &aBlock);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2082;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v99 = sub_1DEF8E2E8();
        v101 = v100;
        v61(v93, v175);
        v102 = sub_1DEE12A5C(v99, v101, &aBlock);
        v44 = v175;

        *(v94 + 14) = v102;
        _os_log_impl(&dword_1DEE0F000, v91, v92, "%s; Send completed for %{public}s", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v95, -1, -1);
        MEMORY[0x1E12CCD70](v94, -1, -1);
      }

      else
      {

        v61(v89, v44);
      }

      v120 = v160;
      if (a17)
      {
        v121 = [objc_opt_self() defaultManager];
        v122 = sub_1DEF8D178();
        aBlock = 0;
        v123 = [v121 removeItemAtURL:v122 error:&aBlock];

        if (v123)
        {
          v124 = aBlock;
        }

        else
        {
          v125 = aBlock;
          v126 = sub_1DEF8D148();

          swift_willThrow();
          v127 = v154;
          (v170)(v154, v120, v44);
          v128 = v126;
          v129 = v44;
          v130 = sub_1DEF8D4D8();
          v131 = sub_1DEF8DC98();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            aBlock = v133;
            *v132 = 136446466;
            sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v134 = sub_1DEF8E2E8();
            v136 = v135;
            v61(v127, v129);
            v137 = sub_1DEE12A5C(v134, v136, &aBlock);

            *(v132 + 4) = v137;
            *(v132 + 12) = 2082;
            v176 = v126;
            v138 = v126;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
            v139 = sub_1DEF8D988();
            v141 = sub_1DEE12A5C(v139, v140, &aBlock);

            *(v132 + 14) = v141;
            _os_log_impl(&dword_1DEE0F000, v130, v131, "Failed to delete compressed URL: %{public}s error: %{public}s", v132, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v133, -1, -1);
            MEMORY[0x1E12CCD70](v132, -1, -1);
          }

          else
          {

            v61(v127, v129);
          }
        }
      }

      v142 = swift_allocObject();
      v143 = v162;
      *(v142 + 16) = v161;
      *(v142 + 24) = v143;
      v181 = sub_1DEF2EBCC;
      v182 = v142;
      aBlock = MEMORY[0x1E69E9820];
      v178 = 1107296256;
      v179 = sub_1DEE3F0C0;
      v180 = &block_descriptor_135;
      v144 = _Block_copy(&aBlock);

      v145 = v163;
      sub_1DEF8D6B8();
      v176 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
      v146 = v164;
      v147 = v168;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v145, v146, v144);
      _Block_release(v144);
      (*(v167 + 8))(v146, v147);
      (*(v165 + 8))(v145, v166);
LABEL_28:

LABEL_29:

      return v171 == 1;
    }

    v156 = v21;
    v159 = a8;
    v63 = v170;
    (*(v37 + 32))(v170, v35, v36);
    v64 = v37;
    v65 = v175;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v158 = a11;
    v66 = sub_1DEF8D508();
    __swift_project_value_buffer(v66, qword_1ECDF6010);
    (*(v24 + 16))(v172, v169, v65);
    v169 = *(v37 + 16);
    v169(v41, v63, v36);
    v67 = v173;

    v68 = sub_1DEF8D4D8();
    v69 = sub_1DEF8DC98();

    LODWORD(v154) = v69;
    v70 = os_log_type_enabled(v68, v69);
    v153 = v36;
    v152 = v64;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v157 = v24;
      v72 = v65;
      v73 = v71;
      v151 = swift_slowAlloc();
      v176 = v67;
      aBlock = v151;
      *v73 = 136315650;
      sub_1DEF8D628();
      v150 = v68;

      v74 = sub_1DEF8D988();
      v76 = sub_1DEE12A5C(v74, v75, &aBlock);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v77 = v172;
      v78 = sub_1DEF8E2E8();
      v80 = v79;
      (*(v157 + 8))(v77, v72);
      v81 = sub_1DEE12A5C(v78, v80, &aBlock);

      *(v73 + 14) = v81;
      *(v73 + 22) = 2082;
      v169(v155, v41, v36);
      v82 = sub_1DEF8D988();
      v84 = v83;
      v85 = *(v64 + 8);
      v85(v41, v36);
      v86 = sub_1DEE12A5C(v82, v84, &aBlock);

      *(v73 + 24) = v86;
      v87 = v150;
      _os_log_impl(&dword_1DEE0F000, v150, v154, "%s; Failed to send file %{public}s error: %{public}s", v73, 0x20u);
      v88 = v151;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v88, -1, -1);
      MEMORY[0x1E12CCD70](v73, -1, -1);
    }

    else
    {

      v85 = *(v64 + 8);
      v85(v41, v36);
      (*(v24 + 8))(v172, v65);
    }

    v103 = v159;
    v104 = v156;
    v105 = v156[6];
    v106 = sub_1DEF8D3F8();
    v107 = *(*(v106 - 8) + 16);
    v107(v105 + v23, v160, v106);
    v107(&v23[v104[7]], v103, v106);
    v108 = v158 + 1;
    if (v158 == -1)
    {
      __break(1u);
    }

    else
    {
      v175 = v85;
      v105 = a12;
      LODWORD(v41) = a10;
      LOBYTE(v85) = a9;
      if (qword_1ECDE37F8 == -1)
      {
LABEL_18:
        v109 = __swift_project_value_buffer(v106, qword_1ECDF60C0);
        v107(v23, v109, v106);
        *&v23[v104[5]] = 72;
        *&v23[v104[8]] = 0;
        v23[v104[9]] = 3;
        *&v23[v104[10]] = v41;
        *&v23[v104[11]] = v108;
        v23[v104[12]] = v85;
        v110 = sub_1DEEFB1A4();
        v112 = v111;
        v113 = Strong;
        sub_1DEF1CB90(v110, v111, v105, 0, 0);
        v173 = *(v113 + 32);
        v114 = swift_allocObject();
        v115 = v162;
        *(v114 + 16) = v161;
        *(v114 + 24) = v115;
        v181 = sub_1DEF2EBFC;
        v182 = v114;
        aBlock = MEMORY[0x1E69E9820];
        v178 = 1107296256;
        v179 = sub_1DEE3F0C0;
        v180 = &block_descriptor_141;
        v116 = _Block_copy(&aBlock);

        v117 = v163;
        sub_1DEF8D6B8();
        v176 = MEMORY[0x1E69E7CC0];
        sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
        v118 = v164;
        v119 = v168;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v117, v118, v116);
        _Block_release(v116);
        sub_1DEE1BFA0(v110, v112);
        (*(v167 + 8))(v118, v119);
        (*(v165 + 8))(v117, v166);
        sub_1DEE15388(v23, type metadata accessor for NetworkSyncHeader);
        (v175)(v170, v153);
        goto LABEL_28;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

void sub_1DEF229A4(void (*a1)(void *, uint64_t), double a2, uint64_t a3, char a4)
{
  sub_1DEF2E884();
  v6 = swift_allocError();
  *v7 = a4;
  a1(v6, 1);
}

uint64_t sub_1DEF22A18(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DEF8D698();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D6D8();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a1;
  v16 = a2 & 1;
  *(v15 + 40) = a2 & 1;
  aBlock[4] = sub_1DEF2EC9C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_162;
  v17 = _Block_copy(aBlock);
  sub_1DEE2CB00(a4, a5);
  sub_1DEE39150(a1, v16);
  sub_1DEF8D6B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void (*sub_1DEF22D14(void (*result)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t, uint64_t)
{
  if (result)
  {
    v6 = result;

    if (a4)
    {
      v7 = a3;
      v8 = 1;
    }

    else
    {
      v7 = 1;
      v8 = 0;
    }

    v6(v7, v8);

    return sub_1DEE3DBD0(v6);
  }

  return result;
}

void sub_1DEF22D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  sub_1DEE19808(a3);
  if (a1)
  {
    v8 = qword_1ECDE2E50;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DEF8D508();
    __swift_project_value_buffer(v9, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = sub_1DEF8D4D8();
    v11 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 134349570;
      *(v12 + 4) = a4;
      *(v12 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v14 = sub_1DEF8D988();
      v16 = sub_1DEE12A5C(v14, v15, &v30);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v17 = sub_1DEF8D988();
      v19 = sub_1DEE12A5C(v17, v18, &v30);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_1DEE0F000, v10, v11, "Failed to send message data (sendID:%{public}llu): %{public}s to %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v13, -1, -1);
      MEMORY[0x1E12CCD70](v12, -1, -1);
    }

    if (a5)
    {
      sub_1DEF2ED44();
      v20 = swift_allocError();
      *v21 = 0;
      a5(v20, 1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v22 = sub_1DEF8D508();
    __swift_project_value_buffer(v22, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v23 = sub_1DEF8D4D8();
    v24 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 134349314;
      *(v25 + 4) = a4;
      *(v25 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v27 = sub_1DEF8D988();
      v29 = sub_1DEE12A5C(v27, v28, &v30);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1DEE0F000, v23, v24, "Data (sendID:%{public}llu) sent to: %{public}s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12CCD70](v26, -1, -1);
      MEMORY[0x1E12CCD70](v25, -1, -1);
    }

    if (a5)
    {
      a5(1, 0);
    }
  }
}

uint64_t sub_1DEF2316C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DEF2F8EC;
  *(v9 + 24) = v8;
  v12[4] = sub_1DEE46D40;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DEE134F4;
  v12[3] = &block_descriptor_234;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF232C4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v9 = sub_1DEF8D988();
      v11 = sub_1DEE12A5C(v9, v10, &v34);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "%{public}s; Listener is ready", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      v12 = v8;
LABEL_10:
      MEMORY[0x1E12CCD70](v12, -1, -1);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v13 = sub_1DEF8D508();
    __swift_project_value_buffer(v13, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v5 = sub_1DEF8D4D8();
    v14 = sub_1DEF8DC78();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v14))
    {
      v7 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v7 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v16 = sub_1DEF8D988();
      v18 = sub_1DEE12A5C(v16, v17, &v34);

      *(v7 + 4) = v18;
      *(v7 + 12) = 2082;
      type metadata accessor for nw_listener_state_t(0);
      v19 = sub_1DEF8D988();
      v21 = sub_1DEE12A5C(v19, v20, &v34);

      *(v7 + 14) = v21;
      _os_log_impl(&dword_1DEE0F000, v5, v14, "%{public}s; Listener state changed to %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      v12 = v15;
      goto LABEL_10;
    }
  }

  if (a2)
  {
    v22 = qword_1ECDE2E50;
    swift_unknownObjectRetain();
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DEF8D508();
    __swift_project_value_buffer(v23, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v24 = sub_1DEF8D4D8();
    v25 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v28 = sub_1DEF8D988();
      v30 = sub_1DEE12A5C(v28, v29, &v34);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v31 = sub_1DEF8D988();
      v33 = sub_1DEE12A5C(v31, v32, &v34);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_1DEE0F000, v24, v25, "%{public}s; Listener failed with error: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v27, -1, -1);
      MEMORY[0x1E12CCD70](v26, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1DEF23790()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1DEF8D7B8();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  if (*(v0[7] + 16))
  {
    return;
  }

  v8 = v0[12];
  if (!v8)
  {
    return;
  }

  [v8 invalidate];
  v9 = v0[12];
  v0[12] = 0;

  if (v0[13])
  {

    sub_1DEF01250();
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF6010);
  v11 = sub_1DEF8D4D8();
  v12 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DEE0F000, v11, v12, "Invalidated prevent-sleep assertion", v13, 2u);
    MEMORY[0x1E12CCD70](v13, -1, -1);
  }
}

void sub_1DEF239AC(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v4 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v81 - v13;
  v15 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 24);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1DEF8D7B8();
  v26 = *(v19 + 8);
  v25 = v19 + 8;
  v26(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = a2;
  if (*(a2 + v4[10]) != 3)
  {
    a2 = v86;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_10:
      v44 = sub_1DEF8D508();
      __swift_project_value_buffer(v44, qword_1ECDF6010);
      v45 = v85;
      sub_1DEE15068(v25, v85, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v31 = sub_1DEF8D4D8();
      v46 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v31, v46))
      {

        v63 = type metadata accessor for NetworkSyncHeader;
        goto LABEL_29;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v87 = a2;
      v88 = v34;
      *v33 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v47 = sub_1DEF8D988();
      v49 = sub_1DEE12A5C(v47, v48, &v88);

      *(v33 + 4) = v49;
      *(v33 + 12) = 2082;
      sub_1DEF8D3F8();
      sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v50 = sub_1DEF8E2E8();
      v52 = v51;
      sub_1DEE15388(v45, type metadata accessor for NetworkSyncHeader);
      v53 = sub_1DEE12A5C(v50, v52, &v88);

      *(v33 + 14) = v53;
      v42 = "%{public}s; Received unexpected sequence count for file: %{public}s";
LABEL_16:
      v43 = v46;
      goto LABEL_17;
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  v27 = v86;
  if (*(a2 + v4[11]) == 2)
  {
    v28 = v4[6];
    sub_1DEF25E68(a2 + v28, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1DEE171B4(v14, &qword_1ECDE4E38, &qword_1DEF95B20);
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v29 = sub_1DEF8D508();
      __swift_project_value_buffer(v29, qword_1ECDF6010);
      v30 = v82;
      sub_1DEE15068(v25, v82, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v31 = sub_1DEF8D4D8();
      v32 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v87 = v27;
        v88 = v34;
        *v33 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v35 = sub_1DEF8D988();
        v37 = sub_1DEE12A5C(v35, v36, &v88);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v38 = sub_1DEF8E2E8();
        v40 = v39;
        sub_1DEE15388(v30, type metadata accessor for NetworkSyncHeader);
        v41 = sub_1DEE12A5C(v38, v40, &v88);

        *(v33 + 14) = v41;
        v42 = "%{public}s; Received unexpected file for nonexistent message: %{public}s";
        v43 = v32;
LABEL_17:
        _os_log_impl(&dword_1DEE0F000, v31, v43, v42, v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v34, -1, -1);
        MEMORY[0x1E12CCD70](v33, -1, -1);

        return;
      }

      goto LABEL_19;
    }

    v45 = v83;
    sub_1DEE1C4F0(v14, v83, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    if (*(v45 + *(v15 + 20)))
    {
      sub_1DEF26448(v27, a2, 0);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v66 = sub_1DEF8D508();
      __swift_project_value_buffer(v66, qword_1ECDF6010);
      v67 = v81;
      sub_1DEE15068(a2, v81, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v68 = sub_1DEF8D4D8();
      v69 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87 = v27;
        v88 = v85;
        *v70 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v71 = sub_1DEF8D988();
        v73 = sub_1DEE12A5C(v71, v72, &v88);

        *(v70 + 4) = v73;
        *(v70 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v74 = sub_1DEF8E2E8();
        v76 = v75;
        sub_1DEE15388(v67, type metadata accessor for NetworkSyncHeader);
        v77 = sub_1DEE12A5C(v74, v76, &v88);

        *(v70 + 14) = v77;
        _os_log_impl(&dword_1DEE0F000, v68, v69, "%{public}s; Received file for message without extended attributes: %{public}s", v70, 0x16u);
        v78 = v85;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v78, -1, -1);
        v79 = v70;
        v45 = v83;
        MEMORY[0x1E12CCD70](v79, -1, -1);
      }

      else
      {

        sub_1DEE15388(v67, type metadata accessor for NetworkSyncHeader);
      }

      sub_1DEF25394(a2 + v28, 1, v80);
    }

    v63 = type metadata accessor for NetworkMessenger.PartialIncomingMessage;
LABEL_29:
    v64 = v63;
    v65 = v45;
    goto LABEL_30;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v54 = sub_1DEF8D508();
  __swift_project_value_buffer(v54, qword_1ECDF6010);
  v55 = a2;
  v30 = v84;
  sub_1DEE15068(v55, v84, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v31 = sub_1DEF8D4D8();
  v46 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v46))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v87 = v27;
    v88 = v34;
    *v33 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v56 = sub_1DEF8D988();
    v58 = sub_1DEE12A5C(v56, v57, &v88);

    *(v33 + 4) = v58;
    *(v33 + 12) = 2082;
    sub_1DEF8D3F8();
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v59 = sub_1DEF8E2E8();
    v61 = v60;
    sub_1DEE15388(v30, type metadata accessor for NetworkSyncHeader);
    v62 = sub_1DEE12A5C(v59, v61, &v88);

    *(v33 + 14) = v62;
    v42 = "%{public}s; Received unexpected sequence index for file: %{public}s";
    goto LABEL_16;
  }

LABEL_19:

  v64 = type metadata accessor for NetworkSyncHeader;
  v65 = v30;
LABEL_30:
  sub_1DEE15388(v65, v64);
}

uint64_t sub_1DEF24560(uint64_t a1)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = (&v22 - v2);
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v4 + 56);
    v15 = (*(v4 + 48) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v13;
    v19 = *(v23 + 48);
    sub_1DEE15068(v18, v3 + v19, type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v3 = v17;
    v3[1] = v16;
    v20 = *(v3 + v19);

    result = sub_1DEE171B4(v3, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    if (v20 == v24)
    {
      v21 = 1;
LABEL_13:

      return v21;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v21 = 0;
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEF2473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = v91 - v9;
  v98 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v94 = v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v91 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v91 - v20;
  v22 = sub_1DEF8D788();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v4 + 24);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1DEF8D7B8();
  (*(v23 + 8))(v26, v22);
  if (v27)
  {
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = sub_1DEF8D508();
  v30 = __swift_project_value_buffer(v29, qword_1ECDF6010);
  sub_1DEE15068(a3, v21, type metadata accessor for NetworkSyncHeader);
  sub_1DEE15068(a3, v18, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_1DEE15388(v18, type metadata accessor for NetworkSyncHeader);
    sub_1DEE15388(v21, type metadata accessor for NetworkSyncHeader);

LABEL_7:
    v43 = v100;
    if (*(a3 + v101[10]) == 3)
    {
      if (*(a3 + v101[11]) != 1)
      {
        v69 = v97;
        sub_1DEE15068(a3, v97, type metadata accessor for NetworkSyncHeader);
        swift_unknownObjectRetain();
        v46 = sub_1DEF8D4D8();
        v70 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v46, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v103 = v72;
          *v71 = 136446466;
          sub_1DEF8D3F8();
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v73 = sub_1DEF8E2E8();
          v75 = v74;
          sub_1DEE15388(v69, type metadata accessor for NetworkSyncHeader);
          v76 = sub_1DEE12A5C(v73, v75, &v103);

          *(v71 + 4) = v76;
          *(v71 + 12) = 2082;
          v102 = a2;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v77 = sub_1DEF8D988();
          v79 = sub_1DEE12A5C(v77, v78, &v103);

          *(v71 + 14) = v79;
          _os_log_impl(&dword_1DEE0F000, v46, v70, "Received unexpected sequence index for file: %{public}s from: %{public}s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v72, -1, -1);
          v66 = v71;
          goto LABEL_18;
        }

        v67 = type metadata accessor for NetworkSyncHeader;
        v68 = v69;
        goto LABEL_23;
      }

      sub_1DEF25E68(a3 + v101[6], v100);
      if ((*(v96 + 48))(v43, 1, v98) != 1)
      {
        v80 = v95;
        sub_1DEE1C4F0(v43, v95, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
        swift_unknownObjectRetain();
        v81 = sub_1DEF8D4D8();
        v82 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = a1;
          v85 = swift_slowAlloc();
          v102 = a2;
          v103 = v85;
          *v83 = 136446210;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v86 = sub_1DEF8D988();
          v88 = sub_1DEE12A5C(v86, v87, &v103);

          *(v83 + 4) = v88;
          _os_log_impl(&dword_1DEE0F000, v81, v82, "Updating partial data; waiting for more from: %{public}s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          v89 = v85;
          a1 = v84;
          MEMORY[0x1E12CCD70](v89, -1, -1);
          MEMORY[0x1E12CCD70](v83, -1, -1);
        }

        v90 = *(v98 + 20);

        *(v80 + v90) = a1;
        sub_1DEF2934C(v80);
        v67 = type metadata accessor for NetworkMessenger.PartialIncomingMessage;
        v68 = v80;
        goto LABEL_23;
      }

      sub_1DEE171B4(v43, &qword_1ECDE4E38, &qword_1DEF95B20);
      v44 = a3;
      v45 = v94;
      sub_1DEE15068(v44, v94, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v46 = sub_1DEF8D4D8();
      v47 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v103 = v49;
        *v48 = 136446466;
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v50 = sub_1DEF8E2E8();
        v52 = v51;
        sub_1DEE15388(v45, type metadata accessor for NetworkSyncHeader);
        v53 = sub_1DEE12A5C(v50, v52, &v103);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2082;
        v102 = a2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v54 = sub_1DEF8D988();
        v56 = sub_1DEE12A5C(v54, v55, &v103);

        *(v48 + 14) = v56;
        v57 = "Can't receive extended attributes without preexisting metadata: %{public}s from: %{public}s";
LABEL_14:
        _os_log_impl(&dword_1DEE0F000, v46, v47, v57, v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v49, -1, -1);
        v66 = v48;
LABEL_18:
        MEMORY[0x1E12CCD70](v66, -1, -1);

        return;
      }
    }

    else
    {
      v58 = a3;
      v45 = v99;
      sub_1DEE15068(v58, v99, type metadata accessor for NetworkSyncHeader);
      swift_unknownObjectRetain();
      v46 = sub_1DEF8D4D8();
      v47 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v103 = v49;
        *v48 = 136446466;
        sub_1DEF8D3F8();
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v59 = sub_1DEF8E2E8();
        v61 = v60;
        sub_1DEE15388(v45, type metadata accessor for NetworkSyncHeader);
        v62 = sub_1DEE12A5C(v59, v61, &v103);

        *(v48 + 4) = v62;
        *(v48 + 12) = 2082;
        v102 = a2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v63 = sub_1DEF8D988();
        v65 = sub_1DEE12A5C(v63, v64, &v103);

        *(v48 + 14) = v65;
        v57 = "Received unexpected sequence count for file: %{public}s from: %{public}s";
        goto LABEL_14;
      }
    }

    v67 = type metadata accessor for NetworkSyncHeader;
    v68 = v45;
LABEL_23:
    sub_1DEE15388(v68, v67);
    return;
  }

  v91[1] = v30;
  v92 = a1;
  v93 = v4;
  v33 = a2;
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v103 = v35;
  *v34 = 67240706;
  v36 = v101;
  v37 = *&v21[v101[11]];
  sub_1DEE15388(v21, type metadata accessor for NetworkSyncHeader);
  *(v34 + 4) = v37;
  *(v34 + 8) = 1026;
  v38 = *&v18[v36[10]];
  v39 = v38 - 1;
  if (v38)
  {
    sub_1DEE15388(v18, type metadata accessor for NetworkSyncHeader);
    *(v34 + 10) = v39;
    *(v34 + 14) = 2082;
    a2 = v33;
    v102 = v33;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v40 = sub_1DEF8D988();
    v42 = sub_1DEE12A5C(v40, v41, &v103);

    *(v34 + 16) = v42;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "Received extended attributes %{public}u/%{public}u from: %{public}s", v34, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v34, -1, -1);

    a1 = v92;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DEF25394(uint64_t a1, int a2, double a3)
{
  v4 = v3;
  v91 = a2;
  v108 = a1;
  v113 = *MEMORY[0x1E69E9840];
  v84 = sub_1DEF8D168();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1DEF8D1E8();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v92 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v81 - v8;
  v107 = sub_1DEF8D3F8();
  v9 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v101 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v100 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E40, &qword_1DEF95B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v20 = sub_1DEF8D788();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + 24);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20, v22);
  v26 = v25;
  v27 = sub_1DEF8D7B8();
  (*(v21 + 8))(v24, v20);
  if ((v27 & 1) == 0)
  {
LABEL_39:
    __break(1u);
  }

  swift_beginAccess();
  v28 = *(v4 + 72);
  v31 = *(v28 + 64);
  v30 = v28 + 64;
  v29 = v31;
  v32 = 1 << *(*(v4 + 72) + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v29;
  v35 = (v32 + 63) >> 6;
  v103 = (v9 + 8);
  v104 = (v9 + 16);

  v37 = 0;
  v109 = v16;
  v90 = v30;
  v89 = v35;
  v99 = v19;
  v97 = v4;
  v96 = v36;
  if (v34)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v38 >= v35)
    {
      goto LABEL_31;
    }

    v34 = *(v30 + 8 * v38);
    ++v37;
  }

  while (!v34);
LABEL_10:
  v95 = (v34 - 1) & v34;
  v94 = v38;
  v39 = __clz(__rbit64(v34)) | (v38 << 6);
  v40 = (*(v36 + 48) + 16 * v39);
  v41 = *(*(v36 + 56) + 8 * v39);
  v42 = v40[1];
  v93 = *v40;
  v43 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v41 + 64);
  v47 = (v44 + 63) >> 6;
  v102 = v41;
  swift_bridgeObjectRetain_n();
  v98 = v42;

  v48 = 0;
  do
  {
    if (v46)
    {
      v49 = v48;
      v50 = v109;
      goto LABEL_24;
    }

    if (v47 <= v48 + 1)
    {
      v51 = v48 + 1;
    }

    else
    {
      v51 = v47;
    }

    v52 = v51 - 1;
    v50 = v109;
    do
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v49 >= v47)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
        (*(*(v65 - 8) + 56))(v50, 1, 1, v65);
        v46 = 0;
        v48 = v52;
        goto LABEL_25;
      }

      v46 = *(v43 + 8 * v49);
      ++v48;
    }

    while (!v46);
    v48 = v49;
LABEL_24:
    v53 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v54 = v53 | (v49 << 6);
    v55 = *(*(v102 + 48) + v54);
    v56 = v100;
    sub_1DEE15068(*(v102 + 56) + *(v101 + 72) * v54, v100, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
    v58 = *(v57 + 48);
    *v50 = v55;
    sub_1DEE1C4F0(v56, &v50[v58], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    (*(*(v57 - 8) + 56))(v50, 0, 1, v57);
    v19 = v99;
LABEL_25:
    sub_1DEE1BA88(v50, v19, &qword_1ECDE4E40, &qword_1DEF95B28);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
    if ((*(*(v59 - 8) + 48))(v19, 1, v59) == 1)
    {

      v37 = v94;
      v36 = v96;
      v30 = v90;
      v35 = v89;
      v34 = v95;
      if (!v95)
      {
        goto LABEL_7;
      }

LABEL_6:
      v38 = v37;
      goto LABEL_10;
    }

    v60 = *v19;
    v61 = *(v59 + 48);
    v62 = v105;
    sub_1DEE15068(&v19[v61], v105, type metadata accessor for Message);
    sub_1DEE15388(&v19[v61], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v64 = v106;
    v63 = v107;
    (*v104)(v106, v62, v107);
    sub_1DEE15388(v62, type metadata accessor for Message);
    LOBYTE(v61) = sub_1DEF8D3A8();
    (*v103)(v64, v63);
  }

  while ((v61 & 1) == 0);
  v111 = v102;
  v66 = v88;
  (*(v101 + 56))(v88, 1, 1, v87);
  sub_1DEF33DA8(v66, v60);
  v67 = v111;
  v68 = v97;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v68 + 72);
  *(v68 + 72) = 0x8000000000000000;
  sub_1DEF3F978(v67, v93, v98, isUniquelyReferenced_nonNull_native);

  *(v68 + 72) = v110;
  swift_endAccess();

LABEL_31:

  if (v91)
  {
    v112[0] = sub_1DEF8D398();
    v112[1] = v71;
    v72 = v83;
    v73 = v82;
    v74 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x1E6968F70], v84);
    sub_1DEF2EB78();
    sub_1DEF8D1D8();
    (*(v72 + 8))(v73, v74);

    v75 = [objc_opt_self() defaultManager];
    v76 = sub_1DEF8D178();
    v112[0] = 0;
    v77 = [v75 removeItemAtURL:v76 error:v112];

    if (v77)
    {
      v78 = v112[0];
    }

    else
    {
      v79 = v112[0];
      v80 = sub_1DEF8D148();

      swift_willThrow();
    }

    return (*(v85 + 8))(v92, v86);
  }

  return result;
}

void sub_1DEF25E68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a1;
  v60 = a2;
  v59 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v66 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E40, &qword_1DEF95B28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v56 - v12;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  v20 = sub_1DEF8D7B8();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    swift_beginAccess();
    v21 = *(v3 + 72);
    v24 = *(v21 + 64);
    v23 = v21 + 64;
    v22 = v24;
    v25 = 1 << *(*(v3 + 72) + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;

    v30 = 0;
    v31 = v67;
    v57 = v28;
    v58 = v23;
    v63 = v29;
    v64 = v10;
    v70 = v5;
    if (v27)
    {
      while (1)
      {
        v32 = v30;
LABEL_10:
        v33 = *(v29 + 56);
        v61 = v32;
        v34 = *(v33 + ((v32 << 9) | (8 * __clz(__rbit64(v27)))));
        v62 = (v27 - 1) & v27;
        v35 = v34 + 64;
        v36 = 1 << *(v34 + 32);
        v37 = v36 < 64 ? ~(-1 << v36) : -1;
        v38 = v37 & *(v34 + 64);
        v39 = (v36 + 63) >> 6;
        v68 = v34;

        v40 = 0;
        if (!v38)
        {
          break;
        }

        while (1)
        {
          v41 = v40;
LABEL_22:
          v44 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v45 = v44 | (v41 << 6);
          v46 = *(*(v68 + 48) + v45);
          v47 = v65;
          sub_1DEE15068(*(v68 + 56) + *(v66 + 72) * v45, v65, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          v49 = *(v48 + 48);
          v10 = v64;
          *v64 = v46;
          sub_1DEE1C4F0(v47, &v10[v49], type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          (*(*(v48 - 8) + 56))(v10, 0, 1, v48);
          v43 = v41;
          v31 = v67;
LABEL_23:
          sub_1DEE1BA88(v10, v31, &qword_1ECDE4E40, &qword_1DEF95B28);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          v51 = (*(*(v50 - 8) + 48))(v31, 1, v50);
          v52 = v70;
          if (v51 == 1)
          {
            break;
          }

          sub_1DEE1C4F0(v31 + *(v50 + 48), v70, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          if (sub_1DEF8D3A8())
          {

            v54 = v60;
            sub_1DEE1C4F0(v52, v60, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
            v55 = 0;
            goto LABEL_32;
          }

          sub_1DEE15388(v52, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
          v40 = v43;
          if (!v38)
          {
            goto LABEL_15;
          }
        }

        v30 = v61;
        v27 = v62;
        v29 = v63;
        v28 = v57;
        v23 = v58;
        if (!v62)
        {
          goto LABEL_7;
        }
      }

LABEL_15:
      if (v39 <= v40 + 1)
      {
        v42 = v40 + 1;
      }

      else
      {
        v42 = v39;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E48, &qword_1DEF95B30);
          (*(*(v53 - 8) + 56))(v10, 1, 1, v53);
          v38 = 0;
          goto LABEL_23;
        }

        v38 = *(v35 + 8 * v41);
        ++v40;
        if (v38)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v28)
        {

          v55 = 1;
          v54 = v60;
LABEL_32:
          (*(v66 + 56))(v54, v55, 1, v59);
          return;
        }

        v27 = *(v23 + 8 * v32);
        ++v30;
        if (v27)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DEF26448(NSObject *a1, uint64_t a2, unsigned int a3)
{
  v184 = a1;
  v193 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v172 = v164 - v6;
  v181 = sub_1DEF8D3F8();
  v174 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v173 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v180 = sub_1DEF8D168();
  v176 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D1E8();
  v10 = *(v9 - 8);
  v177 = v9;
  v178 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v171 = v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v175 = v164 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v183 = v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v164 - v17;
  v19 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v182 = v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NetworkSyncHeader(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v164 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v164 - v29;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v39 = v164 - v38;
  v40 = *(v34 + 32);
  v185 = a2;
  LODWORD(v40) = *(a2 + v40);
  v41 = v40 - a3;
  if (v40 < a3)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v41 >> 15)
  {
    LODWORD(v41) = 0x8000;
    goto LABEL_9;
  }

  if (v41)
  {
LABEL_9:
    v54 = swift_allocObject();
    swift_weakInit();
    sub_1DEE15068(v185, v39, type metadata accessor for NetworkSyncHeader);
    v55 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v56 = (v24 + v55 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    v58 = v184;
    *(v57 + 24) = v184;
    sub_1DEE1C4F0(v39, v57 + v55, type metadata accessor for NetworkSyncHeader);
    *(v57 + v56) = v41;
    *(v57 + ((v56 + 7) & 0xFFFFFFFFFFFFFFFCLL)) = a3;
    v191 = sub_1DEF301FC;
    v192 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v188 = 1107296256;
    v189 = sub_1DEE1BDCC;
    v190 = &block_descriptor_337;
    v59 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(v58, v41, v41, v59);
    _Block_release(v59);
    return;
  }

  v169 = v37;
  v168 = v36;
  v167 = v35;
  v170 = v34;
  v41 = *(v34 + 24);
  v39 = v185;
  sub_1DEF25E68(v185 + v41, v18);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v60 = v182;
    sub_1DEE1C4F0(v18, v182, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v166 = *&v60[*(v19 + 20)];
    if (v166)
    {
      v165 = v41;
      v61 = sub_1DEF8D398();
      v62 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
      aBlock = v61;
      v188 = v63;
      v64 = *MEMORY[0x1E6968F70];
      v65 = v176;
      v27 = (v176 + 104);
      v66 = v179;
      v67 = v180;
      v164[0] = *(v176 + 104);
      (v164[0])(v179, v64, v180);
      v68 = sub_1DEF2EB78();
      v164[2] = v62;
      v164[1] = v68;
      sub_1DEF8D1D8();
      v69 = *(v65 + 8);
      v69(v66, v67);

      v70 = objc_opt_self();
      v71 = [v70 defaultManager];
      sub_1DEF8D1C8();
      v72 = sub_1DEF8D918();

      LODWORD(v62) = [v71 fileExistsAtPath_];

      if (v62)
      {
        if (*(v39 + *(v170 + 36)) != 4)
        {
LABEL_27:
          v41 = v166 + 64;
          v116 = 1 << *(v166 + 32);
          v117 = -1;
          if (v116 < 64)
          {
            v117 = ~(-1 << v116);
          }

          v39 = v117 & *(v166 + 64);
          v118 = (v116 + 63) >> 6;

          for (i = 0; v39; i = v121)
          {
            v121 = i;
LABEL_34:
            v122 = (v121 << 10) | (16 * __clz(__rbit64(v39)));
            v123 = *(*(v166 + 48) + v122 + 8);
            v180 = *(*(v166 + 56) + v122);
            MEMORY[0x1EEE9AC00](v119);
            *&v164[-4] = v180;
            v164[-2] = v124;
            v164[-1] = v123;

            v27 = *(&v180 + 1);
            v125 = v180;
            sub_1DEE1BFF4(v180, *(&v180 + 1));
            sub_1DEF8D198(MEMORY[0x1E69E7CA8]);
            v39 &= v39 - 1;
            sub_1DEE1BFA0(v125, v27);
          }

          while (1)
          {
            v121 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_51;
            }

            if (v121 >= v118)
            {

              sub_1DEF25394(v185 + v165, 0, v127);
              v128 = v177;
              v129 = v178;
              v130 = v172;
              v131 = v183;
              (*(v178 + 16))(v172, v183, v177);
              (*(v129 + 56))(v130, 0, 1, v128);
              v132 = v182;
              v133 = v184;
              sub_1DEE1F270(v182, v130, v184);
              sub_1DEE171B4(v130, &qword_1ECDE4890, &qword_1DEF90990);
              sub_1DEE18040(v133);
              (*(v129 + 8))(v131, v128);
              sub_1DEE15388(v132, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
              return;
            }

            v39 = *(v41 + 8 * v121);
            ++i;
            if (v39)
            {
              goto LABEL_34;
            }
          }
        }

        v73 = v173;
        sub_1DEF8D3E8();
        v74 = sub_1DEF8D398();
        v76 = v75;
        (*(v174 + 8))(v73, v181);
        aBlock = v74;
        v188 = v76;
        v77 = v70;
        v79 = v179;
        v78 = v180;
        (v164[0])(v179, v64, v180);
        v80 = v175;
        sub_1DEF8D1D8();
        v69(v79, v78);

        v81 = [v77 &off_1E86A2638 + 3];
        v82 = sub_1DEF8D178();
        v83 = sub_1DEF8D178();
        aBlock = 0;
        v84 = [v81 moveItemAtURL:v82 toURL:v83 error:&aBlock];

        v85 = aBlock;
        if (v84)
        {
          sub_1DEEE1914();
          v87 = v177;
          v86 = v178;
          v88 = v171;
          (*(v178 + 16))(v171, v80, v177);
          v89 = v85;
          v156 = sub_1DEF291F4(v88, &selRef_fileHandleForReadingFromURL_error_);
          sub_1DEEA37CC(MEMORY[0x1E69E7CC0]);
          sub_1DEEE1C64(v183);

          v157 = [v77 &off_1E86A2638 + 3];
          v158 = sub_1DEF8D178();
          aBlock = 0;
          v159 = [v157 removeItemAtURL:v158 error:&aBlock];

          if (v159)
          {
            v27 = (v86 + 8);
            v160 = *(v86 + 8);
            v161 = aBlock;
            v160(v80, v87);

            goto LABEL_27;
          }

          v162 = aBlock;
          v163 = sub_1DEF8D148();

          swift_willThrow();
          v136 = v163;
        }

        else
        {
          v134 = aBlock;
          v135 = sub_1DEF8D148();

          swift_willThrow();
          v136 = v135;
          v87 = v177;
          v86 = v178;
        }

        v137 = *(v86 + 8);
        v137(v80, v87);
        v138 = v185;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v139 = sub_1DEF8D508();
        __swift_project_value_buffer(v139, qword_1ECDF6010);
        v140 = v168;
        sub_1DEE15068(v138, v168, type metadata accessor for NetworkSyncHeader);
        v141 = v136;
        v142 = sub_1DEF8D4D8();
        v143 = sub_1DEF8DC98();

        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          aBlock = v145;
          *v144 = 136446466;
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v146 = sub_1DEF8E2E8();
          v148 = v147;
          sub_1DEE15388(v140, type metadata accessor for NetworkSyncHeader);
          v149 = sub_1DEE12A5C(v146, v148, &aBlock);

          *(v144 + 4) = v149;
          *(v144 + 12) = 2082;
          v186 = v136;
          v150 = v136;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
          v151 = sub_1DEF8D988();
          v153 = sub_1DEE12A5C(v151, v152, &aBlock);

          *(v144 + 14) = v153;
          _os_log_impl(&dword_1DEE0F000, v142, v143, "Failed to decompress file: %{public}s; error: %{public}s", v144, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v145, -1, -1);
          v154 = v144;
          v138 = v185;
          MEMORY[0x1E12CCD70](v154, -1, -1);
        }

        else
        {

          sub_1DEE15388(v140, type metadata accessor for NetworkSyncHeader);
        }

        sub_1DEF25394(v138 + v165, 1, v155);

        v137(v183, v87);
      }

      else
      {
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v102 = sub_1DEF8D508();
        __swift_project_value_buffer(v102, qword_1ECDF6010);
        v103 = v185;
        v104 = v169;
        sub_1DEE15068(v185, v169, type metadata accessor for NetworkSyncHeader);
        v105 = sub_1DEF8D4D8();
        v106 = sub_1DEF8DC98();
        v107 = os_log_type_enabled(v105, v106);
        v108 = v177;
        if (v107)
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          aBlock = v110;
          *v109 = 136446210;
          sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v111 = sub_1DEF8E2E8();
          v113 = v112;
          sub_1DEE15388(v104, type metadata accessor for NetworkSyncHeader);
          v114 = sub_1DEE12A5C(v111, v113, &aBlock);

          *(v109 + 4) = v114;
          _os_log_impl(&dword_1DEE0F000, v105, v106, "File does not exist for extended attributes: %{public}s", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v110);
          MEMORY[0x1E12CCD70](v110, -1, -1);
          MEMORY[0x1E12CCD70](v109, -1, -1);
        }

        else
        {

          sub_1DEE15388(v104, type metadata accessor for NetworkSyncHeader);
        }

        v126 = v178;
        sub_1DEF25394(v103 + v165, 1, v115);
        (*(v126 + 8))(v183, v108);
      }
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v90 = sub_1DEF8D508();
      __swift_project_value_buffer(v90, qword_1ECDF6010);
      sub_1DEE15068(v39, v30, type metadata accessor for NetworkSyncHeader);
      v91 = sub_1DEF8D4D8();
      v92 = sub_1DEF8DC98();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v41;
        v95 = swift_slowAlloc();
        aBlock = v95;
        *v93 = 136446210;
        sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v96 = sub_1DEF8E2E8();
        v98 = v97;
        sub_1DEE15388(v30, type metadata accessor for NetworkSyncHeader);
        v99 = sub_1DEE12A5C(v96, v98, &aBlock);

        *(v93 + 4) = v99;
        _os_log_impl(&dword_1DEE0F000, v91, v92, "Extended attributes do not exist for completed incoming file: %{public}s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        v100 = v95;
        v41 = v94;
        MEMORY[0x1E12CCD70](v100, -1, -1);
        MEMORY[0x1E12CCD70](v93, -1, -1);
      }

      else
      {

        sub_1DEE15388(v30, type metadata accessor for NetworkSyncHeader);
      }

      sub_1DEF25394(v39 + v41, 1, v101);
    }

    sub_1DEE15388(v182, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    return;
  }

  sub_1DEE171B4(v18, &qword_1ECDE4E38, &qword_1DEF95B20);
  if (qword_1ECDE2E50 != -1)
  {
LABEL_52:
    swift_once();
  }

  v42 = sub_1DEF8D508();
  __swift_project_value_buffer(v42, qword_1ECDF6010);
  sub_1DEE15068(v39, v27, type metadata accessor for NetworkSyncHeader);
  v43 = sub_1DEF8D4D8();
  v44 = sub_1DEF8DC98();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v41;
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v45 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v48 = sub_1DEF8E2E8();
    v50 = v49;
    sub_1DEE15388(v27, type metadata accessor for NetworkSyncHeader);
    v51 = sub_1DEE12A5C(v48, v50, &aBlock);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_1DEE0F000, v43, v44, "Partial message does not exist for completed incoming file: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v52 = v47;
    v41 = v46;
    MEMORY[0x1E12CCD70](v52, -1, -1);
    MEMORY[0x1E12CCD70](v45, -1, -1);
  }

  else
  {

    sub_1DEE15388(v27, type metadata accessor for NetworkSyncHeader);
  }

  sub_1DEF25394(v39 + v41, 1, v53);
}

uint64_t sub_1DEF27C24(void *a1, NSObject *a2, int a3, NSObject *a4, uint64_t a5, NSObject *a6, uint64_t a7, int a8, int a9)
{
  v188 = a8;
  v209 = a4;
  v210 = a2;
  v206 = a1;
  v200 = type metadata accessor for NetworkSyncHeader(0);
  MEMORY[0x1EEE9AC00](v200);
  v13 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D168();
  v197 = *(v14 - 8);
  v198 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v196 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D1E8();
  v207 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v192 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v182 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v182 - v28;
  v195 = sub_1DEF8D728();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1DEF8D508();
  v199 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204);
  v189 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v208 = result;
  if (!result)
  {
    return result;
  }

  v183 = v26;
  v185 = v23;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v204, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v36 = os_log_type_enabled(v34, v35);
  v201 = v16;
  v202 = v29;
  v203 = a6;
  v205 = v33;
  v186 = v13;
  v184 = v20;
  v187 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v211 = v38;
    *v37 = 136446210;
    v213 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v39 = sub_1DEF8D988();
    v41 = sub_1DEE12A5C(v39, v40, &v211);
    v33 = v205;

    *(v37 + 4) = v41;
    a6 = v203;
    _os_log_impl(&dword_1DEE0F000, v34, v35, "Received file data from: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12CCD70](v38, -1, -1);
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  v42 = v206;
  v43 = v209;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v44 = v42;
  v45 = v210;
  swift_unknownObjectRetain();
  v46 = sub_1DEF8D4D8();
  v47 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v48 = os_log_type_enabled(v46, v47);
  v190 = v44;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v211 = v51;
    *v49 = 136447234;
    v213 = v203;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v52 = sub_1DEF8D988();
    v54 = sub_1DEE12A5C(v52, v53, &v211);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v44;
    *v50 = v42;
    *(v49 + 22) = 2080;
    v213 = v210;
    v55 = v44;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v56 = sub_1DEF8D988();
    v58 = sub_1DEE12A5C(v56, v57, &v211);

    *(v49 + 24) = v58;
    *(v49 + 32) = 1024;
    *(v49 + 34) = v187 & 1;
    *(v49 + 38) = 2080;
    v42 = v206;
    v213 = v209;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v59 = sub_1DEF8D988();
    v61 = sub_1DEE12A5C(v59, v60, &v211);
    v45 = v210;

    *(v49 + 40) = v61;
    v43 = v209;
    _os_log_impl(&dword_1DEE0F000, v46, v47, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v49, 0x30u);
    sub_1DEE171B4(v50, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v50, -1, -1);
    swift_arrayDestroy();
    v62 = v51;
    v33 = v205;
    MEMORY[0x1E12CCD70](v62, -1, -1);
    v63 = v49;
    a6 = v203;
    MEMORY[0x1E12CCD70](v63, -1, -1);
  }

  if (v43)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v64 = sub_1DEF8D4D8();
    v65 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v211 = v67;
      *v66 = 136446466;
      v213 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v68 = sub_1DEF8D988();
      v70 = v43;
      v71 = sub_1DEE12A5C(v68, v69, &v211);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2082;
      v213 = v70;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
      v72 = sub_1DEF8D988();
      v74 = sub_1DEE12A5C(v72, v73, &v211);
      v45 = v210;

      *(v66 + 14) = v74;
      _os_log_impl(&dword_1DEE0F000, v64, v65, "%{public}s; Received error: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      v75 = v67;
      v33 = v205;
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v66, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v76 = v190;
  v191 = a7;
  if (!v45)
  {
LABEL_15:
    if (v42)
    {
      goto LABEL_16;
    }

LABEL_21:
    v112 = v189;
    (v199)[2](v189, v33, v204);
    if (sub_1DEF24560(a6))
    {
      v113 = sub_1DEF8DC98();
    }

    else
    {
      v113 = sub_1DEF8DC78();
    }

    v116 = v113;
    v117 = sub_1DEF8D4D8();
    if (os_log_type_enabled(v117, v116))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v211 = v119;
      *v118 = 136446210;
      v213 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v120 = sub_1DEF8D988();
      v122 = sub_1DEE12A5C(v120, v121, &v211);

      *(v118 + 4) = v122;
      _os_log_impl(&dword_1DEE0F000, v117, v116, "Received nil instead of file data; destroying connection %{public}s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x1E12CCD70](v119, -1, -1);
      MEMORY[0x1E12CCD70](v118, -1, -1);
    }

    (v199[1])(v112, v204);
    sub_1DEF16BA0(a6);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v77 = sub_1DEF8D4D8();
  v78 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v211 = v80;
    *v79 = 136446466;
    v213 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v81 = sub_1DEF8D988();
    v83 = v76;
    v84 = sub_1DEE12A5C(v81, v82, &v211);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2082;
    v213 = v45;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
    v85 = sub_1DEF8D988();
    v87 = sub_1DEE12A5C(v85, v86, &v211);

    *(v79 + 14) = v87;
    v76 = v83;
    _os_log_impl(&dword_1DEE0F000, v77, v78, "%{public}s; Received context: %{public}s", v79, 0x16u);
    swift_arrayDestroy();
    v88 = v80;
    v42 = v206;
    MEMORY[0x1E12CCD70](v88, -1, -1);
    MEMORY[0x1E12CCD70](v79, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  swift_unknownObjectRelease();

  if (!v42)
  {
    goto LABEL_21;
  }

LABEL_16:
  v89 = v193;
  sub_1DEF8D6F8();
  v199 = v76;
  v90 = sub_1DEF8D718();
  v211 = sub_1DEE1C048(v90);
  v212 = v91;
  MEMORY[0x1EEE9AC00](v211);
  *(&v182 - 2) = v89;
  sub_1DEE1A238(sub_1DEF30734);
  v206 = 0;
  v92 = v211;
  v93 = v212;
  (*(v194 + 8))(v89, v195);
  v195 = *(v200 + 24);
  v94 = sub_1DEF8D398();
  v96 = v95;
  v211 = v94;
  v212 = v95;
  v98 = v197;
  v97 = v198;
  v99 = v196;
  (*(v197 + 104))(v196, *MEMORY[0x1E6968F70], v198);
  sub_1DEF2EB78();
  v100 = v92;
  sub_1DEF8D1D8();
  v101 = v99;
  v102 = v93;
  (*(v98 + 8))(v101, v97);

  sub_1DEE1BFF4(v92, v93);
  v103 = sub_1DEF8D4D8();
  v104 = sub_1DEF8DCB8();

  v105 = os_log_type_enabled(v103, v104);
  v209 = v92;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v211 = v107;
    *v106 = 136446722;
    v108 = sub_1DEE12A5C(v94, v96, &v211);

    *(v106 + 4) = v108;
    *(v106 + 12) = 1026;
    *(v106 + 14) = v188;
    *(v106 + 18) = 2050;
    v109 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      v110 = v202;
      if (v109 != 2)
      {
        v111 = 0;
        goto LABEL_35;
      }

      v124 = *(v92 + 16);
      v123 = *(v92 + 24);
      v125 = __OFSUB__(v123, v124);
      v111 = v123 - v124;
      if (!v125)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else
    {
      v110 = v202;
      if (!v109)
      {
        v111 = BYTE6(v102);
LABEL_35:
        v114 = v192;
        *(v106 + 20) = v111;
        sub_1DEE1BFA0(v100, v102);
        _os_log_impl(&dword_1DEE0F000, v103, v104, "%{public}s: Expected %{public}u; got %{public}ld", v106, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        MEMORY[0x1E12CCD70](v107, -1, -1);
        MEMORY[0x1E12CCD70](v106, -1, -1);

        v115 = v201;
        goto LABEL_36;
      }
    }

    LODWORD(v111) = HIDWORD(v92) - v92;
    if (__OFSUB__(HIDWORD(v92), v92))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v111 = v111;
    goto LABEL_35;
  }

  v114 = v192;
  sub_1DEE1BFA0(v100, v93);

  v115 = v201;
  v110 = v202;
LABEL_36:
  v210 = v102;
  v126 = [objc_opt_self() defaultManager];
  sub_1DEF8D1C8();
  v127 = sub_1DEF8D918();

  v128 = [v126 fileExistsAtPath_];

  v129 = *(v207 + 16);
  v198 = v129;
  if (v128)
  {
    v130 = v183;
    v129(v183, v110, v115);
    v131 = sub_1DEF8D4D8();
    v132 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v211 = v134;
      *v133 = 136446210;
      v135 = sub_1DEF8D1C8();
      v137 = v136;
      v204 = *(v207 + 8);
      v204(v130, v201);
      v138 = sub_1DEE12A5C(v135, v137, &v211);
      v115 = v201;

      *(v133 + 4) = v138;
      _os_log_impl(&dword_1DEE0F000, v131, v132, "Appending chunk to %{public}s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      v139 = v134;
      v110 = v202;
      MEMORY[0x1E12CCD70](v139, -1, -1);
      MEMORY[0x1E12CCD70](v133, -1, -1);
    }

    else
    {

      v204 = *(v207 + 8);
      v204(v130, v115);
    }

    v150 = v191;
    sub_1DEEE1914();
    v151 = v185;
    v129(v185, v110, v115);
    v152 = v206;
    v153 = sub_1DEF291F4(v151, &selRef_fileHandleForUpdatingURL_error_);
    v154 = v210;
    if (!v152)
    {
      v155 = v153;
      sub_1DEF8DC68();
      v175 = sub_1DEF8D268();
      [v155 writeData_];

      goto LABEL_50;
    }
  }

  else
  {
    v140 = v184;
    v129(v184, v110, v115);
    v141 = sub_1DEF8D4D8();
    v142 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v211 = v144;
      *v143 = 136446210;
      v145 = sub_1DEF8D1C8();
      v147 = v146;
      v204 = *(v207 + 8);
      v204(v140, v201);
      v148 = sub_1DEE12A5C(v145, v147, &v211);
      v115 = v201;

      *(v143 + 4) = v148;
      _os_log_impl(&dword_1DEE0F000, v141, v142, "Creating new file at %{public}s", v143, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v149 = v144;
      v110 = v202;
      MEMORY[0x1E12CCD70](v149, -1, -1);
      MEMORY[0x1E12CCD70](v143, -1, -1);
    }

    else
    {

      v204 = *(v207 + 8);
      v204(v140, v115);
    }

    v150 = v191;
    v154 = v210;
    v152 = v206;
    sub_1DEF8D298();
    if (!v152)
    {
LABEL_50:
      v176 = v203;
      result = sub_1DEE19808(v203);
      v177 = v154 >> 62;
      v178 = v204;
      if ((v154 >> 62) > 1)
      {
        if (v177 != 2)
        {
          goto LABEL_62;
        }

        isa = v209[2].isa;
        v180 = v209[3].isa;
        v125 = __OFSUB__(v180, isa);
        v179 = v180 - isa;
        if (!v125)
        {
LABEL_59:
          if ((v179 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (!HIDWORD(v179))
          {
LABEL_63:
            if (!__CFADD__(a9, v179))
            {
              sub_1DEF26448(v176, v150, a9 + v179);

              sub_1DEE1BFA0(v209, v154);

              return v178(v110, v115);
            }

            goto LABEL_67;
          }

          __break(1u);
LABEL_62:
          LODWORD(v179) = 0;
          goto LABEL_63;
        }

        __break(1u);
      }

      else if (!v177)
      {
        LODWORD(v179) = BYTE6(v154);
        goto LABEL_63;
      }

      LODWORD(v179) = HIDWORD(v209) - v209;
      if (__OFSUB__(HIDWORD(v209), v209))
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v179 = v179;
      goto LABEL_59;
    }
  }

  v156 = v186;
  sub_1DEE15068(v150, v186, type metadata accessor for NetworkSyncHeader);
  v198(v114, v110, v115);
  v157 = sub_1DEF8D4D8();
  v158 = sub_1DEF8DC98();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v211 = v160;
    *v159 = 136446466;
    sub_1DEF8D3F8();
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v161 = sub_1DEF8E2E8();
    v163 = v162;
    sub_1DEE15388(v156, type metadata accessor for NetworkSyncHeader);
    v164 = sub_1DEE12A5C(v161, v163, &v211);

    *(v159 + 4) = v164;
    *(v159 + 12) = 2082;
    v165 = sub_1DEF8D1C8();
    v167 = v166;
    v168 = v114;
    v169 = v204;
    v204(v168, v201);
    v170 = sub_1DEE12A5C(v165, v167, &v211);
    v110 = v202;

    *(v159 + 14) = v170;
    _os_log_impl(&dword_1DEE0F000, v157, v158, "Can't write file chunk: %{public}s to %{public}s", v159, 0x16u);
    swift_arrayDestroy();
    v171 = v160;
    v115 = v201;
    MEMORY[0x1E12CCD70](v171, -1, -1);
    v172 = v159;
    v150 = v191;
    MEMORY[0x1E12CCD70](v172, -1, -1);
  }

  else
  {

    v174 = v114;
    v169 = v204;
    v204(v174, v115);
    sub_1DEE15388(v156, type metadata accessor for NetworkSyncHeader);
  }

  sub_1DEF25394(v150 + v195, 1, v173);

  sub_1DEE1BFA0(v209, v210);

  return v169(v110, v115);
}

id sub_1DEF291F4(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DEF8D178();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1DEF8D1E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1DEF8D148();

    swift_willThrow();
    v11 = sub_1DEF8D1E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1DEF2934C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = (a1 + *(type metadata accessor for Message(0) + 28));
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();
    v18 = *(v2 + 72);
    if (*(v18 + 16) && (v19 = sub_1DEE13224(v17, v16), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      v28 = v21;
    }

    else
    {
      swift_endAccess();
      v28 = sub_1DEEA3900(MEMORY[0x1E69E7CC0]);
    }

    v22 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
    v23 = *(a1 + *(v22 + 24));
    sub_1DEE15068(a1, v6, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
    sub_1DEF33DA8(v6, v23);
    v24 = v28;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v2 + 72);
    *(v2 + 72) = 0x8000000000000000;
    sub_1DEF3F978(v24, v17, v16, isUniquelyReferenced_nonNull_native);

    *(v2 + 72) = v27;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF29614(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1DEE17214(a3, &v9 - v6, &qword_1ECDE4E30, &qword_1DEF96220);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_1DEE171B4(v7, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF296FC(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v67 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v8 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB0, &unk_1DEF95AB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = (&v67 - v15);
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v68 = v5;
    v69 = v8;
    v23 = sub_1DEF8D508();
    __swift_project_value_buffer(v23, qword_1ECDF6010);
    v24 = sub_1DEF8D4D8();
    v25 = sub_1DEF8DC88();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DEE0F000, v24, v25, "Connection is ready", v26, 2u);
      MEMORY[0x1E12CCD70](v26, -1, -1);
    }

    swift_beginAccess();
    v70 = v2;
    v27 = *(v2 + 56);
    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v2 = (v29 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v32 = 0;
    v8 = &qword_1ECDE4DA8;
    v73 = v27;
    if (v31)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v2)
      {

        v47 = v69;
        v48 = v69[7];
        v49 = v71;
        v50 = v71;
        v51 = 1;
        goto LABEL_17;
      }

      v31 = *(v28 + 8 * v34);
      ++v32;
      if (v31)
      {
        v33 = v78;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v33 = v78;
    v34 = v32;
LABEL_13:
    v35 = __clz(__rbit64(v31)) | (v34 << 6);
    v36 = *(v27 + 56);
    v37 = (*(v27 + 48) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    v40 = v36 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v35;
    v41 = v77;
    v42 = v74;
    sub_1DEE15068(v40, &v74[*(v77 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v42 = v39;
    v42[1] = v38;
    sub_1DEE1BA88(v42, v33, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v43 = v33;
    v44 = v75;
    sub_1DEE17214(v43, v75, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v5 = *(v44 + 8);

    v45 = *(v41 + 48);
    v46 = *(v44 + v45);
    swift_unknownObjectRetain();
    sub_1DEE15388(v44 + v45, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_unknownObjectRelease();
    if (v46 == v76)
    {
      break;
    }

    v31 &= v31 - 1;
    sub_1DEE171B4(v78, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v32 = v34;
    v27 = v73;
    if (!v31)
    {
      goto LABEL_9;
    }
  }

  v49 = v71;
  sub_1DEE1BA88(v78, v71, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  v47 = v69;
  v48 = v69[7];
  v50 = v49;
  v51 = 0;
LABEL_17:
  v52 = v77;
  v48(v50, v51, 1, v77);

  v53 = (v47[6])(v49, 1, v52);
  v54 = v72;
  if (v53 == 1)
  {
    sub_1DEE171B4(v49, &qword_1ECDE4DB0, &unk_1DEF95AB0);
  }

  else
  {
    v55 = *v49;
    v56 = v49[1];
    sub_1DEE15388(v49 + *(v52 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
    v57 = v70;
    swift_beginAccess();
    v58 = *(v57 + 56);
    if (*(v58 + 16) && (v59 = sub_1DEE13224(v55, v56), (v60 & 1) != 0))
    {
      v61 = v59;
      v62 = *(v58 + 56);
      v63 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v64 = *(v63 - 8);
      sub_1DEE15068(v62 + *(v64 + 72) * v61, v54, type metadata accessor for NetworkMessenger.ExpiringConnection);
      (*(v64 + 56))(v54, 0, 1, v63);
    }

    else
    {
      v63 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      (*(*(v63 - 8) + 56))(v54, 1, 1, v63);
    }

    swift_endAccess();
    type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    if (!(*(*(v63 - 8) + 48))(v54, 1, v63))
    {
      *(v54 + *(v63 + 24)) = 1;
    }

    v65 = v68;
    sub_1DEE17214(v54, v68, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    swift_beginAccess();
    sub_1DEE136B8(v65, v55, v56);
    swift_endAccess();
    sub_1DEE171B4(v54, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  sub_1DEE165E0();
  return sub_1DEE1BAF0();
}

uint64_t sub_1DEF29EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = *(v7 + 32);
  v14(v21 - v12, a1, v6, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  sub_1DEF2A0B0(a2 + *(v15 + 48));
  sub_1DEE1B9F8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v16 = sub_1DEF8D8E8();
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = v9;
  }

  if (v17)
  {
    v19 = v13;
  }

  else
  {
    v19 = v9;
  }

  (*(v7 + 8))(v18, v6);
  return (v14)(a1, v19, v6);
}

uint64_t sub_1DEF2A0B0(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for NetworkMessenger.ExpiringConnection(0) + 24)) == 1)
  {
    v1 = sub_1DEF2F2C0();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v2 = sub_1DEF8D508();
    __swift_project_value_buffer(v2, qword_1ECDF6010);
    v3 = sub_1DEF8D4D8();
    v4 = sub_1DEF8DC88();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v1;
      v6 = "Idle; expiring in %{public}f";
LABEL_10:
      _os_log_impl(&dword_1DEE0F000, v3, v4, v6, v5, 0xCu);
      MEMORY[0x1E12CCD70](v5, -1, -1);
    }
  }

  else
  {
    v7 = sub_1DEF2F3D8();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v8 = sub_1DEF8D508();
    __swift_project_value_buffer(v8, qword_1ECDF6010);
    v3 = sub_1DEF8D4D8();
    v4 = sub_1DEF8DC88();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v7;
      v6 = "Connecting; expiring in %{public}f";
      goto LABEL_10;
    }
  }

  return sub_1DEF8D2E8();
}

unint64_t sub_1DEF2A288()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1DEF8D7B8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    result = sub_1DEF2A5BC();
    v5 = result;
    if (!(result >> 62))
    {
      v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1DEF8DE68();
  v10 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v5 & 0xC000000000000001;
    v13 = 0x1ECDE2000uLL;
    v14 = qword_1ECDF6010;
    *&v9 = 136446210;
    v28 = v9;
    v29 = v5 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x1E12CB6E0](v11, v5);
      }

      else
      {
        v15 = *(v5 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      if (*(v13 + 3664) != -1)
      {
        swift_once();
      }

      v16 = sub_1DEF8D508();
      __swift_project_value_buffer(v16, v14);
      swift_unknownObjectRetain();
      v17 = sub_1DEF8D4D8();
      v18 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v15;
        v33 = v30;
        *v19 = v28;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v20 = sub_1DEF8D988();
        v22 = v14;
        v23 = v5;
        v24 = v10;
        v25 = sub_1DEE12A5C(v20, v21, &v33);
        v12 = v29;

        *(v19 + 4) = v25;
        v10 = v24;
        v5 = v23;
        v14 = v22;
        _os_log_impl(&dword_1DEE0F000, v17, v18, "Destroying expired connection: %{public}s", v19, 0xCu);
        v26 = v30;
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1E12CCD70](v26, -1, -1);
        v27 = v19;
        v13 = 0x1ECDE2000;
        MEMORY[0x1E12CCD70](v27, -1, -1);
      }

      ++v11;
      sub_1DEF16BA0(v15);
      swift_unknownObjectRelease();
    }

    while (v10 != v11);
  }

  __break(1u);
  return result;
}

void *sub_1DEF2A5BC()
{
  v1 = v0;
  v2 = *v0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = (&v56 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - v7;
  v8 = sub_1DEF8D378();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[3];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  v18 = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1DEF8D348();
  v20 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
  v21 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = swift_beginAccess();
  v24 = v1[7];
  MEMORY[0x1EEE9AC00](v23);
  *(&v56 - 32) = v22 & 1;
  *(&v56 - 3) = v10;
  *(&v56 - 2) = v2;

  v25 = sub_1DEF2BCB0(sub_1DEF2F860, (&v56 - 6), v24, sub_1DEF2C314, sub_1DEF2C314);

  v26 = *(v25 + 2);
  if (v26)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    v27 = v25 + 64;
    result = sub_1DEF8DE18();
    v28 = result;
    v29 = 0;
    v59 = v25 + 72;
    v60 = v26;
    v61 = v10;
    v62 = v25 + 64;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << v25[32])
    {
      v32 = v28 >> 6;
      if ((*&v27[8 * (v28 >> 6)] & (1 << v28)) == 0)
      {
        goto LABEL_22;
      }

      v33 = *(v25 + 9);
      v67 = v29;
      v68 = v33;
      v34 = v25;
      v35 = v66;
      v36 = *(v66 + 48);
      v37 = *(v34 + 7);
      v38 = (*(v34 + 6) + 16 * v28);
      v40 = *v38;
      v39 = v38[1];
      v41 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v42 = v63;
      sub_1DEE15068(v37 + *(*(v41 - 8) + 72) * v28, &v63[v36], type metadata accessor for NetworkMessenger.ExpiringConnection);
      v43 = v64;
      *v64 = v40;
      *(v43 + 8) = v39;
      sub_1DEE1C4F0(&v42[v36], v43 + *(v35 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
      v44 = v65;
      sub_1DEE1BA88(v43, v65, &qword_1ECDE4DA8, &qword_1DEF95AA8);

      v45 = *(v35 + 48);
      v25 = v34;
      swift_unknownObjectRetain();
      sub_1DEE15388(v44 + v45, type metadata accessor for NetworkMessenger.ExpiringConnection);
      sub_1DEF8DFB8();
      sub_1DEF8DFE8();
      sub_1DEF8DFF8();
      result = sub_1DEF8DFC8();
      v30 = 1 << v34[32];
      if (v28 >= v30)
      {
        goto LABEL_23;
      }

      v27 = v62;
      v46 = *&v62[8 * v32];
      if ((v46 & (1 << v28)) == 0)
      {
        goto LABEL_24;
      }

      if (v68 != *(v34 + 9))
      {
        goto LABEL_25;
      }

      v47 = v46 & (-2 << (v28 & 0x3F));
      if (v47)
      {
        v30 = __clz(__rbit64(v47)) | v28 & 0x7FFFFFFFFFFFFFC0;
        v31 = v60;
        v10 = v61;
      }

      else
      {
        v48 = v32 << 6;
        v49 = v32 + 1;
        v31 = v60;
        v50 = &v59[8 * v32];
        v10 = v61;
        while (v49 < (v30 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_1DEE2F804(v28, v68, 0);
            v30 = __clz(__rbit64(v51)) + v48;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v28, v68, 0);
      }

LABEL_5:
      v29 = v67 + 1;
      v28 = v30;
      if (v67 + 1 == v31)
      {

        v53 = v69;
        goto LABEL_20;
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
    goto LABEL_26;
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v54 = v58;
  v55 = sub_1DEF13870(v53);
  (*(v57 + 8))(v10, v54);
  return v55;
}

BOOL sub_1DEF2ABD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (v18 - v11);
  v13 = *a1;
  v14 = a1[1];
  *v12 = v13;
  v12[1] = v14;
  v16 = *(v15 + 56);
  sub_1DEE15068(a2, v12 + v16, type metadata accessor for NetworkMessenger.ExpiringConnection);

  sub_1DEF2A0B0(v12 + v16);
  sub_1DEE1B9F8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  LOBYTE(a2) = sub_1DEF8D8E8();
  (*(v7 + 8))(v9, v6);
  sub_1DEE171B4(v12, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  return (a2 & 1) == 0;
}

void sub_1DEF2ADC4(void *a1, void *a2)
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2[3];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (!xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    return;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6010);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_1DEF8D9E8();
    v18 = sub_1DEE12A5C(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Wake event received [rapport]: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12CCD70](v15, -1, -1);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  if (a2[5])
  {
    sub_1DEF2EEE4(a1);
  }

  else
  {
    a2[6] = a1;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }
}

void sub_1DEF2B030(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v5 = sub_1DEF8D508();
  __swift_project_value_buffer(v5, qword_1ECDF6028);

  oslog = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DEE12A5C(a2, a3, &v10);
    _os_log_impl(&dword_1DEE0F000, oslog, v6, "received notification %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12CCD70](v8, -1, -1);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }
}

uint64_t sub_1DEF2B188()
{
  v1 = *(type metadata accessor for Message(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  return sub_1DEF1A22C(v0[2], v0[3], v0[4], v0 + v2, v0 + v5, *(v0 + v6), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 24), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 32));
}

void *sub_1DEF2B2A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1DEF2B378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
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

void *sub_1DEF2B474(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4EC0, &unk_1DEF91EA0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
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

void *sub_1DEF2B57C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1DEF2B604(void *a1)
{
  v3 = *(type metadata accessor for Message(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  return sub_1DEF1AB9C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 24), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 32));
}

char *sub_1DEF2B76C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1DEE1BFA0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DEE1BFA0(v7, v6);
    *v4 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DEF8D018() && __OFSUB__(v7, sub_1DEF8D048()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1DEF8D068();
      swift_allocObject();
      v14 = sub_1DEF8CFF8();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1DEF2BB10(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1DEE1BFA0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    sub_1DEF8D1F8();
    result = sub_1DEF2BB10(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

char *sub_1DEF2BB10(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DEF8D018();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DEF8D048();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DEF8D038();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1DEF2BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_1DEF2C554(v16, v11, a3, v9, a2, a5);
  result = MEMORY[0x1E12CCD70](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

void sub_1DEF2BE40(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v40 = a4;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for PairingRelationship(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v41 = a3;
  v42 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
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
  v36 = v8 + 16;
  v37 = v8;
  v34 = 0;
  v35 = (v8 + 8);
  while (v17)
  {
    v43 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v11 << 6);
    v20 = v42;
LABEL_11:
    v23 = v41;
    (*(v37 + 16))(v20, v41[6] + *(v37 + 72) * v19, v7, v9);
    v24 = v19;
    v25 = v23[7] + *(v39 + 72) * v19;
    v26 = v7;
    v27 = v38;
    sub_1DEE15068(v25, v38, type metadata accessor for PairingRelationship);
    v28 = v44;
    v29 = v40(v20, v27);
    v44 = v28;
    if (v28)
    {
      sub_1DEE15388(v27, type metadata accessor for PairingRelationship);
      (*v35)(v20, v26);
      return;
    }

    v30 = v29;
    sub_1DEE15388(v27, type metadata accessor for PairingRelationship);
    (*v35)(v20, v26);
    v7 = v26;
    v17 = v43;
    if (v30)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v33, v32, v34, v41);
        return;
      }
    }
  }

  v21 = v11;
  v20 = v42;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v22 = v13[v11];
    ++v21;
    if (v22)
    {
      v43 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t *sub_1DEF2C180(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = 0;
  v20 = result;
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
    v24 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v26 = *(*(a3 + 48) + 8 * v14);
    v16 = v14;
    v25 = *(v15 + 8 * v14);

    v17 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    v9 = v24;
    if (v17)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1DEEC64F8(v20, a2, v21, a3);
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
      return sub_1DEEC64F8(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEF2C314(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t, __n128))
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = 0;
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v33 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v7 << 6);
    v19 = v33[7];
    v20 = (v33[6] + 16 * v18);
    v21 = v20[1];
    v35[0] = *v20;
    v35[1] = v21;
    v22 = v30;
    v23 = v18;
    sub_1DEE15068(v19 + *(v31 + 72) * v18, v30, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v24 = v36;
    v25 = (v32)(v35, v22);
    sub_1DEE15388(v22, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v36 = v24;
    if (v24)
    {
      return;
    }

    v13 = v34;
    if (v25)
    {
      *(v28 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEEC7A14(v28, v27, v29, v33);
        return;
      }
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_16;
    }

    v17 = v9[v7];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v34 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1DEF2C554(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DEF2C5F4(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v15 = sub_1DEF8D728();
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2 >> 62;
  v46 = v20;
  if ((a2 >> 62) <= 1)
  {
    v45 = v7;
    if (!v19)
    {
      v47[0] = a1;
      LOWORD(v47[1]) = a2;
      BYTE2(v47[1]) = BYTE2(a2);
      BYTE3(v47[1]) = BYTE3(a2);
      BYTE4(v47[1]) = BYTE4(a2);
      BYTE5(v47[1]) = BYTE5(a2);
      v21 = v16;
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);
      sub_1DEF8D708();
      v22 = v18;
      v23 = sub_1DEF8D6E8();
      v44 = *MEMORY[0x1E6977E88];
      v24 = swift_allocObject();
      v24[2] = a4;
      v24[3] = a3;
      v24[4] = a5;
      v24[5] = a6;
      v24[6] = a7;
      v52 = sub_1DEF30804;
      v53 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1DEE11B94;
      v51 = &block_descriptor_188;
      v25 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);

      nw_connection_send(a3, v23, v44, 1, v25);
      _Block_release(v25);

      (v21[1].isa)(v22, v46);
LABEL_15:

      swift_unknownObjectRelease();
      sub_1DEE3DBD0(a6);
      goto LABEL_16;
    }

    v43 = a5;
    if (a1 >> 32 >= a1)
    {
      v42 = v18;
      v44 = v16;
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);
      swift_unknownObjectRetain();

      sub_1DEE2CB00(a6, a7);
      if (!sub_1DEF8D018() || !__OFSUB__(a1, sub_1DEF8D048()))
      {
        sub_1DEF8D038();
        v28 = v42;
        sub_1DEF8D708();
        v29 = sub_1DEF8D6E8();
        v30 = *MEMORY[0x1E6977E88];
        v33 = swift_allocObject();
        v33[2] = a4;
        v33[3] = a3;
        v33[4] = v43;
        v33[5] = a6;
        v33[6] = a7;
        v52 = sub_1DEF30804;
        v53 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v32 = &block_descriptor_181;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v44 = v16;
  if (v19 != 2)
  {
    memset(v47, 0, 14);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6, a7);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6, a7);
    sub_1DEF8D708();
    v35 = sub_1DEF8D6E8();
    v43 = *MEMORY[0x1E6977E88];
    v36 = swift_allocObject();
    v36[2] = a4;
    v36[3] = a3;
    v36[4] = a5;
    v36[5] = a6;
    v36[6] = a7;
    v52 = sub_1DEF30804;
    v53 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1DEE11B94;
    v51 = &block_descriptor_195;
    v37 = v18;
    v38 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    sub_1DEE2CB00(a6, a7);

    nw_connection_send(a3, v35, v43, 1, v38);
    _Block_release(v38);

    (v44[1].isa)(v37, v46);
    goto LABEL_15;
  }

  v42 = v18;
  v43 = a5;
  v26 = *(a1 + 16);
  v41 = *(a1 + 24);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6, a7);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6, a7);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6, a7);
  v27 = sub_1DEF8D018();
  v45 = v7;
  if (v27 && __OFSUB__(v26, sub_1DEF8D048()))
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v41, v26))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1DEF8D038();
  v28 = v42;
  sub_1DEF8D708();
  v29 = sub_1DEF8D6E8();
  v30 = *MEMORY[0x1E6977E88];
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a3;
  v31[4] = v43;
  v31[5] = a6;
  v31[6] = a7;
  v52 = sub_1DEF2ECE0;
  v53 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v32 = &block_descriptor_174;
LABEL_13:
  v50 = sub_1DEE11B94;
  v51 = v32;
  v34 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a6, a7);

  nw_connection_send(a3, v29, v30, 1, v34);
  _Block_release(v34);

  (v44[1].isa)(v28, v46);

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);
LABEL_16:

  swift_unknownObjectRelease();
  sub_1DEE3DBD0(a6);

  swift_unknownObjectRelease();
  return sub_1DEE3DBD0(a6);
}

void sub_1DEF2CE0C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEB9F20();
    *v4 = v9;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    sub_1DEE1C4F0(v10 + *(*(v11 - 8) + 72) * a2, a1, type metadata accessor for NetworkMessenger.ExpiringConnection);
    sub_1DEF776FC(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t (*sub_1DEF2CF20(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12CB6E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1DEF2CFA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF2CFA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DEF8DE68();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DEF8DE68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DEE1B548(&unk_1ECDE4DD0, &qword_1ECDE4DC8, &unk_1DEF95AC0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC8, &unk_1DEF95AC0);
            v9 = sub_1DEF2CF20(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEF2D158(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1DEF8D3F8();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1DEF2D3FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_1DEE15068(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for PairingRelationship);
      v23 = v22;
      v24 = v30;
      sub_1DEE1C4F0(v23, v30, type metadata accessor for PairingRelationship);
      sub_1DEE1C4F0(v24, a2, type metadata accessor for PairingRelationship);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}
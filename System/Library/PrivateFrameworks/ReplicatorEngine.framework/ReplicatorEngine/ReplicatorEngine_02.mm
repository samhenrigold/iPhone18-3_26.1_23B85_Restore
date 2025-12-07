uint64_t sub_1DEE4B464()
{
  *(v0 + 80) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4B4F8, 0, 0);
}

uint64_t sub_1DEE4B4F8()
{
  v18 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[33] + 8))(v0[34], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v5 = sub_1DEF8D508();
  __swift_project_value_buffer(v5, qword_1ECDF6028);
  v6 = v4;
  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DC98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v0[8] = v4;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v12 = sub_1DEF8D988();
    v14 = sub_1DEE12A5C(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Zone advertiser failed to subscribe: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DEE4B76C()
{
  v15 = v0;
  v1 = v0[39];
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = v1;
  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[8] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v9 = sub_1DEF8D988();
    v11 = sub_1DEE12A5C(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Zone advertiser failed to subscribe: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DEE4B9AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v54 - v4;
  v5 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v54 - v9);
  v61 = type metadata accessor for ZoneVersionAdvertisement(0);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v54 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  sub_1DEF8D408();
  sub_1DEE4DB84(v20, v10, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  sub_1DEE4DBEC(v20, type metadata accessor for ZoneVersionAdvertisement);
  v24 = *v10;
  v23 = v10[1];

  sub_1DEE4DBEC(v10, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  v25 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  v59 = a1;
  v57 = v25;
  v26 = *(a1 + v25);
  if (*(v26 + 16) && (, v27 = sub_1DEE13224(v24, v23), v29 = v28, , (v29 & 1) != 0))
  {
    sub_1DEE4DB84(*(v26 + 56) + *(v63 + 72) * v27, v17, type metadata accessor for ZoneVersionAdvertisement);

    v30 = v55;
    sub_1DEE442B0(v17, v55);
    sub_1DEF8D408();
    if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v30, v14) && (sub_1DEEDB5A8(*(v55 + *(v61 + 20)), *&v14[*(v61 + 20)]), (v31 & 1) != 0))
    {
      sub_1DEE4DBEC(v14, type metadata accessor for ZoneVersionAdvertisement);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v32 = sub_1DEF8D508();
      __swift_project_value_buffer(v32, qword_1ECDF6028);
      v33 = sub_1DEF8D4D8();
      v34 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DEE0F000, v33, v34, "Zone advertiser payload has not changed; ignoring", v35, 2u);
        MEMORY[0x1E12CCD70](v35, -1, -1);
      }

      result = sub_1DEE4DBEC(v55, type metadata accessor for ZoneVersionAdvertisement);
      v37 = 0;
    }

    else
    {
      sub_1DEE4DBEC(v14, type metadata accessor for ZoneVersionAdvertisement);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v46 = sub_1DEF8D508();
      __swift_project_value_buffer(v46, qword_1ECDF6028);
      v47 = sub_1DEF8D4D8();
      v48 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DEE0F000, v47, v48, "Zone advertiser payload has changed; publishing", v49, 2u);
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      v50 = v56;
      sub_1DEF8D408();
      sub_1DEE4DB84(v50, v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
      sub_1DEE4DBEC(v50, type metadata accessor for ZoneVersionAdvertisement);
      v51 = *v7;
      v52 = v7[1];

      sub_1DEE4DBEC(v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
      v53 = v58;
      sub_1DEF8D408();
      v37 = 1;
      (*(v63 + 56))(v53, 0, 1, v61);
      swift_beginAccess();
      sub_1DEF32668(v53, v51, v52);
      swift_endAccess();
      result = sub_1DEE4DBEC(v55, type metadata accessor for ZoneVersionAdvertisement);
    }
  }

  else
  {

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v38 = sub_1DEF8D508();
    __swift_project_value_buffer(v38, qword_1ECDF6028);
    v39 = sub_1DEF8D4D8();
    v40 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DEE0F000, v39, v40, "Zone advertiser payload is new; publishing", v41, 2u);
      MEMORY[0x1E12CCD70](v41, -1, -1);
    }

    v42 = v56;
    sub_1DEF8D408();
    sub_1DEE4DB84(v42, v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    sub_1DEE4DBEC(v42, type metadata accessor for ZoneVersionAdvertisement);
    v43 = *v7;
    v44 = v7[1];

    sub_1DEE4DBEC(v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    v45 = v58;
    sub_1DEF8D408();
    v37 = 1;
    (*(v63 + 56))(v45, 0, 1, v61);
    swift_beginAccess();
    sub_1DEF32668(v45, v43, v44);
    result = swift_endAccess();
  }

  *v60 = v37;
  return result;
}

uint64_t sub_1DEE4C178()
{
  v0 = type metadata accessor for ZoneVersionAdvertisement(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  sub_1DEF8D408();
  sub_1DEF8D588();
  return sub_1DEE4DBEC(v2, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEE4C23C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_1DEF8D698();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DEF8D6D8();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D758();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - v10;
  v11 = type metadata accessor for ZoneVersionAdvertisement(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v27 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  v60 = a2;
  sub_1DEE4DB84(a2, v26, type metadata accessor for ZoneVersionAdvertisement);
  v59 = *(v12 + 56);
  v59(v26, 0, 1, v11);
  v28 = *(v15 + 56);
  v61 = a1;
  sub_1DEE4DC4C(a1 + v27, v17);
  sub_1DEE4DC4C(v26, &v17[v28]);
  v29 = *(v12 + 48);
  if (v29(v17, 1, v11) == 1)
  {
    sub_1DEE171B4(v26, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v29(&v17[v28], 1, v11) == 1)
    {
      return sub_1DEE171B4(v17, &qword_1ECDE3A78, &qword_1DEF90820);
    }

    goto LABEL_6;
  }

  sub_1DEE4DC4C(v17, v23);
  if (v29(&v17[v28], 1, v11) == 1)
  {
    sub_1DEE171B4(v26, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE4DBEC(v23, type metadata accessor for ZoneVersionAdvertisement);
LABEL_6:
    v31 = &qword_1ECDE3AD8;
    v32 = &qword_1DEF90998;
    v33 = v17;
    goto LABEL_7;
  }

  v44 = v48;
  sub_1DEE442B0(&v17[v28], v48);
  if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v23, v44))
  {
    sub_1DEEDB5A8(*&v23[*(v11 + 20)], *(v44 + *(v11 + 20)));
    v46 = v45;
    sub_1DEE171B4(v26, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE4DBEC(v44, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE4DBEC(v23, type metadata accessor for ZoneVersionAdvertisement);
    result = sub_1DEE171B4(v17, &qword_1ECDE3A78, &qword_1DEF90820);
    v34 = v61;
    if (v46)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_1DEE171B4(v26, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE4DBEC(v44, type metadata accessor for ZoneVersionAdvertisement);
  sub_1DEE4DBEC(v23, type metadata accessor for ZoneVersionAdvertisement);
  v33 = v17;
  v31 = &qword_1ECDE3A78;
  v32 = &qword_1DEF90820;
LABEL_7:
  sub_1DEE171B4(v33, v31, v32);
  v34 = v61;
LABEL_8:
  sub_1DEE4DB84(v60, v20, type metadata accessor for ZoneVersionAdvertisement);
  v59(v20, 0, 1, v11);
  swift_beginAccess();
  sub_1DEE4DCBC(v20, v34 + v27);
  result = swift_endAccess();
  if ((*(v34 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) & 1) == 0)
  {
    *(v34 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 1;
    v61 = *(v34 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
    v35 = v49;
    sub_1DEF8D738();
    if (qword_1ECDE2FF8 != -1)
    {
      swift_once();
    }

    v36 = sub_1DEF8D688();
    v37 = __swift_project_value_buffer(v36, qword_1ECDE3000);
    v38 = v50;
    MEMORY[0x1E12CAF40](v35, v37);
    v39 = v52;
    v60 = *(v51 + 8);
    v60(v35, v52);
    aBlock[4] = sub_1DEE4DD2C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_62;
    v40 = _Block_copy(aBlock);

    v41 = v53;
    sub_1DEF8D6B8();
    v62 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v42 = v55;
    v43 = v58;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v38, v41, v42, v40);
    _Block_release(v40);
    (*(v57 + 8))(v42, v43);
    (*(v54 + 8))(v41, v56);
    v60(v38, v39);
  }

  return result;
}

uint64_t sub_1DEE4CAB8()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1DEE4C23C(v2, v3);
}

uint64_t type metadata accessor for StatusKitZoneAdvertiser(uint64_t a1)
{
  result = qword_1ECDE2F90;
  if (!qword_1ECDE2F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEE4CBA4(uint64_t a1)
{
  sub_1DEE4CDEC(319);
  if (v1 <= 0x3F)
  {
    sub_1DEE44624(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DEE4CDEC(uint64_t a1)
{
  if (!qword_1ECDE35E0)
  {
    type metadata accessor for ZoneVersionAdvertisement(255);
    sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
    sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
    v1 = sub_1DEF8D4B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE35E0);
    }
  }
}

uint64_t sub_1DEE4CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 208) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B18, &qword_1DEF90B28);
  *(v8 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B20, &unk_1DEF90B30);
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = type metadata accessor for ZoneVersionAdvertisement(0);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4CFF4, 0, 0);
}

uint64_t sub_1DEE4CFF4()
{
  v28 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v3 = v0[21];
    v4 = v0[13];
    v5 = sub_1DEF8D508();
    v0[23] = __swift_project_value_buffer(v5, qword_1ECDF6028);
    sub_1DEE4DB84(v4, v3, type metadata accessor for ZoneVersionAdvertisement);
    v6 = sub_1DEF8D4D8();
    v7 = sub_1DEF8DCB8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[21];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136446210;
      sub_1DEF8DF28();

      strcpy(v27, "remoteDevice: ");
      HIBYTE(v27[1]) = -18;
      v12 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v12);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      type metadata accessor for ZoneVersion(0);
      v13 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v13);

      sub_1DEE4DBEC(v9, type metadata accessor for ZoneVersionAdvertisement);
      v14 = sub_1DEE12A5C(v27[0], v27[1], &v31);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DEE0F000, v6, v7, "Zone advertiser advertising %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12CCD70](v11, -1, -1);
      MEMORY[0x1E12CCD70](v10, -1, -1);
    }

    else
    {

      sub_1DEE4DBEC(v9, type metadata accessor for ZoneVersionAdvertisement);
    }

    v17 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
    v18 = swift_task_alloc();
    v0[24] = v18;
    v19 = sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
    v20 = sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
    v21 = sub_1DEE1B920(&qword_1ECDE2F18, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
    *v18 = v0;
    v18[1] = sub_1DEE4D428;
    v23 = v0[19];
    v22 = v0[20];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[13];
    v30 = v21;

    return MEMORY[0x1EEE19078](v23, v24, v26, v2 + v17, v25, v22, v19, v20);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1DEE4D428()
{
  v2 = *v1;
  (*v1)[25] = v0;

  if (v0)
  {
    v3 = sub_1DEE4D728;
  }

  else
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[17];
    sub_1DEE171B4(v2[16], &qword_1ECDE3B18, &qword_1DEF90B28);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1DEE4D578;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DEE4D578()
{
  if (*(v0 + 208) == 1)
  {
    v1 = v0[22];
    v2 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1DEE4DED4;
    *(v3 + 24) = v1;
    v0[6] = sub_1DEE13B20;
    v0[7] = v3;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1DEE134F4;
    v0[5] = &block_descriptor_74;
    v4 = _Block_copy(v0 + 2);

    dispatch_sync(v2, v4);

    _Block_release(v4);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DEE4D728()
{
  v16 = v0;
  v1 = v0[25];
  v2 = v1;
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DC98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[11] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v9 = sub_1DEF8D988();
    v11 = sub_1DEE12A5C(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Zone advertiser failed to advertise: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  else
  {
    v12 = v0[25];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DEE4D8FC(uint64_t a1)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Zone advertiser advertisement task is shutting down", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask))
  {

    sub_1DEF8DB88();
  }

  *(a1 + v6) = 0;
}

uint64_t sub_1DEE4DA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DEE466B4;

  return sub_1DEE4A470(a1, v4, v5, v7, v6);
}

uint64_t sub_1DEE4DB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);

  return sub_1DEE4C178();
}

uint64_t sub_1DEE4DB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE4DBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE4DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE4DCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE4DD30(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1DEF8D488() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v7);
  v13 = v1[4];
  v14 = v1 + v9;
  v15 = *(v1 + v9 + *(v8 + 64));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DEE46D44;

  return sub_1DEE4CEB8(a1, v10, v11, v13, v1 + v6, v12, v14, v15);
}

uint64_t static RecordDestination.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1DEE4DFB8(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1DEE4DFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1DEE1E37C(&qword_1ECDE40E0, MEMORY[0x1E69695C8]);
    v22 = sub_1DEF8D908();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE4E1C4(uint64_t a1)
{
  v2 = sub_1DEE4E8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E200(uint64_t a1)
{
  v2 = sub_1DEE4E8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEE4E23C()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

uint64_t sub_1DEE4E274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEE4E358(uint64_t a1)
{
  v2 = sub_1DEE4E8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E394(uint64_t a1)
{
  v2 = sub_1DEE4E8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEE4E3D8()
{
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](0);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4E41C(uint64_t a1)
{
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](0);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1DEE4E4DC(uint64_t a1)
{
  v2 = sub_1DEE4E94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E518(uint64_t a1)
{
  v2 = sub_1DEE4E94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecordDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B28, &qword_1DEF90B40);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B30, &qword_1DEF90B48);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B38, &qword_1DEF90B50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE4E8A4();
  sub_1DEF8E858();
  if (v12)
  {
    v23 = 0;
    sub_1DEE4E94C();
    sub_1DEF8E248();
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE4F1E4(&qword_1ECDE2C68, &qword_1ECDE3640, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    v13 = v21;
    sub_1DEF8E298();
    (*(v20 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_1DEE4E8F8();
    v15 = v17;
    sub_1DEF8E248();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1DEE4E8A4()
{
  result = qword_1ECDE3B40;
  if (!qword_1ECDE3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B40);
  }

  return result;
}

unint64_t sub_1DEE4E8F8()
{
  result = qword_1ECDE3B48;
  if (!qword_1ECDE3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B48);
  }

  return result;
}

unint64_t sub_1DEE4E94C()
{
  result = qword_1ECDE3B50;
  if (!qword_1ECDE3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B50);
  }

  return result;
}

uint64_t RecordDestination.hash(into:)(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (!*v1)
  {
    return MEMORY[0x1E12CBF60](1, v4);
  }

  MEMORY[0x1E12CBF60](0, v4);
  result = MEMORY[0x1E12CBF60](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v2);
      sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
      sub_1DEF8D8C8();
      result = (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t RecordDestination.hashValue.getter()
{
  v2[9] = *v0;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)(v2);
  return sub_1DEF8E7F8();
}

uint64_t RecordDestination.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B60, &qword_1DEF90B60);
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B68, &qword_1DEF90B68);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B70, &unk_1DEF90B70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DEE4E8A4();
  v15 = v28;
  sub_1DEF8E848();
  if (!v15)
  {
    v16 = v11;
    v17 = v27;
    v18 = sub_1DEF8E228();
    if (*(v18 + 16) == 1)
    {
      v28 = v18;
      if (*(v18 + 32))
      {
        v32 = 1;
        sub_1DEE4E8F8();
        sub_1DEF8E178();
        (*(v25 + 8))(v6, v24);
        (*(v16 + 8))(v13, v10);
        swift_unknownObjectRelease();
        *v17 = 0;
      }

      else
      {
        v31 = 0;
        sub_1DEE4E94C();
        sub_1DEF8E178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
        sub_1DEE4F1E4(&qword_1ECDE3B80, &qword_1ECDE3630, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
        sub_1DEF8E1F8();
        (*(v26 + 8))(v9, v7);
        (*(v16 + 8))(v13, v10);
        swift_unknownObjectRelease();
        *v17 = v30;
      }
    }

    else
    {
      v19 = sub_1DEF8DF68();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v21 = &type metadata for RecordDestination;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v16 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1DEE4F030()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE4F064()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE4F0C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1DEE4DFB8(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1DEE4F14C()
{
  v2[9] = *v0;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)(v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4F19C(uint64_t a1)
{
  v3[9] = *v1;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)(v3);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4F1E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE1E37C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEE4F270()
{
  result = qword_1ECDE3B88;
  if (!qword_1ECDE3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B88);
  }

  return result;
}

uint64_t sub_1DEE4F2D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE4F320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DEE4F374(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DEE4F38C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordDestination.CollectionCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RecordDestination.CollectionCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1DEE4F4C4()
{
  result = qword_1ECDE3B90;
  if (!qword_1ECDE3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B90);
  }

  return result;
}

unint64_t sub_1DEE4F51C()
{
  result = qword_1ECDE3B98;
  if (!qword_1ECDE3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B98);
  }

  return result;
}

unint64_t sub_1DEE4F574()
{
  result = qword_1ECDE3BA0;
  if (!qword_1ECDE3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BA0);
  }

  return result;
}

unint64_t sub_1DEE4F5CC()
{
  result = qword_1ECDE3BA8;
  if (!qword_1ECDE3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BA8);
  }

  return result;
}

unint64_t sub_1DEE4F624()
{
  result = qword_1ECDE3BB0;
  if (!qword_1ECDE3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BB0);
  }

  return result;
}

unint64_t sub_1DEE4F67C()
{
  result = qword_1ECDE3BB8;
  if (!qword_1ECDE3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BB8);
  }

  return result;
}

unint64_t sub_1DEE4F6D4()
{
  result = qword_1ECDE3BC0;
  if (!qword_1ECDE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BC0);
  }

  return result;
}

unint64_t sub_1DEE4F72C()
{
  result = qword_1ECDE3BC8;
  if (!qword_1ECDE3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BC8);
  }

  return result;
}

ReplicatorEngine::DefaultSuspensionPolicy __swiftcall DefaultSuspensionPolicy.init(discardInterval:unpairInterval:)(Swift::Double discardInterval, Swift::Double unpairInterval)
{
  *v2 = discardInterval;
  v2[1] = unpairInterval;
  result.unpairInterval = unpairInterval;
  result.discardInterval = discardInterval;
  return result;
}

uint64_t DefaultSuspensionPolicy.discardDate(for:hasRecordsFromRemoteDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for PairingRelationship(0) + 32);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = *v5;
    sub_1DEE4F8C0(v6, *(v5 + 8));
    sub_1DEE4F8D4(v8, v7);
    sub_1DEE4F8D4(0, 0);
  }

  else
  {
    sub_1DEE4F8D4(v6, 0);
    sub_1DEE4F8D4(0, 0);
    if (a2)
    {
      sub_1DEF8D2E8();
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:
  v10 = sub_1DEF8D378();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

uint64_t sub_1DEE4F8C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DEE4F8D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t DefaultSuspensionPolicy.unpairDate(for:hasRecordsFromRemoteDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PairingRelationship(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (v5 == 2)
  {
    sub_1DEE4F8D4(v4, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    sub_1DEF8D2E8();
    v6 = 0;
  }

  else
  {
    v7 = *v3;
    sub_1DEE4F8C0(v4, *(v3 + 8));
    sub_1DEE4F8D4(v7, v5);
    sub_1DEE4F8D4(0, 2uLL);
    v6 = 1;
  }

  v8 = sub_1DEF8D378();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v6, 1, v8);
}

uint64_t sub_1DEE4F9EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for PairingRelationship(0) + 32);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = *v5;
    sub_1DEE4F8C0(v6, *(v5 + 8));
    sub_1DEE4F8D4(v8, v7);
    sub_1DEE4F8D4(0, 0);
  }

  else
  {
    sub_1DEE4F8D4(v6, 0);
    sub_1DEE4F8D4(0, 0);
    if (a2)
    {
      sub_1DEF8D2E8();
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:
  v10 = sub_1DEF8D378();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

uint64_t sub_1DEE4FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PairingRelationship(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (v5 == 2)
  {
    sub_1DEE4F8D4(v4, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    sub_1DEF8D2E8();
    v6 = 0;
  }

  else
  {
    v7 = *v3;
    sub_1DEE4F8C0(v4, *(v3 + 8));
    sub_1DEE4F8D4(v7, v5);
    sub_1DEE4F8D4(0, 2uLL);
    v6 = 1;
  }

  v8 = sub_1DEF8D378();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v6, 1, v8);
}

uint64_t sub_1DEE4FC10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DEE4FC68(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PairingRelationship(0);
    return a2;
  }

  return result;
}

uint64_t sub_1DEE4FCFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Zone.ID();
  v4 = sub_1DEE2BAF8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
  result = MEMORY[0x1E12CB3B0](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));

    sub_1DEF389B8(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE4FE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEA86E0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for NetworkBrowser.MonitoredPersona, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    sub_1DEF39434(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1DEE4FF6C()
{
  *&result = 16;
  xmmword_1ED786068 = xmmword_1DEF90FC0;
  return result;
}

double static Replicator.Constants.protocolVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED786060 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ED786068;
  *a1 = xmmword_1ED786068;
  return result;
}

uint64_t sub_1DEE4FFEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DEF8D3F8();
  __swift_allocate_value_buffer(v3, qword_1ECDF6090);
  v4 = __swift_project_value_buffer(v3, qword_1ECDF6090);
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

uint64_t sub_1DEE5011C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D30, &qword_1DEF91648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF90FD0;
  *(inited + 32) = 1;
  *(inited + 40) = sub_1DEEA2BCC(&unk_1F5A19038);
  *(inited + 48) = 2;
  *(inited + 56) = sub_1DEEA2BCC(&unk_1F5A19068);
  *(inited + 64) = 4;
  *(inited + 72) = sub_1DEEA2BCC(&unk_1F5A190A8);
  v1 = sub_1DEEA2CAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D38, &qword_1DEF91650);
  result = swift_arrayDestroy();
  qword_1ECDF60A8 = v1;
  return result;
}

uint64_t sub_1DEE50234()
{
  sub_1DEEA874C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE5026C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1DEE502F0@<X0>(void *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1DEE50374@<X0>(_BYTE *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1DEE503FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v15[0] = v8;
    v15[1] = v9;
    (*(v10 + 32))(a1, a2, v15, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = type metadata accessor for PrioritizedRecordValue(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t sub_1DEE50508(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE50594(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE50618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1DEE506C0(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1DEF8D9C8();
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 64))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

__n128 Replicator.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 137);
  result = *(v1 + 104);
  v5 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

uint64_t sub_1DEE50774()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
    sub_1DEE1B548(&qword_1ECDE2D18, &qword_1ECDE3BD0, &qword_1DEF91090, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEE50848(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEE50774();
  return sub_1DEE50890;
}

uint64_t sub_1DEE508A0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
    sub_1DEE1B548(&qword_1ECDE3BE0, &qword_1ECDE3BD8, &qword_1DEF91098, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEE50974(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEE508A0();
  return sub_1DEE509BC;
}

uint64_t Replicator.Session.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Replicator.Session.remoteDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Replicator.Session(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Replicator.Session(uint64_t a1)
{
  result = qword_1ECDE3C40;
  if (!qword_1ECDE3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE50AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DEE50B7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE20;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_303;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE50D44(char a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEE51054;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE13B20;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_2;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE50EA0(char a1, uint64_t a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6028);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Replicator state changed to enabled: %{BOOL,public}d", v7, 8u);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  *(a2 + 624) = a1 & 1;
  swift_beginAccess();
  v8 = *(a2 + 368);
  v9 = *(a2 + 376);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 344, v8);
  (*(v9 + 24))(a1 & 1, v8, v9);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(a2 + 216);
  v11 = *(a2 + 224);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 192, v10);
  (*(*(v11 + 16) + 32))(a1 & 1, v10);
  result = swift_endAccess();
  if ((a1 & 1) == 0)
  {
    return sub_1DEE51060();
  }

  return result;
}

uint64_t sub_1DEE51060()
{
  v1 = type metadata accessor for PairingRelationship(0);
  v60 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1DEF8D3F8();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v59 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v55 - v10;
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + 232);
  *v16 = v17;
  v18 = *(v13 + 104);
  v68 = *MEMORY[0x1E69E8020];
  v66 = v18;
  v67 = v13 + 104;
  v18(v16, v14);
  v65 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  v19 = *(v13 + 8);
  v69 = v16;
  v70 = v13 + 8;
  v71 = v12;
  v64 = v19;
  result = v19(v16, v12);
  if ((v17 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v72 = v0;
  sub_1DEE29594(v0 + 192, v75);
  v22 = v76;
  v21 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v23 = (*(*(*(v21 + 8) + 8) + 32))(v22);
  v24 = sub_1DEE9EBC8(v23, sub_1DEE9FFA8, sub_1DEE9FFA8);

  result = __swift_destroy_boxed_opaque_existential_1(v75);
  v25 = 0;
  v26 = v24[8];
  v55[0] = v24 + 8;
  v61 = v24;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v55[2] = v4 + 16;
  v55[1] = v4 + 32;
  v58 = v4;
  v62 = (v4 + 8);
  v57 = v8;
  v56 = v11;
  v63 = v3;
  if ((v28 & v26) == 0)
  {
LABEL_6:
    if (v30 <= v25 + 1)
    {
      v32 = v25 + 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v31 >= v30)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
        (*(*(v52 - 8) + 56))(v8, 1, 1, v52);
        v29 = 0;
        goto LABEL_14;
      }

      v29 = *(v55[0] + 8 * v31);
      ++v25;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v25;
LABEL_13:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v61;
    v37 = v58;
    v38 = v59;
    v39 = v73;
    (*(v58 + 16))(v59, v61[6] + *(v58 + 72) * v35, v73);
    sub_1DEEACA70(v36[7] + *(v60 + 72) * v35, v3, type metadata accessor for PairingRelationship);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v41 = *(v40 + 48);
    v42 = *(v37 + 32);
    v8 = v57;
    v42(v57, v38, v39);
    sub_1DEEAB218(v3, &v8[v41], type metadata accessor for PairingRelationship);
    (*(*(v40 - 8) + 56))(v8, 0, 1, v40);
    v33 = v31;
    v11 = v56;
LABEL_14:
    sub_1DEE1BA88(v8, v11, &qword_1ECDE3C98, &unk_1DEF95610);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v43 - 8) + 48))(v11, 1, v43) == 1)
    {
      break;
    }

    v3 = v63;
    sub_1DEEAB218(&v11[*(v43 + 48)], v63, type metadata accessor for PairingRelationship);
    v44 = v69;
    v46 = v65;
    v45 = v66;
    *v69 = v65;
    v47 = v71;
    v45(v44, v68, v71);
    v48 = v46;
    LOBYTE(v46) = sub_1DEF8D7B8();
    result = v64(v44, v47);
    if ((v46 & 1) == 0)
    {
      goto LABEL_21;
    }

    v49 = v72;
    sub_1DEE67760(v3);
    sub_1DEE29594(v49 + 192, v75);
    v50 = v76;
    v51 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(*(v51 + 16) + 120))(v3, v50);
    sub_1DEE273A0(v3, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v75);
    result = (*v62)(v11, v73);
    v25 = v33;
    if (!v29)
    {
      goto LABEL_6;
    }
  }

  sub_1DEE29594(v72 + 192, v75);
  v54 = v76;
  v53 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v74 = (*(*(*(v53 + 8) + 8) + 32))(v54);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

void (*sub_1DEE5180C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 232);
  sub_1DEF8DD18();
  v4[64] = *v4;
  return sub_1DEE518C4;
}

void sub_1DEE518C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1DEEACE20;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_15;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEACE20;
  *(v10 + 24) = v9;
  v2[4] = sub_1DEE46D40;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_26;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t Replicator.__allocating_init(syncService:metadataStore:replicationPolicy:suspensionPolicy:deviceType:screenDescriptor:zoneVersionAdvertiser:handshakeScheduler:pinnedIdentityManager:permittedRemoteDeviceTypes:personaMonitor:localDeviceIdentifier:activeWatchIDSIDProvider:pairedRelationshipReconciler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, __int128 *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73 = a8;
  v74 = a5;
  v75 = a4;
  v70 = a3;
  v63 = a2;
  v62 = a1;
  v69 = a15;
  v71 = a10;
  v72 = a9;
  v67 = a16;
  v68 = a12;
  v65 = a14;
  v66 = a11;
  v64 = a13;
  v58 = sub_1DEF8D3F8();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DEF8DD08();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = swift_allocObject();
  v59 = *a6;
  v61 = *(a7 + 32);
  v60 = *(a7 + 33);
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
  swift_allocObject();
  *(v22 + 144) = sub_1DEF8D598();
  *(v22 + 152) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
  swift_allocObject();
  *(v22 + 160) = sub_1DEF8D598();
  *(v22 + 168) = 0;
  v50 = sub_1DEE3C630();
  sub_1DEF8D6C8();
  *&v78 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  v23 = a7[1];
  v55 = *a7;
  v54 = v23;
  v24 = v70;
  sub_1DEF8DE08();
  (*(v52 + 104))(v51, *MEMORY[0x1E69E8098], v53);
  v25 = sub_1DEF8DD38();
  v26 = MEMORY[0x1E69E7CC8];
  *(v22 + 232) = v25;
  *(v22 + 240) = v26;
  *(v22 + 248) = 0;
  *(v22 + 256) = 0;
  v27 = MEMORY[0x1E69E7CD0];
  *(v22 + 464) = MEMORY[0x1E69E7CD0];
  *(v22 + 472) = 0;
  v28 = v56;
  sub_1DEF8D3E8();
  v29 = sub_1DEF8D398();
  v31 = v30;
  (*(v57 + 8))(v28, v58);
  *(v22 + 528) = v29;
  *(v22 + 536) = v31;
  type metadata accessor for SessionManager();
  swift_allocObject();
  *(v22 + 544) = SessionManager.init(expirationDuration:)(0, 1);
  type metadata accessor for SyncQueue();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1DEEA2DE0(MEMORY[0x1E69E7CC0], &qword_1ECDE3E60, &unk_1DEF91780, &qword_1ECDE3E68, &qword_1DEF91BB0);
  *(v22 + 592) = v32;
  *(v22 + 600) = v26;
  type metadata accessor for BasicTimer();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 24) = v34;
  *(v22 + 608) = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v35 + 24) = v36;
  *(v22 + 616) = v35;
  *(v22 + 624) = 1;
  *(v22 + 632) = 0;
  *(v22 + 640) = 1;
  *(v22 + 648) = 0;
  *(v22 + 656) = 0xF000000000000000;
  *(v22 + 664) = v26;
  *(v22 + 672) = v27;
  v37 = v63;
  *(v22 + 176) = v62;
  *(v22 + 184) = v37;
  sub_1DEE29594(v24, v22 + 192);
  sub_1DEE29594(v75, v22 + 264);
  sub_1DEE29594(v74, v22 + 304);
  *(v22 + 96) = v59;
  *(v22 + 120) = v54;
  *(v22 + 104) = v55;
  *(v22 + 136) = v61;
  *(v22 + 137) = v60;
  sub_1DEE29594(v73, v22 + 344);
  sub_1DEE29594(v72, v22 + 384);
  sub_1DEE29594(v71, v22 + 480);
  v38 = v65;
  *(v22 + 248) = v64;
  *(v22 + 256) = v38;
  swift_unknownObjectRetain();

  v39 = v24[3];
  v40 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v39);
  *(v22 + 624) = (*(*(*(v40 + 8) + 8) + 16))(v39) & 1;
  v41 = sub_1DEEA3E78(v66);

  *(v22 + 520) = v41;
  sub_1DEE17214(v69, &v76, &qword_1ECDE3BE8, &unk_1DEF910A0);
  if (v77)
  {
    sub_1DEE2F1AC(&v76, &v78);
  }

  else
  {
    active = type metadata accessor for ActiveWatchIDSIDProvider();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v79 = active;
    v80 = &off_1F5A202E8;
    *&v78 = v43;
  }

  sub_1DEE2F1AC(&v78, v22 + 16);
  v44 = v68;
  sub_1DEE17214(v68, v22 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);
  v45 = v67;
  sub_1DEE17214(v67, v22 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);
  ObjectType = swift_getObjectType();
  v47 = *(v37 + 24);

  v47(v48, &protocol witness table for Replicator, ObjectType, v37);
  swift_unknownObjectRelease();

  sub_1DEE171B4(v45, &qword_1ECDE3BF8, &unk_1DEF910B0);
  sub_1DEE171B4(v69, &qword_1ECDE3BE8, &unk_1DEF910A0);
  sub_1DEE171B4(v44, &qword_1ECDE3BF0, &unk_1DEF938B0);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return v22;
}

uint64_t Replicator.init(syncService:metadataStore:replicationPolicy:suspensionPolicy:deviceType:screenDescriptor:zoneVersionAdvertiser:handshakeScheduler:pinnedIdentityManager:permittedRemoteDeviceTypes:personaMonitor:localDeviceIdentifier:activeWatchIDSIDProvider:pairedRelationshipReconciler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, __int128 *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v74 = a8;
  v75 = a5;
  v76 = a4;
  v71 = a3;
  v64 = a2;
  v63 = a1;
  v70 = a15;
  v72 = a10;
  v73 = a9;
  v68 = a16;
  v69 = a12;
  v66 = a14;
  v67 = a11;
  v65 = a13;
  v59 = sub_1DEF8D3F8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DEF8DD08();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v60 = *a6;
  v62 = *(a7 + 32);
  v61 = *(a7 + 33);
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
  swift_allocObject();
  *(v17 + 144) = sub_1DEF8D598();
  *(v17 + 152) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
  swift_allocObject();
  *(v17 + 160) = sub_1DEF8D598();
  *(v17 + 168) = 0;
  v51 = sub_1DEE3C630();
  sub_1DEF8D6C8();
  *&v79 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  v24 = a7[1];
  v56 = *a7;
  v55 = v24;
  v25 = v71;
  sub_1DEF8DE08();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8098], v54);
  v26 = sub_1DEF8DD38();
  v27 = MEMORY[0x1E69E7CC8];
  *(v17 + 232) = v26;
  *(v17 + 240) = v27;
  *(v17 + 248) = 0;
  *(v17 + 256) = 0;
  v28 = MEMORY[0x1E69E7CD0];
  *(v17 + 464) = MEMORY[0x1E69E7CD0];
  *(v17 + 472) = 0;
  v29 = v57;
  sub_1DEF8D3E8();
  v30 = sub_1DEF8D398();
  v32 = v31;
  (*(v58 + 8))(v29, v59);
  *(v17 + 528) = v30;
  *(v17 + 536) = v32;
  type metadata accessor for SessionManager();
  swift_allocObject();
  *(v17 + 544) = SessionManager.init(expirationDuration:)(0, 1);
  type metadata accessor for SyncQueue();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1DEEA2DE0(MEMORY[0x1E69E7CC0], &qword_1ECDE3E60, &unk_1DEF91780, &qword_1ECDE3E68, &qword_1DEF91BB0);
  *(v17 + 592) = v33;
  *(v17 + 600) = v27;
  type metadata accessor for BasicTimer();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 24) = v35;
  *(v17 + 608) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v36 + 24) = v37;
  *(v17 + 616) = v36;
  *(v17 + 624) = 1;
  *(v17 + 632) = 0;
  *(v17 + 640) = 1;
  *(v17 + 648) = 0;
  *(v17 + 656) = 0xF000000000000000;
  *(v17 + 664) = v27;
  *(v17 + 672) = v28;
  v38 = v64;
  *(v17 + 176) = v63;
  *(v17 + 184) = v38;
  sub_1DEE29594(v25, v17 + 192);
  sub_1DEE29594(v76, v17 + 264);
  sub_1DEE29594(v75, v17 + 304);
  *(v17 + 96) = v60;
  *(v17 + 120) = v55;
  *(v17 + 104) = v56;
  *(v17 + 136) = v62;
  *(v17 + 137) = v61;
  sub_1DEE29594(v74, v17 + 344);
  sub_1DEE29594(v73, v17 + 384);
  sub_1DEE29594(v72, v17 + 480);
  v39 = v66;
  *(v17 + 248) = v65;
  *(v17 + 256) = v39;
  swift_unknownObjectRetain();

  v41 = v25[3];
  v40 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v41);
  *(v17 + 624) = (*(*(*(v40 + 8) + 8) + 16))(v41) & 1;
  v42 = sub_1DEEA3E78(v67);

  *(v17 + 520) = v42;
  sub_1DEE17214(v70, &v77, &qword_1ECDE3BE8, &unk_1DEF910A0);
  if (v78)
  {
    sub_1DEE2F1AC(&v77, &v79);
  }

  else
  {
    active = type metadata accessor for ActiveWatchIDSIDProvider();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v80 = active;
    v81 = &off_1F5A202E8;
    *&v79 = v44;
  }

  sub_1DEE2F1AC(&v79, v17 + 16);
  v45 = v69;
  sub_1DEE17214(v69, v17 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);
  v46 = v68;
  sub_1DEE17214(v68, v17 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);
  ObjectType = swift_getObjectType();
  v48 = *(v38 + 24);

  v48(v49, &protocol witness table for Replicator, ObjectType, v38);
  swift_unknownObjectRelease();

  sub_1DEE171B4(v46, &qword_1ECDE3BF8, &unk_1DEF910B0);
  sub_1DEE171B4(v70, &qword_1ECDE3BE8, &unk_1DEF910A0);
  sub_1DEE171B4(v45, &qword_1ECDE3BF0, &unk_1DEF938B0);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v17;
}

uint64_t sub_1DEE52BA4()
{
  v1 = v0;
  v2 = sub_1DEF8D698();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D6D8();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + 232);
  v28 = sub_1DEEA3EEC;
  v29 = v0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v26 = sub_1DEE3F0C0;
  v27 = &block_descriptor_29;
  v8 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v22[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v21 + 8))(v4, v2);
  (*(v5 + 8))(v7, v20);

  v9 = *(v0 + 184);
  ObjectType = swift_getObjectType();
  (*(v9 + 32))(ObjectType, v9);
  sub_1DEE29594(v0 + 16, &aBlock);
  active = type metadata accessor for ActiveWatchPairingEnforcer();
  v12 = swift_allocObject();
  v13 = sub_1DEEA28CC(v1, &aBlock, v12);
  v27 = active;
  v28 = &off_1F5A202C0;
  *&aBlock = v13;
  swift_beginAccess();

  sub_1DEE29D60(&aBlock, v1 + 56, &qword_1ECDE3C00, &qword_1DEF910C0);
  swift_endAccess();
  sub_1DEE17214(v1 + 56, &aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  if (!v27)
  {
    return sub_1DEE171B4(&aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  }

  sub_1DEE29594(&aBlock, v22);
  sub_1DEE171B4(&aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  v14 = v23;
  v15 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v15 + 16);

  v17(sub_1DEEA3EF4, v16, v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1DEE52FF4(uint64_t a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v23);
  v7 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v8 = (*(*(*(v6 + 8) + 8) + 32))(v7);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_1DEE53340();
  v9 = *(a1 + 232);
  *v5 = v9;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v5, v2);
  if (v9)
  {
    sub_1DEE538BC();
    sub_1DEE53BFC();
    sub_1DEE54460();
    sub_1DEE54CAC();
    sub_1DEE557F0();
    sub_1DEE55CBC();
    sub_1DEE5615C();
    sub_1DEE5646C();
    sub_1DEE56A48(2);
    sub_1DEE56F88();
    v12 = *(a1 + 184);
    ObjectType = swift_getObjectType();
    v23[0] = *(a1 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
    sub_1DEE1B548(&qword_1ECDE2D18, &qword_1ECDE3BD0, &qword_1DEF91090, MEMORY[0x1E695BF88]);
    v14 = sub_1DEF8D5B8();
    (*(v12 + 64))(v14, ObjectType, v12);
    v15 = *(a1 + 624);
    swift_beginAccess();
    v16 = *(a1 + 368);
    v17 = *(a1 + 376);
    __swift_mutable_project_boxed_opaque_existential_1(a1 + 344, v16);
    (*(v17 + 24))(v15, v16, v17);
    swift_endAccess();
    if (*(a1 + 624))
    {
      sub_1DEE29594(a1 + 192, v23);
      v18 = v24;
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v20 = (*(*(*(v19 + 8) + 8) + 32))(v18);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v23[0] = v8;
      sub_1DEF8D588();
      sub_1DEEDC240(v8, v20);
      LOBYTE(v19) = v21;

      if ((v19 & 1) == 0)
      {
        v23[0] = v20;
        sub_1DEF8D588();
      }
    }

    else
    {

      return sub_1DEE51060();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE53340()
{
  v1 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v53);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - v5;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 232);
  *v10 = v11;
  v12 = *(v7 + 104);
  v48 = *MEMORY[0x1E69E8020];
  v46 = v12;
  v47 = v7 + 104;
  v12(v10, v8);
  v45 = v11;
  v13 = sub_1DEF8D7B8();
  v14 = *(v7 + 8);
  v49 = v10;
  v50 = v7 + 8;
  v51 = v6;
  v44 = v14;
  v14(v10, v6);
  if (v13)
  {
    swift_beginAccess();
    sub_1DEE29594(v1 + 192, v56);
    v13 = v57;
    v6 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    if (qword_1ED786060 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

  while (1)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_3:
    v55 = xmmword_1ED786068;
    MutableMetadataStoring.removeIncompatiblePairingRelationships(protocolVersion:)(&v55, v13, v6);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_1DEE29594(v1 + 192, v56);
    v16 = v57;
    v15 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v13 = (*(*(*(v15 + 8) + 8) + 32))(v16);

    v6 = 0;
    v17 = sub_1DEEA4880(v13, v1, sub_1DEEA412C, sub_1DEEA412C);

    v43 = v1;

    __swift_destroy_boxed_opaque_existential_1(v56);
    v18 = 0;
    v20 = v17 + 64;
    v19 = *(v17 + 8);
    v54 = v17;
    v21 = 1 << v17[32];
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    v42 = v17 + 64;
    if ((v22 & v19) == 0)
    {
      break;
    }

    while (1)
    {
      v25 = v18;
LABEL_10:
      v26 = __clz(__rbit64(v23)) | (v25 << 6);
      v6 = v54;
      v27 = *(v54 + 6);
      v28 = sub_1DEF8D3F8();
      v29 = *(v28 - 8);
      v30 = v52;
      (*(v29 + 16))(v52, v27 + *(v29 + 72) * v26, v28);
      v31 = *(v6 + 56);
      v32 = v31 + *(*(type metadata accessor for PairingRelationship(0) - 8) + 72) * v26;
      v33 = v53;
      v34 = *(v53 + 48);
      sub_1DEEACA70(v32, &v30[v34], type metadata accessor for PairingRelationship);
      v35 = *(v33 + 48);
      (*(v29 + 32))(v3, v30, v28);
      sub_1DEEAB218(&v30[v34], &v3[v35], type metadata accessor for PairingRelationship);
      v36 = v49;
      v37 = v45;
      *v49 = v45;
      v1 = v51;
      v46(v36, v48, v51);
      v38 = v37;
      v13 = sub_1DEF8D7B8();
      v44(v36, v1);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v23 &= v23 - 1;
      v39 = v43;
      sub_1DEE67760(&v3[v35]);
      sub_1DEE29594(v39 + 192, v56);
      v40 = v57;
      v1 = v58;
      v13 = __swift_project_boxed_opaque_existential_1(v56, v57);
      (*(*(v1 + 16) + 120))(&v3[v35], v40);
      sub_1DEE171B4(v3, &unk_1ECDE4350, &qword_1DEF93400);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v18 = v25;
      v20 = v42;
      if (!v23)
      {
        goto LABEL_7;
      }
    }

LABEL_15:
    __break(1u);
  }

  while (1)
  {
LABEL_7:
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v25 >= v24)
    {
    }

    v23 = *&v20[8 * v25];
    ++v18;
    if (v23)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1DEE538BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E50, &qword_1DEF91770);
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - v5;
  v7 = v0[51];
  v8 = v0[52];
  __swift_project_boxed_opaque_existential_1(v0 + 48, v7);
  v16 = (*(v8 + 8))(v7, v8);
  v9 = v0[29];
  v17 = v9;
  v10 = sub_1DEF8DCF8();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E58, &qword_1DEF91778);
  sub_1DEE3C630();
  sub_1DEE1B548(&unk_1ECDE2DA0, &qword_1ECDE3E58, &qword_1DEF91778, MEMORY[0x1E695BED8]);
  sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v3, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&unk_1ECDE2E00, &qword_1ECDE3E50, &qword_1DEF91770, MEMORY[0x1E695BE98]);
  v12 = v15;
  sub_1DEF8D5E8();

  (*(v4 + 8))(v6, v12);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();
}

uint64_t sub_1DEE53BFC()
{
  v1 = v0;
  v2 = sub_1DEF8D378();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v1[29];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  v20 = sub_1DEF8D7B8();
  v21 = (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v72 = v9;
    v22 = v1[77];
    v23 = *(v22 + 24);
    MEMORY[0x1EEE9AC00](v21);
    *(&v66 - 2) = sub_1DEE15450;
    *(&v66 - 1) = v22;

    os_unfair_lock_lock(v23 + 4);
    v17 = 0;
    sub_1DEE15434(v24);
    os_unfair_lock_unlock(v23 + 4);

    if (qword_1ECDE2E58 == -1)
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
  v25 = sub_1DEF8D508();
  __swift_project_value_buffer(v25, qword_1ECDF6028);

  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();

  v28 = os_log_type_enabled(v26, v27);
  v67 = v19;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_1DEE12A5C(v1[66], v1[67], v73);
    _os_log_impl(&dword_1DEE0F000, v26, v27, "(%{public}s) Starting suspension timer", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  v31 = v72;
  sub_1DEF8D348();
  swift_beginAccess();
  sub_1DEE29594((v1 + 24), v73);
  v33 = v74;
  v32 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v34 = (*(*(*(v32 + 8) + 8) + 32))(v33);
  v35 = sub_1DEF8D2C8();
  MEMORY[0x1EEE9AC00](v35);
  *(&v66 - 2) = v1;
  *(&v66 - 1) = v12;
  v69 = v12;
  sub_1DEF34C98(v6, sub_1DEEA9D5C, v34, v31);

  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_1DEF8D2C8();
  LOBYTE(v34) = sub_1DEF8D308();
  v36 = v70;
  v37 = *(v70 + 8);
  v38 = v6;
  v39 = v71;
  v37(v38, v71);
  if (v34)
  {
    v66 = v17;
    v40 = v68;
    (*(v36 + 16))(v68, v31, v39);

    v41 = v39;
    v42 = sub_1DEF8D4D8();
    v43 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v73[0] = v45;
      *v44 = 136446466;
      *(v44 + 4) = sub_1DEE12A5C(v1[66], v1[67], v73);
      *(v44 + 12) = 2080;
      sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v46 = sub_1DEF8E2E8();
      v47 = v40;
      v49 = v48;
      v37(v47, v41);
      v50 = sub_1DEE12A5C(v46, v49, v73);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_1DEE0F000, v42, v43, "(%{public}s) Suspension timer will fire at %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v45, -1, -1);
      MEMORY[0x1E12CCD70](v44, -1, -1);
    }

    else
    {

      v37(v40, v41);
    }

    v39 = v41;
    v55 = v1[77];

    v56 = v72;
    sub_1DEF8D318();
    v58 = v57;
    v59 = swift_allocObject();
    v60 = swift_weakInit();
    v61 = *(v55 + 24);
    MEMORY[0x1EEE9AC00](v60);
    *(&v66 - 6) = v55;
    *(&v66 - 5) = v58;
    *(&v66 - 4) = v67;
    *(&v66 - 3) = sub_1DEEA9D78;
    *(&v66 - 2) = v59;
    MEMORY[0x1EEE9AC00](v62);
    *(&v66 - 2) = sub_1DEE1B768;
    *(&v66 - 1) = v63;

    os_unfair_lock_lock(v61 + 4);
    sub_1DEE3DEF0(v64);
    os_unfair_lock_unlock(v61 + 4);

    v37(v56, v39);
  }

  else
  {

    v51 = sub_1DEF8D4D8();
    v52 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_1DEE12A5C(v1[66], v1[67], v73);
      _os_log_impl(&dword_1DEE0F000, v51, v52, "(%{public}s) No suspension work to perform", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12CCD70](v54, -1, -1);
      MEMORY[0x1E12CCD70](v53, -1, -1);
    }

    v37(v31, v39);
  }

  return (v37)(v69, v39);
}

uint64_t sub_1DEE54460()
{
  v1 = v0;
  v64 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v61 - v4;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v65 = &v61 - v9;
  v10 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v61 - v14;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 232);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  v22 = sub_1DEF8D7B8();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  v62 = v10;
  v68 = v6;
  v69 = v5;
  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v73);
  v23 = v74;
  v24 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v10 = MetadataStoring.orphanedRecordIDs()(v23, *(v24 + 8));
  __swift_destroy_boxed_opaque_existential_1(v73);
  v5 = v10 >> 62;
  if (v10 >> 62)
  {
LABEL_38:
    v25 = sub_1DEF8DE68();
    if (v25)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_4:
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v26 = sub_1DEF8D508();
      __swift_project_value_buffer(v26, qword_1ECDF6028);

      v27 = sub_1DEF8D4D8();
      v28 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349056;
        if (v5)
        {
          v30 = sub_1DEF8DE68();
        }

        else
        {
          v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v30;

        _os_log_impl(&dword_1DEE0F000, v27, v28, "Discarding %{public}ld orphaned records", v29, 0xCu);
        MEMORY[0x1E12CCD70](v29, -1, -1);
      }

      else
      {
      }

      v31 = 0;
      v73[0] = MEMORY[0x1E69E7CD0];
      v5 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          v32 = MEMORY[0x1E12CB6E0](v31, v10);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v31 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v32 = *(v10 + 8 * v31 + 32);

          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:

            v70 = v73[0];
            v34 = v65;
            sub_1DEF8D3E8();
            v35 = sub_1DEF8D398();
            v61 = v36;
            v37 = v68;
            v38 = v34;
            v39 = v69;
            (*(v68 + 1))(v38, v69);
            if (qword_1ED786060 != -1)
            {
              swift_once();
            }

            v40 = xmmword_1ED786068;
            v41 = *(v37 + 7);
            v5 = (v37 + 56);
            v42 = v66;
            v41(v66, 1, 1, v39);
            *(v12 + 72) = 0u;
            *(v12 + 56) = 0u;
            v43 = v39;
            *(v12 + 44) = 256;
            v65 = xmmword_1DEF90FE0;
            *(v12 + 7) = xmmword_1DEF90FE0;
            v44 = *(v62 + 60);
            v41(&v12[v44], 1, 1, v43);
            v45 = v61;
            *v12 = v35;
            *(v12 + 1) = v45;
            strcpy(v12 + 16, "UnknownDevice");
            *(v12 + 15) = -4864;
            *(v12 + 2) = v40;
            v12[48] = 0;
            *(v12 + 56) = 0u;
            *(v12 + 72) = 0u;
            *(v12 + 44) = 256;
            sub_1DEE2416C(*(v12 + 14), *(v12 + 15));
            *(v12 + 7) = v65;
            *(v12 + 8) = 0u;
            *(v12 + 9) = 0u;
            *(v12 + 10) = 0u;
            sub_1DEEA882C(v42, &v12[v44]);
            v46 = MEMORY[0x1E69E7CC8];
            *(v12 + 12) = MEMORY[0x1E69E7CC8];
            sub_1DEE171B4(v42, &unk_1ECDE3E80, &unk_1DEF90970);
            *(v12 + 13) = v46;
            sub_1DEEAB218(v12, v71, type metadata accessor for DeviceDescriptor);
            v47 = 0;
            v48 = v70 + 56;
            v49 = 1 << *(v70 + 32);
            v50 = -1;
            if (v49 < 64)
            {
              v50 = ~(-1 << v49);
            }

            v51 = v50 & *(v70 + 56);
            v10 = (v49 + 63) >> 6;
            v66 = (v5 - 40);
            *&v65 = v5 - 24;
            v53 = v63;
            v52 = v64;
            v12 = v68;
            while (v51)
            {
              v54 = v47;
              v55 = v70;
LABEL_32:
              v56 = __clz(__rbit64(v51));
              v51 &= v51 - 1;
              v57 = *(v55 + 48) + *(v12 + 9) * (v56 | (v54 << 6));
              v5 = v67;
              v58 = v69;
              (*(v12 + 2))(v67, v57, v69);
              (*(v12 + 4))(v53, v5, v58);
              sub_1DEEACA70(v71, v53 + *(v52 + 20), type metadata accessor for DeviceDescriptor);
              sub_1DEF8D348();
              sub_1DEF8D348();
              sub_1DEF8D348();
              v59 = (v53 + *(v52 + 32));
              *v59 = 0;
              v59[1] = 0;
              sub_1DEE67760(v53);
              sub_1DEE273A0(v53, type metadata accessor for PairingRelationship);
            }

            v55 = v70;
            while (1)
            {
              v54 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                break;
              }

              if (v54 >= v10)
              {
                sub_1DEE273A0(v71, type metadata accessor for DeviceDescriptor);
              }

              v51 = *(v48 + 8 * v54);
              ++v47;
              if (v51)
              {
                v47 = v54;
                goto LABEL_32;
              }
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v72 = v32;
        sub_1DEE956D4(v73, &v72, v1);

        ++v31;
        if (v33 == v25)
        {
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t sub_1DEE54CAC()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v83 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v76 - v6;
  v96 = type metadata accessor for PairingRelationship(0);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v90 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = v76 - v10;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0[29];
  *v15 = v16;
  v17 = *(v12 + 104);
  v81 = *MEMORY[0x1E69E8020];
  v82 = v12 + 104;
  v80 = v17;
  v17(v15, v13);
  v79 = v16;
  v18 = sub_1DEF8D7B8();
  v21 = *(v12 + 8);
  v20 = v12 + 8;
  v19 = v21;
  v21(v15, v11);
  if ((v18 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v78 = v19;
  swift_beginAccess();
  sub_1DEE29594((v1 + 24), &v107);
  v23 = v108;
  v22 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, v108);
  v103 = (*(*(*(v22 + 8) + 8) + 32))(v23);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v106 = MEMORY[0x1E69E7CD0];
  sub_1DEE29594((v1 + 24), &v107);
  v25 = v108;
  v24 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, v108);
  v26 = MetadataStoring.expiredRecordIDs()(v25, *(v24 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v19 = (v26 >> 62);
  v102 = v26;
  if (v26 >> 62)
  {
LABEL_64:
    v27 = sub_1DEF8DE68();
    goto LABEL_4;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v91 = v27;
  if (!v27)
  {
  }

  v87 = v7;
  v28 = v4;
  v29 = v2;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v30 = sub_1DEF8D508();
  __swift_project_value_buffer(v30, qword_1ECDF6028);
  v2 = v102;

  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  v33 = os_log_type_enabled(v31, v32);
  v89 = v29;
  v88 = v28;
  v77 = v11;
  v76[1] = v20;
  v76[0] = v15;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v2 = v102;
    if (v19)
    {
      v35 = sub_1DEF8DE68();
    }

    else
    {
      v35 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 4) = v35;

    _os_log_impl(&dword_1DEE0F000, v31, v32, "Deleting %ld expired local records", v34, 0xCu);
    MEMORY[0x1E12CCD70](v34, -1, -1);
  }

  else
  {
  }

  v11 = (v2 & 0xC000000000000001);
  swift_beginAccess();
  v7 = 0;
  v100 = v2 + 32;
  v101 = v2 & 0xFFFFFFFFFFFFFF8;
  v86 = (v83 + 16);
  v19 = (v83 + 8);
  v84 = v103 + 64;
  v92 = v90 + 8;
  v4 = v91;
  v85 = v2 & 0xC000000000000001;
  v93 = v1;
  do
  {
    if (v11)
    {
      v37 = MEMORY[0x1E12CB6E0](v7, v2);
      v38 = __OFADD__(v7++, 1);
      if (v38)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v7 >= *(v101 + 16))
      {
        goto LABEL_62;
      }

      v37 = *(v100 + 8 * v7);

      v38 = __OFADD__(v7++, 1);
      if (v38)
      {
        goto LABEL_61;
      }
    }

    v20 = *(v37 + 32);
    v39 = v1[30];
    if ((v39 & 0xC000000000000001) != 0)
    {
      v15 = v37;

      v40 = sub_1DEF8E0B8();

      if (!v40)
      {

LABEL_16:

        continue;
      }

      v105 = v40;
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v41 = v107;

      v37 = v15;
      if (!v41)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!*(v39 + 16))
      {
        goto LABEL_16;
      }

      v42 = sub_1DEEAF20C(v20);
      if ((v43 & 1) == 0)
      {

        goto LABEL_16;
      }

      v15 = *(*(v39 + 56) + 8 * v42);

      v41 = v15;

      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v104 = v41;
    sub_1DEE29594((v1 + 24), &v107);
    v45 = v108;
    v44 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, v108);
    v46 = (*(*(*(v44 + 8) + 8) + 64))(v37, v45);
    if (v46)
    {
      v15 = v46;
      v98 = v37;
      __swift_destroy_boxed_opaque_existential_1(&v107);
      v47 = *&v15[OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination];
      v99 = v7;
      v97 = v15;
      if (!v47)
      {
        v53 = 1 << *(v103 + 32);
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        else
        {
          v54 = -1;
        }

        v20 = v54 & *(v103 + 64);
        v1 = ((v53 + 63) >> 6);

        v55 = 0;
        v2 = v90;
        while (v20)
        {
LABEL_43:
          v56 = v94;
          sub_1DEEACA70(*(v103 + 56) + *(v95 + 72) * (__clz(__rbit64(v20)) | (v55 << 6)), v94, type metadata accessor for PairingRelationship);
          sub_1DEEAB218(v56, v2, type metadata accessor for PairingRelationship);
          v57 = *&v92[*(v96 + 32)];
          if (v57)
          {
            v58 = v57 == 3;
          }

          else
          {
            v58 = 1;
          }

          if (!v58)
          {
            v11 = v88;
            v60 = v2;
            v61 = v89;
            (*v86)(v88, v60, v89);
            v4 = v87;
            sub_1DEF386D8(v87, v11);
            v62 = v61;
            v2 = v90;
            (*v19)(v4, v62);
          }

          v20 &= v20 - 1;
          sub_1DEE273A0(v2, type metadata accessor for PairingRelationship);
        }

        while (1)
        {
          v59 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v59 >= v1)
          {

            goto LABEL_55;
          }

          v20 = *(v84 + 8 * v59);
          ++v55;
          if (v20)
          {
            v55 = v59;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v48 = *(v47 + 16);
      v49 = v89;
      v15 = v88;
      v50 = v87;
      if (v48)
      {
        v51 = v47 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v20 = *(v83 + 72);
        v52 = *(v83 + 16);
        do
        {
          v52(v15, v51, v49);
          sub_1DEF386D8(v50, v15);
          (*v19)(v50, v49);
          v51 += v20;
          --v48;
        }

        while (v48);
      }

LABEL_55:
      v63 = v104;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v64 = *(v63 + 3);
        ObjectType = swift_getObjectType();
        (*(v64 + 48))(v98, ObjectType, v64);
        swift_unknownObjectRelease();
      }

      v1 = v93;
      v2 = v102;
      v4 = v91;
      v11 = v85;
      v7 = v99;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v107);
      v1 = v93;
      v2 = v102;
    }
  }

  while (v7 != v4);

  sub_1DEE29594((v1 + 24), &v107);
  v66 = v2;
  v68 = v108;
  v67 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, v108);
  (*(*(v67 + 16) + 136))(v66, v68);

  __swift_destroy_boxed_opaque_existential_1(&v107);
  v69 = v76[0];
  v70 = v79;
  *v76[0] = v79;
  v71 = v77;
  v80(v69, v81, v77);
  v72 = v70;
  LOBYTE(v70) = sub_1DEF8D7B8();
  result = v78(v69, v71);
  if (v70)
  {
    v73 = v1[63];
    v74 = v1[64];
    __swift_project_boxed_opaque_existential_1(v1 + 60, v73);
    v75 = *(v74 + 8);

    v75(sub_1DEEABE7C, v1, v73, v74);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE557F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E38, &unk_1DEF91750);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v1[29];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    swift_beginAccess();
    sub_1DEE29594((v1 + 43), v31);
    v18 = v32;
    v19 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v20 = (*(v19 + 8))(v18, v19);
    v29 = v15;
    v30 = v20;
    v21 = sub_1DEF8DCF8();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E40, qword_1DEF93860);
    v27 = v2;
    sub_1DEE3C630();
    sub_1DEE1B548(&qword_1ECDE2D98, &qword_1ECDE3E40, qword_1DEF93860, MEMORY[0x1E695BED8]);
    sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
    sub_1DEF8D5D8();
    sub_1DEE171B4(v5, &qword_1ECDE3A60, &unk_1DEF90810);

    __swift_destroy_boxed_opaque_existential_1(v31);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v27;
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    sub_1DEE1B548(&qword_1ECDE2DF8, &qword_1ECDE3E38, &unk_1DEF91750, MEMORY[0x1E695BE98]);
    sub_1DEF8D5E8();

    (*(v28 + 8))(v8, v6);
    swift_beginAccess();
    sub_1DEF8D568();
    swift_endAccess();

    sub_1DEE29594((v1 + 43), v31);
    v25 = v32;
    v26 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v26 + 48))(v25, v26);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE55CBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E18, &qword_1DEF91740);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 232);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    sub_1DEE17214(v1 + 424, &v25, &qword_1ECDE3BF0, &unk_1DEF938B0);
    if (v26)
    {
      sub_1DEE2F1AC(&v25, v27);
      v18 = v28;
      v19 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v20 = (*(v19 + 8))(v18, v19);
      v24[1] = v15;
      *&v25 = v20;
      v21 = sub_1DEF8DCF8();
      (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
      v24[0] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E20, &qword_1DEF91748);
      sub_1DEE3C630();
      sub_1DEE1B548(&qword_1ECDE3E28, &qword_1ECDE3E20, &qword_1DEF91748, MEMORY[0x1E695BED8]);
      sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
      sub_1DEF8D5D8();
      sub_1DEE171B4(v4, &qword_1ECDE3A60, &unk_1DEF90810);

      swift_allocObject();
      swift_weakInit();
      sub_1DEE1B548(&qword_1ECDE3E30, &qword_1ECDE3E18, &qword_1DEF91740, MEMORY[0x1E695BE98]);
      sub_1DEF8D5E8();

      (*(v6 + 8))(v8, v5);
      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();

      v22 = v28;
      v23 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v23 + 16))(v22, v23);
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      return sub_1DEE171B4(&v25, &qword_1ECDE3BF0, &unk_1DEF938B0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5615C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E08, &qword_1DEF91730);
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - v5;

  v7 = sub_1DEEF0904();

  v15 = v7;
  v8 = *(v0 + 232);
  v16 = v8;
  v9 = sub_1DEF8DCF8();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E10, &qword_1DEF91738);
  sub_1DEE3C630();
  sub_1DEE1B548(&qword_1ECDE2DB8, &qword_1ECDE3E10, &qword_1DEF91738, MEMORY[0x1E695BED8]);
  sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v3, &qword_1ECDE3A60, &unk_1DEF90810);

  sub_1DEE1B548(&qword_1ECDE2E18, &qword_1ECDE3E08, &qword_1DEF91730, MEMORY[0x1E695BE98]);

  v11 = v14;
  sub_1DEF8D5E8();

  (*(v4 + 8))(v6, v11);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();
}

uint64_t sub_1DEE5646C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - v3;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v46 - v13;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 232);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if (qword_1ECDE2E58 == -1)
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
  v21 = sub_1DEF8D508();
  __swift_project_value_buffer(v21, qword_1ECDF6028);
  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Reconciling devices against AuthKit", v24, 2u);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v48);
  v26 = v49;
  v25 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(*(v25 + 16) + 48))(v26);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v27 = *(v6 + 48);
  v28 = v27(v4, 1, v5);
  v29 = v46;
  if (v28 == 1)
  {
    sub_1DEF8D2B8();
    if (v27(v4, 1, v5) != 1)
    {
      sub_1DEE171B4(v4, &qword_1ECDE4DC0, &qword_1DEF91640);
    }
  }

  else
  {
    (*(v6 + 32))(v46, v4, v5);
  }

  sub_1DEF8D2E8();
  sub_1DEF8D348();
  v30 = sub_1DEF8D308();
  v31 = *(v6 + 8);
  v31(v8, v5);
  v31(v11, v5);
  if ((v30 & 1) == 0)
  {
LABEL_13:
    v41 = sub_1DEF8D4D8();
    v42 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "Too soon to reconcile devices against AuthKit";
LABEL_18:
      _os_log_impl(&dword_1DEE0F000, v41, v42, v44, v43, 2u);
      MEMORY[0x1E12CCD70](v43, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  sub_1DEE29594(v1 + 192, v48);
  v33 = v49;
  v32 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v34 = (*(*(*(v32 + 8) + 8) + 32))(v33);
  v35 = v34;
  v36 = *(v34 + 16);
  if (v36)
  {
    v37 = sub_1DEF2B350(*(v34 + 16), 0);
    v38 = *(type metadata accessor for PairingRelationship(0) - 8);
    sub_1DEF2D3FC(&v47, v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v36, v35);
    v40 = v39;
    sub_1DEE2774C(v47);

    if (v40 != v36)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  v41 = sub_1DEF8D4D8();
  v42 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "No eligible devices for reconciliation against AuthKit";
    goto LABEL_18;
  }

LABEL_19:

  return (v31)(v29, v5);
}

void sub_1DEE56A48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 232);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1ECDE2E58 == -1)
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
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6028);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Reconciling devices", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  sub_1DEE17214(v2 + 552, &v40, &qword_1ECDE3BF8, &unk_1DEF910B0);
  if (!v41)
  {
    goto LABEL_10;
  }

  sub_1DEE2F1AC(&v40, v43);
  swift_beginAccess();
  if ((*(v2 + 640) & 1) == 0)
  {
    v27 = a1 & ~*(v2 + 632);
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DCB8();
    v30 = os_log_type_enabled(v28, v29);
    if (v27)
    {
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DEE0F000, v28, v29, "Device reconciliation already in process with insufficient options; updating options and abandoning", v32, 2u);
        MEMORY[0x1E12CCD70](v32, -1, -1);
      }

      v34 = sub_1DEE50B28(&v40);
      if ((*(v33 + 8) & 1) == 0 && (a1 & ~*v33) != 0)
      {
        *v33 |= a1;
      }

      (v34)(&v40, 0);
    }

    else
    {
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DEE0F000, v28, v29, "Device reconciliation already in process; abandoning", v31, 2u);
        MEMORY[0x1E12CCD70](v31, -1, -1);
      }
    }

    goto LABEL_26;
  }

  *(v2 + 632) = a1;
  *(v2 + 640) = 0;
  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v40);
  v16 = v41;
  v15 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, v41);
  v17 = (*(*(*(v15 + 8) + 8) + 32))(v16);
  v18 = v17;
  v19 = *(v17 + 16);
  if (!v19)
  {

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v20 = sub_1DEF2B350(*(v17 + 16), 0);
  v21 = *(type metadata accessor for PairingRelationship(0) - 8);
  sub_1DEF2D3FC(&v39, v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v19, v18);
  v23 = v22;
  sub_1DEE2774C(v39);
  if (v23 == v19)
  {
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v35 = v44;
    v36 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v37 = *(v36 + 8);

    v37(v20, sub_1DEEA8A10, v2, v35, v36);

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(v43);
    return;
  }

  __break(1u);
LABEL_10:
  sub_1DEE171B4(&v40, &qword_1ECDE3BF8, &unk_1DEF910B0);
  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DEE0F000, v24, v25, "Cannot perform device reconciliation without a reconciler", v26, 2u);
    MEMORY[0x1E12CCD70](v26, -1, -1);
  }
}

uint64_t sub_1DEE56F88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v113 = v95 - v3;
  v4 = sub_1DEF8D378();
  v104 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v97 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v95 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v108 = v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v107 = v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v111 = v95 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v103 = v95 - v16;
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1[29];
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  v24 = (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v96 = v23;
  v25 = v1[76];
  v26 = *(v25 + 24);
  MEMORY[0x1EEE9AC00](v24);
  v95[-2] = sub_1DEEACF98;
  v95[-1] = v25;

  os_unfair_lock_lock(v26 + 4);
  sub_1DEE3DEF0(v27);
  v95[1] = 0;
  os_unfair_lock_unlock(v26 + 4);

  if (qword_1ECDE2E58 != -1)
  {
LABEL_41:
    swift_once();
  }

  v28 = sub_1DEF8D508();
  v29 = __swift_project_value_buffer(v28, qword_1ECDF6028);

  v98 = v29;
  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v118[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1DEE12A5C(v1[66], v1[67], v118);
    _os_log_impl(&dword_1DEE0F000, v30, v31, "(%{public}s) Starting expiration timer", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12CCD70](v33, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  v102 = v8;
  swift_beginAccess();
  v99 = v1;
  sub_1DEE29594((v1 + 24), v118);
  v35 = v119;
  v34 = v120;
  __swift_project_boxed_opaque_existential_1(v118, v119);
  v36 = (*(*(*(v34 + 8) + 8) + 24))(v35);
  sub_1DEF8D2C8();
  v114 = v4;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = 0;
    v38 = 0;
    v4 = 0;
    v8 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(v36 + 32);
    v38 = ~v39;
    v37 = v36 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v4 = v41 & *(v36 + 64);
    v8 = v36;
  }

  v42 = v113;
  v101 = v36;

  v43 = 0;
  v100 = v38;
  v44 = (v38 + 64) >> 6;
  v112 = (v104 + 48);
  v109 = (v104 + 32);
  v110 = (v104 + 8);
  v106 = v37;
  v105 = v44;
  while (1)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      v50 = sub_1DEF8E0D8();
      if (!v50)
      {
        break;
      }

      v52 = v51;
      v116 = v50;
      type metadata accessor for Record.ID(0);
      swift_dynamicCast();
      v49 = v117;
      v116 = v52;
      type metadata accessor for RecordMetadata(0);
      swift_dynamicCast();
      v1 = v117;
      v47 = v43;
      v115 = v4;
      v42 = v113;
    }

    else
    {
      v45 = v43;
      v46 = v4;
      v47 = v43;
      if (!v4)
      {
        while (1)
        {
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v47 >= v44)
          {
            goto LABEL_31;
          }

          v46 = *(v37 + 8 * v47);
          ++v45;
          if (v46)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_19:
      v115 = (v46 - 1) & v46;
      v48 = (v47 << 9) | (8 * __clz(__rbit64(v46)));
      v49 = *(*(v8 + 48) + v48);
      v1 = *(*(v8 + 56) + v48);
    }

    if (!v49)
    {
      break;
    }

    sub_1DEE17214(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v42, &qword_1ECDE4DC0, &qword_1DEF91640);
    v53 = v114;
    if ((*v112)(v42, 1, v114) == 1)
    {

      sub_1DEE171B4(v42, &qword_1ECDE4DC0, &qword_1DEF91640);
    }

    else
    {
      v54 = *v109;
      v55 = v107;
      (*v109)(v107, v42, v53);
      sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v56 = v8;
      v57 = v111;
      v58 = sub_1DEF8D8E8();

      if (v58)
      {
        v59 = v55;
      }

      else
      {
        v59 = v57;
      }

      if (v58)
      {
        v60 = v57;
      }

      else
      {
        v60 = v55;
      }

      (*v110)(v59, v53);
      v61 = v108;
      v62 = v60;
      v42 = v113;
      v54(v108, v62, v53);
      v63 = v57;
      v8 = v56;
      v37 = v106;
      v54(v63, v61, v53);
      v44 = v105;
    }

    v43 = v47;
    v4 = v115;
  }

LABEL_31:
  sub_1DEE2774C(v8);
  v64 = v103;
  v65 = v114;
  (*v109)(v103, v111, v114);

  __swift_destroy_boxed_opaque_existential_1(v118);
  v66 = v102;
  sub_1DEF8D2C8();
  v67 = sub_1DEF8D308();
  v68 = *v110;
  (*v110)(v66, v65);
  if (v67)
  {
    v69 = v97;
    (*(v104 + 16))(v97, v64, v65);
    v70 = v99;

    v71 = sub_1DEF8D4D8();
    v72 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v118[0] = v74;
      *v73 = 136446466;
      *(v73 + 4) = sub_1DEE12A5C(v70[66], v70[67], v118);
      *(v73 + 12) = 2080;
      sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v75 = sub_1DEF8E2E8();
      v76 = v69;
      v78 = v77;
      v68(v76, v65);
      v79 = sub_1DEE12A5C(v75, v78, v118);

      *(v73 + 14) = v79;
      _os_log_impl(&dword_1DEE0F000, v71, v72, "(%{public}s) Expiration timer will fire at %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v74, -1, -1);
      MEMORY[0x1E12CCD70](v73, -1, -1);
    }

    else
    {

      v68(v69, v65);
    }

    v86 = v70[76];

    sub_1DEF8D318();
    v88 = v87;
    v89 = swift_allocObject();
    v90 = swift_weakInit();
    v91 = *(v86 + 24);
    MEMORY[0x1EEE9AC00](v90);
    v95[-6] = v86;
    v95[-5] = v88;
    v95[-4] = v96;
    v95[-3] = sub_1DEEABE74;
    v95[-2] = v89;
    MEMORY[0x1EEE9AC00](v92);
    v95[-2] = sub_1DEEACFB0;
    v95[-1] = v93;

    os_unfair_lock_lock(v91 + 4);
    sub_1DEE3DEF0(v94);
    os_unfair_lock_unlock(v91 + 4);

    v68(v64, v65);
  }

  else
  {
    v80 = v99;

    v81 = sub_1DEF8D4D8();
    v82 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v118[0] = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_1DEE12A5C(v80[66], v80[67], v118);
      _os_log_impl(&dword_1DEE0F000, v81, v82, "(%{public}s) No records to expire", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1E12CCD70](v84, -1, -1);
      MEMORY[0x1E12CCD70](v83, -1, -1);
    }

    return (v68)(v64, v65);
  }
}

uint64_t sub_1DEE57BEC(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v50 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v50 - v5;
  v6 = type metadata accessor for PairingRelationship(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v11 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v11;
  }

  v12 = Strong;
  swift_beginAccess();
  sub_1DEE29594(v12 + 192, v65);
  v14 = v66;
  v13 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v15 = (*(*(*(v13 + 8) + 8) + 32))(v14);
  v16 = sub_1DEE9EBC8(v15, sub_1DEE9F55C, sub_1DEE9F55C);

  __swift_destroy_boxed_opaque_existential_1(v65);
  v17 = *(v16 + 2);
  if (!v17)
  {
LABEL_21:

    return v11;
  }

  v50 = v12;
  v65[0] = v11;
  sub_1DEEC7DA4(0, v17, 0);
  v11 = v65[0];
  v18 = v16 + 64;
  result = sub_1DEF8DE18();
  v20 = result;
  v21 = 0;
  v51 = v16 + 72;
  v56 = v9;
  v52 = v17;
  v53 = v16 + 64;
  v55 = v16;
  v54 = v7;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << v16[32])
  {
    v25 = v20 >> 6;
    if ((*&v18[8 * (v20 >> 6)] & (1 << v20)) == 0)
    {
      goto LABEL_24;
    }

    v26 = *(v16 + 9);
    v61 = v21;
    v62 = v26;
    v27 = v60;
    v64 = v11;
    v28 = *(v60 + 48);
    v29 = *(v16 + 6);
    v30 = sub_1DEF8D3F8();
    v31 = *(v30 - 8);
    v32 = v31;
    v33 = v29 + *(v31 + 72) * v20;
    v34 = v57;
    (*(v31 + 16))(v57, v33, v30);
    v35 = *(v16 + 7);
    v63 = *(v7 + 72);
    sub_1DEEACA70(v35 + v63 * v20, &v34[v28], type metadata accessor for PairingRelationship);
    v36 = v58;
    (*(v32 + 32))(v58, v34, v30);
    v37 = &v34[v28];
    v38 = v56;
    sub_1DEEAB218(v37, v36 + *(v27 + 48), type metadata accessor for PairingRelationship);
    v39 = v59;
    sub_1DEE1BA88(v36, v59, &unk_1ECDE4350, &qword_1DEF93400);
    sub_1DEEAB218(v39 + *(v27 + 48), v38, type metadata accessor for PairingRelationship);
    v40 = v39;
    v11 = v64;
    (*(v32 + 8))(v40, v30);
    v65[0] = v11;
    v42 = *(v11 + 16);
    v41 = *(v11 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1DEEC7DA4((v41 > 1), v42 + 1, 1);
      v11 = v65[0];
    }

    *(v11 + 16) = v42 + 1;
    v7 = v54;
    result = sub_1DEEAB218(v38, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v42 * v63, type metadata accessor for PairingRelationship);
    v16 = v55;
    v22 = 1 << v55[32];
    if (v20 >= v22)
    {
      goto LABEL_25;
    }

    v18 = v53;
    v43 = *&v53[8 * v25];
    if ((v43 & (1 << v20)) == 0)
    {
      goto LABEL_26;
    }

    if (v62 != *(v55 + 9))
    {
      goto LABEL_27;
    }

    v44 = v43 & (-2 << (v20 & 0x3F));
    if (v44)
    {
      v22 = __clz(__rbit64(v44)) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v52;
      v24 = v61;
    }

    else
    {
      v45 = v25 << 6;
      v46 = v25 + 1;
      v47 = &v51[8 * v25];
      v23 = v52;
      while (v46 < (v22 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          result = sub_1DEE2F804(v20, v62, 0);
          v22 = __clz(__rbit64(v48)) + v45;
          goto LABEL_20;
        }
      }

      result = sub_1DEE2F804(v20, v62, 0);
LABEL_20:
      v24 = v61;
    }

    v21 = v24 + 1;
    v20 = v22;
    if (v21 == v23)
    {
      goto LABEL_21;
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
  return result;
}

uint64_t sub_1DEE581C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7DE8(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = sub_1DEF8DE18();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 56) + 48 * v6);
    v12 = v11[1];
    v32 = v11[2];
    v33 = *v11;
    v13 = v3;
    v14 = v11[3];
    v30 = v11[5];
    v31 = v11[4];
    v15 = *(v34 + 16);
    v16 = *(v34 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_1DEEC7DE8((v16 > 1), v15 + 1, 1);
    }

    *(v34 + 16) = v15 + 1;
    v17 = (v34 + 48 * v15);
    v17[4] = v33;
    v17[5] = v12;
    v17[6] = v32;
    v17[7] = v14;
    v17[8] = v31;
    v17[9] = v30;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DEE2F804(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DEE5844C(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, void, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v28 = result;
    v29 = v8;
    v30 = 1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  result = sub_1DEF8DE18();
  v9 = *(a1 + 36);
  v28 = result;
  v29 = v9;
  v30 = 0;
LABEL_7:
  v10 = 0;
  v24 = v6;
  while (v10 < v6)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_20;
    }

    v17 = v28;
    v18 = v29;
    v19 = v30;
    a2(v27, v28, v29, v30, a1);

    sub_1DEF8DFB8();
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v25)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v6 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v20 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v20(v27, 0);
    }

    else
    {
      v11 = a3(v17, v18, v19, a1);
      v13 = v12;
      v15 = v14;
      result = sub_1DEE2F804(v17, v18, v19);
      v28 = v11;
      v29 = v13;
      v30 = v15 & 1;
      v6 = v24;
    }

    ++v10;
    if (v16 == v6)
    {
      sub_1DEE2F804(v28, v29, v30);
      return v31;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEE586BC(uint64_t a1)
{
  v35 = sub_1DEF8D3F8();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1DEF8DE18();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1DEF8D398();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1DEEC7E08((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1DEE2F804(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1DEE2F804(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

  return result;
}

uint64_t sub_1DEE589C4(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v24 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v21 = result;
    v22 = v4;
    v23 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  result = sub_1DEF8DE18();
  v5 = *(v1 + 36);
  v21 = result;
  v22 = v5;
  v23 = 0;
LABEL_7:
  v6 = 0;
  v18 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v21;
    v14 = v22;
    v15 = v23;
    sub_1DEF4163C(v20, v21, v22, v23, v1);

    v16 = v1;
    sub_1DEF8DFB8();
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v19)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E48, &qword_1DEF91768);
      v17 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v17(v20, 0);
    }

    else
    {
      v7 = sub_1DEF41EBC(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = sub_1DEE2F804(v13, v14, v15);
      v21 = v7;
      v22 = v9;
      v23 = v11 & 1;
      v1 = v16;
      v2 = v18;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_1DEE2F804(v21, v22, v23);
      return v24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEE58C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E08(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1DEF8DE18();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 56) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1DEEC7E08((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DEE2F804(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DEE58E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E08(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1DEF8DE18();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1DEEC7E08((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DEE2F804(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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

uint64_t sub_1DEE59098()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship(0);
  v248 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v234 = &v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v250 = &v210 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v252 = &v210 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v247 = &v210 - v9;
  v256 = sub_1DEF8D3F8();
  v249 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v246 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v210 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v227 = (&v210 - v18);
  v244 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v244);
  v233 = (&v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v228 = &v210 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v237 = &v210 - v23;
  v24 = sub_1DEF8D788();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + 232);
  *v28 = v29;
  v30 = *(v25 + 104);
  v240 = *MEMORY[0x1E69E8020];
  v239 = v25 + 104;
  v235 = v30;
  v30(v28, v26);
  v31 = v29;
  LOBYTE(v29) = sub_1DEF8D7B8();
  v32 = *(v25 + 8);
  v236 = v28;
  v241 = v25 + 8;
  v238 = v32;
  result = (v32)(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + 472))
  {
    return result;
  }

  v226 = v24;
  v251 = v16;
  v34 = *(v1 + 184);
  ObjectType = swift_getObjectType();
  v36 = (*(v34 + 16))(ObjectType, v34);
  if (!v37)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_10:
      v44 = sub_1DEF8D508();
      __swift_project_value_buffer(v44, qword_1ECDF6028);
      v45 = sub_1DEF8D4D8();
      v46 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1DEE0F000, v45, v46, "Delaying migration until we have a valid local device ID", v47, 2u);
        MEMORY[0x1E12CCD70](v47, -1, -1);
      }

      sub_1DEEA8774();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_60:
    swift_once();
    goto LABEL_10;
  }

  v38 = v37;
  v222 = v36;
  *(v1 + 472) = 1;
  swift_beginAccess();
  sub_1DEE29594(v1 + 192, &v253);
  v39 = v254;
  v40 = v255;
  __swift_project_boxed_opaque_existential_1(&v253, v254);
  v41 = (*(*(*(v40 + 8) + 8) + 8))(v39);
  v232 = v42;
  if (!v42)
  {
    __swift_destroy_boxed_opaque_existential_1(&v253);
    swift_beginAccess();
    v48 = *(v1 + 216);
    v49 = *(v1 + 224);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 192, v48);
    (*(*(v49 + 16) + 16))(v222, v38, v48);
    return swift_endAccess();
  }

  v43 = v41;
  __swift_destroy_boxed_opaque_existential_1(&v253);
  if (v43 == v222 && v232 == v38 || (sub_1DEF8E4E8() & 1) != 0)
  {
  }

  v50 = sub_1DEEAEE94(0);
  v223 = v43;
  if (v51)
  {
    v224 = v51;
    v242 = v50;
  }

  else
  {
    v52 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v53 = [v52 hostName];
    v242 = sub_1DEF8D948();
    v224 = v54;
  }

  v231 = v1;
  v55 = v236;
  v56 = v240;
  v57 = v235;
  if (qword_1ED786060 != -1)
  {
    v113 = v235;
    swift_once();
    v57 = v113;
  }

  v216 = *(&xmmword_1ED786068 + 1);
  v217 = xmmword_1ED786068;
  v58 = v231;
  v215 = *(v231 + 96);
  v219 = *(v231 + 120);
  v220 = *(v231 + 104);
  v214 = *(v231 + 136);
  v213 = *(v231 + 137);
  *v55 = v31;
  v59 = v56;
  v60 = v226;
  v61 = v57;
  v57(v55, v59, v226);
  v62 = v31;
  v63 = sub_1DEF8D7B8();
  v238(v55, v60);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v218 = v38;
  v230 = v13;
  v229 = v2;
  swift_beginAccess();

  v65 = v245;
  sub_1DEEA59EC(v64, v58);
  v243 = v66;

  v221 = v62;
  *v55 = v62;
  v2 = v226;
  v61(v55, v240, v226);
  v67 = sub_1DEF8D7B8();
  v238(v55, v2);
  if ((v67 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  swift_beginAccess();

  v69 = sub_1DEEA4880(v68, v58, sub_1DEEA5DF0, sub_1DEEA5DF0);

  v225 = sub_1DEE581C8(v69);

  v70 = *(v58 + 648);
  v71 = *(v58 + 656);
  sub_1DEEA8818(v70, v71);
  v72 = 1;
  v212 = sub_1DEEAEE94(1u);
  v211 = v73;
  v210 = sub_1DEEAEE94(2u);
  v75 = v74;
  v76 = sub_1DEEAEFF8(3u);
  if (v77 == 1)
  {
    v245 = v65;
  }

  else
  {
    v78 = v76;
    v79 = v77;
    sub_1DEEAD7B4(v76, v77, v227);
    if (v65)
    {

      v245 = 0;
    }

    else
    {
      v245 = 0;
      v72 = 0;
    }

    sub_1DEEA889C(v78, v79);
  }

  v80 = *(v249 + 56);
  v81 = v227;
  v82 = v72;
  v83 = v256;
  v80(v227, v82, 1, v256);
  v84 = v228;
  *(v228 + 72) = 0u;
  *(v84 + 56) = 0u;
  *(v84 + 44) = 256;
  *(v84 + 7) = xmmword_1DEF90FE0;
  v85 = *(v244 + 60);
  v80(&v84[v85], 1, 1, v83);
  v86 = v218;
  *v84 = v222;
  *(v84 + 1) = v86;
  v87 = v224;
  *(v84 + 2) = v242;
  *(v84 + 3) = v87;
  v88 = v216;
  *(v84 + 4) = v217;
  *(v84 + 5) = v88;
  v84[48] = v215;
  *(v84 + 72) = v219;
  *(v84 + 56) = v220;
  v84[88] = v214;
  v84[89] = v213;
  v90 = *(v84 + 14);
  v89 = *(v84 + 15);

  sub_1DEE2416C(v90, v89);
  *(v84 + 14) = v70;
  *(v84 + 15) = v71;
  v91 = v211;
  *(v84 + 16) = v212;
  *(v84 + 17) = v91;
  *(v84 + 18) = v210;
  *(v84 + 19) = v75;
  *(v84 + 20) = 0;
  *(v84 + 21) = 0;
  sub_1DEEA882C(v81, &v84[v85]);
  v2 = v243;
  if (!(v243 >> 62))
  {
    v92 = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
LABEL_29:
      v93 = 0;
      v244 = v2 & 0xC000000000000001;
      v94 = v2 & 0xFFFFFFFFFFFFFF8;
      v95 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v244)
        {
          v96 = MEMORY[0x1E12CB6E0](v93, v2);
          v97 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v93 >= *(v94 + 16))
          {
            goto LABEL_56;
          }

          v96 = *(v2 + 8 * v93 + 32);

          v97 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_55;
          }
        }

        v98 = *(v96 + 16);
        if ((v95 & 0xC000000000000001) != 0)
        {
          if (v95 < 0)
          {
            v99 = v95;
          }

          else
          {
            v99 = v95 & 0xFFFFFFFFFFFFFF8;
          }

          v100 = sub_1DEF8DE68();
          if (__OFADD__(v100, 1))
          {
            goto LABEL_58;
          }

          v95 = sub_1DEEB0790(v99, v100 + 1);
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v253 = v95;
        v102 = sub_1DEEAF20C(v98);
        v104 = *(v95 + 16);
        v105 = (v103 & 1) == 0;
        v106 = __OFADD__(v104, v105);
        v107 = v104 + v105;
        if (v106)
        {
          goto LABEL_57;
        }

        v108 = v103;
        if (*(v95 + 24) >= v107)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v112 = v102;
            sub_1DEEB753C();
            v102 = v112;
          }
        }

        else
        {
          sub_1DEEB0D00(v107, isUniquelyReferenced_nonNull_native);
          v102 = sub_1DEEAF20C(v98);
          if ((v108 & 1) != (v109 & 1))
          {
            goto LABEL_115;
          }
        }

        v2 = v243;
        v95 = v253;
        if (v108)
        {
          *(v253[7] + 8 * v102) = v96;
        }

        else
        {
          v253[(v102 >> 6) + 8] |= 1 << v102;
          *(*(v95 + 48) + 8 * v102) = v98;
          *(*(v95 + 56) + 8 * v102) = v96;

          v110 = *(v95 + 16);
          v106 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v106)
          {
            goto LABEL_59;
          }

          *(v95 + 16) = v111;
        }

        ++v93;
        if (v97 == v92)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_63:
  v92 = sub_1DEF8DE68();
  if (v92)
  {
    goto LABEL_29;
  }

LABEL_64:
  v95 = MEMORY[0x1E69E7CC8];
LABEL_65:

  *(v228 + 12) = v95;
  v114 = v225;
  v224 = *(v225 + 16);
  if (v224)
  {
    v115 = 0;
    v116 = (v225 + 72);
    v117 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v115 >= *(v114 + 16))
      {
        goto LABEL_111;
      }

      v242 = v115;
      v122 = *(v116 - 5);
      v121 = *(v116 - 4);
      v124 = *(v116 - 3);
      v123 = *(v116 - 2);
      v125 = *v116;
      v243 = *(v116 - 1);
      v244 = v125;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v253 = v117;
      v128 = sub_1DEEAF16C(v122, v121, v124, v123);
      v129 = v117[2];
      v130 = (v127 & 1) == 0;
      v131 = v129 + v130;
      if (__OFADD__(v129, v130))
      {
        goto LABEL_112;
      }

      v132 = v127;
      if (v117[3] >= v131)
      {
        if (v126)
        {
          v117 = v253;
          if (v127)
          {
            goto LABEL_67;
          }
        }

        else
        {
          sub_1DEEB7550();
          v117 = v253;
          if (v132)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        sub_1DEEB0D14(v131, v126);
        v133 = sub_1DEEAF16C(v122, v121, v124, v123);
        if ((v132 & 1) != (v134 & 1))
        {
          goto LABEL_116;
        }

        v128 = v133;
        v117 = v253;
        if (v132)
        {
LABEL_67:
          v118 = (v117[7] + 48 * v128);
          *v118 = v122;
          v118[1] = v121;
          v118[2] = v124;
          v118[3] = v123;
          v119 = v244;
          v118[4] = v243;
          v118[5] = v119;

          goto LABEL_68;
        }
      }

      v117[(v128 >> 6) + 8] |= 1 << v128;
      v135 = (v117[6] + 32 * v128);
      *v135 = v122;
      v135[1] = v121;
      v135[2] = v124;
      v135[3] = v123;
      v136 = (v117[7] + 48 * v128);
      *v136 = v122;
      v136[1] = v121;
      v136[2] = v124;
      v136[3] = v123;
      v137 = v244;
      v136[4] = v243;
      v136[5] = v137;
      v138 = v117[2];
      v106 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v106)
      {
        goto LABEL_114;
      }

      v117[2] = v139;
LABEL_68:
      v115 = v242 + 1;
      v116 += 6;
      v120 = v252;
      v114 = v225;
      if (v224 == v242 + 1)
      {
        goto LABEL_82;
      }
    }
  }

  v117 = MEMORY[0x1E69E7CC8];
  v120 = v252;
LABEL_82:
  sub_1DEE171B4(v227, &unk_1ECDE3E80, &unk_1DEF90970);

  v140 = v228;
  *(v228 + 13) = v117;
  sub_1DEEAB218(v140, v237, type metadata accessor for DeviceDescriptor);
  sub_1DEE29594(v231 + 192, &v253);
  v141 = v254;
  v142 = v255;
  __swift_project_boxed_opaque_existential_1(&v253, v254);
  v143 = (*(*(*(v142 + 8) + 8) + 32))(v141);
  __swift_destroy_boxed_opaque_existential_1(&v253);
  v145 = 0;
  v147 = v143 + 64;
  v146 = *(v143 + 64);
  v225 = v143;
  v148 = 1 << *(v143 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v149 & v146;
  v243 = v120 + 8;
  v151 = (v148 + 63) >> 6;
  v244 = v249 + 16;
  v224 = v249 + 32;
  v227 = (v249 + 8);
  *&v144 = 136315650;
  v219 = v144;
  v152 = v251;
  v242 = v143 + 64;
  v228 = v151;
  while (v150)
  {
    v157 = v145;
LABEL_98:
    v160 = __clz(__rbit64(v150));
    v150 &= v150 - 1;
    v161 = v160 | (v157 << 6);
    v162 = v225;
    v163 = v249;
    v164 = v246;
    v165 = v256;
    (*(v249 + 16))(v246, *(v225 + 48) + *(v249 + 72) * v161, v256);
    v166 = v247;
    sub_1DEEACA70(*(v162 + 56) + *(v248 + 72) * v161, v247, type metadata accessor for PairingRelationship);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v168 = *(v167 + 48);
    v169 = *(v163 + 32);
    v170 = v230;
    v169(v230, v164, v165);
    sub_1DEEAB218(v166, v170 + v168, type metadata accessor for PairingRelationship);
    (*(*(v167 - 8) + 56))(v170, 0, 1, v167);
    v152 = v251;
LABEL_99:
    sub_1DEE1BA88(v170, v152, &qword_1ECDE3C98, &unk_1DEF95610);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v171 - 8) + 48))(v152, 1, v171) == 1)
    {

      v207 = v231;
      swift_beginAccess();
      v208 = *(v207 + 216);
      v209 = *(v207 + 224);
      __swift_mutable_project_boxed_opaque_existential_1(v207 + 192, v208);
      (*(*(v209 + 16) + 16))(v222, v218, v208);
      swift_endAccess();
      return sub_1DEE273A0(v237, type metadata accessor for DeviceDescriptor);
    }

    v172 = v252;
    sub_1DEEAB218(v152 + *(v171 + 48), v252, type metadata accessor for PairingRelationship);
    v173 = v229;
    if (*(v243 + v229[8]) == 2)
    {
      v174 = v250;
      (*v244)(v250, v172, v256);
      sub_1DEEACA70(v172 + v173[5], &v174[v173[5]], type metadata accessor for DeviceDescriptor);
      v175 = v173[6];
      v176 = sub_1DEF8D378();
      v177 = *(*(v176 - 8) + 16);
      v178 = v172;
      v177(&v174[v175], v172 + v175, v176);
      v177(&v174[v173[7]], v172 + v173[7], v176);
      v177(&v174[v173[9]], v172 + v173[9], v176);
      v179 = &v174[v173[8]];
      v180 = v232;
      *v179 = v223;
      *(v179 + 1) = v180;
      v181 = qword_1ECDE2E58;

      if (v181 != -1)
      {
        swift_once();
      }

      v182 = sub_1DEF8D508();
      __swift_project_value_buffer(v182, qword_1ECDF6028);
      v183 = v234;
      sub_1DEEACA70(v178, v234, type metadata accessor for PairingRelationship);
      v184 = v233;
      sub_1DEEACA70(v237, v233, type metadata accessor for DeviceDescriptor);

      v185 = sub_1DEF8D4D8();
      v186 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *&v220 = swift_slowAlloc();
        v253 = v220;
        *v187 = v219;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v188 = sub_1DEF8E2E8();
        v189 = v183;
        v190 = v188;
        v192 = v191;
        sub_1DEE273A0(v189, type metadata accessor for PairingRelationship);
        v193 = sub_1DEE12A5C(v190, v192, &v253);

        *(v187 + 4) = v193;
        *(v187 + 12) = 2080;
        v194 = *v184;
        v195 = v184[1];

        sub_1DEE273A0(v184, type metadata accessor for DeviceDescriptor);
        v196 = sub_1DEE12A5C(v194, v195, &v253);

        *(v187 + 14) = v196;
        *(v187 + 22) = 2080;
        *(v187 + 24) = sub_1DEE12A5C(v223, v232, &v253);
        _os_log_impl(&dword_1DEE0F000, v185, v186, "Initiating migration for relationship %s. Current local ID: %s; stored local ID: %s", v187, 0x20u);
        v197 = v220;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v197, -1, -1);
        v198 = v187;
        v153 = v252;
        MEMORY[0x1E12CCD70](v198, -1, -1);
      }

      else
      {
        v153 = v178;

        sub_1DEE273A0(v184, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v183, type metadata accessor for PairingRelationship);
      }

      v147 = v242;
      sub_1DEE29594(v231 + 192, &v253);
      v154 = v254;
      v155 = v255;
      __swift_project_boxed_opaque_existential_1(&v253, v254);
      v156 = v250;
      (*(*(v155 + 16) + 112))(v250, v154);
      sub_1DEE273A0(v156, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v153, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&v253);
    }

    else
    {
      v199 = v236;
      v200 = v221;
      *v236 = v221;
      v201 = v226;
      v235(v199, v240, v226);
      v202 = v200;
      LOBYTE(v200) = sub_1DEF8D7B8();
      v238(v199, v201);
      if ((v200 & 1) == 0)
      {
        goto LABEL_113;
      }

      v203 = v231;
      sub_1DEE67760(v172);
      sub_1DEE29594(v203 + 192, &v253);
      v204 = v254;
      v205 = v255;
      __swift_project_boxed_opaque_existential_1(&v253, v254);
      (*(*(v205 + 16) + 120))(v172, v204);
      __swift_destroy_boxed_opaque_existential_1(&v253);
      sub_1DEE273A0(v172, type metadata accessor for PairingRelationship);
      v147 = v242;
    }

    v152 = v251;
    (*v227)(v251, v256);
    v151 = v228;
  }

  if (v151 <= v145 + 1)
  {
    v158 = v145 + 1;
  }

  else
  {
    v158 = v151;
  }

  v159 = v158 - 1;
  while (1)
  {
    v157 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      break;
    }

    if (v157 >= v151)
    {
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      v170 = v230;
      (*(*(v206 - 8) + 56))(v230, 1, 1, v206);
      v150 = 0;
      v145 = v159;
      goto LABEL_99;
    }

    v150 = *(v147 + 8 * v157);
    ++v145;
    if (v150)
    {
      v145 = v157;
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_116:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t Replicator._queue_removePairingRelationship(relationship:)(uint64_t a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 232);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_1DEE67760(a1);
    swift_beginAccess();
    sub_1DEE29594(v1 + 192, v14);
    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(*(v12 + 16) + 120))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DEE171B4(v0 + 56, &qword_1ECDE3C00, &qword_1DEF910C0);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 384));
  sub_1DEE171B4(v0 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));

  sub_1DEE171B4(v0 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);

  sub_1DEE2416C(*(v0 + 648), *(v0 + 656));

  return v0;
}

uint64_t Replicator.__deallocating_deinit()
{
  Replicator.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Replicator.set(messageTypes:)(Swift::OpaquePointer messageTypes)
{
  v3 = v1[29];
  v4 = swift_allocObject();
  v4[2]._rawValue = v1;
  v4[3]._rawValue = messageTypes._rawValue;

  sub_1DEE2C448(0xD000000000000014, 0x80000001DEF9BC80, v3, sub_1DEEA3EFC, v4, 0.0);
}

uint64_t sub_1DEE5ADD0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 664);
  swift_beginAccess();
  *(a3 + 664) = MEMORY[0x1E69E7CC8];

  v8 = *(a4 + 16);
  if (!v8)
  {
    return a1(v7);
  }

  v9 = (a4 + 72);
  v36 = v6;
  while (1)
  {
    v37 = v8;
    v14 = *(v9 - 5);
    v13 = *(v9 - 4);
    v16 = *(v9 - 3);
    v15 = *(v9 - 2);
    v17 = *(v9 - 1);
    v18 = *v9;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    v38 = *v6;
    *v6 = 0x8000000000000000;
    v21 = sub_1DEEAF16C(v14, v13, v16, v15);
    v23 = *(v20 + 16);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (*(v20 + 24) < v26)
    {
      sub_1DEEB0D14(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1DEEAF16C(v14, v13, v16, v15);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v33 = v21;
    sub_1DEEB7550();
    v21 = v33;
    if (v27)
    {
LABEL_3:
      v10 = v21;

      v11 = v38;
      v12 = (v38[7] + 48 * v10);
      *v12 = v14;
      v12[1] = v13;
      v12[2] = v16;
      v12[3] = v15;
      v12[4] = v17;
      v12[5] = v18;

      goto LABEL_4;
    }

LABEL_11:
    v11 = v38;
    v38[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v38[6] + 32 * v21);
    *v29 = v14;
    v29[1] = v13;
    v29[2] = v16;
    v29[3] = v15;
    v30 = (v38[7] + 48 * v21);
    *v30 = v14;
    v30[1] = v13;
    v30[2] = v16;
    v30[3] = v15;
    v30[4] = v17;
    v30[5] = v18;
    v31 = v38[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    v38[2] = v32;
LABEL_4:
    v9 += 6;
    *v36 = v11;
    v6 = v36;
    v7 = swift_endAccess();
    v8 = v37 - 1;
    if (v37 == 1)
    {
      return a1(v7);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEE5B034(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v3 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;

  sub_1DEE2C448(0xD000000000000014, 0x80000001DEF9BC80, v4, sub_1DEEACD84, v5, 0.0);
}

uint64_t sub_1DEE5B148(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE24;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_291;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.isAllowListEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEA60B0;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_45;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5B400@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v7);
  v5 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *a2 = (*(*(*(v4 + 8) + 8) + 40))(v5) & 1;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DEE5B4A0(char a1, uint64_t a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6028);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Allow List state changed to enabled: %{BOOL,public}d", v7, 8u);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(a2 + 216);
  v9 = *(a2 + 224);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 192, v8);
  (*(*(v9 + 16) + 72))(a1 & 1, v8);
  v10 = *(a2 + 216);
  v11 = *(a2 + 224);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 192, v10);
  (*(*(v11 + 16) + 88))(MEMORY[0x1E69E7CD0], v10);
  swift_endAccess();
  sub_1DEE29594(a2 + 192, v15);
  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(*(*(v13 + 8) + 8) + 32))(v12);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void (*Replicator.isAllowListEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 232);
  sub_1DEF8DD18();
  v4[64] = *v4;
  return sub_1DEE5B748;
}

void sub_1DEE5B748(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1DEEACE24;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_58;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEACE24;
  *(v10 + 24) = v9;
  v2[4] = sub_1DEE46D40;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_69;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t Replicator.allowList.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return v1;
}

uint64_t sub_1DEE5BA40@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  result = sub_1DEF8DD18();
  *a2 = v4;
  return result;
}

uint64_t sub_1DEE5BABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE28;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_279;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.allowList.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEA60D8;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_79;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5BD7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v7);
  v5 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *a2 = (*(*(*(v4 + 8) + 8) + 48))(v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DEE5BE18(uint64_t a1, uint64_t a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v3 = sub_1DEF8D508();
  __swift_project_value_buffer(v3, qword_1ECDF6028);

  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    sub_1DEF8D3F8();
    sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v8 = sub_1DEF8DBF8();
    v10 = sub_1DEE12A5C(v8, v9, v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Allow List updated: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  swift_beginAccess();
  v11 = *(a2 + 216);
  v12 = *(a2 + 224);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 192, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 88);

  v14(v15, v11, v13);
  swift_endAccess();
  sub_1DEE29594(a2 + 192, v19);
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(*(*(v17 + 8) + 8) + 32))(v16);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void (*Replicator.allowList.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return sub_1DEE5C140;
}

void sub_1DEE5C140(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1DEEACE28;
    *(v11 + 24) = v10;
    v2[4] = sub_1DEE46D40;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_102;
    v12 = _Block_copy(v2);

    dispatch_sync(v4, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEACE28;
  *(v7 + 24) = v6;
  v2[4] = sub_1DEE46D40;
  v2[5] = v7;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_91;
  v8 = _Block_copy(v2);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  v9 = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE5C3F4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE24;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_446;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE5C550(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = *v1;
  sub_1DEF8DD18();
  v4[56] = *v4;
  return sub_1DEE5C600;
}

void sub_1DEE5C600(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(v3 + 232);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v4 = v7;
    *(v7 + 16) = sub_1DEEACE24;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_424;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEACE24;
  *(v10 + 24) = v9;
  v2[4] = sub_1DEE46D40;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_435;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE5C888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return v1;
}

uint64_t sub_1DEE5C8FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE28;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_410;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE5CA54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return sub_1DEE5CB10;
}

void sub_1DEE5CB10(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(v4 + 232);
  if ((a2 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1DEEACE28;
    *(v11 + 24) = v10;
    v2[4] = sub_1DEE46D40;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_399;
    v12 = _Block_copy(v2);

    dispatch_sync(v5, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEACE28;
  *(v7 + 24) = v6;
  v2[4] = sub_1DEE46D40;
  v2[5] = v7;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_388;
  v8 = _Block_copy(v2);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  v9 = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t Replicator.pairingRelationships(filter:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C10, &unk_1DEF910D0);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE5CE2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    sub_1DEE29594(a2 + 192, v12);
    v9 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(*(*(v8 + 8) + 8) + 32))(v9);
    v7 = sub_1DEE9EEA4(v10, sub_1DEE9F014, sub_1DEE9F014);
  }

  else
  {
    swift_beginAccess();
    sub_1DEE29594(a2 + 192, v12);
    v6 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(*(*(v5 + 8) + 8) + 32))(v6);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a3 = v7;
  return result;
}

uint64_t sub_1DEE5CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  MetadataStoring.pairingRelationship(relationshipID:)(a2, v6, *(v7 + 8), a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t Replicator.resolveProtocolVersion(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C20, &qword_1DEF910E0);
  sub_1DEF8DD18();
  return v2;
}

unint64_t sub_1DEE5D178(uint64_t a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 232);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  v10 = sub_1DEF8D7B8();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    a1 += *(type metadata accessor for PairingRelationship(0) + 20);
    v10 = *(a1 + 40);
    if (qword_1ED786060 == -1)
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
  v12 = *(&xmmword_1ED786068 + 1);
  v11 = xmmword_1ED786068;
  if (*(&xmmword_1ED786068 + 1) <= v10)
  {
    v12 = v10;
  }

  if (xmmword_1ED786068 >= *(a1 + 32))
  {
    v11 = *(a1 + 32);
  }

  if (v11 >= v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE5D33C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C10, &unk_1DEF910D0);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE5D430(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C20, &qword_1DEF910E0);
  sub_1DEF8DD18();
  return v2;
}

uint64_t Replicator.unavailable(relationshipID:)(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = *(v1 + 232);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEA6130;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_112;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.pair(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DeviceDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 232);
  sub_1DEEACA70(a1, v10, type metadata accessor for DeviceDescriptor);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1DEEAB218(v10, v14 + v12, type metadata accessor for DeviceDescriptor);
  *(v14 + v13) = v3;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DEEA615C;
  *(v16 + 24) = v14;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_122;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v11, v17);
  _Block_release(v17);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5D938(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  v7 = 0xE300000000000000;
  v8 = 6578544;
  v9 = 0xE500000000000000;
  v10 = 0x6863746177;
  if (v4 != 4)
  {
    v10 = 30324;
    v9 = 0xE200000000000000;
  }

  if (v4 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE300000000000000;
  v12 = 6513005;
  if (v4 != 1)
  {
    v12 = 0x656E6F6870;
    v11 = 0xE500000000000000;
  }

  if (*(a1 + 48))
  {
    v6 = v12;
    v5 = v11;
  }

  if (*(a1 + 48) <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (*(a1 + 48) <= 2u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v26);
    *(v22 + 12) = 2082;
    v24 = sub_1DEE12A5C(v13, v14, &v26);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "(%{public}s) [Replicator.pair()] performing immediate pairing with unknown device of type %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  else
  {
  }

  sub_1DEEA7504(a1, a2, a3, a4);
}

uint64_t sub_1DEE5DBB0(uint64_t a1, int64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0x6576697463616E69;
      }

      goto LABEL_8;
    }

    return 0x646572696170;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return 0x676E6972696170;
      }

LABEL_8:
      MEMORY[0x1E12CB180]();
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      sub_1DEE4F8D4(a1, a2);
      return 0x6E6974617267696DLL;
    }

    return 0x6375646F72746E69;
  }
}

uint64_t Replicator.pair(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 232);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DEEA61F8;
  *(v12 + 24) = v11;
  v15[4] = sub_1DEE46D40;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DEE134F4;
  v15[3] = &block_descriptor_132;
  v13 = _Block_copy(v15);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE5DE34(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF6028);

  v11 = sub_1DEF8D4D8();
  v12 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1DEE12A5C(*(a1 + 528), *(a1 + 536), &v15);
    _os_log_impl(&dword_1DEE0F000, v11, v12, "(%{public}s) [Replicator.pair()] performing immediate pairing with known device", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12CCD70](v14, -1, -1);
    MEMORY[0x1E12CCD70](v13, -1, -1);
  }

  sub_1DEE5E6FC(a2, a3, a4, a5);
}

void sub_1DEE5DFB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1DEF8D698();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D6D8();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a3[29];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = sub_1DEF8D7B8();
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    if (qword_1ECDE2E58 == -1)
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
  v20 = sub_1DEF8D508();
  __swift_project_value_buffer(v20, qword_1ECDF6028);

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  v23 = os_log_type_enabled(v21, v22);
  v55 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v58 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1DEE12A5C(a1, a2, &v58);
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Pairing with device: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12CCD70](v25, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  sub_1DEE8E124(a3, a1, a2, &v58, nullsub_1, 0, aBlock);
  v26 = aBlock[0];
  if (LOBYTE(aBlock[0]) != 8)
  {
    sub_1DEE46550(v58, *(&v58 + 1), v59, *(&v59 + 1));
    v35 = swift_allocObject();
    *(v35 + 16) = nullsub_1;
    *(v35 + 24) = 0;
    *(v35 + 32) = v26;
    aBlock[4] = sub_1DEEAAEAC;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_616;
    v36 = _Block_copy(aBlock);
    sub_1DEF8D6B8();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v37 = v54;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v11, v8, v36);
    _Block_release(v36);
    (*(v53 + 8))(v8, v37);
    (*(v51 + 8))(v11, v52);
    goto LABEL_9;
  }

  v27 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    v29 = *(&v60 + 1);
    v28 = v61;
    v31 = *(&v59 + 1);
    v30 = v60;
    v32 = v59;
    v33 = v58;
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = v33;
    *(v34 + 32) = v27;
    *(v34 + 40) = v32;
    *(v34 + 48) = v31;
    *(v34 + 56) = v30;
    *(v34 + 57) = aBlock[0];
    *(v34 + 60) = *(aBlock + 3);
    *(v34 + 64) = v29;
    *(v34 + 72) = v28;

    sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v55, sub_1DEEAAEA8, v34, 0.0);
LABEL_9:

    return;
  }

  v38 = a1;

  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DC98();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    v43 = a3[32];
    if (v43)
    {
      v44 = a3[31];
      v45 = v43;
    }

    else
    {
      v46 = a3[23];
      ObjectType = swift_getObjectType();
      v48 = (*(v46 + 16))(ObjectType, v46);
      if (v49)
      {
        v44 = v48;
      }

      else
      {
        v44 = 0xD000000000000016;
      }

      if (v49)
      {
        v45 = v49;
      }

      else
      {
        v45 = 0x80000001DEF9BCA0;
      }
    }

    v50 = sub_1DEE12A5C(v44, v45, aBlock);

    *(v41 + 4) = v50;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_1DEE12A5C(v38, a2, aBlock);
    _os_log_impl(&dword_1DEE0F000, v39, v40, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v42, -1, -1);
    MEMORY[0x1E12CCD70](v41, -1, -1);
  }

  else
  {
  }
}

void sub_1DEE5E6FC(uint64_t a1, unint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v9 = sub_1DEF8D698();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DEF8D6D8();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v4;
  v17 = v4[29];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v63 = v18;
    if (qword_1ECDE2E58 == -1)
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
  v19 = sub_1DEF8D508();
  v20 = __swift_project_value_buffer(v19, qword_1ECDF6028);

  v57[1] = v20;
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  v23 = a4;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v67 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1DEE12A5C(a1, a2, &v67);
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Pairing with device: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = v25;
    v23 = a4;
    MEMORY[0x1E12CCD70](v26, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  v27 = v64;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  sub_1DEE8E124(v64, a1, a2, &v67, a3, v23, aBlock);
  v28 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    v29 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      v31 = *(&v69 + 1);
      v30 = v70;
      v33 = *(&v68 + 1);
      v32 = v69;
      v34 = v68;
      v35 = v67;
      v36 = swift_allocObject();
      *(v36 + 16) = v27;
      *(v36 + 24) = v35;
      *(v36 + 32) = v29;
      *(v36 + 40) = v34;
      *(v36 + 48) = v33;
      *(v36 + 56) = v32;
      *(v36 + 57) = aBlock[0];
      *(v36 + 60) = *(aBlock + 3);
      *(v36 + 64) = v31;
      *(v36 + 72) = v30;

      sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v63, sub_1DEEACF94, v36, 0.0);
    }

    else
    {
      v41 = a1;
      v63 = a3;

      v42 = sub_1DEF8D4D8();
      v43 = v64;
      v44 = v42;
      v45 = sub_1DEF8DC98();

      if (os_log_type_enabled(v44, v45))
      {
        v62 = v23;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315394;
        if (v43[32])
        {
          v48 = v43[31];
          v49 = v43[32];
        }

        else
        {
          v50 = v43[23];
          ObjectType = swift_getObjectType();
          v52 = (*(v50 + 16))(ObjectType, v50);
          if (v53)
          {
            v48 = v52;
          }

          else
          {
            v48 = 0xD000000000000016;
          }

          if (v53)
          {
            v49 = v53;
          }

          else
          {
            v49 = 0x80000001DEF9BCA0;
          }
        }

        v54 = sub_1DEE12A5C(v48, v49, aBlock);

        *(v46 + 4) = v54;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_1DEE12A5C(v41, a2, aBlock);
        _os_log_impl(&dword_1DEE0F000, v44, v45, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v47, -1, -1);
        MEMORY[0x1E12CCD70](v46, -1, -1);
      }

      else
      {
      }

      sub_1DEEAA8E8();
      v55 = swift_allocError();
      *v56 = 1;
      v63(v55, 1);
    }
  }

  else
  {
    sub_1DEE46550(v67, *(&v67 + 1), v68, *(&v68 + 1));
    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = v23;
    *(v37 + 32) = v28;
    aBlock[4] = sub_1DEEACFE8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_630;
    v38 = _Block_copy(aBlock);

    v39 = v58;
    sub_1DEF8D6B8();
    v65 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v40 = v61;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v39, v40, v38);
    _Block_release(v38);
    (*(v59 + 8))(v40, v9);
    (*(v60 + 8))(v39, v62);
  }
}

uint64_t sub_1DEE5EF34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v34 - v6;
  v8 = type metadata accessor for PairingRelationship(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = v10;
  MEMORY[0x1EEE9AC00](v11);
  v37 = v34 - v12;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 232);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v35 = v18;
  LOBYTE(v18) = sub_1DEF8D7B8();
  v20 = *(v14 + 8);
  v19 = v14 + 8;
  v20(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v38);
  v21 = v39;
  v22 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v23 = *(v22 + 8);
  v19 = v41;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v41, a2, v21, v23, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DEE171B4(v7, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_1DEEAA8E8();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  v8 = v37;
  sub_1DEEAB218(v7, v37, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v26 = sub_1DEF8D508();
  __swift_project_value_buffer(v26, qword_1ECDF6028);

  v27 = sub_1DEF8D4D8();
  v28 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_1DEE12A5C(v19, a2, v38);
    _os_log_impl(&dword_1DEE0F000, v27, v28, "Unpairing device: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  v31 = v36;
  sub_1DEEACA70(v8, v36, type metadata accessor for PairingRelationship);
  v32 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  sub_1DEEAB218(v31, v33 + v32, type metadata accessor for PairingRelationship);

  sub_1DEE2C448(0xD000000000000015, 0x80000001DEF9C300, v35, sub_1DEEAC8B4, v33, 0.0);

  return sub_1DEE273A0(v8, type metadata accessor for PairingRelationship);
}

Swift::Void __swiftcall Replicator.deactivate(remoteDeviceID:)(Swift::String remoteDeviceID)
{
  v2 = v1;
  object = remoteDeviceID._object;
  countAndFlagsBits = remoteDeviceID._countAndFlagsBits;
  v5 = *(v1 + 232);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEA623C;
  *(v7 + 24) = v6;
  v9[4] = sub_1DEE46D40;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_142;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE5F5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PairingRelationship(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, &v21);
  v16 = v22;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, v22);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v16, *(v17 + 8), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DEE171B4(v8, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    sub_1DEEAB218(v8, v15, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    if (*&v15[*(v9 + 32) + 8] == 2)
    {
      v19 = *(v9 + 20);
      v21 = xmmword_1DEF90FF0;
      sub_1DEE5F828(&v15[v19], &v21, 2, 1, v12);
      sub_1DEE273A0(v12, type metadata accessor for PairingRelationship);
    }

    return sub_1DEE273A0(v15, type metadata accessor for PairingRelationship);
  }
}

uint64_t sub_1DEE5F828@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v931 = a4;
  v918 = a3;
  v929 = a5;
  v934 = sub_1DEF8D378();
  v926 = *(v934 - 8);
  MEMORY[0x1EEE9AC00](v934);
  v914 = &v840 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v915 = &v840 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v916 = &v840 - v12;
  v912 = sub_1DEF8D3F8();
  v911 = *(v912 - 8);
  MEMORY[0x1EEE9AC00](v912);
  v848 = &v840 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v849 = &v840 - v15;
  v945 = type metadata accessor for PairingRelationship(0);
  v943 = *(v945 - 1);
  MEMORY[0x1EEE9AC00](v945);
  v909 = &v840 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v865 = &v840 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v879 = &v840 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v903 = &v840 - v22;
  v908 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v908);
  v933 = &v840 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v921 = &v840 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v923 = (&v840 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v910 = &v840 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v890 = (&v840 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v864 = (&v840 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v939 = &v840 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v860 = (&v840 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v937 = (&v840 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v878 = &v840 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v877 = (&v840 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v869 = (&v840 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v855 = (&v840 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v854 = &v840 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v892 = &v840 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v842 = (&v840 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v868 = (&v840 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v853 = (&v840 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v891 = (&v840 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v852 = (&v840 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v944 = (&v840 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v876 = &v840 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v902 = &v840 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v901 = &v840 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v900 = &v840 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v899 = &v840 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v881 = (&v840 - v75);
  MEMORY[0x1EEE9AC00](v76);
  v882 = &v840 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v920 = &v840 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v917 = &v840 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v930 = &v840 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v932 = &v840 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v922 = &v840 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v913 = &v840 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v907 = &v840 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v840 - v93;
  MEMORY[0x1EEE9AC00](v95);
  v904 = &v840 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v889 = &v840 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v888 = &v840 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v887 = &v840 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v886 = &v840 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v938 = &v840 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v861 = &v840 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v862 = &v840 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v847 = &v840 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v859 = &v840 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v846 = &v840 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v885 = &v840 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v880 = &v840 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v893 = &v840 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v875 = &v840 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v858 = &v840 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v872 = &v840 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v898 = &v840 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v867 = (&v840 - v132);
  MEMORY[0x1EEE9AC00](v133);
  v851 = &v840 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v884 = &v840 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v843 = &v840 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v863 = &v840 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v845 = &v840 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v841 = &v840 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v844 = &v840 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v897 = &v840 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v866 = (&v840 - v150);
  MEMORY[0x1EEE9AC00](v151);
  v850 = &v840 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v883 = &v840 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v896 = &v840 - v156;
  MEMORY[0x1EEE9AC00](v157);
  v874 = &v840 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v857 = &v840 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v871 = &v840 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v873 = &v840 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v856 = &v840 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v870 = &v840 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v894 = &v840 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v919 = &v840 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v895 = &v840 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v905 = &v840 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v179 = &v840 - v178;
  MEMORY[0x1EEE9AC00](v180);
  v182 = &v840 - v181;
  v183 = sub_1DEF8D788();
  v184 = *(v183 - 8);
  v185 = MEMORY[0x1EEE9AC00](v183);
  v187 = (&v840 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = a2[1];
  v935 = *a2;
  v936 = v188;
  v189 = *(v5 + 232);
  *v187 = v189;
  (*(v184 + 104))(v187, *MEMORY[0x1E69E8020], v183, v185);
  v190 = v189;
  LOBYTE(a2) = sub_1DEF8D7B8();
  v192 = *(v184 + 8);
  v191 = v184 + 8;
  v192(v187, v183);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_295;
  }

  v906 = v94;
  swift_beginAccess();
  v189 = v5;
  sub_1DEE29594(v5 + 192, &v948);
  v194 = v950;
  v193 = v951;
  __swift_project_boxed_opaque_existential_1(&v948, v950);
  v195 = a1[1];
  v196 = *(v193 + 8);
  v925 = *a1;
  v924 = v195;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v925, v195, v194, v196, v182);
  __swift_destroy_boxed_opaque_existential_1(&v948);
  v94 = v943;
  v197 = *(v943 + 7);
  v928 = v943 + 56;
  v927 = v197;
  v197(v179, 1, 1, v945);
  v5 = a1[4];
  v191 = a1[5];
  v940 = a1;
  v183 = v182;
  if (qword_1ED786060 != -1)
  {
LABEL_295:
    swift_once();
  }

  v941 = v183;
  v942 = v179;
  v198 = v937;
  v199 = v944;
  if (v5 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v191)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v200 = sub_1DEF8D508();
    __swift_project_value_buffer(v200, qword_1ECDF6028);
    v201 = v917;
    sub_1DEEACA70(v940, v917, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v202 = sub_1DEF8D4D8();
    v203 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v948 = v205;
      *v204 = 136446466;
      v206 = v201;
      v207 = v189[66];
      v208 = v189[67];

      v209 = sub_1DEE12A5C(v207, v208, &v948);

      *(v204 + 4) = v209;

      *(v204 + 12) = 2082;
      sub_1DEEACA70(v206, v920, type metadata accessor for DeviceDescriptor);
      v210 = sub_1DEF8D988();
      v212 = sub_1DEE12A5C(v210, v211, &v948);

      *(v204 + 14) = v212;
      v198 = v937;
      v199 = v944;
      sub_1DEE273A0(v206, type metadata accessor for DeviceDescriptor);
      _os_log_impl(&dword_1DEE0F000, v202, v203, "(%{public}s) Remote device has an incompatible protocol: %{public}s", v204, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v205, -1, -1);
      v213 = v204;
      v183 = v941;
      MEMORY[0x1E12CCD70](v213, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v201, type metadata accessor for DeviceDescriptor);
    }
  }

  v214 = *(v94 + 6);
  v215 = v214(v183, 1, v945);
  v943 = v94 + 48;
  v944 = v214;
  v216 = v938;
  if (v215 == 1)
  {
    v217 = v936;
    if (v936 > 1)
    {
      v218 = v940;
      if (v936 == 2)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v362 = sub_1DEF8D508();
        __swift_project_value_buffer(v362, qword_1ECDF6028);
        v268 = v899;
        sub_1DEEACA70(v218, v899, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v269 = sub_1DEF8D4D8();
        v270 = sub_1DEF8DCB8();
        v363 = os_log_type_enabled(v269, v270);
        v224 = v939;
        if (v363)
        {
          v272 = swift_slowAlloc();
          v273 = v189;
          v274 = swift_slowAlloc();
          v948 = v274;
          *v272 = 136446466;
          v364 = v273[66];
          v365 = v268;
          v366 = v273[67];

          v367 = sub_1DEE12A5C(v364, v366, &v948);

          *(v272 + 4) = v367;

          *(v272 + 12) = 2082;
          v368 = *v365;
          v369 = v365[1];

          v370 = sub_1DEE12A5C(v368, v369, &v948);

          *(v272 + 14) = v370;
          sub_1DEE273A0(v365, type metadata accessor for DeviceDescriptor);
          v282 = "(%{public}s) Remote device %{public}s can't become paired without first pairing";
          goto LABEL_70;
        }
      }

      else
      {
        if (v936 != 3)
        {
LABEL_45:
          sub_1DEE29594((v189 + 24), &v948);
          v304 = v950;
          v305 = v951;
          __swift_project_boxed_opaque_existential_1(&v948, v950);
          v306 = *(v305 + 8);
          v307 = v905;
          v308 = v935;
          MetadataStoring.pairingRelationship(remoteDeviceID:)(v935, v217, v304, v306, v905);
          __swift_destroy_boxed_opaque_existential_1(&v948);
          v309 = v895;
          sub_1DEE17214(v307, v895, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v944(v309, 1, v945) == 1)
          {
            sub_1DEE171B4(v309, &qword_1ECDE3C18, &unk_1DEF94D20);
            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v310 = sub_1DEF8D508();
            __swift_project_value_buffer(v310, qword_1ECDF6028);
            v311 = v881;
            sub_1DEEACA70(v218, v881, type metadata accessor for DeviceDescriptor);

            v312 = v936;
            sub_1DEE4F8C0(v308, v936);

            sub_1DEE4F8C0(v308, v312);
            v313 = sub_1DEF8D4D8();
            v314 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v313, v314))
            {
              v315 = swift_slowAlloc();
              v938 = swift_slowAlloc();
              v948 = v938;
              *v315 = 136446722;
              v316 = v189[66];
              v317 = v189[67];

              v318 = sub_1DEE12A5C(v316, v317, &v948);

              *(v315 + 4) = v318;

              *(v315 + 12) = 2082;
              v319 = *v311;
              v320 = v311[1];

              v321 = sub_1DEE12A5C(v319, v320, &v948);

              *(v315 + 14) = v321;
              sub_1DEE273A0(v311, type metadata accessor for DeviceDescriptor);
              *(v315 + 22) = 2082;
              v322 = v940;

              v323 = sub_1DEE12A5C(v308, v312, &v948);
              sub_1DEE4F8D4(v308, v312);
              *(v315 + 24) = v323;
              sub_1DEE4F8D4(v308, v312);
              sub_1DEE4F8D4(v308, v312);
              _os_log_impl(&dword_1DEE0F000, v313, v314, "(%{public}s) Remote device %{public}s can't adopt relationship from unknown device %{public}s; pairing instead", v315, 0x20u);
              v324 = v938;
              swift_arrayDestroy();
              v325 = v324;
              v218 = v322;
              v236 = v942;
              MEMORY[0x1E12CCD70](v325, -1, -1);
              MEMORY[0x1E12CCD70](v315, -1, -1);

              v224 = v939;
            }

            else
            {

              sub_1DEE273A0(v311, type metadata accessor for DeviceDescriptor);
              sub_1DEE4F8D4(v308, v312);
              sub_1DEE4F8D4(v308, v312);
              v224 = v939;
              v236 = v942;
            }

            v556 = v919;
            sub_1DEF8D3E8();
            v557 = v945;
            sub_1DEEACA70(v218, v556 + v945[5], type metadata accessor for DeviceDescriptor);
            sub_1DEF8D348();
            sub_1DEF8D348();
            sub_1DEF8D348();
            sub_1DEE171B4(v905, &qword_1ECDE3C18, &unk_1DEF94D20);
            v558 = (v556 + v557[8]);
            *v558 = 0;
            v558[1] = 0;
            v927(v556, 0, 1, v557);
            sub_1DEE29D60(v556, v236, &qword_1ECDE3C18, &unk_1DEF94D20);
LABEL_235:
            if (v944(v236, 1, v945) == 1)
            {
              __break(1u);
              goto LABEL_297;
            }

            v708 = v236;
            sub_1DEEACA70(v236 + v945[5], v224, type metadata accessor for DeviceDescriptor);
            sub_1DEE17214((v189 + 53), &v946, &qword_1ECDE3BF0, &unk_1DEF938B0);
            if (v947)
            {
              sub_1DEE2F1AC(&v946, &v948);
              v709 = v950;
              v710 = v951;
              __swift_project_boxed_opaque_existential_1(&v948, v950);
              v711 = (*(v710 + 24))(v925, v924, v709, v710);
              if (v712)
              {
                v713 = v711;
                v714 = v712;
                v715 = v913;
                sub_1DEE17214(v941, v913, &qword_1ECDE3C18, &unk_1DEF94D20);
                if (v944(v715, 1, v945) == 1)
                {
                  sub_1DEE171B4(v715, &qword_1ECDE3C18, &unk_1DEF94D20);
                }

                else
                {
                  v840 = v189;
                  v754 = v715;
                  v755 = v909;
                  sub_1DEEAB218(v754, v909, type metadata accessor for PairingRelationship);
                  v756 = v755 + v945[5];
                  v757 = *(v756 + 168);
                  if (v757)
                  {
                    v758 = *(v756 + 160);
                    if (v713 == v758 && v714 == v757 || (sub_1DEF8E4E8() & 1) != 0)
                    {
                      if (qword_1ECDE2E58 != -1)
                      {
                        swift_once();
                      }

                      v759 = sub_1DEF8D508();
                      __swift_project_value_buffer(v759, qword_1ECDF6028);
                      v760 = v890;
                      sub_1DEEACA70(v218, v890, type metadata accessor for DeviceDescriptor);
                      v761 = v840;
                      swift_retain_n();
                      swift_bridgeObjectRetain_n();
                      v762 = sub_1DEF8D4D8();
                      v763 = sub_1DEF8DCB8();
                      if (os_log_type_enabled(v762, v763))
                      {
                        v764 = swift_slowAlloc();
                        v940 = v713;
                        v765 = v764;
                        v938 = swift_slowAlloc();
                        *&v946 = v938;
                        *v765 = 136446722;
                        v766 = v761;
                        v767 = v761[66];
                        v768 = v758;
                        v769 = v766[67];

                        v770 = sub_1DEE12A5C(v767, v769, &v946);

                        *(v765 + 4) = v770;

                        *(v765 + 12) = 2082;

                        LOBYTE(v769) = v763;
                        v771 = sub_1DEE12A5C(v768, v757, &v946);

                        *(v765 + 14) = v771;
                        swift_bridgeObjectRelease_n();
                        *(v765 + 22) = 2082;
                        v755 = v909;
                        v772 = v766;
                        v224 = v939;
                        v773 = *v760;
                        v774 = v760[1];

                        v775 = sub_1DEE12A5C(v773, v774, &v946);

                        *(v765 + 24) = v775;
                        v189 = v772;
                        sub_1DEE273A0(v760, type metadata accessor for DeviceDescriptor);
                        _os_log_impl(&dword_1DEE0F000, v762, v769, "(%{public}s) Persona ID has not changed from %{public}s for device %{public}s", v765, 0x20u);
                        v776 = v938;
                        swift_arrayDestroy();
                        MEMORY[0x1E12CCD70](v776, -1, -1);
                        v777 = v765;
                        v713 = v940;
                        MEMORY[0x1E12CCD70](v777, -1, -1);

                        v739 = v933;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();

                        sub_1DEE273A0(v760, type metadata accessor for DeviceDescriptor);
                        v739 = v933;
                        v189 = v761;
                        v224 = v939;
                      }
                    }

                    else
                    {
                      if (qword_1ECDE2E58 != -1)
                      {
                        swift_once();
                      }

                      v796 = sub_1DEF8D508();
                      __swift_project_value_buffer(v796, qword_1ECDF6028);
                      v797 = v864;
                      sub_1DEEACA70(v218, v864, type metadata accessor for DeviceDescriptor);
                      v798 = v840;
                      swift_retain_n();
                      swift_bridgeObjectRetain_n();
                      swift_bridgeObjectRetain_n();
                      v799 = sub_1DEF8D4D8();
                      v800 = sub_1DEF8DC98();
                      if (os_log_type_enabled(v799, v800))
                      {
                        v801 = swift_slowAlloc();
                        v940 = v713;
                        v802 = v801;
                        v803 = swift_slowAlloc();
                        *&v946 = v803;
                        *v802 = 136446978;
                        v804 = v798;
                        LODWORD(v938) = v800;
                        v805 = v798[66];
                        v806 = v758;
                        v807 = v804[67];

                        v808 = sub_1DEE12A5C(v805, v807, &v946);

                        *(v802 + 4) = v808;

                        *(v802 + 12) = 2082;

                        v809 = sub_1DEE12A5C(v806, v757, &v946);

                        *(v802 + 14) = v809;
                        swift_bridgeObjectRelease_n();
                        *(v802 + 22) = 2082;

                        v810 = sub_1DEE12A5C(v940, v714, &v946);

                        *(v802 + 24) = v810;
                        swift_bridgeObjectRelease_n();
                        *(v802 + 32) = 2082;
                        v811 = *v797;
                        v812 = v797[1];

                        v813 = sub_1DEE12A5C(v811, v812, &v946);
                        v758 = v806;

                        *(v802 + 34) = v813;
                        v755 = v909;
                        sub_1DEE273A0(v797, type metadata accessor for DeviceDescriptor);
                        _os_log_impl(&dword_1DEE0F000, v799, v938, "(%{public}s) Persona ID has changed from %{public}s to %{public}s for device %{public}s", v802, 0x2Au);
                        swift_arrayDestroy();
                        v814 = v803;
                        v224 = v939;
                        MEMORY[0x1E12CCD70](v814, -1, -1);
                        v815 = v802;
                        v713 = v940;
                        MEMORY[0x1E12CCD70](v815, -1, -1);

                        v739 = v933;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        swift_bridgeObjectRelease_n();

                        sub_1DEE273A0(v797, type metadata accessor for DeviceDescriptor);
                        v739 = v933;
                        v224 = v939;
                      }

                      *&v946 = 0;
                      *(&v946 + 1) = 0xE000000000000000;
                      MEMORY[0x1E12CB180](0, 0xE000000000000000);
                      MEMORY[0x1E12CB180](v758, v757);
                      MEMORY[0x1E12CB180](45, 0xE100000000000000);
                      MEMORY[0x1E12CB180](v713, v714);
                      MEMORY[0x1E12CB180](0, 0xE000000000000000);
                      sub_1DEF66074(0x43616E6F73726550, 0xED000065676E6168, 0x43616E6F73726550, 0xED000065676E6168, 0x43616E6F73726550, 0xED000065676E6168, v946, *(&v946 + 1));

                      v189 = v840;
                    }

                    sub_1DEE273A0(v755, type metadata accessor for PairingRelationship);
                    v708 = v942;
                    goto LABEL_279;
                  }

                  sub_1DEE273A0(v755, type metadata accessor for PairingRelationship);
                  v708 = v942;
                  v189 = v840;
                }

                v778 = v910;
                if (qword_1ECDE2E58 != -1)
                {
                  swift_once();
                }

                v779 = sub_1DEF8D508();
                __swift_project_value_buffer(v779, qword_1ECDF6028);
                sub_1DEEACA70(v218, v778, type metadata accessor for DeviceDescriptor);
                swift_retain_n();
                swift_bridgeObjectRetain_n();
                v780 = sub_1DEF8D4D8();
                v781 = sub_1DEF8DCB8();
                if (os_log_type_enabled(v780, v781))
                {
                  v782 = v778;
                  v783 = v189;
                  v784 = swift_slowAlloc();
                  v785 = v713;
                  v786 = swift_slowAlloc();
                  *&v946 = v786;
                  *v784 = 136446722;
                  v787 = v783[66];
                  v788 = v783[67];

                  v789 = sub_1DEE12A5C(v787, v788, &v946);

                  *(v784 + 4) = v789;

                  *(v784 + 12) = 2082;

                  v790 = sub_1DEE12A5C(v785, v714, &v946);

                  *(v784 + 14) = v790;
                  swift_bridgeObjectRelease_n();
                  *(v784 + 22) = 2082;
                  v791 = *v782;
                  v792 = v782[1];

                  v793 = sub_1DEE12A5C(v791, v792, &v946);
                  v224 = v939;

                  *(v784 + 24) = v793;
                  sub_1DEE273A0(v782, type metadata accessor for DeviceDescriptor);
                  _os_log_impl(&dword_1DEE0F000, v780, v781, "(%{public}s) Using persona ID %{public}s for device %{public}s", v784, 0x20u);
                  swift_arrayDestroy();
                  v794 = v786;
                  v713 = v785;
                  MEMORY[0x1E12CCD70](v794, -1, -1);
                  v795 = v784;
                  v189 = v783;
                  v708 = v942;
                  MEMORY[0x1E12CCD70](v795, -1, -1);
                }

                else
                {
                  swift_bridgeObjectRelease_n();

                  sub_1DEE273A0(v778, type metadata accessor for DeviceDescriptor);
                }

                v739 = v933;
LABEL_279:

                *(v224 + 160) = v713;
                *(v224 + 168) = v714;
                __swift_destroy_boxed_opaque_existential_1(&v948);
                goto LABEL_280;
              }

              __swift_destroy_boxed_opaque_existential_1(&v948);
            }

            else
            {
              sub_1DEE171B4(&v946, &qword_1ECDE3BF0, &unk_1DEF938B0);
            }

            v716 = v218;
            v717 = v922;
            sub_1DEE17214(v941, v922, &qword_1ECDE3C18, &unk_1DEF94D20);
            v718 = v944(v717, 1, v945);
            v719 = v923;
            if (v718 == 1)
            {
              sub_1DEE171B4(v717, &qword_1ECDE3C18, &unk_1DEF94D20);
              v720 = v921;
            }

            else
            {
              v721 = v920;
              sub_1DEEACA70(v717 + v945[5], v920, type metadata accessor for DeviceDescriptor);
              sub_1DEE273A0(v717, type metadata accessor for PairingRelationship);
              v723 = *(v721 + 160);
              v722 = *(v721 + 168);

              sub_1DEE273A0(v721, type metadata accessor for DeviceDescriptor);
              v720 = v921;
              if (v722)
              {
                if (qword_1ECDE2E58 != -1)
                {
                  swift_once();
                }

                v724 = sub_1DEF8D508();
                __swift_project_value_buffer(v724, qword_1ECDF6028);
                sub_1DEEACA70(v716, v719, type metadata accessor for DeviceDescriptor);
                swift_retain_n();
                swift_bridgeObjectRetain_n();
                v725 = sub_1DEF8D4D8();
                v726 = sub_1DEF8DCB8();
                if (os_log_type_enabled(v725, v726))
                {
                  v727 = v189;
                  v728 = swift_slowAlloc();
                  v940 = swift_slowAlloc();
                  v948 = v940;
                  *v728 = 136446722;
                  v729 = v727[66];
                  v730 = v727[67];

                  v731 = sub_1DEE12A5C(v729, v730, &v948);

                  *(v728 + 4) = v731;

                  *(v728 + 12) = 2082;
                  v732 = *v719;
                  v733 = v719[1];

                  v734 = sub_1DEE12A5C(v732, v733, &v948);
                  v224 = v939;

                  *(v728 + 14) = v734;
                  sub_1DEE273A0(v719, type metadata accessor for DeviceDescriptor);
                  *(v728 + 22) = 2082;

                  v735 = sub_1DEE12A5C(v723, v722, &v948);

                  *(v728 + 24) = v735;
                  swift_bridgeObjectRelease_n();
                  _os_log_impl(&dword_1DEE0F000, v725, v726, "(%{public}s) No persona ID found for device %{public}s; keeping existing ID %{public}s", v728, 0x20u);
                  v736 = v940;
                  swift_arrayDestroy();
                  MEMORY[0x1E12CCD70](v736, -1, -1);
                  v737 = v728;
                  v189 = v727;
                  v738 = v942;
                  MEMORY[0x1E12CCD70](v737, -1, -1);

                  v739 = v933;
                }

                else
                {

                  sub_1DEE273A0(v719, type metadata accessor for DeviceDescriptor);
                  swift_bridgeObjectRelease_n();
                  v739 = v933;
                  v738 = v708;
                }

                *(v224 + 160) = v723;
                *(v224 + 168) = v722;
LABEL_281:
                sub_1DEEACA70(v224, v739, type metadata accessor for DeviceDescriptor);
                if (v944(v738, 1, v945) != 1)
                {
                  v816 = v945;
                  sub_1DEE1B474(v739, v738 + v945[5], type metadata accessor for DeviceDescriptor);
                  v817 = v189;
                  sub_1DEE29594((v189 + 24), &v948);
                  v818 = v738;
                  v819 = v950;
                  v820 = v951;
                  __swift_project_boxed_opaque_existential_1(&v948, v950);
                  v821 = v818;
                  v822 = v932;
                  sub_1DEE17214(v821, v932, &qword_1ECDE3C18, &unk_1DEF94D20);
                  if (v944(v822, 1, v816) != 1)
                  {
                    (*(*(v820 + 16) + 112))(v822, v819);
                    sub_1DEE273A0(v822, type metadata accessor for PairingRelationship);
                    __swift_destroy_boxed_opaque_existential_1(&v948);
                    if (v931)
                    {
                      sub_1DEE9074C();
                      sub_1DEE90FF8();
                    }

                    v823 = v942;
                    if (v944(v942, 1, v945) != 1)
                    {
                      v824 = v823 + v945[5];
                      v825 = *(v824 + 120);
                      if (v825 >> 60 != 15)
                      {
                        v826 = *(v824 + 112);
                        v827 = v817[63];
                        v828 = v817[64];
                        __swift_project_boxed_opaque_existential_1(v817 + 60, v827);
                        v829 = *(v828 + 16);
                        sub_1DEE1BFF4(v826, v825);
                        v830 = v827;
                        v823 = v942;
                        v829(v826, v825, v830, v828);
                        sub_1DEE2416C(v826, v825);
                      }

                      sub_1DEE29594((v817 + 24), &v948);
                      v832 = v950;
                      v831 = v951;
                      __swift_project_boxed_opaque_existential_1(&v948, v950);
                      *&v946 = (*(*(*(v831 + 8) + 8) + 32))(v832);
                      sub_1DEF8D588();

                      __swift_destroy_boxed_opaque_existential_1(&v948);
                      v833 = v930;
                      sub_1DEE17214(v823, v930, &qword_1ECDE3C18, &unk_1DEF94D20);
                      if (v944(v833, 1, v945) != 1)
                      {
                        sub_1DEE171B4(v941, &qword_1ECDE3C18, &unk_1DEF94D20);
                        sub_1DEEAB218(v833, v929, type metadata accessor for PairingRelationship);
                        sub_1DEE273A0(v224, type metadata accessor for DeviceDescriptor);
                        return sub_1DEE171B4(v823, &qword_1ECDE3C18, &unk_1DEF94D20);
                      }

                      goto LABEL_300;
                    }

LABEL_299:
                    __break(1u);
LABEL_300:
                    __break(1u);
                    goto LABEL_301;
                  }

LABEL_298:
                  __break(1u);
                  goto LABEL_299;
                }

LABEL_297:
                __break(1u);
                goto LABEL_298;
              }
            }

            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v740 = sub_1DEF8D508();
            __swift_project_value_buffer(v740, qword_1ECDF6028);
            sub_1DEEACA70(v716, v720, type metadata accessor for DeviceDescriptor);
            swift_retain_n();
            v741 = sub_1DEF8D4D8();
            v742 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v741, v742))
            {
              v743 = swift_slowAlloc();
              v744 = v189;
              v745 = swift_slowAlloc();
              v948 = v745;
              *v743 = 136446466;
              v746 = v720;
              v747 = v744[66];
              v748 = v744[67];

              v749 = sub_1DEE12A5C(v747, v748, &v948);

              *(v743 + 4) = v749;

              *(v743 + 12) = 2082;
              v750 = *v746;
              v751 = v746[1];

              v752 = sub_1DEE12A5C(v750, v751, &v948);

              *(v743 + 14) = v752;
              sub_1DEE273A0(v746, type metadata accessor for DeviceDescriptor);
              _os_log_impl(&dword_1DEE0F000, v741, v742, "(%{public}s) No persona ID found for device %{public}s; no existing ID available", v743, 0x16u);
              swift_arrayDestroy();
              v753 = v745;
              v189 = v744;
              v738 = v942;
              MEMORY[0x1E12CCD70](v753, -1, -1);
              MEMORY[0x1E12CCD70](v743, -1, -1);

              v739 = v933;
              goto LABEL_281;
            }

            sub_1DEE273A0(v720, type metadata accessor for DeviceDescriptor);
            v739 = v933;
LABEL_280:
            v738 = v708;
            goto LABEL_281;
          }

          sub_1DEEAB218(v309, v903, type metadata accessor for PairingRelationship);
          v392 = sub_1DEE8FFFC(v218, v308, v217);
          if (v392)
          {
            v393 = 2;
          }

          else
          {
            v393 = 0;
          }

          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v394 = sub_1DEF8D508();
          __swift_project_value_buffer(v394, qword_1ECDF6028);
          v395 = v218;
          v396 = v882;
          sub_1DEEACA70(v218, v882, type metadata accessor for DeviceDescriptor);

          sub_1DEE4F8C0(v308, v217);
          sub_1DEE4F8C0(0, v393);

          sub_1DEE4F8C0(v308, v217);
          sub_1DEE4F8C0(0, v393);
          v397 = sub_1DEF8D4D8();
          v398 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v397, v398))
          {
            v399 = v189;
            v400 = swift_slowAlloc();
            v938 = swift_slowAlloc();
            v948 = v938;
            *v400 = 136446978;
            LODWORD(v937) = v398;
            v401 = v396;
            v402 = v399[66];
            v403 = v399[67];

            v404 = sub_1DEE12A5C(v402, v403, &v948);

            *(v400 + 4) = v404;

            v918 = v392;
            *(v400 + 12) = 2082;
            v405 = *v401;
            v406 = v401[1];

            v407 = sub_1DEE12A5C(v405, v406, &v948);

            *(v400 + 14) = v407;
            sub_1DEE273A0(v401, type metadata accessor for DeviceDescriptor);
            *(v400 + 22) = 2082;

            v408 = sub_1DEE12A5C(v308, v217, &v948);
            sub_1DEE4F8D4(v308, v217);
            *(v400 + 24) = v408;
            sub_1DEE4F8D4(v308, v217);
            sub_1DEE4F8D4(v308, v217);
            *(v400 + 32) = 2082;
            if (v918)
            {
              v409 = 0x646572696170;
            }

            else
            {
              v409 = 0x6375646F72746E69;
            }

            if (v918)
            {
              v410 = 0xE600000000000000;
            }

            else
            {
              v410 = 0xEA00000000006465;
            }

            v411 = sub_1DEE12A5C(v409, v410, &v948);

            *(v400 + 34) = v411;
            v412 = v940;
            sub_1DEE4F8D4(0, v393);
            sub_1DEE4F8D4(0, v393);
            _os_log_impl(&dword_1DEE0F000, v397, v937, "(%{public}s) Remote device %{public}s is adopting relationship from device %{public}s; new state is %{public}s", v400, 0x2Au);
            v413 = v938;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v413, -1, -1);
            v414 = v400;
            v189 = v399;
            v218 = v412;
            MEMORY[0x1E12CCD70](v414, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v396, type metadata accessor for DeviceDescriptor);
            sub_1DEE4F8D4(v308, v217);
            sub_1DEE4F8D4(v308, v217);
            sub_1DEE4F8D4(0, v393);
            sub_1DEE4F8D4(0, v393);
            v218 = v395;
          }

          v559 = v919;
          sub_1DEE29594((v189 + 24), &v948);
          v560 = v189;
          v561 = v950;
          v562 = v951;
          __swift_project_boxed_opaque_existential_1(&v948, v950);
          v563 = *(v562 + 16);
          v189 = v560;
          v564 = v903;
          (*(v563 + 120))(v903, v561);
          __swift_destroy_boxed_opaque_existential_1(&v948);
          (*(v911 + 16))(v559, v564, v912);
          v565 = v945;
          sub_1DEEACA70(v218, v559 + v945[5], type metadata accessor for DeviceDescriptor);
          sub_1DEF8D348();
          sub_1DEF8D348();
          sub_1DEE171B4(v905, &qword_1ECDE3C18, &unk_1DEF94D20);
          (*(v926 + 16))(v559 + v565[9], v564 + v565[9], v934);
          sub_1DEE273A0(v564, type metadata accessor for PairingRelationship);
          v566 = (v559 + v565[8]);
          *v566 = 0;
          v566[1] = v393;
          v927(v559, 0, 1, v565);
          v236 = v942;
          sub_1DEE29D60(v559, v942, &qword_1ECDE3C18, &unk_1DEF94D20);
LABEL_234:
          v224 = v939;
          goto LABEL_235;
        }

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v267 = sub_1DEF8D508();
        __swift_project_value_buffer(v267, qword_1ECDF6028);
        v268 = v902;
        sub_1DEEACA70(v218, v902, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v269 = sub_1DEF8D4D8();
        v270 = sub_1DEF8DCB8();
        v271 = os_log_type_enabled(v269, v270);
        v224 = v939;
        if (v271)
        {
          v272 = swift_slowAlloc();
          v273 = v189;
          v274 = swift_slowAlloc();
          v948 = v274;
          *v272 = 136446466;
          v275 = v273[66];
          v276 = v268;
          v277 = v273[67];

          v278 = sub_1DEE12A5C(v275, v277, &v948);

          *(v272 + 4) = v278;

          *(v272 + 12) = 2082;
          v279 = *v276;
          v280 = v276[1];

          v281 = sub_1DEE12A5C(v279, v280, &v948);

          *(v272 + 14) = v281;
          sub_1DEE273A0(v276, type metadata accessor for DeviceDescriptor);
          v282 = "(%{public}s) Remote device %{public}s can't become inactive without first being paired";
LABEL_70:
          _os_log_impl(&dword_1DEE0F000, v269, v270, v282, v272, 0x16u);
          swift_arrayDestroy();
          v371 = v274;
          v189 = v273;
          v224 = v939;
          v218 = v940;
          v236 = v942;
          MEMORY[0x1E12CCD70](v371, -1, -1);
          MEMORY[0x1E12CCD70](v272, -1, -1);

LABEL_72:
          v372 = v919;
          sub_1DEF8D3E8();
          v373 = v945;
          sub_1DEEACA70(v218, v372 + v945[5], type metadata accessor for DeviceDescriptor);
          sub_1DEF8D348();
          sub_1DEF8D348();
          sub_1DEF8D348();
          v374 = (v372 + v373[8]);
          *v374 = 0;
          v374[1] = 0;
LABEL_110:
          v927(v372, 0, 1, v373);
          sub_1DEE29D60(v372, v236, &qword_1ECDE3C18, &unk_1DEF94D20);
          goto LABEL_235;
        }
      }
    }

    else
    {
      v218 = v940;
      if (v936)
      {
        if (v936 == 1)
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v219 = sub_1DEF8D508();
          __swift_project_value_buffer(v219, qword_1ECDF6028);
          v220 = v900;
          sub_1DEEACA70(v218, v900, type metadata accessor for DeviceDescriptor);
          swift_retain_n();
          v221 = sub_1DEF8D4D8();
          v222 = sub_1DEF8DCB8();
          v223 = os_log_type_enabled(v221, v222);
          v224 = v939;
          if (v223)
          {
            v225 = swift_slowAlloc();
            v226 = v189;
            v227 = swift_slowAlloc();
            v948 = v227;
            *v225 = 136446466;
            v228 = v226[66];
            v229 = v220;
            v230 = v226[67];

            v231 = sub_1DEE12A5C(v228, v230, &v948);

            *(v225 + 4) = v231;

            *(v225 + 12) = 2082;
            v232 = *v229;
            v233 = v229[1];

            v234 = sub_1DEE12A5C(v232, v233, &v948);

            *(v225 + 14) = v234;
            sub_1DEE273A0(v229, type metadata accessor for DeviceDescriptor);
            _os_log_impl(&dword_1DEE0F000, v221, v222, "(%{public}s) Remote device %{public}s is pairing", v225, 0x16u);
            swift_arrayDestroy();
            v235 = v227;
            v189 = v226;
            v224 = v939;
            v218 = v940;
            v236 = v942;
            MEMORY[0x1E12CCD70](v235, -1, -1);
            MEMORY[0x1E12CCD70](v225, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v220, type metadata accessor for DeviceDescriptor);
            v236 = v942;
          }

          v372 = v919;
          sub_1DEF8D3E8();
          v373 = v945;
          sub_1DEEACA70(v218, v372 + v945[5], type metadata accessor for DeviceDescriptor);
          sub_1DEF8D348();
          sub_1DEF8D348();
          sub_1DEF8D348();
          *(v372 + v373[8]) = xmmword_1DEF91000;
          goto LABEL_110;
        }

        goto LABEL_45;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v326 = sub_1DEF8D508();
      __swift_project_value_buffer(v326, qword_1ECDF6028);
      v268 = v901;
      sub_1DEEACA70(v218, v901, type metadata accessor for DeviceDescriptor);
      swift_retain_n();
      v269 = sub_1DEF8D4D8();
      v270 = sub_1DEF8DCB8();
      v327 = os_log_type_enabled(v269, v270);
      v224 = v939;
      if (v327)
      {
        v272 = swift_slowAlloc();
        v273 = v189;
        v274 = swift_slowAlloc();
        v948 = v274;
        *v272 = 136446466;
        v328 = v273[66];
        v329 = v268;
        v330 = v273[67];

        v331 = sub_1DEE12A5C(v328, v330, &v948);

        *(v272 + 4) = v331;

        *(v272 + 12) = 2082;
        v332 = *v329;
        v333 = v329[1];

        v334 = sub_1DEE12A5C(v332, v333, &v948);

        *(v272 + 14) = v334;
        sub_1DEE273A0(v329, type metadata accessor for DeviceDescriptor);
        v282 = "(%{public}s) Remote device %{public}s is being introduced";
        goto LABEL_70;
      }
    }

    sub_1DEE273A0(v268, type metadata accessor for DeviceDescriptor);
    v236 = v942;
    goto LABEL_72;
  }

  v237 = v936;
  v238 = v934;
  v918 = v918;
  if (v936 > 1)
  {
    v239 = v940;
    if (v936 != 2)
    {
      if (v936 == 3)
      {
        v283 = v189;
        v284 = v898;
        sub_1DEE17214(v183, v898, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v944(v284, 1, v945) == 1)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        v285 = (v284 + v945[8]);
        v286 = *v285;
        v287 = v285[1];
        sub_1DEE4F8C0(*v285, v287);
        sub_1DEE273A0(v284, type metadata accessor for PairingRelationship);
        if (v287 != 2)
        {
          v937 = v286;
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v457 = sub_1DEF8D508();
          __swift_project_value_buffer(v457, qword_1ECDF6028);
          v458 = v239;
          v459 = v878;
          sub_1DEEACA70(v458, v878, type metadata accessor for DeviceDescriptor);
          v460 = v872;
          sub_1DEE17214(v183, v872, &qword_1ECDE3C18, &unk_1DEF94D20);
          v461 = v283;
          swift_retain_n();
          v462 = sub_1DEF8D4D8();
          v463 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v462, v463))
          {
            v464 = swift_slowAlloc();
            v465 = v459;
            v466 = swift_slowAlloc();
            v948 = v466;
            *v464 = 136446978;
            v467 = v283[66];
            v468 = v461[67];

            v469 = sub_1DEE12A5C(v467, v468, &v948);

            *(v464 + 4) = v469;
            v840 = v461;

            *(v464 + 12) = 2082;
            v470 = *v465;
            v471 = v465[1];

            v472 = sub_1DEE12A5C(v470, v471, &v948);

            *(v464 + 14) = v472;
            v473 = v945;
            sub_1DEE273A0(v465, type metadata accessor for DeviceDescriptor);
            *(v464 + 22) = 2082;
            v474 = v858;
            sub_1DEE17214(v460, v858, &qword_1ECDE3C18, &unk_1DEF94D20);
            if (v944(v474, 1, v473) == 1)
            {
LABEL_317:
              __break(1u);
              goto LABEL_318;
            }

            v475 = (v474 + v473[8]);
            v476 = *v475;
            v477 = v475[1];
            sub_1DEE4F8C0(*v475, v477);
            sub_1DEE273A0(v474, type metadata accessor for PairingRelationship);
            v478 = sub_1DEE5DBB0(v476, v477);
            v480 = sub_1DEE12A5C(v478, v479, &v948);

            *(v464 + 24) = v480;
            sub_1DEE171B4(v460, &qword_1ECDE3C18, &unk_1DEF94D20);
            *(v464 + 32) = 2082;
            *(v464 + 34) = sub_1DEE12A5C(0x6576697463616E69, 0xE800000000000000, &v948);
            _os_log_impl(&dword_1DEE0F000, v462, v463, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v464, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v466, -1, -1);
            MEMORY[0x1E12CCD70](v464, -1, -1);

            v283 = v840;
          }

          else
          {

            sub_1DEE273A0(v459, type metadata accessor for DeviceDescriptor);
            sub_1DEE171B4(v460, &qword_1ECDE3C18, &unk_1DEF94D20);
          }

          v605 = v875;
          sub_1DEE17214(v941, v875, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v944(v605, 1, v945) == 1)
          {
            goto LABEL_311;
          }

          sub_1DEE4F8D4(v937, v287);
          v606 = (v605 + v945[8]);
          v302 = v606[1];
          v935 = *v606;
          sub_1DEE4F8C0(v935, v302);
          sub_1DEE273A0(v605, type metadata accessor for PairingRelationship);
          v301 = 0;
          v303 = v942;
          v189 = v283;
          v238 = v934;
          v224 = v939;
          goto LABEL_216;
        }

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v288 = sub_1DEF8D508();
        __swift_project_value_buffer(v288, qword_1ECDF6028);
        v289 = v877;
        sub_1DEEACA70(v239, v877, type metadata accessor for DeviceDescriptor);
        v189 = v283;
        swift_retain_n();
        v290 = sub_1DEF8D4D8();
        v291 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v290, v291))
        {
          v292 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          v948 = v293;
          *v292 = 136446466;
          v294 = v283[66];
          v295 = v283[67];

          v296 = sub_1DEE12A5C(v294, v295, &v948);

          *(v292 + 4) = v296;

          *(v292 + 12) = 2082;
          v297 = *v289;
          v298 = v289[1];

          v299 = sub_1DEE12A5C(v297, v298, &v948);

          *(v292 + 14) = v299;
          sub_1DEE273A0(v289, type metadata accessor for DeviceDescriptor);
          _os_log_impl(&dword_1DEE0F000, v290, v291, "(%{public}s) Relationship %{public}s switched from paired to inactive", v292, 0x16u);
          swift_arrayDestroy();
          v300 = v293;
          v189 = v283;
          MEMORY[0x1E12CCD70](v300, -1, -1);
          MEMORY[0x1E12CCD70](v292, -1, -1);

          v301 = 0;
          v935 = 0;
          v302 = 3;
          v303 = v942;
          v238 = v934;
          v224 = v939;
LABEL_216:
          v216 = v938;
          goto LABEL_217;
        }

        sub_1DEE273A0(v289, type metadata accessor for DeviceDescriptor);
        v301 = 0;
        v935 = 0;
        v302 = 3;
        v303 = v942;
        v238 = v934;
LABEL_185:
        v224 = v939;
        goto LABEL_216;
      }

LABEL_50:
      if (v918 - 1 < 2)
      {

        v301 = 0;
        v302 = v237;
        v224 = v939;
        v303 = v942;
        goto LABEL_217;
      }

      v415 = v935;
      v416 = sub_1DEE8FFFC(v239, v935, v936);
      v417 = 2;
      if (!v416)
      {
        v417 = 0;
      }

      v917 = v417;
      sub_1DEE29594((v189 + 24), &v948);
      v418 = v950;
      v419 = v951;
      __swift_project_boxed_opaque_existential_1(&v948, v950);
      v420 = *(v419 + 8);
      v421 = v415;
      v422 = v893;
      MetadataStoring.pairingRelationship(remoteDeviceID:)(v421, v237, v418, v420, v893);
      __swift_destroy_boxed_opaque_existential_1(&v948);
      v423 = v422;
      v424 = v880;
      sub_1DEE17214(v423, v880, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v424, 1, v945) == 1)
      {
        LODWORD(v908) = v416;
        sub_1DEE171B4(v424, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v425 = sub_1DEF8D508();
        __swift_project_value_buffer(v425, qword_1ECDF6028);
        v426 = v239;
        v427 = v860;
        sub_1DEEACA70(v239, v860, type metadata accessor for DeviceDescriptor);
        v428 = v183;
        v429 = v859;
        sub_1DEE17214(v428, v859, &qword_1ECDE3C18, &unk_1DEF94D20);

        v430 = v936;
        sub_1DEE4F8C0(v421, v936);
        v302 = v917;
        sub_1DEE4F8C0(0, v917);

        sub_1DEE4F8C0(v421, v430);
        sub_1DEE4F8C0(0, v302);
        v431 = v421;
        v432 = sub_1DEF8D4D8();
        LODWORD(v937) = sub_1DEF8DCB8();
        v433 = os_log_type_enabled(v432, v937);
        v224 = v939;
        if (v433)
        {
          v434 = v189;
          v435 = swift_slowAlloc();
          v436 = swift_slowAlloc();
          v948 = v436;
          *v435 = 136447234;
          v437 = v434[66];
          v438 = v434[67];

          v439 = sub_1DEE12A5C(v437, v438, &v948);

          *(v435 + 4) = v439;
          v840 = v434;

          *(v435 + 12) = 2082;
          v440 = *v427;
          v441 = v427[1];

          v442 = sub_1DEE12A5C(v440, v441, &v948);

          *(v435 + 14) = v442;
          sub_1DEE273A0(v427, type metadata accessor for DeviceDescriptor);
          *(v435 + 22) = 2082;
          v443 = v847;
          sub_1DEE17214(v429, v847, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v944(v443, 1, v945) == 1)
          {
LABEL_321:
            sub_1DEE4F8D4(0, v917);
            sub_1DEE4F8D4(v935, v936);
            __break(1u);
            goto LABEL_322;
          }

          v444 = v911;
          v445 = v848;
          v446 = v912;
          (*(v911 + 16))(v848, v443, v912);
          sub_1DEE273A0(v443, type metadata accessor for PairingRelationship);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v447 = sub_1DEF8E2E8();
          v449 = v448;
          (*(v444 + 8))(v445, v446);
          v450 = sub_1DEE12A5C(v447, v449, &v948);

          *(v435 + 24) = v450;
          sub_1DEE171B4(v429, &qword_1ECDE3C18, &unk_1DEF94D20);
          *(v435 + 32) = 2082;
          v451 = v936;

          v452 = v935;
          v453 = sub_1DEE12A5C(v935, v451, &v948);
          sub_1DEE4F8D4(v452, v451);
          *(v435 + 34) = v453;
          sub_1DEE4F8D4(v452, v451);
          sub_1DEE4F8D4(v452, v451);
          *(v435 + 42) = 2082;
          if (v908)
          {
            v454 = 0x646572696170;
          }

          else
          {
            v454 = 0x6375646F72746E69;
          }

          if (v908)
          {
            v455 = 0xE600000000000000;
          }

          else
          {
            v455 = 0xEA00000000006465;
          }

          v456 = sub_1DEE12A5C(v454, v455, &v948);

          *(v435 + 44) = v456;
          v302 = v917;
          sub_1DEE4F8D4(0, v917);
          sub_1DEE4F8D4(0, v302);
          _os_log_impl(&dword_1DEE0F000, v432, v937, "(%{public}s) Relationship %{public}s (%{public}s) is migrating from unknown relationship %{public}s; state: %{public}s", v435, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v436, -1, -1);
          MEMORY[0x1E12CCD70](v435, -1, -1);

          v224 = v939;
          v426 = v940;
          v189 = v840;
        }

        else
        {

          sub_1DEE273A0(v427, type metadata accessor for DeviceDescriptor);
          sub_1DEE171B4(v429, &qword_1ECDE3C18, &unk_1DEF94D20);
          sub_1DEE4F8D4(v431, v430);
          sub_1DEE4F8D4(v431, v430);
          sub_1DEE4F8D4(0, v302);
          sub_1DEE4F8D4(0, v302);
        }

        v662 = v861;
        sub_1DEE17214(v941, v861, &qword_1ECDE3C18, &unk_1DEF94D20);
        v663 = v944(v662, 1, v945);
        v238 = v934;
        if (v663 == 1)
        {
          goto LABEL_315;
        }

        v664 = v862;
        (*(v911 + 16))(v862, v662, v912);
        sub_1DEE273A0(v662, type metadata accessor for PairingRelationship);
        v665 = v945;
        sub_1DEEACA70(v426, v664 + v945[5], type metadata accessor for DeviceDescriptor);
        sub_1DEF8D348();
        sub_1DEF8D348();
        sub_1DEE4F8C0(0, v302);
        sub_1DEF8D348();
        sub_1DEE171B4(v893, &qword_1ECDE3C18, &unk_1DEF94D20);
        v666 = (v664 + v665[8]);
        *v666 = 0;
        v666[1] = v302;
        v927(v664, 0, 1, v665);
        v303 = v942;
        sub_1DEE29D60(v664, v942, &qword_1ECDE3C18, &unk_1DEF94D20);
        v301 = 0;
        v935 = 0;
        goto LABEL_216;
      }

      v567 = v424;
      v568 = v879;
      sub_1DEEAB218(v567, v879, type metadata accessor for PairingRelationship);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v569 = sub_1DEF8D508();
      __swift_project_value_buffer(v569, qword_1ECDF6028);
      sub_1DEEACA70(v239, v198, type metadata accessor for DeviceDescriptor);
      sub_1DEE17214(v183, v885, &qword_1ECDE3C18, &unk_1DEF94D20);
      v570 = v865;
      sub_1DEEACA70(v568, v865, type metadata accessor for PairingRelationship);

      v571 = v936;
      sub_1DEE4F8C0(v421, v936);
      v572 = v917;
      sub_1DEE4F8C0(0, v917);

      sub_1DEE4F8C0(v421, v571);
      sub_1DEE4F8C0(0, v572);
      v573 = v421;
      v574 = sub_1DEF8D4D8();
      v575 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v574, v575))
      {
        LODWORD(v905) = v575;
        LODWORD(v908) = v416;
        v576 = v189;
        v577 = swift_slowAlloc();
        v903 = swift_slowAlloc();
        v948 = v903;
        *v577 = 136447490;
        v578 = v576[66];
        v579 = v576[67];

        v580 = sub_1DEE12A5C(v578, v579, &v948);

        *(v577 + 4) = v580;
        v840 = v576;

        *(v577 + 12) = 2082;
        v581 = v937;
        v582 = *v937;
        v583 = v937[1];

        v584 = sub_1DEE12A5C(v582, v583, &v948);

        *(v577 + 14) = v584;
        sub_1DEE273A0(v581, type metadata accessor for DeviceDescriptor);
        *(v577 + 22) = 2082;
        v585 = v846;
        sub_1DEE17214(v885, v846, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v944(v585, 1, v945) == 1)
        {
LABEL_322:
          sub_1DEE4F8D4(0, v917);
          result = sub_1DEE4F8D4(v935, v936);
          __break(1u);
          goto LABEL_323;
        }

        v586 = v911;
        v587 = v849;
        v588 = v912;
        (*(v911 + 16))(v849, v585, v912);
        sub_1DEE273A0(v585, type metadata accessor for PairingRelationship);
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v589 = sub_1DEF8E2E8();
        v591 = v590;
        (*(v586 + 8))(v587, v588);
        v592 = sub_1DEE12A5C(v589, v591, &v948);

        *(v577 + 24) = v592;
        sub_1DEE171B4(v885, &qword_1ECDE3C18, &unk_1DEF94D20);
        *(v577 + 32) = 2082;
        v593 = v936;

        v594 = v935;
        v595 = sub_1DEE12A5C(v935, v593, &v948);
        sub_1DEE4F8D4(v594, v593);
        *(v577 + 34) = v595;
        sub_1DEE4F8D4(v594, v593);
        sub_1DEE4F8D4(v594, v593);
        *(v577 + 42) = 2082;
        v596 = v865;
        v597 = sub_1DEF8E2E8();
        v599 = sub_1DEE12A5C(v597, v598, &v948);

        *(v577 + 44) = v599;
        sub_1DEE273A0(v596, type metadata accessor for PairingRelationship);
        *(v577 + 52) = 2082;
        if (v908)
        {
          v600 = 0x646572696170;
        }

        else
        {
          v600 = 0x6375646F72746E69;
        }

        if (v908)
        {
          v601 = 0xE600000000000000;
        }

        else
        {
          v601 = 0xEA00000000006465;
        }

        v602 = sub_1DEE12A5C(v600, v601, &v948);

        *(v577 + 54) = v602;
        v603 = v917;
        sub_1DEE4F8D4(0, v917);
        sub_1DEE4F8D4(0, v603);
        _os_log_impl(&dword_1DEE0F000, v574, v905, "(%{public}s) Relationship %{public}s (%{public}s) is migrating from relationship %{public}s (%{public}s); state: %{public}s", v577, 0x3Eu);
        v604 = v903;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v604, -1, -1);
        MEMORY[0x1E12CCD70](v577, -1, -1);

        v189 = v840;
        v303 = v942;
        v239 = v940;
      }

      else
      {

        sub_1DEE273A0(v937, type metadata accessor for DeviceDescriptor);
        sub_1DEE171B4(v885, &qword_1ECDE3C18, &unk_1DEF94D20);
        sub_1DEE4F8D4(v573, v571);
        sub_1DEE4F8D4(v573, v571);
        sub_1DEE273A0(v570, type metadata accessor for PairingRelationship);
        v667 = v917;
        sub_1DEE4F8D4(0, v917);
        sub_1DEE4F8D4(0, v667);
        v588 = v912;
        v586 = v911;
        v303 = v942;
      }

      sub_1DEE29594((v189 + 24), &v948);
      v668 = v950;
      v669 = v951;
      __swift_project_boxed_opaque_existential_1(&v948, v950);
      v670 = v879;
      (*(*(v669 + 16) + 120))(v879, v668);
      __swift_destroy_boxed_opaque_existential_1(&v948);
      v671 = *(v586 + 16);
      v672 = v919;
      v671(v919, v670, v588);
      v673 = v945;
      sub_1DEEACA70(v239, v672 + v945[5], type metadata accessor for DeviceDescriptor);
      sub_1DEF8D348();
      sub_1DEF8D348();
      sub_1DEE171B4(v893, &qword_1ECDE3C18, &unk_1DEF94D20);
      v238 = v934;
      (*(v926 + 16))(v672 + v673[9], v670 + v673[9], v934);
      v302 = v917;
      sub_1DEE4F8C0(0, v917);
      sub_1DEE273A0(v670, type metadata accessor for PairingRelationship);
      v674 = (v672 + v673[8]);
      *v674 = 0;
      v674[1] = v302;
      v927(v672, 0, 1, v673);
      sub_1DEE29D60(v672, v303, &qword_1ECDE3C18, &unk_1DEF94D20);
      v301 = 0;
      v935 = 0;
      goto LABEL_185;
    }

    v375 = v896;
    sub_1DEE17214(v183, v896, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v944(v375, 1, v945) == 1)
    {
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v376 = (v375 + v945[8]);
    v243 = *v376;
    v242 = v376[1];
    sub_1DEE4F8C0(*v376, v242);
    sub_1DEE273A0(v375, type metadata accessor for PairingRelationship);
    v224 = v939;
    v377 = v891;
    if (v242 > 1)
    {
      if (v242 != 2)
      {
        if (v242 == 3)
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v503 = sub_1DEF8D508();
          __swift_project_value_buffer(v503, qword_1ECDF6028);
          v377 = v853;
          sub_1DEEACA70(v239, v853, type metadata accessor for DeviceDescriptor);
          swift_retain_n();
          v379 = sub_1DEF8D4D8();
          v380 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v379, v380))
          {
            v381 = swift_slowAlloc();
            v504 = v377;
            v383 = v189;
            v384 = swift_slowAlloc();
            v948 = v384;
            *v381 = 136446466;
            v505 = v383[66];
            v506 = v383[67];

            v507 = sub_1DEE12A5C(v505, v506, &v948);

            *(v381 + 4) = v507;

            *(v381 + 12) = 2082;
            v508 = *v504;
            v509 = v504[1];

            v510 = sub_1DEE12A5C(v508, v509, &v948);
            v302 = 2;

            *(v381 + 14) = v510;
            sub_1DEE273A0(v504, type metadata accessor for DeviceDescriptor);
            v391 = "(%{public}s) Relationship %{public}s switched from inactive to paired";
            goto LABEL_199;
          }

LABEL_202:
          v302 = 2;

LABEL_203:
          sub_1DEE273A0(v377, type metadata accessor for DeviceDescriptor);
          v301 = 0;
          v935 = 0;
          goto LABEL_204;
        }

LABEL_168:
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v623 = sub_1DEF8D508();
        __swift_project_value_buffer(v623, qword_1ECDF6028);
        sub_1DEEACA70(v239, v377, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v624 = sub_1DEF8D4D8();
        v625 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v624, v625))
        {
          v626 = swift_slowAlloc();
          v840 = v189;
          v627 = v626;
          v628 = swift_slowAlloc();
          v948 = v628;
          *v627 = 136446466;
          v629 = v840[66];
          v630 = v840[67];

          v631 = sub_1DEE12A5C(v629, v630, &v948);

          *(v627 + 4) = v631;

          *(v627 + 12) = 2082;
          v632 = *v377;
          v633 = v377[1];

          v634 = sub_1DEE12A5C(v632, v633, &v948);
          v224 = v939;

          *(v627 + 14) = v634;
          sub_1DEE273A0(v377, type metadata accessor for DeviceDescriptor);
          _os_log_impl(&dword_1DEE0F000, v624, v625, "(%{public}s) Relationship %{public}s switched from migrating to paired", v627, 0x16u);
          swift_arrayDestroy();
          v635 = v628;
          v302 = 2;
          MEMORY[0x1E12CCD70](v635, -1, -1);
          v636 = v627;
          v189 = v840;
          v303 = v942;
          MEMORY[0x1E12CCD70](v636, -1, -1);

          sub_1DEE4F8D4(v243, v242);
LABEL_200:
          v301 = 0;
          v935 = 0;
          goto LABEL_201;
        }

        sub_1DEE4F8D4(v243, v242);
        v302 = 2;

        goto LABEL_203;
      }
    }

    else if (v242)
    {
      if (v242 == 1)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v378 = sub_1DEF8D508();
        __swift_project_value_buffer(v378, qword_1ECDF6028);
        v377 = v852;
        sub_1DEEACA70(v239, v852, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v379 = sub_1DEF8D4D8();
        v380 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v379, v380))
        {
          v381 = swift_slowAlloc();
          v382 = v377;
          v383 = v189;
          v384 = swift_slowAlloc();
          v948 = v384;
          *v381 = 136446466;
          v385 = v383[66];
          v386 = v383[67];

          v387 = sub_1DEE12A5C(v385, v386, &v948);

          *(v381 + 4) = v387;

          *(v381 + 12) = 2082;
          v388 = *v382;
          v389 = v382[1];

          v390 = sub_1DEE12A5C(v388, v389, &v948);
          v302 = 2;

          *(v381 + 14) = v390;
          sub_1DEE273A0(v382, type metadata accessor for DeviceDescriptor);
          v391 = "(%{public}s) Relationship %{public}s switched from pairing to paired";
LABEL_199:
          _os_log_impl(&dword_1DEE0F000, v379, v380, v391, v381, 0x16u);
          swift_arrayDestroy();
          v683 = v384;
          v189 = v383;
          v224 = v939;
          v303 = v942;
          MEMORY[0x1E12CCD70](v683, -1, -1);
          MEMORY[0x1E12CCD70](v381, -1, -1);

          goto LABEL_200;
        }

        goto LABEL_202;
      }

      goto LABEL_168;
    }

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v533 = sub_1DEF8D508();
    __swift_project_value_buffer(v533, qword_1ECDF6028);
    v534 = v239;
    v535 = v868;
    sub_1DEEACA70(v534, v868, type metadata accessor for DeviceDescriptor);
    v536 = v883;
    sub_1DEE17214(v183, v883, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v537 = sub_1DEF8D4D8();
    v538 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v537, v538))
    {
      v539 = swift_slowAlloc();
      v937 = swift_slowAlloc();
      v948 = v937;
      *v539 = 136446978;
      v540 = v189[66];
      v541 = v189[67];

      v542 = sub_1DEE12A5C(v540, v541, &v948);

      *(v539 + 4) = v542;
      v840 = v189;

      *(v539 + 12) = 2082;
      v543 = *v535;
      v544 = v535[1];

      v545 = sub_1DEE12A5C(v543, v544, &v948);

      *(v539 + 14) = v545;
      v546 = v945;
      v547 = v883;
      sub_1DEE273A0(v535, type metadata accessor for DeviceDescriptor);
      *(v539 + 22) = 2082;
      v548 = v850;
      sub_1DEE17214(v547, v850, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v548, 1, v546) == 1)
      {
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }

      v549 = (v548 + v546[8]);
      v550 = *v549;
      v551 = v549[1];
      sub_1DEE4F8C0(*v549, v551);
      sub_1DEE273A0(v548, type metadata accessor for PairingRelationship);
      v552 = sub_1DEE5DBB0(v550, v551);
      v554 = sub_1DEE12A5C(v552, v553, &v948);

      *(v539 + 24) = v554;
      sub_1DEE171B4(v547, &qword_1ECDE3C18, &unk_1DEF94D20);
      *(v539 + 32) = 2082;
      *(v539 + 34) = sub_1DEE12A5C(0x646572696170, 0xE600000000000000, &v948);
      _os_log_impl(&dword_1DEE0F000, v537, v538, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v539, 0x2Au);
      v555 = v937;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v555, -1, -1);
      MEMORY[0x1E12CCD70](v539, -1, -1);

      v189 = v840;
      v224 = v939;
    }

    else
    {

      sub_1DEE273A0(v535, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v536, &qword_1ECDE3C18, &unk_1DEF94D20);
    }

    v377 = v866;
    sub_1DEE17214(v941, v866, &qword_1ECDE3C18, &unk_1DEF94D20);
    v637 = v944(v377, 1, v945);
    v216 = v938;
    if (v637 == 1)
    {
      goto LABEL_314;
    }

    goto LABEL_174;
  }

  if (!v936)
  {
    v335 = v894;
    sub_1DEE17214(v183, v894, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v944(v335, 1, v945) == 1)
    {
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v336 = (v335 + v945[8]);
    v337 = *v336;
    v338 = v336[1];
    sub_1DEE4F8C0(*v336, v338);
    sub_1DEE273A0(v335, type metadata accessor for PairingRelationship);
    if (v338 - 1 <= 1)
    {
      v339 = v940;
      v238 = v934;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v340 = sub_1DEF8D508();
      __swift_project_value_buffer(v340, qword_1ECDF6028);
      v341 = v876;
      sub_1DEEACA70(v339, v876, type metadata accessor for DeviceDescriptor);
      v342 = v870;
      sub_1DEE17214(v183, v870, &qword_1ECDE3C18, &unk_1DEF94D20);
      swift_retain_n();
      v343 = sub_1DEF8D4D8();
      v344 = v189;
      v345 = sub_1DEF8DCB8();
      v346 = os_log_type_enabled(v343, v345);
      v347 = v939;
      if (!v346)
      {

        sub_1DEE273A0(v341, type metadata accessor for DeviceDescriptor);
        sub_1DEE171B4(v342, &qword_1ECDE3C18, &unk_1DEF94D20);
        v189 = v344;
        v224 = v347;
LABEL_214:
        v688 = v873;
        sub_1DEE17214(v183, v873, &qword_1ECDE3C18, &unk_1DEF94D20);
        v689 = v944(v688, 1, v945);
        v303 = v942;
        if (v689 == 1)
        {
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        sub_1DEE67760(v688);
        sub_1DEE273A0(v688, type metadata accessor for PairingRelationship);
        v301 = 0;
        v935 = 0;
        v302 = 0;
        goto LABEL_216;
      }

      v348 = swift_slowAlloc();
      v937 = swift_slowAlloc();
      *&v946 = v937;
      *v348 = 136446722;
      v349 = v344[66];
      v350 = v341;
      v351 = v344[67];

      v352 = sub_1DEE12A5C(v349, v351, &v946);

      *(v348 + 4) = v352;
      v840 = v344;

      *(v348 + 12) = 2082;
      v353 = *v350;
      v354 = v350[1];

      v355 = sub_1DEE12A5C(v353, v354, &v946);

      *(v348 + 14) = v355;
      sub_1DEE273A0(v350, type metadata accessor for DeviceDescriptor);
      *(v348 + 22) = 2082;
      v356 = v856;
      sub_1DEE17214(v342, v856, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v356, 1, v945) == 1)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v357 = (v356 + v945[8]);
      v358 = *v357;
      v359 = v357[1];
      sub_1DEE4F8C0(*v357, v359);
      sub_1DEE273A0(v356, type metadata accessor for PairingRelationship);
      if (v359 > 1)
      {
        v224 = v939;
        if (v359 == 2)
        {
          v360 = 0xE600000000000000;
          v361 = 0x646572696170;
          goto LABEL_213;
        }

        if (v359 == 3)
        {
          v360 = 0xE800000000000000;
          v361 = 0x6576697463616E69;
          goto LABEL_213;
        }
      }

      else
      {
        v224 = v939;
        if (!v359)
        {
          v361 = 0x6375646F72746E69;
          v360 = 0xEA00000000006465;
          goto LABEL_213;
        }

        if (v359 == 1)
        {
          v360 = 0xE700000000000000;
          v361 = 0x676E6972696170;
LABEL_213:
          v686 = sub_1DEE12A5C(v361, v360, &v946);

          *(v348 + 24) = v686;
          sub_1DEE171B4(v342, &qword_1ECDE3C18, &unk_1DEF94D20);
          _os_log_impl(&dword_1DEE0F000, v343, v345, "(%{public}s) Relationship %{public}s switched from %{public}s to introduced", v348, 0x20u);
          v687 = v937;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v687, -1, -1);
          MEMORY[0x1E12CCD70](v348, -1, -1);

          v183 = v941;
          v189 = v840;
          v238 = v934;
          goto LABEL_214;
        }
      }

      v948 = 0x6E6974617267696DLL;
      v949 = 0xEA00000000002867;
      MEMORY[0x1E12CB180](v358, v359);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      sub_1DEE4F8D4(v358, v359);
      v361 = v948;
      v360 = v949;
      goto LABEL_213;
    }

    v481 = v940;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v482 = sub_1DEF8D508();
    __swift_project_value_buffer(v482, qword_1ECDF6028);
    sub_1DEEACA70(v481, v199, type metadata accessor for DeviceDescriptor);
    v483 = v871;
    sub_1DEE17214(v183, v871, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v484 = v189;
    v485 = sub_1DEF8D4D8();
    v486 = sub_1DEF8DCB8();
    v487 = os_log_type_enabled(v485, v486);
    v224 = v939;
    if (!v487)
    {

      sub_1DEE273A0(v199, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v483, &qword_1ECDE3C18, &unk_1DEF94D20);
      v189 = v484;
LABEL_292:
      v836 = v874;
      sub_1DEE17214(v183, v874, &qword_1ECDE3C18, &unk_1DEF94D20);
      v837 = v944(v836, 1, v945);
      v303 = v942;
      v216 = v938;
      if (v837 == 1)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      sub_1DEE4F8D4(v337, v338);
      v838 = (v836 + v945[8]);
      v839 = v836;
      v302 = v838[1];
      v935 = *v838;
      sub_1DEE4F8C0(v935, v302);
      sub_1DEE273A0(v839, type metadata accessor for PairingRelationship);
      v301 = 0;
      v238 = v934;
LABEL_217:
      v690 = v303;
      sub_1DEE17214(v303, v216, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v216, 1, v945) != 1)
      {
        sub_1DEE4F8D4(v935, v302);
        sub_1DEE171B4(v216, &qword_1ECDE3C18, &unk_1DEF94D20);
        v236 = v303;
        v218 = v940;
        goto LABEL_235;
      }

      sub_1DEE171B4(v216, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v918)
      {
        if (v918 == 1)
        {
          v691 = v887;
          sub_1DEE17214(v941, v887, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v944(v691, 1, v945) == 1)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          v692 = *(v926 + 16);
          v692(v916, v691 + v945[6], v238);
          sub_1DEE273A0(v691, type metadata accessor for PairingRelationship);
          sub_1DEF8D348();
          if (!v301)
          {
            goto LABEL_230;
          }

LABEL_226:
          v694 = v940;
          sub_1DEF8D348();
LABEL_232:
          v701 = v912;
          v702 = v302;
          v703 = v907;
          sub_1DEE17214(v941, v907, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v944(v703, 1, v945) == 1)
          {
LABEL_301:
            __break(1u);
            goto LABEL_302;
          }

          v704 = v906;
          (*(v911 + 16))(v906, v703, v701);
          sub_1DEE273A0(v703, type metadata accessor for PairingRelationship);
          v705 = v945;
          sub_1DEEACA70(v694, v704 + v945[5], type metadata accessor for DeviceDescriptor);
          v706 = *(v926 + 32);
          v706(v704 + v705[6], v916, v238);
          v706(v704 + v705[7], v915, v238);
          v707 = (v704 + v705[8]);
          *v707 = v935;
          v707[1] = v702;
          v706(v704 + v705[9], v914, v238);
          v927(v704, 0, 1, v705);
          v236 = v690;
          sub_1DEE29D60(v704, v690, &qword_1ECDE3C18, &unk_1DEF94D20);
          v218 = v694;
          goto LABEL_234;
        }

        v917 = v302;
        v695 = v941;
        v696 = v888;
        sub_1DEE17214(v941, v888, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v944(v696, 1, v945) == 1)
        {
LABEL_309:
          __break(1u);
          goto LABEL_310;
        }

        v697 = v945;
        v692 = *(v926 + 16);
        v698 = v934;
        v692(v916, v696 + v945[6], v934);
        sub_1DEE273A0(v696, type metadata accessor for PairingRelationship);
        v699 = v889;
        sub_1DEE17214(v695, v889, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v944(v699, 1, v697) == 1)
        {
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v692(v915, v699 + v945[7], v698);
        sub_1DEE273A0(v699, type metadata accessor for PairingRelationship);
        v238 = v698;
        v302 = v917;
        if (v301)
        {
          goto LABEL_226;
        }
      }

      else
      {
        sub_1DEF8D348();
        v693 = v886;
        sub_1DEE17214(v941, v886, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v944(v693, 1, v945) == 1)
        {
LABEL_308:
          __break(1u);
          goto LABEL_309;
        }

        v692 = *(v926 + 16);
        v692(v915, v693 + v945[7], v238);
        sub_1DEE273A0(v693, type metadata accessor for PairingRelationship);
        if (v301)
        {
          goto LABEL_226;
        }
      }

LABEL_230:
      v700 = v904;
      sub_1DEE17214(v941, v904, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v700, 1, v945) == 1)
      {
LABEL_302:
        __break(1u);
        goto LABEL_303;
      }

      v694 = v940;
      v692(v914, v700 + v945[9], v238);
      sub_1DEE273A0(v700, type metadata accessor for PairingRelationship);
      goto LABEL_232;
    }

    LODWORD(v937) = v486;
    v488 = v199;
    v489 = swift_slowAlloc();
    v936 = swift_slowAlloc();
    *&v946 = v936;
    *v489 = 136446978;
    v490 = v484[66];
    v491 = v484[67];

    v492 = sub_1DEE12A5C(v490, v491, &v946);

    *(v489 + 4) = v492;
    v840 = v484;

    *(v489 + 12) = 2082;
    v493 = *v488;
    v494 = v488[1];

    v495 = sub_1DEE12A5C(v493, v494, &v946);

    *(v489 + 14) = v495;
    sub_1DEE273A0(v488, type metadata accessor for DeviceDescriptor);
    *(v489 + 22) = 2082;
    v496 = v857;
    sub_1DEE17214(v483, v857, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v944(v496, 1, v945) == 1)
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    v497 = v483;
    v498 = (v496 + v945[8]);
    v499 = *v498;
    v500 = v498[1];
    sub_1DEE4F8C0(*v498, v500);
    sub_1DEE273A0(v496, type metadata accessor for PairingRelationship);
    if (v500 > 1)
    {
      v224 = v939;
      if (v500 == 2)
      {
        v501 = 0xE600000000000000;
        v502 = 0x646572696170;
        goto LABEL_291;
      }

      if (v500 == 3)
      {
        v501 = 0xE800000000000000;
        v502 = 0x6576697463616E69;
        goto LABEL_291;
      }
    }

    else
    {
      v224 = v939;
      if (!v500)
      {
        v502 = 0x6375646F72746E69;
        v501 = 0xEA00000000006465;
        goto LABEL_291;
      }

      if (v500 == 1)
      {
        v501 = 0xE700000000000000;
        v502 = 0x676E6972696170;
LABEL_291:
        v834 = sub_1DEE12A5C(v502, v501, &v946);

        *(v489 + 24) = v834;
        sub_1DEE171B4(v497, &qword_1ECDE3C18, &unk_1DEF94D20);
        *(v489 + 32) = 2082;
        *(v489 + 34) = sub_1DEE12A5C(0x6375646F72746E69, 0xEA00000000006465, &v946);
        _os_log_impl(&dword_1DEE0F000, v485, v937, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v489, 0x2Au);
        v835 = v936;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v835, -1, -1);
        MEMORY[0x1E12CCD70](v489, -1, -1);

        v189 = v840;
        v183 = v941;
        goto LABEL_292;
      }
    }

    v948 = 0x6E6974617267696DLL;
    v949 = 0xEA00000000002867;
    MEMORY[0x1E12CB180](v499, v500);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    sub_1DEE4F8D4(v499, v500);
    v502 = v948;
    v501 = v949;
    goto LABEL_291;
  }

  v239 = v940;
  if (v936 != 1)
  {
    goto LABEL_50;
  }

  v240 = v897;
  sub_1DEE17214(v183, v897, &qword_1ECDE3C18, &unk_1DEF94D20);
  if (v944(v240, 1, v945) == 1)
  {
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v241 = (v240 + v945[8]);
  v243 = *v241;
  v242 = v241[1];
  sub_1DEE4F8C0(*v241, v242);
  sub_1DEE273A0(v240, type metadata accessor for PairingRelationship);
  v224 = v939;
  v244 = v892;
  if ((v242 - 2) < 2)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v511 = sub_1DEF8D508();
    __swift_project_value_buffer(v511, qword_1ECDF6028);
    v512 = v239;
    v239 = v869;
    sub_1DEEACA70(v512, v869, type metadata accessor for DeviceDescriptor);
    v513 = v884;
    sub_1DEE17214(v183, v884, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v514 = sub_1DEF8D4D8();
    v515 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v514, v515))
    {
      v937 = v243;
      v516 = v945;
      v517 = swift_slowAlloc();
      v518 = v239;
      v239 = swift_slowAlloc();
      v948 = v239;
      *v517 = 136446978;
      v519 = v189[66];
      v520 = v189[67];

      v521 = sub_1DEE12A5C(v519, v520, &v948);

      *(v517 + 4) = v521;
      v840 = v189;

      *(v517 + 12) = 2082;
      v522 = *v518;
      v523 = v518[1];

      v524 = sub_1DEE12A5C(v522, v523, &v948);

      *(v517 + 14) = v524;
      v525 = v884;
      sub_1DEE273A0(v518, type metadata accessor for DeviceDescriptor);
      *(v517 + 22) = 2082;
      v526 = v851;
      sub_1DEE17214(v525, v851, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v944(v526, 1, v516) == 1)
      {
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v527 = (v526 + v516[8]);
      v528 = *v527;
      v529 = v527[1];
      sub_1DEE4F8C0(*v527, v529);
      sub_1DEE273A0(v526, type metadata accessor for PairingRelationship);
      v530 = sub_1DEE5DBB0(v528, v529);
      v532 = sub_1DEE12A5C(v530, v531, &v948);

      *(v517 + 24) = v532;
      sub_1DEE171B4(v525, &qword_1ECDE3C18, &unk_1DEF94D20);
      *(v517 + 32) = 2082;
      *(v517 + 34) = sub_1DEE12A5C(0x676E6972696170, 0xE700000000000000, &v948);
      _os_log_impl(&dword_1DEE0F000, v514, v515, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v517, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v239, -1, -1);
      MEMORY[0x1E12CCD70](v517, -1, -1);

      v189 = v840;
      v224 = v939;
      v377 = v867;
      v243 = v937;
    }

    else
    {

      sub_1DEE273A0(v239, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v513, &qword_1ECDE3C18, &unk_1DEF94D20);
      v377 = v867;
    }

    sub_1DEE17214(v941, v377, &qword_1ECDE3C18, &unk_1DEF94D20);
    v622 = v944(v377, 1, v945);
    v216 = v938;
    if (v622 == 1)
    {
      __break(1u);
      goto LABEL_168;
    }

LABEL_174:
    sub_1DEE4F8D4(v243, v242);
    v638 = (v377 + v945[8]);
    v302 = v638[1];
    v935 = *v638;
    sub_1DEE4F8C0(v935, v302);
    sub_1DEE273A0(v377, type metadata accessor for PairingRelationship);
    v301 = 0;
    v238 = v934;
    v303 = v942;
    goto LABEL_217;
  }

  if (!v242)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v607 = sub_1DEF8D508();
    __swift_project_value_buffer(v607, qword_1ECDF6028);
    v608 = v854;
    sub_1DEEACA70(v239, v854, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v609 = sub_1DEF8D4D8();
    v610 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v609, v610))
    {
      v611 = swift_slowAlloc();
      v612 = v608;
      v613 = v189;
      v614 = swift_slowAlloc();
      v948 = v614;
      *v611 = 136446466;
      v615 = v613[66];
      v616 = v613[67];

      v617 = sub_1DEE12A5C(v615, v616, &v948);

      *(v611 + 4) = v617;

      *(v611 + 12) = 2082;
      v618 = *v612;
      v619 = v612[1];

      v620 = sub_1DEE12A5C(v618, v619, &v948);

      *(v611 + 14) = v620;
      sub_1DEE273A0(v612, type metadata accessor for DeviceDescriptor);
      _os_log_impl(&dword_1DEE0F000, v609, v610, "(%{public}s) Relationship %{public}s switched from introduced to pairing", v611, 0x16u);
      swift_arrayDestroy();
      v621 = v614;
      v189 = v613;
      v224 = v939;
      v303 = v942;
      MEMORY[0x1E12CCD70](v621, -1, -1);
      MEMORY[0x1E12CCD70](v611, -1, -1);

      v935 = 0;
      v301 = 1;
      v302 = 1;
LABEL_201:
      v238 = v934;
      goto LABEL_216;
    }

    sub_1DEE273A0(v608, type metadata accessor for DeviceDescriptor);
    v935 = 0;
    v302 = 1;
    v301 = 1;
LABEL_204:
    v238 = v934;
    v216 = v938;
    v303 = v942;
    goto LABEL_217;
  }

  if (v242 != 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v639 = sub_1DEF8D508();
    __swift_project_value_buffer(v639, qword_1ECDF6028);
    v640 = v855;
    sub_1DEEACA70(v239, v855, type metadata accessor for DeviceDescriptor);
    v641 = v863;
    sub_1DEE17214(v183, v863, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v642 = sub_1DEF8D4D8();
    v643 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v642, v643))
    {
      v644 = v189;
      v645 = swift_slowAlloc();
      v646 = swift_slowAlloc();
      v948 = v646;
      *v645 = 136446722;
      v647 = v644[66];
      v648 = v644[67];

      v649 = sub_1DEE12A5C(v647, v648, &v948);

      *(v645 + 4) = v649;
      v840 = v644;

      *(v645 + 12) = 2082;
      v650 = *v640;
      v651 = v640[1];

      v652 = sub_1DEE12A5C(v650, v651, &v948);

      *(v645 + 14) = v652;
      v653 = v945;
      sub_1DEE273A0(v640, type metadata accessor for DeviceDescriptor);
      *(v645 + 22) = 2082;
      v654 = v863;
      v655 = v843;
      sub_1DEE17214(v863, v843, &qword_1ECDE3C18, &unk_1DEF94D20);
      result = (v944)(v655, 1, v653);
      if (result == 1)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      v656 = (v655 + v653[8]);
      v657 = *v656;
      v658 = v656[1];
      sub_1DEE4F8C0(*v656, v658);
      sub_1DEE273A0(v655, type metadata accessor for PairingRelationship);
      v659 = sub_1DEE5DBB0(v657, v658);
      v661 = sub_1DEE12A5C(v659, v660, &v948);

      *(v645 + 24) = v661;
      sub_1DEE171B4(v654, &qword_1ECDE3C18, &unk_1DEF94D20);
      _os_log_impl(&dword_1DEE0F000, v642, v643, "(%{public}s) Relationship %{public}s switched from %{public}s to pairing", v645, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v646, -1, -1);
      MEMORY[0x1E12CCD70](v645, -1, -1);

      sub_1DEE4F8D4(v243, v242);
      v301 = 0;
      v935 = 0;
      v302 = 1;
      v189 = v840;
      v303 = v942;
      v224 = v939;
      goto LABEL_201;
    }

    sub_1DEE4F8D4(v243, v242);

    sub_1DEE273A0(v640, type metadata accessor for DeviceDescriptor);
    sub_1DEE171B4(v641, &qword_1ECDE3C18, &unk_1DEF94D20);
    v301 = 0;
    v935 = 0;
    v302 = 1;
    goto LABEL_204;
  }

  if (!v918)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v675 = sub_1DEF8D508();
    __swift_project_value_buffer(v675, qword_1ECDF6028);
    v377 = v842;
    sub_1DEEACA70(v239, v842, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v379 = sub_1DEF8D4D8();
    v380 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      v676 = v377;
      v383 = v189;
      v384 = swift_slowAlloc();
      v948 = v384;
      *v381 = 136446466;
      v677 = v383[66];
      v678 = v383[67];

      v679 = sub_1DEE12A5C(v677, v678, &v948);

      *(v381 + 4) = v679;

      *(v381 + 12) = 2082;
      v680 = *v676;
      v681 = v676[1];

      v682 = sub_1DEE12A5C(v680, v681, &v948);
      v302 = 2;

      *(v381 + 14) = v682;
      sub_1DEE273A0(v676, type metadata accessor for DeviceDescriptor);
      v391 = "(%{public}s) Relationship %{public}s switched from pairing to paired via pairing";
      goto LABEL_199;
    }

    goto LABEL_202;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v245 = sub_1DEF8D508();
  __swift_project_value_buffer(v245, qword_1ECDF6028);
  sub_1DEEACA70(v239, v244, type metadata accessor for DeviceDescriptor);
  v246 = v844;
  sub_1DEE17214(v183, v844, &qword_1ECDE3C18, &unk_1DEF94D20);
  swift_retain_n();
  v247 = sub_1DEF8D4D8();
  v248 = sub_1DEF8DCB8();
  if (!os_log_type_enabled(v247, v248))
  {

    sub_1DEE273A0(v244, type metadata accessor for DeviceDescriptor);
    sub_1DEE171B4(v246, &qword_1ECDE3C18, &unk_1DEF94D20);
    goto LABEL_206;
  }

  v249 = swift_slowAlloc();
  v250 = v244;
  v251 = v189;
  v252 = swift_slowAlloc();
  v948 = v252;
  *v249 = 136446978;
  v253 = v251[66];
  v254 = v251[67];

  v255 = sub_1DEE12A5C(v253, v254, &v948);

  *(v249 + 4) = v255;
  v840 = v251;

  *(v249 + 12) = 2082;
  v256 = *v250;
  v257 = v250[1];

  v258 = sub_1DEE12A5C(v256, v257, &v948);

  *(v249 + 14) = v258;
  sub_1DEE273A0(v250, type metadata accessor for DeviceDescriptor);
  *(v249 + 22) = 2082;
  v259 = v841;
  sub_1DEE17214(v246, v841, &qword_1ECDE3C18, &unk_1DEF94D20);
  result = (v944)(v259, 1, v945);
  if (result != 1)
  {
    v261 = (v259 + v945[8]);
    v262 = *v261;
    v263 = v261[1];
    sub_1DEE4F8C0(*v261, v263);
    sub_1DEE273A0(v259, type metadata accessor for PairingRelationship);
    v264 = sub_1DEE5DBB0(v262, v263);
    v266 = sub_1DEE12A5C(v264, v265, &v948);

    *(v249 + 24) = v266;
    sub_1DEE171B4(v246, &qword_1ECDE3C18, &unk_1DEF94D20);
    *(v249 + 32) = 2082;
    *(v249 + 34) = sub_1DEE12A5C(0x676E6972696170, 0xE700000000000000, &v948);
    _os_log_impl(&dword_1DEE0F000, v247, v248, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v249, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v252, -1, -1);
    MEMORY[0x1E12CCD70](v249, -1, -1);

    v224 = v939;
    v183 = v941;
    v189 = v840;
LABEL_206:
    v684 = v845;
    sub_1DEE17214(v183, v845, &qword_1ECDE3C18, &unk_1DEF94D20);
    result = (v944)(v684, 1, v945);
    v238 = v934;
    v216 = v938;
    if (result == 1)
    {
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

    v685 = (v684 + v945[8]);
    v302 = v685[1];
    v935 = *v685;
    sub_1DEE4F8C0(v935, v302);
    sub_1DEE273A0(v684, type metadata accessor for PairingRelationship);
    v301 = 0;
    v303 = v942;
    goto LABEL_217;
  }

LABEL_325:
  __break(1u);
  return result;
}
uint64_t sub_20D83EE10()
{

  *(v0 + 400) = *(v0 + 136);
  *(v0 + 384) = *(v0 + 144);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_20D83EE84, v1, v2);
}

uint64_t sub_20D83EE84()
{
  v76 = v0;
  if (*(v0 + 400) == 1)
  {
    v1 = *(v0 + 384);
    if (v1)
    {
      v2 = v1;

      v3 = sub_20D9734D8();
      v4 = sub_20D975478();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 216);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v75[0] = v7;
        *v6 = 136315650;
        *(v6 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v75);
        *(v6 + 12) = 2080;
        *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v75);
        *(v6 + 22) = 2080;
        v8 = sub_20D972F48();
        v10 = sub_20D7F4DC8(v8, v9, v75);

        *(v6 + 24) = v10;
        _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): making snapshot with loc (%s)...", v6, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v7, -1, -1);
        MEMORY[0x20F324260](v6, -1, -1);
      }

      v11 = v2;
      v12 = sub_20D9734D8();
      v13 = sub_20D975448();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 384);
        v15 = *(v0 + 288);
        v16 = *(v0 + 216);
        v17 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v75[0] = v73;
        *v17 = 136315906;
        *(v17 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v75);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_20D7F4DC8(*(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v75);
        *(v17 + 22) = 2112;
        *(v17 + 24) = v11;
        *v72 = v14;
        *(v17 + 32) = 2080;
        swift_getKeyPath();
        *(v0 + 200) = v16;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        v18 = v11;
        sub_20D972858();

        v19 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
        swift_beginAccess();
        sub_20D84BC18(v16 + v19, v15, type metadata accessor for GridForecastSnapshot);
        v20 = GridForecastSnapshot.description.getter();
        v22 = v21;
        sub_20D84BADC(v15, type metadata accessor for GridForecastSnapshot);
        v23 = sub_20D7F4DC8(v20, v22, v75);

        *(v17 + 34) = v23;
        _os_log_impl(&dword_20D7C9000, v12, v13, "\t...%s(%s): loc: %@: %s", v17, 0x2Au);
        sub_20D7E3944(v72, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v72, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v73, -1, -1);
        MEMORY[0x20F324260](v17, -1, -1);
      }

      v24 = swift_task_alloc();
      *(v0 + 392) = v24;
      *v24 = v0;
      v24[1] = sub_20D83FB14;
      v25 = *(v0 + 384);

      return sub_20D836348(v25);
    }

    v46 = sub_20D9734D8();
    v47 = sub_20D975458();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v0 + 216);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v75);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_20D7F4DC8(*(v48 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v48 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v75);
      _os_log_impl(&dword_20D7C9000, v46, v47, "%s(%s): Could not retrieve location, returning 'No Location Found' error snapshot", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v50, -1, -1);
      MEMORY[0x20F324260](v49, -1, -1);
    }

    v51 = *(v0 + 288);
    v70 = *(v0 + 280);
    v53 = *(v0 + 264);
    v52 = *(v0 + 272);
    v54 = *(v0 + 248);
    v56 = *(v0 + 232);
    v55 = *(v0 + 240);
    v57 = *(v0 + 224);
    v74 = *(v0 + 216);
    *v53 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v54);
    sub_20D84BC18(v53, v51, type metadata accessor for GridForecastSnapshotType);
    v58 = *(v55 + 16);
    v58(v51 + v52[5], v54, v56);
    v59 = (v51 + v52[6]);
    *v59 = 11565;
    v59[1] = 0xE200000000000000;
    v60 = (v51 + v52[7]);
    *v60 = 11565;
    v60[1] = 0xE200000000000000;
    *(v51 + v52[9]) = 4;
    v58(v57, v54, v56);
    (*(v55 + 56))(v57, 0, 1, v56);
    sub_20D87934C(v57);
    v62 = v61;
    sub_20D7E3944(v57, &qword_27C838A00, &qword_20D976750);
    v75[0] = v62;
    v63 = sub_20D8797EC(v75);

    (*(v55 + 8))(v54, v56);
    sub_20D84BADC(v53, type metadata accessor for GridForecastSnapshotType);
    *(v51 + v52[8]) = v63;
    v71 = v51;
    sub_20D84BC18(v51, v70, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v64 = swift_task_alloc();
    *(v64 + 16) = v74;
    *(v64 + 24) = v70;
    *(v0 + 168) = v74;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v70, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 176) = v74;
    sub_20D972858();
  }

  else
  {

    v27 = sub_20D9734D8();
    v28 = sub_20D975458();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 216);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v75[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v75);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_20D7F4DC8(*(v29 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v29 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v75);
      _os_log_impl(&dword_20D7C9000, v27, v28, "%s(%s): Location NOT authorized, returning 'No Location Permission' error snapshot", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v31, -1, -1);
      MEMORY[0x20F324260](v30, -1, -1);
    }

    v32 = *(v0 + 288);
    v68 = *(v0 + 280);
    v69 = *(v0 + 384);
    v33 = *(v0 + 264);
    v34 = *(v0 + 272);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v38 = *(v0 + 224);
    v74 = *(v0 + 216);
    *v33 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v35);
    sub_20D84BC18(v33, v32, type metadata accessor for GridForecastSnapshotType);
    v39 = *(v36 + 16);
    v39(v32 + v34[5], v35, v37);
    v40 = (v32 + v34[6]);
    *v40 = 11565;
    v40[1] = 0xE200000000000000;
    v41 = (v32 + v34[7]);
    *v41 = 11565;
    v41[1] = 0xE200000000000000;
    *(v32 + v34[9]) = 3;
    v39(v38, v35, v37);
    (*(v36 + 56))(v38, 0, 1, v37);
    sub_20D87934C(v38);
    v43 = v42;
    sub_20D7E3944(v38, &qword_27C838A00, &qword_20D976750);
    v75[0] = v43;
    v44 = sub_20D8797EC(v75);

    (*(v36 + 8))(v35, v37);
    sub_20D84BADC(v33, type metadata accessor for GridForecastSnapshotType);
    *(v32 + v34[8]) = v44;
    v71 = v32;
    sub_20D84BC18(v32, v68, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v45 = swift_task_alloc();
    *(v45 + 16) = v74;
    *(v45 + 24) = v68;
    *(v0 + 152) = v74;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v68, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 160) = v74;
    sub_20D972858();
  }

  sub_20D84BADC(v71, type metadata accessor for GridForecastSnapshot);
  v65 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  v66 = *(v0 + 208);
  swift_beginAccess();
  sub_20D84BC18(v74 + v65, v66, type metadata accessor for GridForecastSnapshot);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_20D83FB14()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_20D83FC34, v3, v2);
}

uint64_t sub_20D83FC34()
{
  v21 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  v3 = &qword_281125000;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[36];
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v6 = 136315650;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, &v20);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    *(v6 + 22) = 2080;
    swift_getKeyPath();
    v0[24] = v5;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v7 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v8 = v5 + v7;
    v3 = &qword_281125000;
    sub_20D84BC18(v8, v4, type metadata accessor for GridForecastSnapshot);
    v9 = GridForecastSnapshot.description.getter();
    v11 = v10;
    sub_20D84BADC(v4, type metadata accessor for GridForecastSnapshot);
    v12 = sub_20D7F4DC8(v9, v11, &v20);

    *(v6 + 24) = v12;
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s(%s): updated locationSnapshot: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v19, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v13 = v0[48];
  v14 = v0[27];
  swift_getKeyPath();
  v0[23] = v14;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v15 = v3[476];
  v16 = v0[26];
  swift_beginAccess();
  sub_20D84BC18(v14 + v15, v16, type metadata accessor for GridForecastSnapshot);

  v17 = v0[1];

  return v17();
}

uint64_t sub_20D83FFC8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_20D9752E8();
  v2[13] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](sub_20D840060, v4, v3);
}

uint64_t sub_20D840060()
{
  v49 = v0;
  if (qword_281127100 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = sub_20D9734F8();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  v4 = &unk_28112A000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9846F0, &v48);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v48);
    *(v6 + 22) = 2080;
    v8 = sub_20D975368();
    v10 = sub_20D7F4DC8(v8, v9, &v48);
    v4 = &unk_28112A000;

    *(v6 + 24) = v10;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): renewing fixed snapshots for %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  *(v0 + 136) = 0x800000020D9846F0;
  v11 = *(v0 + 88);
  v12 = *(v11 + 32);
  *(v0 + 225) = v12;
  v13 = 1 << v12;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 56);
  v16 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *(v0 + 144) = v4[376];
  *(v0 + 152) = v16;
  v17 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  *(v0 + 160) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  *(v0 + 168) = v17;

  swift_beginAccess();
  swift_beginAccess();
  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = *(v0 + 88);
LABEL_13:
      *(v0 + 176) = v15;
      *(v0 + 184) = v18;
      v21 = (*(v19 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
      v22 = *v21;
      *(v0 + 192) = *v21;
      v23 = v21[1];
      *(v0 + 200) = v23;

      v24 = sub_20D9734D8();
      v25 = sub_20D975478();

      v47 = v22;
      if (os_log_type_enabled(v24, v25))
      {
        v45 = *(v0 + 136);
        v26 = *(v0 + 96) + *(v0 + 144);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v48 = v28;
        *v27 = 136315650;
        *(v27 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v45, &v48);
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_20D7F4DC8(*v26, *(v26 + 8), &v48);
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_20D7F4DC8(v22, v23, &v48);
        _os_log_impl(&dword_20D7C9000, v24, v25, "\t...%s(%s): checking %s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v28, -1, -1);
        MEMORY[0x20F324260](v27, -1, -1);
      }

      v29 = *(v0 + 96);
      v30 = v29 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v29;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972858();

      v31 = type metadata accessor for GridForecastSnapshot(0);
      v32 = (v30 + *(v31 + 24));
      if (*v32 == v47 && v32[1] == v23)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v34 = *(v0 + 96);
      v46 = v34 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v34;
      sub_20D972858();

      v35 = (v46 + *(v31 + 24));
      if (*v35 == v47 && v35[1] == v23)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v15 &= v15 - 1;

      if (!v15)
      {
        goto LABEL_9;
      }
    }

    v44 = swift_task_alloc();
    *(v0 + 208) = v44;
    *v44 = v0;
    v44[1] = sub_20D8407B4;

    return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v47, v23, 0);
  }

  else
  {
    while (1)
    {
LABEL_9:
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v20 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 88);
      v15 = *(v19 + 8 * v20 + 56);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_13;
      }
    }

    v36 = sub_20D9734D8();
    v37 = sub_20D975478();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 96) + *(v0 + 144);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v38, &v48);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20D7F4DC8(*v39, *(v39 + 8), &v48);
      _os_log_impl(&dword_20D7C9000, v36, v37, "\t...%s(%s): finished.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v41, -1, -1);
      MEMORY[0x20F324260](v40, -1, -1);
    }

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_20D8407B4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_20D840DEC;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_20D8408D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_20D8408D0()
{
  v32 = v0;
  v1 = *(v0 + 184);
  v2 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v2)
  {
    while (1)
    {
      v3 = *(v0 + 88);
LABEL_7:
      *(v0 + 176) = v2;
      *(v0 + 184) = v1;
      v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
      v6 = *v5;
      *(v0 + 192) = *v5;
      v7 = v5[1];
      *(v0 + 200) = v7;

      v8 = sub_20D9734D8();
      v9 = sub_20D975478();

      v30 = v6;
      if (os_log_type_enabled(v8, v9))
      {
        v28 = *(v0 + 136);
        v10 = *(v0 + 96) + *(v0 + 144);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v31 = v12;
        *v11 = 136315650;
        *(v11 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v28, &v31);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_20D7F4DC8(*v10, *(v10 + 8), &v31);
        *(v11 + 22) = 2080;
        *(v11 + 24) = sub_20D7F4DC8(v6, v7, &v31);
        _os_log_impl(&dword_20D7C9000, v8, v9, "\t...%s(%s): checking %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v12, -1, -1);
        MEMORY[0x20F324260](v11, -1, -1);
      }

      v13 = *(v0 + 96);
      v14 = v13 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v13;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972858();

      v15 = type metadata accessor for GridForecastSnapshot(0);
      v16 = (v14 + *(v15 + 24));
      if (*v16 == v30 && v16[1] == v7)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v18 = *(v0 + 96);
      v29 = v18 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v18;
      sub_20D972858();

      v19 = (v29 + *(v15 + 24));
      if (*v19 == v30 && v19[1] == v7)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v2 &= v2 - 1;

      if (!v2)
      {
        goto LABEL_3;
      }
    }

    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v27[1] = sub_20D8407B4;

    GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v30, v7, 0);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 88);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v20 = sub_20D9734D8();
    v21 = sub_20D975478();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 136);
      v23 = *(v0 + 96) + *(v0 + 144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v22, &v31);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20D7F4DC8(*v23, *(v23 + 8), &v31);
      _os_log_impl(&dword_20D7C9000, v20, v21, "\t...%s(%s): finished.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v25, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    v26 = *(v0 + 8);

    v26();
  }
}

void sub_20D840DEC()
{
  v65 = v0;
  v1 = *(v0 + 216);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  v5 = &unk_20D977000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96) + *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v64 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v7, &v64);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*v8, *(v8 + 8), &v64);
    *(v9 + 22) = 2112;
    v12 = v6;
    v5 = &unk_20D977000;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s):ERROR: %@", v9, 0x20u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v14 = *(v0 + 216);
  *(v0 + 80) = v14;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v16 = swift_dynamicCast();
  v17 = *(v0 + 216);
  if (v16)
  {
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 224);
  }

  else
  {

    v21 = v17;
    v22 = sub_20D9734D8();
    v23 = sub_20D975458();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v5;
      v25 = *(v0 + 216);
      v26 = *(v0 + 136);
      v27 = *(v0 + 96) + *(v0 + 144);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64 = v30;
      *v28 = v24[203];
      *(v28 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v26, &v64);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_20D7F4DC8(*v27, *(v27 + 8), &v64);
      *(v28 + 22) = 2112;
      v31 = v25;
      v5 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v32;
      *v29 = v32;
      _os_log_impl(&dword_20D7C9000, v22, v23, "%s(%s): UNEXPECTED ISSUE: %@", v28, 0x20u);
      sub_20D7E3944(v29, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v28, -1, -1);
    }

    v17 = *(v0 + 216);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = 11;
  }

  LOBYTE(v64) = v20;
  sub_20D83CC04(&v64, v18, v19);

  v33 = *(v0 + 184);
  v34 = (*(v0 + 176) - 1) & *(v0 + 176);
  v60 = v5[203];
  if (v34)
  {
    while (1)
    {
      v35 = *(v0 + 88);
LABEL_14:
      *(v0 + 176) = v34;
      *(v0 + 184) = v33;
      v37 = (*(v35 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v34)))));
      v38 = *v37;
      *(v0 + 192) = *v37;
      v39 = v37[1];
      *(v0 + 200) = v39;

      v40 = sub_20D9734D8();
      v41 = sub_20D975478();

      v63 = v38;
      if (os_log_type_enabled(v40, v41))
      {
        v61 = *(v0 + 136);
        v42 = *(v0 + 96) + *(v0 + 144);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v64 = v44;
        *v43 = v60;
        *(v43 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v61, &v64);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_20D7F4DC8(*v42, *(v42 + 8), &v64);
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_20D7F4DC8(v38, v39, &v64);
        _os_log_impl(&dword_20D7C9000, v40, v41, "\t...%s(%s): checking %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v44, -1, -1);
        MEMORY[0x20F324260](v43, -1, -1);
      }

      v45 = *(v0 + 96);
      v46 = v45 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v45;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972858();

      v47 = type metadata accessor for GridForecastSnapshot(0);
      v48 = (v46 + *(v47 + 24));
      if (*v48 == v63 && v48[1] == v39)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v50 = *(v0 + 96);
      v62 = v50 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v50;
      sub_20D972858();

      v51 = (v62 + *(v47 + 24));
      if (*v51 == v63 && v51[1] == v39)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v34 &= v34 - 1;

      if (!v34)
      {
        goto LABEL_10;
      }
    }

    v59 = swift_task_alloc();
    *(v0 + 208) = v59;
    *v59 = v0;
    v59[1] = sub_20D8407B4;

    GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v63, v39, 0);
  }

  else
  {
    while (1)
    {
LABEL_10:
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return;
      }

      if (v36 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v0 + 88);
      v34 = *(v35 + 8 * v36 + 56);
      ++v33;
      if (v34)
      {
        v33 = v36;
        goto LABEL_14;
      }
    }

    v52 = sub_20D9734D8();
    v53 = sub_20D975478();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 136);
      v55 = *(v0 + 96) + *(v0 + 144);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      *v56 = 136315394;
      *(v56 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v54, &v64);
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_20D7F4DC8(*v55, *(v55 + 8), &v64);
      _os_log_impl(&dword_20D7C9000, v52, v53, "\t...%s(%s): finished.", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v57, -1, -1);
      MEMORY[0x20F324260](v56, -1, -1);
    }

    v58 = *(v0 + 8);

    v58();
  }
}

uint64_t sub_20D841678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v6[10] = swift_task_alloc();
  v7 = sub_20D972A28();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_20D9729E8();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8417D4, 0, 0);
}

void sub_20D8417D4()
{
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[17] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v14);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_20D7F4DC8(v6, v4, &v14);
    _os_log_impl(&dword_20D7C9000, v2, v3, "\t...%s(%s):%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_20D972AA8();
  v0[18] = sub_20D972A98();
  (*(v10 + 104))(v9, *MEMORY[0x277D17EE8], v11);
  v13 = *MEMORY[0x277D07580] + MEMORY[0x277D07580];
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_20D841A94;
  v17 = 1;
  v16 = 0xE000000000000000;

  __asm { BR              X8 }
}

uint64_t sub_20D841A94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = v2;

  (*(v4[15] + 8))(v4[16], v4[14]);

  if (v2)
  {
    v6 = sub_20D8423BC;
  }

  else
  {
    v6 = sub_20D841C24;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20D841C24()
{
  v42 = v0;
  v1 = v0[22];
  sub_20D971C68();
  swift_allocObject();
  sub_20D971C58();
  sub_20D84DFEC(&qword_281125108, MEMORY[0x277D17FB0], MEMORY[0x277D17FC0]);
  sub_20D971C48();
  if (v1)
  {
    v2 = v1;
    sub_20D84D374(v0[20], v0[21]);

LABEL_8:
    v0[23] = v2;

    v22 = v2;
    v23 = sub_20D9734D8();
    v24 = sub_20D975458();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[9];
      v40 = v0[8];
      v26 = v0[7];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v27 = 136315906;
      *(v27 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, v41);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_20D7F4DC8(*(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v41);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_20D7F4DC8(v26, v40, v41);
      *(v27 + 32) = 2112;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 34) = v31;
      *v28 = v31;
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s(%s):%s: EG fetch failed with: %@", v27, 0x2Au);
      sub_20D7E3944(v28, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v28, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v29, -1, -1);
      MEMORY[0x20F324260](v27, -1, -1);
    }

    sub_20D84D14C();
    v0[24] = swift_allocError();
    v0[25] = v32;
    sub_20D9752E8();
    v0[26] = sub_20D9752D8();
    v34 = sub_20D975298();

    return MEMORY[0x2822009F8](sub_20D842298, v34, v33);
  }

  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  sub_20D975728();
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v39 = v0[8];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41[0] = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, v41);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v41);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_20D7F4DC8(v8, v39, v41);
    *(v9 + 32) = 2080;
    v11 = sub_20D7F4DC8(v4, v3, v41);

    *(v9 + 34) = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "\t...%s(%s):%s returning: %s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[10];
  sub_20D972A18();
  v13 = sub_20D9729D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v17 = v0[20];
  v16 = v0[21];
  if (v15 == 1)
  {
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];
    sub_20D7E3944(v0[10], &qword_27C838A00, &qword_20D976750);
    sub_20D84D14C();
    v2 = swift_allocError();
    *v21 = 8;
    swift_willThrow();
    sub_20D84D374(v17, v16);
    (*(v19 + 8))(v18, v20);
    goto LABEL_8;
  }

  v35 = v0[10];
  v36 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_20D84D374(v17, v16);
  (*(v14 + 32))(v36, v35, v13);

  v37 = v0[1];

  return v37();
}

uint64_t sub_20D842298()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  sub_20D8437C8(v2, v1);

  return MEMORY[0x2822009F8](sub_20D84231C, 0, 0);
}

uint64_t sub_20D84231C(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_20D8423BC()
{
  v18 = v0;
  v1 = v0[22];
  v0[23] = v1;

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v16 = v0[8];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315906;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, &v17);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v17);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_20D7F4DC8(v6, v16, &v17);
    *(v7 + 32) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s):%s: EG fetch failed with: %@", v7, 0x2Au);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  sub_20D84D14C();
  v0[24] = swift_allocError();
  v0[25] = v12;
  sub_20D9752E8();
  v0[26] = sub_20D9752D8();
  v14 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D842298, v14, v13);
}

uint64_t sub_20D842644(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_20D975318();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_20D9752E8();

  v7 = sub_20D9752D8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_20D82D02C(0, 0, v5, &unk_20D979480, v8);
}

uint64_t sub_20D842768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for GridForecastSnapshot(0);
  v4[7] = swift_task_alloc();
  sub_20D9752E8();
  v4[8] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_20D84282C, v6, v5);
}

uint64_t sub_20D84282C()
{
  v10 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[11] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "NOTIFICATION:(%s): UPDATING Curent Location", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_20D8429E8;

  return sub_20D84D5B8();
}

uint64_t sub_20D8429E8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_20D842B10, v4, v3);
}

uint64_t sub_20D842B10()
{
  v26 = v0;
  v1 = *(v0 + 104);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v5 + 12) = 2080;
    v7 = sub_20D972F48();
    v9 = sub_20D7F4DC8(v7, v8, &v25);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "NOTIFICATION:(%s): UPDATED Curent Location (%s)...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v10 = v1;
  v11 = sub_20D9734D8();
  v12 = sub_20D975448();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D7F4DC8(*(v14 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v14 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v15 + 12) = 2080;
    if (v13)
    {
      v17 = [v10 description];
      v18 = sub_20D975098();
      v20 = v19;
    }

    else
    {
      v20 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v21 = sub_20D7F4DC8(v18, v20, &v25);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_20D7C9000, v11, v12, "\t...NOTIFICATION:(%s): to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v16, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  *v22 = v0;
  v22[1] = sub_20D842E50;
  v23 = *(v0 + 104);

  return sub_20D836348(v23);
}

uint64_t sub_20D842E50()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D842F70, v3, v2);
}

uint64_t sub_20D842F70()
{
  v17 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[13];
    v3 = v0[6];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(*(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v16);
    *(v5 + 12) = 2080;
    swift_getKeyPath();
    v0[5] = v3;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v6 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v3 + v6, v4, type metadata accessor for GridForecastSnapshot);
    v7 = GridForecastSnapshot.description.getter();
    v9 = v8;
    sub_20D84BADC(v4, type metadata accessor for GridForecastSnapshot);
    v10 = sub_20D7F4DC8(v7, v9, &v16);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v1, v2, "NOTIFICATION:(%s): updated locSnapshot: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
    v11 = v0[13];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D8431FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = sub_20D971DD8();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v14[1] = 7562345;
  v14[2] = 0xE300000000000000;
  sub_20D975628();
  if (!*(v7 + 16) || (v8 = sub_20D8D4B04(v15), (v9 & 1) == 0))
  {

    sub_20D84D3F0(v15);
LABEL_8:
    v16 = 0u;
    v17 = 0u;
    return sub_20D7E3944(&v16, &qword_27C838A18, &qword_20D9768D8);
  }

  sub_20D7EB630(*(v7 + 56) + 32 * v8, &v16);
  sub_20D84D3F0(v15);

  if (!*(&v17 + 1))
  {
    return sub_20D7E3944(&v16, &qword_27C838A18, &qword_20D9768D8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839620, &qword_20D979460);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v15[0];
    v12 = sub_20D975318();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = a2;

    sub_20D82D02C(0, 0, v5, &unk_20D979470, v13);
  }

  return result;
}

uint64_t sub_20D8433F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20D843414, 0, 0);
}

uint64_t sub_20D843414()
{
  v13 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_20D975368();
    v8 = sub_20D7F4DC8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, v2, v3, "NOTIFICATION: EnergyData Cache refreshed for: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_20D8435F4;
  v10 = *(v0 + 16);

  return sub_20D83FFC8(v10);
}

uint64_t sub_20D8435F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D8436E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20D84D1B8();
    **(*(v4 + 64) + 40) = sub_20D975238();

    return MEMORY[0x282200950](v4);
  }
}

void sub_20D8437C8(char *a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839600, &qword_20D979420);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = sub_20D972A88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v73 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839608, &qword_20D979428);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = sub_20D9729B8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v78 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v24 = swift_dynamicCast();
  v25 = *(v15 + 56);
  if (v24)
  {
    v25(v13, 0, 1, v14);
    (*(v15 + 32))(v22, v13, v14);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v26 = sub_20D9734F8();
    __swift_project_value_buffer(v26, qword_28112AC00);
    v27 = *(v15 + 16);
    v27(v20, v22, v14);
    v28 = v76;

    v29 = sub_20D9734D8();
    v30 = sub_20D975458();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v31 = 136315650;
      *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v78);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_20D7F4DC8(*(v28 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v28 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v78);
      *(v31 + 22) = 2112;
      sub_20D84DFEC(&qword_281125110, MEMORY[0x277D17EC0], MEMORY[0x277D17EC8]);
      swift_allocError();
      v27(v32, v20, v14);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v15 + 8);
      v34(v20, v14);
      *(v31 + 24) = v33;
      v35 = v73;
      *v73 = v33;
      _os_log_impl(&dword_20D7C9000, v29, v30, "%s(%s): Got NetworkError: %@", v31, 0x20u);
      sub_20D7E3944(v35, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v35, -1, -1);
      v36 = v74;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v36, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);
    }

    else
    {

      v34 = *(v15 + 8);
      v34(v20, v14);
    }

    v56 = *(v15 + 104);
    v57 = v75;
    v56(v75, *MEMORY[0x277D17EB8], v14);
    v58 = MEMORY[0x20F320B60](v22, v57);
    v34(v57, v14);
    if (v58)
    {
      v34(v22, v14);
      v49 = 7;
    }

    else
    {
      v56(v57, *MEMORY[0x277D17EB0], v14);
      v69 = MEMORY[0x20F320B60](v22, v57);
      v34(v57, v14);
      v34(v22, v14);
      if (v69)
      {
        v49 = 6;
      }

      else
      {
        v49 = 8;
      }
    }
  }

  else
  {
    v25(v13, 1, 1, v14);
    sub_20D7E3944(v13, &qword_27C839608, &qword_20D979428);
    v78 = a1;
    v37 = a1;
    v38 = swift_dynamicCast();
    v39 = *(v7 + 56);
    if (v38)
    {
      v39(v5, 0, 1, v6);
      v40 = v74;
      (*(v7 + 32))(v74, v5, v6);
      v41 = v76;
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v42 = sub_20D9734F8();
      __swift_project_value_buffer(v42, qword_28112AC00);
      v43 = *(v7 + 16);
      v44 = v73;
      v43(v73, v40, v6);

      v45 = sub_20D9734D8();
      v46 = sub_20D975458();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v72 = v7;
        v48 = v6;
        v49 = 8;
        v50 = v44;
        v51 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v78 = v75;
        *v47 = 136315650;
        *(v47 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v78);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_20D7F4DC8(*(v41 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v41 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v78);
        *(v47 + 22) = 2112;
        sub_20D84DFEC(&qword_281125100, MEMORY[0x277D07550], MEMORY[0x277D07558]);
        swift_allocError();
        v43(v52, v50, v48);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        v54 = *(v72 + 8);
        v54(v50, v48);
        *(v47 + 24) = v53;
        *v51 = v53;
        _os_log_impl(&dword_20D7C9000, v45, v46, "%s(%s): Got HomeEnergyError: %@", v47, 0x20u);
        sub_20D7E3944(v51, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v51, -1, -1);
        v55 = v75;
        swift_arrayDestroy();
        MEMORY[0x20F324260](v55, -1, -1);
        MEMORY[0x20F324260](v47, -1, -1);

        v54(v74, v48);
      }

      else
      {

        v70 = *(v7 + 8);
        v70(v44, v6);
        v70(v40, v6);
        v49 = 8;
      }
    }

    else
    {
      v39(v5, 1, 1, v6);
      sub_20D7E3944(v5, &qword_27C839600, &qword_20D979420);
      v59 = v76;
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v60 = sub_20D9734F8();
      __swift_project_value_buffer(v60, qword_28112AC00);
      v61 = a1;

      v62 = sub_20D9734D8();
      v63 = sub_20D975458();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v78 = v66;
        *v64 = 136315650;
        *(v64 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v78);
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_20D7F4DC8(*(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v78);
        *(v64 + 22) = 2112;
        v67 = a1;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 24) = v68;
        *v65 = v68;
        _os_log_impl(&dword_20D7C9000, v62, v63, "%s(%s): UNEXPECTED ISSUE: %@, returning .otherError", v64, 0x20u);
        sub_20D7E3944(v65, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v65, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v66, -1, -1);
        MEMORY[0x20F324260](v64, -1, -1);
      }

      v49 = 11;
    }
  }

  *v77 = v49;
}

uint64_t sub_20D844318(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_20D972928();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839618, &unk_20D979450);
  v1[7] = swift_task_alloc();
  v3 = sub_20D9728B8();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_20D972908();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = sub_20D9728F8();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D844524, 0, 0);
}

uint64_t sub_20D844524()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v6 + 104))(v4, *MEMORY[0x277D850A0], v5);
  sub_20D9728A8();
  (*(v6 + 8))(v4, v5);
  sub_20D9728E8();
  (*(v2 + 8))(v1, v3);
  v7 = sub_20D84DFEC(&qword_281126E08, MEMORY[0x277D850A8], MEMORY[0x277D850B0]);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_20D844698;
  v9 = v0[14];
  v10 = v0[7];

  return MEMORY[0x282200308](v10, v9, v7);
}

uint64_t sub_20D844698()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20D844DC4;
  }

  else
  {
    v2 = sub_20D8447AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D8447AC()
{
  v42 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_28112AC00);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v41);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s liveUpdates returned neither location nor access denied -presumably location is not authorized.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

LABEL_20:
    v21 = 0;
    **(v0 + 24) = 0;
LABEL_21:
    *(*(v0 + 24) + 8) = v21;

    v34 = *(v0 + 8);

    return v34();
  }

  (*(v3 + 32))(*(v0 + 48), v1, v2);
  v9 = sub_20D972918();
  if (v9)
  {

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v10 = sub_20D9734F8();
    __swift_project_value_buffer(v10, qword_28112AC00);
    v11 = sub_20D9734D8();
    v12 = sub_20D975478();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v41);
      _os_log_impl(&dword_20D7C9000, v11, v12, "%s location received", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F324260](v14, -1, -1);
      MEMORY[0x20F324260](v13, -1, -1);
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);
    **(v0 + 24) = 1;
    v21 = sub_20D972918();
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    goto LABEL_21;
  }

  if (sub_20D9728C8() & 1) != 0 || (sub_20D9728D8())
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v22 = sub_20D9734F8();
    __swift_project_value_buffer(v22, qword_28112AC00);
    v23 = sub_20D9734D8();
    v24 = sub_20D975478();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    v31 = *(v0 + 32);
    if (v25)
    {
      v40 = *(v0 + 128);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v41);
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s location NOT authorized", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x20F324260](v33, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);

      (*(v29 + 8))(v30, v31);
      (*(v27 + 8))(v40, v28);
    }

    else
    {

      (*(v29 + 8))(v30, v31);
      (*(v27 + 8))(v26, v28);
    }

    goto LABEL_20;
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v36 = sub_20D84DFEC(&qword_281126E08, MEMORY[0x277D850A8], MEMORY[0x277D850B0]);
  v37 = swift_task_alloc();
  *(v0 + 136) = v37;
  *v37 = v0;
  v37[1] = sub_20D844698;
  v38 = *(v0 + 112);
  v39 = *(v0 + 56);

  return MEMORY[0x282200308](v39, v38, v36);
}

uint64_t sub_20D844DC4()
{
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20D844E58, 0, 0);
}

uint64_t sub_20D844E58()
{
  v16 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s liveUpdates returned unexpected error: %@", v8, 0x16u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  *(*(v0 + 24) + 8) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20D8450B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D7EB7E8(a3, v25 - v10, &unk_27C839F30, &qword_20D978400);
  v12 = sub_20D975318();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D7E3944(v11, &unk_27C839F30, &qword_20D978400);
  }

  else
  {
    sub_20D975308();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D975298();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D975138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20D84538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v6[7] = swift_task_alloc();
  v6[8] = sub_20D9752E8();
  v6[9] = sub_20D9752D8();
  v8 = sub_20D975298();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_20D845464, v8, v7);
}

uint64_t sub_20D845464(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 32);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized;
  *(v1 + 96) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized;
  v4 = *(v2 + v3);
  if (v4 == 2)
  {
    *(v1 + 104) = sub_20D9752D8();
    v6 = sub_20D975298();
    *(v1 + 112) = v6;
    *(v1 + 120) = v5;

    return MEMORY[0x2822009F8](sub_20D845704, v6, v5);
  }

  else
  {

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_28112AC00);
    v8 = sub_20D9734D8();
    v9 = sub_20D975478();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984620, &v17);
      *(v10 + 12) = 2080;
      if (v4)
      {
        v12 = 0x5A49524F48545541;
      }

      else
      {
        v12 = 0x6874756120544F4ELL;
      }

      if (v4)
      {
        v13 = 0xEA00000000004445;
      }

      else
      {
        v13 = 0xEE0064657A69726FLL;
      }

      v14 = sub_20D7F4DC8(v12, v13, &v17);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s loc auth CACHED status : %s, running process", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    (*(v1 + 40))();

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_20D845704()
{
  v1 = v0[7];
  v2 = sub_20D975318();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_20D8450B8(0, 0, v1, &unk_20D9794B8, v3);
  v0[16] = v4;
  sub_20D7E3944(v1, &unk_27C839F30, &qword_20D978400);
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  *v5 = v0;
  v5[1] = sub_20D84585C;

  return MEMORY[0x282200460](v0 + 2, v4, v6);
}

uint64_t sub_20D84585C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20D8459A0, v3, v2);
}

uint64_t sub_20D8459A0()
{

  *(v0 + 144) = *(v0 + 16);

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_20D845A14, v1, v2);
}

uint64_t sub_20D845A14()
{
  v13 = v0;

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC00);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984620, &v12);
    *(v5 + 12) = 2080;
    if (v4)
    {
      v7 = 0x5A49524F48545541;
    }

    else
    {
      v7 = 0xD00000000000001FLL;
    }

    if (v4)
    {
      v8 = 0xEA00000000004445;
    }

    else
    {
      v8 = 0x800000020D984650;
    }

    v9 = sub_20D7F4DC8(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s caching obtained auth status: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  *(*(v0 + 32) + *(v0 + 96)) = *(v0 + 144);
  (*(v0 + 40))();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20D845C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v4[15] = swift_task_alloc();
  v5 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v4[16] = v5;
  v4[17] = *(v5 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = sub_20D9752E8();
  v4[21] = sub_20D9752D8();
  v7 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D845D70, v7, v6);
}

uint64_t sub_20D845D70()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[11] = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v2 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v4 = &unk_20D979518, (v3 & 1) == 0))
  {
    v5 = v0 + 12;
    v4 = &unk_20D979510;
  }

  else
  {
    v5 = v0 + 13;
  }

  v21 = v4;
  v6 = v0[14];
  swift_getKeyPath();
  *v5 = v6;
  sub_20D972858();

  v7 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  v8 = v0[19];
  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  swift_beginAccess();
  sub_20D84BC18(v13 + v7, v8, type metadata accessor for GridForecastSnapshotType);
  v14 = sub_20D975318();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_20D84BC18(v8, v9, type metadata accessor for GridForecastSnapshotType);

  v15 = sub_20D9752D8();
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_20D84E098(v9, v17 + v16, type metadata accessor for GridForecastSnapshotType);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_20D82D02C(0, 0, v12, v21, v17);

  sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshotType);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20D846050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v4[15] = swift_task_alloc();
  v5 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v4[16] = v5;
  v4[17] = *(v5 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = sub_20D9752E8();
  v4[21] = sub_20D9752D8();
  v7 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D846190, v7, v6);
}

uint64_t sub_20D846190()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[11] = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v2 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v4 = &unk_20D9794F8, (v3 & 1) == 0))
  {
    v5 = v0 + 12;
    v4 = &unk_20D9794E8;
  }

  else
  {
    v5 = v0 + 13;
  }

  v21 = v4;
  v6 = v0[14];
  swift_getKeyPath();
  *v5 = v6;
  sub_20D972858();

  v7 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v8 = v0[19];
  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  swift_beginAccess();
  sub_20D84BC18(v13 + v7, v8, type metadata accessor for GridForecastSnapshotType);
  v14 = sub_20D975318();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_20D84BC18(v8, v9, type metadata accessor for GridForecastSnapshotType);

  v15 = sub_20D9752D8();
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_20D84E098(v9, v17 + v16, type metadata accessor for GridForecastSnapshotType);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_20D82D02C(0, 0, v12, v21, v17);

  sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshotType);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20D846470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_20D972EC8();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_20D972A78();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_20D972698();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for GridForecastSnapshotType(0);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for GridForecastSnapshot(0);
  v5[35] = swift_task_alloc();
  sub_20D9752E8();
  v5[36] = sub_20D9752D8();
  v10 = sub_20D975298();
  v5[37] = v10;
  v5[38] = v9;

  return MEMORY[0x2822009F8](sub_20D8466FC, v10, v9);
}

uint64_t sub_20D8466FC()
{
  v83 = v0;
  sub_20D84BC18(v0[14], v0[33], type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = v0[35];
    v8 = v0[15];
    sub_20D84BADC(v0[33], type metadata accessor for GridForecastSnapshotType);
    swift_getKeyPath();
    v0[13] = v8;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v9 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v8 + v9, v7, type metadata accessor for GridForecastSnapshot);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = v0[35];
    v3 = v0[33];
    v4 = v0[15];

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_getKeyPath();
    v0[10] = v4;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v6 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v4 + v6, v2, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v3 + v5, &qword_27C8389F8, &qword_20D978460);
LABEL_5:
    sub_20D84BC18(v0[35], v0[32], type metadata accessor for GridForecastSnapshotType);
    v10 = swift_getEnumCaseMultiPayload();
    v11 = v0[32];
    if (v10 == 1)
    {

      v12 = *(v11 + 16);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E3944(v11 + *(v13 + 64), &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      sub_20D84BADC(v0[32], type metadata accessor for GridForecastSnapshotType);
      v12 = 0;
    }

    v14 = v0[35];
    v15 = (v14 + *(v0[34] + 28));
    v16 = v15[1];
    v78 = *v15;
    sub_20D84BC18(v14, v0[31], type metadata accessor for GridForecastSnapshotType);
    v17 = swift_getEnumCaseMultiPayload();
    v18 = v0[31];
    v19 = v0[28];
    if (v17 == 1)
    {

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v18 + *(v20 + 64), v19);
    }

    else
    {
      (*(v0[23] + 56))(v0[28], 1, 1, v0[22]);
      sub_20D84BADC(v18, type metadata accessor for GridForecastSnapshotType);
    }

    v21 = (v0[35] + *(v0[34] + 24));
    v81 = *v21;
    v0[39] = *v21;
    v80 = v21[1];
    v0[40] = v80;
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    sub_20D971FF8();
    if (v12)
    {
    }

    v29 = v0[27];
    v30 = v0[28];
    v32 = v0[22];
    v31 = v0[23];
    sub_20D971FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_20D979110;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_20D84E340();
    *(v33 + 32) = v78;
    *(v33 + 40) = v16;

    sub_20D9750C8();

    v0[8] = 0xD00000000000003FLL;
    v0[9] = 0x800000020D984820;
    sub_20D7EB7E8(v30, v29, &qword_27C8389F8, &qword_20D978460);
    v34 = *(v31 + 48);
    v35 = v34(v29, 1, v32);
    v36 = v0[27];
    if (v35 == 1)
    {
      sub_20D7E3944(v36, &qword_27C8389F8, &qword_20D978460);
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v37 = sub_20D9734F8();
      __swift_project_value_buffer(v37, qword_28112AC00);

      v38 = sub_20D9734D8();
      v39 = sub_20D975478();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v0[15];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v82[0] = v42;
        *v41 = 136315394;
        *(v41 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v82);
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_20D7F4DC8(*(v40 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v40 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v82);
        _os_log_impl(&dword_20D7C9000, v38, v39, "%s(%s): creating notification for current location", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v42, -1, -1);
        MEMORY[0x20F324260](v41, -1, -1);
      }
    }

    else
    {
      v77 = v34;
      (*(v0[23] + 32))(v0[25], v36, v0[22]);
      v43 = sub_20D972648();
      v82[0] = 0x3D6469656D6F6826;
      v82[1] = 0xE800000000000000;
      MEMORY[0x20F323340](v43);

      MEMORY[0x20F323340](0x3D6469656D6F6826, 0xE800000000000000);

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v44 = v0[24];
      v45 = v0[25];
      v46 = v0[22];
      v47 = v0[23];
      v48 = sub_20D9734F8();
      __swift_project_value_buffer(v48, qword_28112AC00);
      (*(v47 + 16))(v44, v45, v46);

      v49 = sub_20D9734D8();
      v50 = sub_20D975478();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v0[24];
      v53 = v0[25];
      v54 = v0[22];
      v55 = v0[23];
      if (v51)
      {
        v76 = v0[25];
        v56 = v0[15];
        v57 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v82[0] = v75;
        *v57 = 136315650;
        *(v57 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v82);
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_20D7F4DC8(*(v56 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v56 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v82);
        *(v57 + 22) = 2080;
        v58 = sub_20D972648();
        v60 = v59;
        v61 = *(v55 + 8);
        v61(v52, v54);
        v62 = sub_20D7F4DC8(v58, v60, v82);

        *(v57 + 24) = v62;
        _os_log_impl(&dword_20D7C9000, v49, v50, "%s(%s): creating notification for homeID: %s", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v75, -1, -1);
        MEMORY[0x20F324260](v57, -1, -1);

        v63 = v76;
      }

      else
      {

        v61 = *(v55 + 8);
        v61(v52, v54);
        v63 = v53;
      }

      v61(v63, v54);
      v34 = v77;
    }

    v64 = v0[26];
    v65 = v0[22];
    sub_20D7EB7E8(v0[28], v64, &qword_27C8389F8, &qword_20D978460);
    v66 = v34(v64, 1, v65);
    v67 = v0[26];
    if (v66 == 1)
    {
      sub_20D7E3944(v0[26], &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v68 = v0[22];
      v69 = v0[23];
      sub_20D972648();
      (*(v69 + 8))(v67, v68);
    }

    v71 = v0[17];
    v70 = v0[18];
    v72 = v0[16];
    (*(v71 + 104))(v70, *MEMORY[0x277D07360], v72);
    sub_20D972EB8();
    (*(v71 + 8))(v70, v72);
    sub_20D972A68();
    sub_20D972AA8();
    v0[41] = sub_20D972A98();
    v79 = (*MEMORY[0x277D07568] + MEMORY[0x277D07568]);
    v73 = swift_task_alloc();
    v0[42] = v73;
    *v73 = v0;
    v73[1] = sub_20D847444;
    v74 = v0[21];

    return v79(v81, v80, v74);
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v22 = sub_20D9734F8();
  __swift_project_value_buffer(v22, qword_28112AC00);
  v23 = sub_20D9734D8();
  v24 = sub_20D975458();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v82[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v82);
    _os_log_impl(&dword_20D7C9000, v23, v24, "%s for a static snapshot makes no sense", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v25, -1, -1);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_20D847444(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v4 = v3[37];
    v5 = v3[38];
    v6 = sub_20D847CC0;
  }

  else
  {

    v4 = v3[37];
    v5 = v3[38];
    v6 = sub_20D847560;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D847560()
{
  v45 = v0;

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v44);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v44);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_20D7F4DC8(v5, v4, v44);
    *(v7 + 32) = 2080;
    v9 = sub_20D972A38();
    v11 = sub_20D7F4DC8(v9, v10, v44);

    *(v7 + 34) = v11;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): for %s status = %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v12 = sub_20D972A48();
  if (v12 == sub_20D972A48())
  {
    sub_20D84BC18(v0[14], v0[30], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v0[30];
        v41 = v0[28];
        v42 = v0[35];
        v15 = v0[20];
        v16 = v0[21];
        v17 = v0[19];
        v18 = v0[15];

        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v19 = swift_task_alloc();
        *(v19 + 16) = v18;
        *(v19 + 24) = 1;
        v0[11] = v18;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        (*(v15 + 8))(v16, v17);
        sub_20D7E3944(v41, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v42, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v14 + v40, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28112AC00);
      v29 = sub_20D9734D8();
      v30 = sub_20D975458();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[28];
      v34 = v0[20];
      v33 = v0[21];
      v35 = v0[19];
      if (v31)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v44);
        _os_log_impl(&dword_20D7C9000, v29, v30, "%s for a static snapshot makes no sense", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x20F324260](v37, -1, -1);
        MEMORY[0x20F324260](v36, -1, -1);
      }

      (*(v34 + 8))(v33, v35);
      sub_20D7E3944(v32, &qword_27C8389F8, &qword_20D978460);
      v22 = v0[35];
    }

    else
    {
      v43 = v0[35];
      v23 = v0[28];
      v25 = v0[20];
      v24 = v0[21];
      v26 = v0[19];
      v27 = v0[15];
      sub_20D84BADC(v0[30], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      v0[12] = v27;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      (*(v25 + 8))(v24, v26);
      sub_20D7E3944(v23, &qword_27C8389F8, &qword_20D978460);

      v22 = v43;
    }
  }

  else
  {
    v20 = v0[35];
    v21 = v0[28];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_20D7E3944(v21, &qword_27C8389F8, &qword_20D978460);
    v22 = v20;
  }

  sub_20D84BADC(v22, type metadata accessor for GridForecastSnapshot);
LABEL_17:

  v38 = v0[1];

  return v38();
}

uint64_t sub_20D847CC0()
{
  v47 = v0;

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  if (v6)
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v46);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v46);
    *(v9 + 22) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): error: %@", v9, 0x20u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
  }

  v14 = sub_20D972A48();
  if (v14 == sub_20D972A48())
  {
    sub_20D84BC18(v0[14], v0[30], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v16 = v0[30];
        v44 = v0[28];
        v45 = v0[35];
        v17 = v0[20];
        v18 = v0[21];
        v19 = v0[19];
        v20 = v0[15];

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v22 = swift_task_alloc();
        *(v22 + 16) = v20;
        *(v22 + 24) = 1;
        v0[11] = v20;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        (*(v17 + 8))(v18, v19);
        sub_20D7E3944(v44, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v45, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v16 + v21, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_28112AC00);
      v33 = sub_20D9734D8();
      v34 = sub_20D975458();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[28];
      v38 = v0[20];
      v37 = v0[21];
      v39 = v0[19];
      if (v35)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v46);
        _os_log_impl(&dword_20D7C9000, v33, v34, "%s for a static snapshot makes no sense", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x20F324260](v41, -1, -1);
        MEMORY[0x20F324260](v40, -1, -1);
      }

      (*(v38 + 8))(v37, v39);
      sub_20D7E3944(v36, &qword_27C8389F8, &qword_20D978460);
      v25 = v0[35];
    }

    else
    {
      v26 = v0[35];
      v27 = v0[28];
      v29 = v0[20];
      v28 = v0[21];
      v30 = v0[19];
      v31 = v0[15];
      sub_20D84BADC(v0[30], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 1;
      v0[12] = v31;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      (*(v29 + 8))(v28, v30);
      sub_20D7E3944(v27, &qword_27C8389F8, &qword_20D978460);

      v25 = v26;
    }
  }

  else
  {
    v23 = v0[35];
    v24 = v0[28];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_20D7E3944(v24, &qword_27C8389F8, &qword_20D978460);
    v25 = v23;
  }

  sub_20D84BADC(v25, type metadata accessor for GridForecastSnapshot);
LABEL_18:

  v42 = v0[1];

  return v42();
}

uint64_t sub_20D848448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_20D972698();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for GridForecastSnapshotType(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for GridForecastSnapshot(0);
  v5[30] = swift_task_alloc();
  sub_20D9752E8();
  v5[31] = sub_20D9752D8();
  v8 = sub_20D975298();
  v5[32] = v8;
  v5[33] = v7;

  return MEMORY[0x2822009F8](sub_20D8485F8, v8, v7);
}

uint64_t sub_20D8485F8()
{
  v36 = v0;
  sub_20D84BC18(v0[18], v0[28], type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = v0[30];
    v8 = v0[19];
    sub_20D84BADC(v0[28], type metadata accessor for GridForecastSnapshotType);
    swift_getKeyPath();
    v0[17] = v8;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v9 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v8 + v9, v7, type metadata accessor for GridForecastSnapshot);
LABEL_5:
    sub_20D84BC18(v0[30], v0[27], type metadata accessor for GridForecastSnapshotType);
    v10 = swift_getEnumCaseMultiPayload();
    v11 = v0[27];
    v12 = v0[24];
    if (v10 == 1)
    {

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v11 + *(v13 + 64), v12);
    }

    else
    {
      (*(v0[21] + 56))(v0[24], 1, 1, v0[20]);
      sub_20D84BADC(v11, type metadata accessor for GridForecastSnapshotType);
    }

    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[20];
    v17 = v0[21];
    v18 = (v0[30] + *(v0[29] + 24));
    v19 = *v18;
    v0[34] = *v18;
    v20 = v18[1];
    v0[35] = v20;
    sub_20D7EB7E8(v14, v15, &qword_27C8389F8, &qword_20D978460);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_20D7E3944(v0[23], &qword_27C8389F8, &qword_20D978460);
      sub_20D972AA8();
      v0[36] = sub_20D972A98();
      v33 = (*MEMORY[0x277D07578] + MEMORY[0x277D07578]);
      v21 = swift_task_alloc();
      v0[37] = v21;
      *v21 = v0;
      v21[1] = sub_20D848CA4;

      return v33(v19, v20);
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[23], v0[20]);
      sub_20D972AA8();
      v0[39] = sub_20D972A98();
      v23 = sub_20D972648();
      v25 = v24;
      v0[40] = v24;
      v34 = (*MEMORY[0x277D07570] + MEMORY[0x277D07570]);
      v26 = swift_task_alloc();
      v0[41] = v26;
      *v26 = v0;
      v26[1] = sub_20D848DC8;

      return v34(v19, v20, v23, v25);
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = v0[30];
    v3 = v0[28];
    v4 = v0[19];

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_getKeyPath();
    v0[14] = v4;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v6 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v4 + v6, v2, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v3 + v5, &qword_27C8389F8, &qword_20D978460);
    goto LABEL_5;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v27 = sub_20D9734F8();
  __swift_project_value_buffer(v27, qword_28112AC00);
  v28 = sub_20D9734D8();
  v29 = sub_20D975458();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, &v35);
    _os_log_impl(&dword_20D7C9000, v28, v29, "%s for a static snapshot makes no sense", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F324260](v31, -1, -1);
    MEMORY[0x20F324260](v30, -1, -1);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_20D848CA4(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[32];
    v5 = v3[33];
    v6 = sub_20D84A370;
  }

  else
  {

    v4 = v3[32];
    v5 = v3[33];
    v6 = sub_20D8495FC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D848DC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v4[42] = v1;

  v5 = v3[33];
  v6 = v3[32];
  if (v1)
  {
    v7 = sub_20D849C98;
  }

  else
  {
    v7 = sub_20D848F40;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D848F40()
{
  v39 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_28112AC00);

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v37 = v4;
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v38);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v38);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_20D7F4DC8(v8, v7, v38);
    *(v10 + 32) = 2080;
    v12 = sub_20D972A38();
    v14 = sub_20D7F4DC8(v12, v13, v38);
    v4 = v37;

    *(v10 + 34) = v14;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): for %s status = %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v15 = sub_20D972A48();
  if (v15 == sub_20D972A48())
  {
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = v0[30];
        v18 = v0[26];
        v19 = v0[24];
        v20 = v0[19];

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v22 = swift_task_alloc();
        *(v22 + 16) = v20;
        *(v22 + 24) = 0;
        v0[15] = v20;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v17, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v18 + v21, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_28112AC00);
      v29 = sub_20D9734D8();
      v30 = sub_20D975458();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[24];
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v38);
        _os_log_impl(&dword_20D7C9000, v29, v30, "%s for a static snapshot makes no sense", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x20F324260](v34, -1, -1);
        MEMORY[0x20F324260](v33, -1, -1);
      }

      sub_20D7E3944(v32, &qword_27C8389F8, &qword_20D978460);
      v24 = v0[30];
    }

    else
    {
      v25 = v0[30];
      v26 = v0[24];
      v27 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      v0[16] = v27;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v26, &qword_27C8389F8, &qword_20D978460);

      v24 = v25;
    }
  }

  else
  {
    v23 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v24 = v23;
  }

  sub_20D84BADC(v24, type metadata accessor for GridForecastSnapshot);
LABEL_17:

  v35 = v0[1];

  return v35();
}

uint64_t sub_20D8495FC()
{
  v36 = v0;

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v34 = v1;
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35[0] = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v35);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v35);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_20D7F4DC8(v5, v4, v35);
    *(v7 + 32) = 2080;
    v9 = sub_20D972A38();
    v11 = sub_20D7F4DC8(v9, v10, v35);
    v1 = v34;

    *(v7 + 34) = v11;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): for %s status = %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v12 = sub_20D972A48();
  if (v12 == sub_20D972A48())
  {
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v0[30];
        v15 = v0[26];
        v16 = v0[24];
        v17 = v0[19];

        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v19 = swift_task_alloc();
        *(v19 + 16) = v17;
        *(v19 + 24) = 0;
        v0[15] = v17;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v16, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v14, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v15 + v18, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28112AC00);
      v26 = sub_20D9734D8();
      v27 = sub_20D975458();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[24];
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v35);
        _os_log_impl(&dword_20D7C9000, v26, v27, "%s for a static snapshot makes no sense", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x20F324260](v31, -1, -1);
        MEMORY[0x20F324260](v30, -1, -1);
      }

      sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
      v21 = v0[30];
    }

    else
    {
      v22 = v0[30];
      v23 = v0[24];
      v24 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      v0[16] = v24;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v23, &qword_27C8389F8, &qword_20D978460);

      v21 = v22;
    }
  }

  else
  {
    v20 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v21 = v20;
  }

  sub_20D84BADC(v21, type metadata accessor for GridForecastSnapshot);
LABEL_17:

  v32 = v0[1];

  return v32();
}

uint64_t sub_20D849C98()
{
  v38 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_28112AC00);

  v6 = v4;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v37);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v37);
    *(v10 + 22) = 2112;
    v13 = v4;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s): error: %@", v10, 0x20u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {
  }

  v15 = sub_20D972A48();
  if (v15 == sub_20D972A48())
  {
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = v0[30];
        v18 = v0[26];
        v19 = v0[24];
        v20 = v0[19];

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v22 = swift_task_alloc();
        *(v22 + 16) = v20;
        *(v22 + 24) = 0;
        v0[15] = v20;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v17, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v18 + v21, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_28112AC00);
      v29 = sub_20D9734D8();
      v30 = sub_20D975458();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[24];
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v37);
        _os_log_impl(&dword_20D7C9000, v29, v30, "%s for a static snapshot makes no sense", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x20F324260](v34, -1, -1);
        MEMORY[0x20F324260](v33, -1, -1);
      }

      sub_20D7E3944(v32, &qword_27C8389F8, &qword_20D978460);
      v24 = v0[30];
    }

    else
    {
      v25 = v0[30];
      v26 = v0[24];
      v27 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      v0[16] = v27;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v26, &qword_27C8389F8, &qword_20D978460);

      v24 = v25;
    }
  }

  else
  {
    v23 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v24 = v23;
  }

  sub_20D84BADC(v24, type metadata accessor for GridForecastSnapshot);
LABEL_18:

  v35 = v0[1];

  return v35();
}

uint64_t sub_20D84A370()
{
  v35 = v0;

  v1 = v0[38];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v34);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v34);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): error: %@", v7, 0x20u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  v12 = sub_20D972A48();
  if (v12 == sub_20D972A48())
  {
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v0[30];
        v15 = v0[26];
        v16 = v0[24];
        v17 = v0[19];

        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v19 = swift_task_alloc();
        *(v19 + 16) = v17;
        *(v19 + 24) = 0;
        v0[15] = v17;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v16, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v14, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v15 + v18, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_28112AC00);
      v26 = sub_20D9734D8();
      v27 = sub_20D975458();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[24];
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v34);
        _os_log_impl(&dword_20D7C9000, v26, v27, "%s for a static snapshot makes no sense", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x20F324260](v31, -1, -1);
        MEMORY[0x20F324260](v30, -1, -1);
      }

      sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
      v21 = v0[30];
    }

    else
    {
      v22 = v0[30];
      v23 = v0[24];
      v24 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      v0[16] = v24;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v23, &qword_27C8389F8, &qword_20D978460);

      v21 = v22;
    }
  }

  else
  {
    v20 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v21 = v20;
  }

  sub_20D84BADC(v21, type metadata accessor for GridForecastSnapshot);
LABEL_18:

  v32 = v0[1];

  return v32();
}

void sub_20D84AA34(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for GridForecastSnapshotType(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v12 = sub_20D9734F8();
  v13 = __swift_project_value_buffer(v12, qword_28112AC00);
  sub_20D84BC18(a1, v11, type metadata accessor for GridForecastSnapshotType);

  v14 = sub_20D9734D8();
  v15 = sub_20D975478();

  v16 = os_log_type_enabled(v14, v15);
  v39 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v37[1] = v13;
    v18 = v17;
    v19 = swift_slowAlloc();
    v38 = a1;
    v20 = v19;
    v40 = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984310, &v40);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_20D7F4DC8(*(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v40);
    *(v18 + 22) = 2080;
    v21 = GridForecastSnapshotType.description.getter();
    v22 = a2;
    v24 = v23;
    sub_20D84BADC(v11, type metadata accessor for GridForecastSnapshotType);
    v25 = sub_20D7F4DC8(v21, v24, &v40);
    a2 = v22;

    *(v18 + 24) = v25;
    *(v18 + 32) = 1024;
    *(v18 + 34) = v22 & 1;
    _os_log_impl(&dword_20D7C9000, v14, v15, "%s(%s): %s notification snapshot to %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();
    v26 = v20;
    a1 = v38;
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);
  }

  else
  {

    sub_20D84BADC(v11, type metadata accessor for GridForecastSnapshotType);
  }

  sub_20D84BC18(a1, v9, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v28 = v39;
    if (EnumCaseMultiPayload == 1)
    {

      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v37[-2] = v28;
      LOBYTE(v37[-1]) = a2 & 1;
      v40 = v28;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v9 + v29, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v33 = sub_20D9734D8();
      v34 = sub_20D975458();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v40 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984310, &v40);
        _os_log_impl(&dword_20D7C9000, v33, v34, "%s: makes no sense for static snapshot!", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F324260](v36, -1, -1);
        MEMORY[0x20F324260](v35, -1, -1);
      }
    }
  }

  else
  {
    sub_20D84BADC(v9, type metadata accessor for GridForecastSnapshotType);
    v31 = swift_getKeyPath();
    MEMORY[0x28223BE20](v31);
    v32 = v39;
    v37[-2] = v39;
    LOBYTE(v37[-1]) = a2 & 1;
    v40 = v32;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();
  }
}

uint64_t sub_20D84B000(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20D84B0F8;

  return v6(a1);
}

uint64_t sub_20D84B0F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D84B1F0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_20D84B2E4;

  return v5(v2 + 16);
}

uint64_t sub_20D84B2E4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_20D84B418()
{
  v0 = sub_20D971DE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v8 = sub_20D9734F8();
  __swift_project_value_buffer(v8, qword_28112AC00);
  v9 = sub_20D9734D8();
  v10 = sub_20D975478();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v1;
    v14 = v13;
    *&v26[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D9846C0, v26);
    *(v12 + 12) = 2080;
    sub_20D9725C8();
    sub_20D84DFEC(&qword_281127730, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v15 = sub_20D9757A8();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_20D7F4DC8(v15, v17, v26);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s Window state changed. Sending notification at %s for non-SwiftUI view updates", v12, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    v1 = v24;
    MEMORY[0x20F324260](v19, -1, -1);
    v20 = v12;
    v0 = v25;
    MEMORY[0x20F324260](v20, -1, -1);
  }

  sub_20D975078();
  memset(v26, 0, sizeof(v26));
  sub_20D971DC8();
  v21 = [objc_opt_self() defaultCenter];
  v22 = sub_20D971DA8();
  [v21 postNotification_];

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20D84B7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
    v3 = sub_20D975658();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_20D975888();
      MEMORY[0x20F323A50](v10);
      result = sub_20D9758A8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20D84B8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
    v3 = sub_20D975658();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20D975888();

      sub_20D975158();
      result = sub_20D9758A8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20D9757C8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20D84BADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D84BB44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D84538C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20D84BC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D84BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D7EB52C;

  return sub_20D8318C8(a1, v4, v5, v6);
}

uint64_t sub_20D84BD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_20D9752E8();
  v3[10] = sub_20D9752D8();
  v5 = sub_20D975298();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_20D84BE38, v5, v4);
}

uint64_t sub_20D84BE38()
{
  v37 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = sub_20D9734F8();
  v0[13] = __swift_project_value_buffer(v3, qword_28112AC00);
  sub_20D7EB7E8(v2, v1, &qword_27C8389F8, &qword_20D978460);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v36);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(v10, v9, &v36);
    *(v11 + 22) = 2080;
    sub_20D7EB7E8(v7, v8, &qword_27C8389F8, &qword_20D978460);
    v13 = sub_20D972698();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v8, 1, v13);
    v16 = v0[8];
    if (v15 == 1)
    {
      sub_20D7E3944(v0[8], &qword_27C8389F8, &qword_20D978460);
      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    else
    {
      v18 = MEMORY[0x20F320810]();
      v17 = v19;
      (*(v14 + 8))(v16, v13);
    }

    sub_20D7E3944(v0[9], &qword_27C8389F8, &qword_20D978460);
    v20 = sub_20D7F4DC8(v18, v17, &v36);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_20D7C9000, v4, v5, "\t...%s: retrieving notifications for grid:%s/home:%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  else
  {

    sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);
  }

  v21 = v0[7];
  v22 = v0[4];
  sub_20D972AA8();
  v0[14] = sub_20D972A98();
  sub_20D7EB7E8(v22, v21, &qword_27C8389F8, &qword_20D978460);
  v23 = sub_20D972698();
  v0[15] = v23;
  v24 = *(v23 - 8);
  v0[16] = v24;
  v25 = *(v24 + 48);
  v0[17] = v25;
  v0[18] = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v25(v21, 1, v23);
  v27 = v0[7];
  if (v26 == 1)
  {
    sub_20D7E3944(v0[7], &qword_27C8389F8, &qword_20D978460);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_20D972648();
    v29 = v30;
    (*(v24 + 8))(v27, v23);
  }

  v0[19] = v29;
  v35 = (*MEMORY[0x277D07560] + MEMORY[0x277D07560]);
  v31 = swift_task_alloc();
  v0[20] = v31;
  *v31 = v0;
  v31[1] = sub_20D84C2B8;
  v33 = v0[2];
  v32 = v0[3];

  return v35(v33, v32, v28, v29);
}

uint64_t sub_20D84C2B8(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_20D84C760;
  }

  else
  {

    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_20D84C3E0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D84C3E0()
{
  v29 = v0;

  v1 = sub_20D972A58();
  if (v1 == sub_20D972A58())
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_20D972A58();
    v2 = v3 == sub_20D972A58();
  }

  sub_20D7EB7E8(v0[4], v0[6], &qword_27C8389F8, &qword_20D978460);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v25 = v0[17];
    v6 = v0[5];
    v23 = v0[6];
    v24 = v0[15];
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v9 = 136315906;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v28);
    *(v9 + 12) = 2080;
    v27 = v2;
    if (v2)
    {
      v10 = 4543041;
    }

    else
    {
      v10 = 0x544F4E20657261;
    }

    if (v2)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_20D7F4DC8(v10, v11, &v28);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_20D7F4DC8(v7, v8, &v28);
    *(v9 + 32) = 2080;
    sub_20D7EB7E8(v23, v6, &qword_27C8389F8, &qword_20D978460);
    if (v25(v6, 1, v24) == 1)
    {
      sub_20D7E3944(v0[5], &qword_27C8389F8, &qword_20D978460);
      v13 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    else
    {
      v17 = v0[15];
      v16 = v0[16];
      v18 = v0[5];
      v14 = MEMORY[0x20F320810]();
      v13 = v19;
      (*(v16 + 8))(v18, v17);
    }

    sub_20D7E3944(v0[6], &qword_27C8389F8, &qword_20D978460);
    v20 = sub_20D7F4DC8(v14, v13, &v28);

    *(v9 + 34) = v20;
    _os_log_impl(&dword_20D7C9000, v4, v5, "\t...%s: notifications %s enabled for grid:%s/home:%s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);

    v2 = v27;
  }

  else
  {
    v15 = v0[6];

    sub_20D7E3944(v15, &qword_27C8389F8, &qword_20D978460);
  }

  v21 = v0[1];

  return v21(v2);
}

uint64_t sub_20D84C760()
{
  v16 = v0;
  v1 = *(v0 + 176);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v15);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: retrieved notification status failed with error: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v11 = *(v0 + 176);
  sub_20D84D14C();
  swift_allocError();
  *v12 = 8;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_20D84C9A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D805810;

  return sub_20D844318(a1);
}

unint64_t sub_20D84CA54()
{
  result = qword_27C8395D8;
  if (!qword_27C8395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8395D8);
  }

  return result;
}

uint64_t sub_20D84CAB0(uint64_t a1)
{
  result = type metadata accessor for GridForecastSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = sub_20D972898();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20D84CE2C(uint64_t a1)
{
  v2 = sub_20D9727B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395E0, &qword_20D9793F8);
    v9 = sub_20D975658();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20D84DFEC(&qword_27C8395E8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_20D974F78();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20D84DFEC(&qword_27C8395F0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_20D974FD8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_20D84D14C()
{
  result = qword_2811269E8;
  if (!qword_2811269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811269E8);
  }

  return result;
}

unint64_t sub_20D84D1B8()
{
  result = qword_281124BC0;
  if (!qword_281124BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124BC0);
  }

  return result;
}

uint64_t sub_20D84D204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D805810;

  return sub_20D84B1F0(a1, v4);
}

uint64_t sub_20D84D2BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D7EB52C;

  return sub_20D84B1F0(a1, v4);
}

uint64_t sub_20D84D374(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D84D444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D8433F4(a1, v4, v5, v7, v6);
}

uint64_t sub_20D84D504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D842768(a1, v4, v5, v6);
}

uint64_t sub_20D84D5B8()
{
  sub_20D9752E8();
  v0[2] = sub_20D9752D8();
  v2 = sub_20D975298();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_20D84D64C, v2, v1);
}

uint64_t sub_20D84D64C()
{
  v10 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[5] = __swift_project_value_buffer(v1, qword_28112AC00);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: calling getCurrentLocation on daemon", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  sub_20D972AA8();
  v0[6] = sub_20D972A98();
  v8 = (*MEMORY[0x277D07588] + MEMORY[0x277D07588]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_20D84D824;

  return v8();
}

uint64_t sub_20D84D824(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_20D84DBF8;
  }

  else
  {

    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_20D84D940;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D84D940()
{
  v22 = v0;
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v21);
    *(v5 + 12) = 2080;
    v7 = sub_20D972F48();
    v9 = sub_20D7F4DC8(v7, v8, &v21);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: received %s from daemon...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v10 = *(v0 + 64);
  v11 = sub_20D9734D8();
  v12 = sub_20D975448();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 64);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v21);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v14;
    v18 = v14;
    _os_log_impl(&dword_20D7C9000, v11, v12, "\t...%s: loc: %@", v15, 0x16u);
    sub_20D7E3944(v16, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v19 = *(v0 + 8);

  return v19(v14);
}

uint64_t sub_20D84DBF8()
{
  v15 = v0;
  v1 = *(v0 + 72);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: ERROR getCurrentLocation failed: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_20D84DDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D83D72C(a1, v4, v5, v6);
}

uint64_t sub_20D84DE80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D805810;

  return sub_20D84B000(a1, v4);
}

uint64_t sub_20D84DF38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D834120(a1, v4, v5, v6);
}

uint64_t sub_20D84DFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D84E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D84E098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D84E100(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D846470(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20D84E220(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D848448(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_20D84E340()
{
  result = qword_281126EE0;
  if (!qword_281126EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EE0);
  }

  return result;
}

void sub_20D84E394(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

uint64_t objectdestroy_170Tm()
{
  v1 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v8 = sub_20D972698();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t ElectricUtility.id.getter()
{
  v1 = *v0;

  return v1;
}

void ElectricUtility.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ElectricUtility.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ElectricUtility.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ElectricUtility.longName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ElectricUtility.longName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *ElectricUtility.logo.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t ElectricUtility.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility(0) + 32);

  return sub_20D84EA2C(v3, a1);
}

uint64_t type metadata accessor for ElectricUtility(uint64_t a1)
{
  result = qword_27C839630;
  if (!qword_27C839630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D84EA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ElectricUtility.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility(0) + 32);

  return sub_20D84EAE0(a1, v3);
}

uint64_t sub_20D84EAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double ElectricUtility.config.getter@<D0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v4;

  return result;
}

__n128 ElectricUtility.config.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = v1 + *(type metadata accessor for ElectricUtility(0) + 36);
  v6 = *v5;

  *v5 = v3;
  result = *(a1 + 1);
  *(v5 + 8) = result;
  *(v5 + 24) = v4;
  return result;
}

double sub_20D84ECDC@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void sub_20D84ED10(uint64_t a1)
{
  sub_20D84EE38(319, &qword_27C839640, sub_20D84EDEC);
  if (v1 <= 0x3F)
  {
    sub_20D84EE38(319, &qword_27C839650, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20D84EDEC()
{
  result = qword_27C839648;
  if (!qword_27C839648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C839648);
  }

  return result;
}

void sub_20D84EE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D975508();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20D84EE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839668, &unk_20D9795F8);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_20D9755E8();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v12 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_20D854C90(v6, v7, *(a1 + 36), 0, a1);
    sub_20D855DE8(v6, a2, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    *(a2 + *(v4 + 48)) = v10;
    return (*(v12 + 56))(a2, 0, 1, v4);
  }
}

uint64_t HistoricalUsageWidgetCommon.Home.description.getter()
{
  v1 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  MEMORY[0x20F323340](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x20F323340](44, 0xE100000000000000);
  sub_20D972698();
  sub_20D84F314(&qword_27C839658, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_20D9757A8();
  MEMORY[0x20F323340](v2);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 40;
}

uint64_t HistoricalUsageWidgetCommon.Home.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20));

  return v1;
}

uint64_t HistoricalUsageWidgetCommon.Home.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20D972698();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.Home.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20D972668() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_20D9757C8();
}

uint64_t HistoricalUsageWidgetCommon.Home.hash(into:)(uint64_t a1)
{
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20D974F88();
  type metadata accessor for HistoricalUsageWidgetCommon.Home(0);

  return sub_20D975158();
}

uint64_t sub_20D84F314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HistoricalUsageWidgetCommon.Home.hashValue.getter()
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20D974F88();
  type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F400(uint64_t a1)
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20D974F88();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F4A8(uint64_t a1, uint64_t a2)
{
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20D974F88();

  return sub_20D975158();
}

uint64_t sub_20D84F544(uint64_t a1, uint64_t a2)
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20D974F88();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F5E8(uint64_t a1)
{
  MEMORY[0x20F323340](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  MEMORY[0x20F323340](44, 0xE100000000000000);
  sub_20D972698();
  sub_20D84F314(&qword_27C839658, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_20D9757A8();
  MEMORY[0x20F323340](v2);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_20D84F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20D972668() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_20D9757C8();
}

uint64_t static HistoricalUsageWidgetCommon.placeholder()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_2811250A0);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(0x6C6F686563616C70, 0xED00002928726564, &v12);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Generating placeholder with mock data.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  if (qword_27C838600 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for HistoricalUsageSnapshot(0);
  v8 = __swift_project_value_buffer(v7, qword_27C83A1D8);
  sub_20D9725C8();
  v9 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855EB0(v8, a1 + v9[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a1 + v9[6]) = 0;
  v11 = (a1 + v9[7]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t HistoricalUsageEntryCommon.init(date:usageSnapshot:shouldBlockout:displaySize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_20D972628();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  v13 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855DE8(a2, a4 + v13[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a4 + v13[6]) = a3;
  v15 = (a4 + v13[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.snapshot()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v1[3] = swift_task_alloc();
  v2 = sub_20D972628();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v1[8] = swift_task_alloc();
  v3 = sub_20D971EA8();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_20D9726F8();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_20D9727D8();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D84FC68, 0, 0);
}

uint64_t sub_20D84FC68()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v31 = v0[4];
  v30 = v0[3];
  (*(v5 + 104))(v4, *MEMORY[0x277CC9830], v6);
  sub_20D972708();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 16))(v7, v1, v3);
  (*(v2 + 56))(v7, 0, 1, v3);
  v10 = sub_20D972838();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_20D971E98();
  sub_20D972748();
  result = (*(v9 + 48))(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v29 = v0[15];
    v20 = v0[10];
    v19 = v0[11];
    v27 = v0[6];
    v28 = v0[9];
    v21 = v0[4];
    v22 = v0[2];
    v23 = *(v0[5] + 32);
    (v23)(v27, v0[3], v21, v12, v13, v14, v15, v16, 17, 0, 3, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
    v24 = type metadata accessor for HistoricalUsageEntryCommon(0);
    static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(v17, v22 + v24[5]);
    (*(v20 + 8))(v19, v28);
    (*(v18 + 8))(v17, v29);
    v23(v22, v27, v21);
    *(v22 + v24[6]) = 0;
    v25 = (v22 + v24[7]);
    *v25 = 0;
    v25[1] = 0;

    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t HistoricalUsageEntryCommon.init(date:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855DE8(a2, a3 + v7[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a3 + v7[6]) = 0;
  v9 = (a3 + v7[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.snapshot(showUpgradeRequired:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v33 - v3;
  v39 = sub_20D972628();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_20D971EA8();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9726F8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D9727D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x277CC9830], v15);
  sub_20D972708();
  v23 = v15;
  v24 = v39;
  (*(v16 + 8))(v18, v23);
  (*(v20 + 16))(v11, v22, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  v25 = sub_20D972838();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = v40;
  sub_20D971E98();
  sub_20D972748();
  result = (*(v4 + 48))(v26, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v4 + 32);
    v29 = v36;
    v28(v36, v26, v24);
    v30 = type metadata accessor for HistoricalUsageEntryCommon(0);
    v31 = v38;
    static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(v22, v38 + v30[5]);
    (*(v34 + 8))(v14, v35);
    (*(v20 + 8))(v22, v19);
    result = (v28)(v31, v29, v24);
    *(v31 + v30[6]) = v37 & 1;
    v32 = (v31 + v30[7]);
    *v32 = 0;
    v32[1] = 0;
  }

  return result;
}

uint64_t static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HistoricalUsageEntryCommon(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = sub_20D9727D8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_20D972628();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for HistoricalUsageSnapshot(0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839660, &qword_20D97A510);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8507D0, 0, 0);
}

uint64_t sub_20D8507D0()
{
  v22 = v0;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_20D9734F8();
  v0[31] = __swift_project_value_buffer(v2, qword_2811250A0);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v21);
    *(v8 + 12) = 2080;
    v10 = v6 == 0;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0x3E6C696E3CLL;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = v1;
    }

    v13 = sub_20D7F4DC8(v11, v12, &v21);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    v14 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
    v15 = MEMORY[0x20F323400](v5, v14);
    v17 = sub_20D7F4DC8(v15, v16, &v21);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: with siteID: %s & homes: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_20D850A64;
  v19 = v0[12];

  return sub_20D854D5C(v19);
}

uint64_t sub_20D850A64(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_20D850B64, 0, 0);
}

uint64_t sub_20D850B64()
{
  v48 = v0;
  if (*(v0 + 88))
  {

    v1 = sub_20D9734D8();
    v2 = sub_20D975458();

    if (os_log_type_enabled(v1, v2))
    {
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v47[0] = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v47);
      *(v5 + 12) = 2080;
      *(v0 + 40) = v4;
      *(v0 + 48) = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
      v7 = sub_20D975118();
      v9 = sub_20D7F4DC8(v7, v8, v47);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_20D7C9000, v1, v2, "%s SiteDetail provided with non-nil siteID: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v6, -1, -1);
      MEMORY[0x20F324260](v5, -1, -1);
    }

    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    goto LABEL_19;
  }

  v12 = sub_20D9734D8();
  v13 = sub_20D975458();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 264);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v47[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v47);
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v15 + 16);

    _os_log_impl(&dword_20D7C9000, v12, v13, "%s No SiteDetail provided. ***Attempting Fallback to first onboarded home (of %ld available)***", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 240);
  sub_20D84EE8C(*(v0 + 264), v18);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839668, &unk_20D9795F8);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) != 1)
  {
    v44 = *(v0 + 240);
    v10 = sub_20D972C68();
    v11 = v45;

    sub_20D855E50(v44, type metadata accessor for HistoricalUsageWidgetCommon.Home);
LABEL_19:
    type metadata accessor for HistoricalUsageSnapshotManager(0);
    swift_allocObject();

    v46 = swift_task_alloc();
    *(v0 + 272) = v46;
    *v46 = v0;
    v46[1] = sub_20D851304;

    return HistoricalUsageSnapshotManager.init(siteID:)(v10, v11);
  }

  sub_20D7E3944(*(v0 + 240), &qword_27C839660, &qword_20D97A510);
  v20 = sub_20D9734D8();
  v21 = sub_20D975458();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v47);
    _os_log_impl(&dword_20D7C9000, v20, v21, "%s: Widget configuration has no entity (no home)", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v22, -1, -1);
  }

  sub_20D855D94();
  v24 = swift_allocError();
  *v25 = 0;
  swift_willThrow();
  v26 = v24;
  v27 = sub_20D9734D8();
  v28 = sub_20D975458();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47[0] = v31;
    *v29 = 136315394;
    *(v29 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v47);
    *(v29 + 12) = 2112;
    v32 = v24;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v33;
    *v30 = v33;
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s:ERROR: %@", v29, 0x16u);
    sub_20D7E3944(v30, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F324260](v31, -1, -1);
    MEMORY[0x20F324260](v29, -1, -1);
  }

  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 72);
  *(v0 + 56) = v24;
  v37 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v38 = swift_dynamicCast();
  v39 = *(v0 + 288);
  if (!v38)
  {
    v39 = 5;
  }

  LOBYTE(v47[0]) = v39;
  sub_20D852054(v34, v36, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
  v40 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20D979110;
  sub_20D855DE8(v34, v41 + v40, type metadata accessor for HistoricalUsageEntryCommon);

  v42 = *(v0 + 8);

  return v42(v41);
}

uint64_t sub_20D851304(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_20D851404, 0, 0);
}

uint64_t sub_20D851404()
{
  v101 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_20D84F314(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  swift_beginAccess();
  sub_20D855EB0(v1 + v4, v2, type metadata accessor for HistoricalUsageSnapshot);

  sub_20D855EB0(v2, v3, type metadata accessor for HistoricalUsageSnapshot);
  v5 = sub_20D9734D8();
  v6 = sub_20D975478();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v99 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v99);
    *(v9 + 12) = 2080;
    v11 = HistoricalUsageSnapshot.description.getter();
    v13 = v12;
    sub_20D855E50(v8, type metadata accessor for HistoricalUsageSnapshot);
    v14 = sub_20D7F4DC8(v11, v13, &v99);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Retrieved week snapshot for widget %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {

    sub_20D855E50(v8, type metadata accessor for HistoricalUsageSnapshot);
  }

  v15 = *(v0 + 232);
  v16 = *(v15 + *(*(v0 + 216) + 64));
  if (v16 == 6)
  {
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v92 = *(v0 + 192);
    v94 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v88 = *(v0 + 168);
    log = *(v0 + 128);
    v24 = *(v0 + 104);
    sub_20D9725C8();
    sub_20D972778();
    sub_20D973108();
    (*(v20 + 8))(v21, v22);
    v25 = *(v19 + 16);
    v25(v23, v17, v88);
    sub_20D855EB0(v15, v23 + v24[5], type metadata accessor for HistoricalUsageSnapshot);
    *(v23 + v24[6]) = 0;
    v26 = (v23 + v24[7]);
    *v26 = 0;
    v26[1] = 0;
    sub_20D855EB0(v23, log, type metadata accessor for HistoricalUsageEntryCommon);
    v25(v92, v17, v88);
    v25(v94, v18, v88);
    v27 = sub_20D9734D8();
    v96 = sub_20D975478();
    v28 = os_log_type_enabled(v27, v96);
    v29 = *(v0 + 184);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    v33 = *(v0 + 128);
    if (v28)
    {
      v34 = *(v0 + 192);
      v35 = *(v0 + 120);
      v93 = *(v0 + 184);
      v36 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98 = v95;
      *v36 = 136315906;
      *(v36 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v98);
      *(v36 + 12) = 2080;
      sub_20D855EB0(v33, v35, type metadata accessor for HistoricalUsageEntryCommon);
      v99 = 0;
      v100 = 0xE000000000000000;
      loga = v27;
      sub_20D975678();
      MEMORY[0x20F323340](0xD000000000000022, 0x800000020D9848C0);
      v37 = sub_20D9725F8();
      v89 = v31;
      MEMORY[0x20F323340](v37);

      MEMORY[0x20F323340](0xD000000000000012, 0x800000020D9848F0);
      v38 = HistoricalUsageSnapshot.description.getter();
      MEMORY[0x20F323340](v38);

      v39 = v99;
      v40 = v100;
      sub_20D855E50(v35, type metadata accessor for HistoricalUsageEntryCommon);
      sub_20D855E50(v33, type metadata accessor for HistoricalUsageEntryCommon);
      v41 = sub_20D7F4DC8(v39, v40, &v98);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = v34;
      v43 = sub_20D9725F8();
      v45 = v44;
      v46 = *(v32 + 8);
      v46(v42, v89);
      v47 = sub_20D7F4DC8(v43, v45, &v98);

      *(v36 + 24) = v47;
      *(v36 + 32) = 2080;
      v48 = sub_20D9725F8();
      v50 = v49;
      v46(v93, v89);
      v51 = sub_20D7F4DC8(v48, v50, &v98);

      *(v36 + 34) = v51;
      _os_log_impl(&dword_20D7C9000, loga, v96, "%s Entry:%s created for %s, until %s", v36, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v95, -1, -1);
      MEMORY[0x20F324260](v36, -1, -1);
    }

    else
    {

      v46 = *(v32 + 8);
      v46(v29, v31);
      v46(v30, v31);
      sub_20D855E50(v33, type metadata accessor for HistoricalUsageEntryCommon);
    }

    v78 = *(v0 + 232);
    v80 = *(v0 + 200);
    v79 = *(v0 + 208);
    v81 = *(v0 + 168);
    v82 = *(v0 + 136);
    v83 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_20D979110;
    v97 = v85;
    sub_20D855EB0(v82, v85 + v84, type metadata accessor for HistoricalUsageEntryCommon);
    sub_20D974EB8();
    sub_20D855E50(v82, type metadata accessor for HistoricalUsageEntryCommon);
    v46(v80, v81);
    v46(v79, v81);
    sub_20D855E50(v78, type metadata accessor for HistoricalUsageSnapshot);
  }

  else
  {
    v52 = sub_20D9734D8();
    v53 = sub_20D975478();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v99 = v56;
      *v54 = 136315394;
      *(v54 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v99);
      *(v54 + 12) = 2112;
      sub_20D855D94();
      swift_allocError();
      *v57 = v16;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v58;
      *v55 = v58;
      _os_log_impl(&dword_20D7C9000, v52, v53, "%s retrieved snapshot with error: %@, giving up.", v54, 0x16u);
      sub_20D7E3944(v55, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x20F324260](v56, -1, -1);
      MEMORY[0x20F324260](v54, -1, -1);
    }

    v59 = *(v0 + 232);
    sub_20D855D94();
    v60 = swift_allocError();
    *v61 = v16;
    swift_willThrow();
    sub_20D855E50(v59, type metadata accessor for HistoricalUsageSnapshot);
    v62 = v60;
    v63 = sub_20D9734D8();
    v64 = sub_20D975458();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v99 = v67;
      *v65 = 136315394;
      *(v65 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v99);
      *(v65 + 12) = 2112;
      v68 = v60;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 14) = v69;
      *v66 = v69;
      _os_log_impl(&dword_20D7C9000, v63, v64, "%s:ERROR: %@", v65, 0x16u);
      sub_20D7E3944(v66, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v66, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x20F324260](v67, -1, -1);
      MEMORY[0x20F324260](v65, -1, -1);
    }

    v71 = *(v0 + 112);
    v70 = *(v0 + 120);
    v72 = *(v0 + 72);
    *(v0 + 56) = v60;
    v73 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v74 = swift_dynamicCast();
    v75 = *(v0 + 288);
    if (!v74)
    {
      v75 = 5;
    }

    LOBYTE(v99) = v75;
    sub_20D852054(v70, v72, &v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
    v76 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_20D979110;
    v97 = v77;
    sub_20D855DE8(v70, v77 + v76, type metadata accessor for HistoricalUsageEntryCommon);
  }

  v86 = *(v0 + 8);

  return v86(v97);
}

uint64_t static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D80F3B0;

  return sub_20D854D5C(a1);
}

uint64_t sub_20D852054(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D974EE8();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v15 = sub_20D9734F8();
  __swift_project_value_buffer(v15, qword_2811250A0);
  v16 = sub_20D9734D8();
  v17 = sub_20D975458();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v72 = v9;
    v20 = v7;
    v21 = v6;
    v22 = a1;
    v23 = v19;
    v24 = swift_slowAlloc();
    v71 = a2;
    v25 = v24;
    v79 = v24;
    *v18 = 136315394;
    *(v18 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
    *(v18 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v26 = v14;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v27;
    *v23 = v27;
    _os_log_impl(&dword_20D7C9000, v16, v17, "%s: Erroring out widget due to snapshot error: %@", v18, 0x16u);
    sub_20D7E3944(v23, &unk_27C839E80, &qword_20D979610);
    v28 = v23;
    a1 = v22;
    v6 = v21;
    v7 = v20;
    v9 = v72;
    MEMORY[0x20F324260](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    a2 = v71;
    MEMORY[0x20F324260](v29, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);
  }

  sub_20D974EC8();
  v30 = sub_20D9734D8();
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v36 = sub_20D975458();
      if (!os_log_type_enabled(v30, v36))
      {
        goto LABEL_25;
      }

      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
      v40 = "%s: Utility has been offboarded for EnergySite. Asking for 60 minute reload";
    }

    else if (v14 == 4)
    {
      v36 = sub_20D975458();
      if (!os_log_type_enabled(v30, v36))
      {
        goto LABEL_25;
      }

      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
      v40 = "%s: Subscription disconnected, erroring out widget. Asking for 60 minute reload";
    }

    else
    {
      v36 = sub_20D975458();
      if (!os_log_type_enabled(v30, v36))
      {
        goto LABEL_25;
      }

      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
      v40 = "%s: historical usage loading failed, but error is recoverable, asking for 60 minute reload";
    }

    _os_log_impl(&dword_20D7C9000, v30, v36, v40, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F324260](v39, -1, -1);
    v54 = v38;
    a2 = v37;
LABEL_24:
    MEMORY[0x20F324260](v54, -1, -1);
    goto LABEL_25;
  }

  if (!v14)
  {
    v41 = sub_20D975458();
    if (!os_log_type_enabled(v30, v41))
    {
      goto LABEL_25;
    }

    v42 = swift_slowAlloc();
    v43 = v9;
    v44 = v7;
    v45 = v6;
    v46 = a1;
    v47 = swift_slowAlloc();
    v48 = a2;
    v49 = swift_slowAlloc();
    v79 = v49;
    *v42 = 136315394;
    *(v42 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
    *(v42 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v50 = 0;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v51;
    *v47 = v51;
    _os_log_impl(&dword_20D7C9000, v30, v41, "%s: No site for available, erroring out widget. asking for 60 minute reload %@", v42, 0x16u);
    sub_20D7E3944(v47, &unk_27C839E80, &qword_20D979610);
    v52 = v47;
    a1 = v46;
    v6 = v45;
    v7 = v44;
    v9 = v43;
    MEMORY[0x20F324260](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v53 = v49;
    a2 = v48;
    MEMORY[0x20F324260](v53, -1, -1);
    v54 = v42;
    goto LABEL_24;
  }

  if (v14 != 1)
  {
    v55 = sub_20D975458();
    if (!os_log_type_enabled(v30, v55))
    {
      goto LABEL_25;
    }

    v56 = swift_slowAlloc();
    v57 = a2;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v59;
    *v56 = 136315394;
    *(v56 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
    *(v56 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v60 = 2;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 14) = v61;
    *v58 = v61;
    _os_log_impl(&dword_20D7C9000, v30, v55, "%s: historical usage loading failed, erroring out widget, asking for 60 minute reload: %@", v56, 0x16u);
    sub_20D7E3944(v58, &unk_27C839E80, &qword_20D979610);
    v62 = v58;
    a2 = v57;
    MEMORY[0x20F324260](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x20F324260](v59, -1, -1);
    v54 = v56;
    goto LABEL_24;
  }

  v31 = sub_20D975478();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = a2;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v79 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v79);
    _os_log_impl(&dword_20D7C9000, v30, v31, "%s: historical usage is still loading (or a transient error), displaying empty, retrying as soon as WidgetKit allows...", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x20F324260](v34, -1, -1);
    v35 = v33;
    a2 = v32;
    MEMORY[0x20F324260](v35, -1, -1);
  }

LABEL_25:

  v63 = v74;
  sub_20D972578();
  v64 = v73;
  sub_20D974EB8();
  (*(v77 + 8))(v63, v78);
  v66 = v75;
  v65 = v76;
  (*(v75 + 8))(a2, v76);
  (*(v66 + 32))(a2, v64, v65);
  sub_20D9725C8();
  LOBYTE(v79) = 0;
  (*(v7 + 104))(v9, *MEMORY[0x277D075B8], v6);
  v67 = type metadata accessor for HistoricalUsageEntryCommon(0);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v79, v9, (a1 + v67[5]));
  result = (*(v7 + 8))(v9, v6);
  *(a1 + v67[6]) = 0;
  v69 = (a1 + v67[7]);
  *v69 = 0;
  v69[1] = 0;
  return result;
}

uint64_t HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily.init(widgetFamily:entry:homeName:homeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_20D974EA8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily(0);
  result = sub_20D855DE8(a2, a7 + v15[5], type metadata accessor for HistoricalUsageEntryCommon);
  v17 = (a7 + v15[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v15[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v187 = a1;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839680, &qword_20D979650);
  MEMORY[0x28223BE20](v150);
  v152 = &v141 - v3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839688, &qword_20D979658);
  MEMORY[0x28223BE20](v186);
  v153 = &v141 - v4;
  v149 = type metadata accessor for CircularHistoricalUsageView(0);
  MEMORY[0x28223BE20](v149);
  v146 = (&v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839690, &qword_20D979660);
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v147 = &v141 - v6;
  v172 = type metadata accessor for RectangularLockHistoricalUsageView(0);
  MEMORY[0x28223BE20](v172);
  v142 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839698, &qword_20D979668);
  v144 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v143 = &v141 - v8;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396A0, &qword_20D979670);
  MEMORY[0x28223BE20](v183);
  v185 = &v141 - v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396A8, &qword_20D979678);
  MEMORY[0x28223BE20](v170);
  v171 = &v141 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396B0, &qword_20D979680);
  MEMORY[0x28223BE20](v184);
  v173 = &v141 - v11;
  v164 = sub_20D9742A8();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  MEMORY[0x28223BE20](v13 - 8);
  v156 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D975058();
  MEMORY[0x28223BE20](v15 - 8);
  v155 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for HistoricalUsageSnapshot(0);
  v17 = MEMORY[0x28223BE20](v154);
  v177 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v141 - v19;
  v189 = sub_20D972628();
  v182 = *(v189 - 8);
  v21 = MEMORY[0x28223BE20](v189);
  v145 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v176 = &v141 - v24;
  MEMORY[0x28223BE20](v23);
  v181 = &v141 - v25;
  v167 = type metadata accessor for HistoricalUsageWidgetView(0);
  v26 = MEMORY[0x28223BE20](v167);
  v180 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v157 = &v141 - v28;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396B8, &qword_20D979688);
  v159 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v158 = &v141 - v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396C0, &unk_20D979690);
  v161 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v160 = &v141 - v30;
  v31 = sub_20D974EA8();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v179 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily(0);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v141 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v141 - v41;
  v43 = v1 + *(v34 + 20);
  v188 = type metadata accessor for HistoricalUsageEntryCommon(0);
  v44 = *(v188 + 24);
  v175 = v43;
  LODWORD(v44) = *(v43 + v44);
  v178 = v34;
  if (v44 == 1)
  {
    sub_20D9721B8();
  }

  else
  {
    v45 = (v1 + *(v34 + 28));
    v46 = v45[1];
    if (v46)
    {
      v166 = v32;
      v165 = v31;
      v47 = *v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_20D977210;
      v49 = MEMORY[0x277D837D0];
      *(v48 + 56) = MEMORY[0x277D837D0];
      v50 = sub_20D84E340();
      *(v48 + 32) = 0xD000000000000039;
      *(v48 + 40) = 0x800000020D984910;
      *(v48 + 96) = v49;
      *(v48 + 104) = v50;
      v2 = v1;
      *(v48 + 64) = v50;
      *(v48 + 72) = v47;
      v31 = v165;
      v32 = v166;
      *(v48 + 80) = v46;

      sub_20D9750C8();
    }

    sub_20D9721B8();
  }

  v190 = v42;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v51 = sub_20D9734F8();
  __swift_project_value_buffer(v51, qword_2811250A0);
  sub_20D855EB0(v2, v39, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  sub_20D855EB0(v2, v37, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  v52 = sub_20D9734D8();
  v53 = sub_20D975478();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v166 = v32;
    v55 = v54;
    v141 = swift_slowAlloc();
    v191 = v141;
    *v55 = 136315394;
    sub_20D84F314(&qword_281124CA8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BB8]);
    v56 = sub_20D9757A8();
    v57 = v20;
    v58 = v2;
    v60 = v59;
    v165 = v31;
    sub_20D855E50(v39, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    v61 = sub_20D7F4DC8(v56, v60, &v191);
    v2 = v58;
    v20 = v57;

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v62 = HistoricalUsageSnapshot.description.getter();
    v64 = v63;
    v31 = v165;
    sub_20D855E50(v37, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    v65 = sub_20D7F4DC8(v62, v64, &v191);

    *(v55 + 14) = v65;
    _os_log_impl(&dword_20D7C9000, v52, v53, "HistoricalUsageWidgetForFamily: creating %s widget for usageSnapshot %s", v55, 0x16u);
    v66 = v141;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v66, -1, -1);
    v67 = v55;
    v32 = v166;
    MEMORY[0x20F324260](v67, -1, -1);
  }

  else
  {

    sub_20D855E50(v37, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    sub_20D855E50(v39, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  }

  v68 = v179;
  (*(v32 + 16))(v179, v2, v31);
  v69 = (*(v32 + 88))(v68, v31);
  v70 = v182;
  if (v69 == *MEMORY[0x277CE3B68])
  {
    v71 = *(v182 + 16);
    v72 = v181;
    v73 = v175;
    v74 = v189;
    v71(v181, v175, v189);
    sub_20D855EB0(v73 + *(v188 + 20), v20, type metadata accessor for HistoricalUsageSnapshot);
    v75 = (v2 + *(v178 + 24));
    v77 = *v75;
    v76 = v75[1];
    v78 = v180;
    v71(v180, v72, v74);
    v79 = v167;
    sub_20D855EB0(v20, &v78[*(v167 + 20)], type metadata accessor for HistoricalUsageSnapshot);

    if (sub_20D972D68())
    {
      v80 = v155;
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v81 = qword_28112ABE8;
      v82 = qword_28112ABE8;
      v83 = v156;
      sub_20D9726B8();
      v84 = sub_20D975108(v80, 0, 0, v81, v83, "electricity usage summary title", 31, 2);
      if (!v76)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v105 = qword_28112ABE8;
      sub_20D9726B8();
      v84 = sub_20D9750F8();
      if (!v76)
      {
        goto LABEL_23;
      }
    }

    v84 = v77;
    v85 = v76;
LABEL_23:
    v107 = v180;
    v106 = v181;
    v108 = &v180[*(v79 + 24)];
    *v108 = v84;
    v108[1] = v85;
    v109 = v176;
    v110 = v189;
    v71(v176, v106, v189);
    v111 = v177;
    sub_20D855EB0(v20, v177, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v109, v111, v107 + *(v79 + 28));
    sub_20D855E50(v20, type metadata accessor for HistoricalUsageSnapshot);
    (*(v70 + 8))(v106, v110);
    v112 = v157;
    sub_20D855DE8(v107, v157, type metadata accessor for HistoricalUsageWidgetView);
    v113 = sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView, &protocol conformance descriptor for HistoricalUsageWidgetView);
    v114 = v158;
    sub_20D9746C8();
    sub_20D855E50(v112, type metadata accessor for HistoricalUsageWidgetView);
    v115 = v162;
    sub_20D974298();
    sub_20D974C48();
    v191 = v79;
    v192 = v113;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v117 = MEMORY[0x277CE1410];
    v118 = MEMORY[0x277CE1428];
    v119 = v160;
    v120 = v168;
    sub_20D9747C8();
    (*(v163 + 8))(v115, v164);
    (*(v159 + 8))(v114, v120);
    v121 = v161;
    v122 = v169;
    (*(v161 + 16))(v171, v119, v169);
    swift_storeEnumTagMultiPayload();
    v191 = v120;
    v192 = v118;
    v193 = OpaqueTypeConformance2;
    v194 = v117;
    swift_getOpaqueTypeConformance2();
    v123 = sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView, &protocol conformance descriptor for RectangularLockHistoricalUsageView);
    v191 = v172;
    v192 = v123;
    swift_getOpaqueTypeConformance2();
    v124 = v173;
    sub_20D9741B8();
    sub_20D7EB7E8(v124, v185, &qword_27C8396B0, &qword_20D979680);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v124, &qword_27C8396B0, &qword_20D979680);
    (*(v121 + 8))(v119, v122);
    return sub_20D7E3944(v190, &qword_27C838B78, &qword_20D97A5A0);
  }

  if (v69 == *MEMORY[0x277CE3B90])
  {
    v86 = *(v182 + 16);
    v87 = v175;
    v88 = v176;
    v89 = v189;
    v86(v176, v175, v189);
    v90 = v149;
    v91 = *(v149 + 24);
    v92 = v87 + *(v188 + 20);
    v93 = v146;
    sub_20D855EB0(v92, v146 + v91, type metadata accessor for HistoricalUsageSnapshot);
    *v93 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
    swift_storeEnumTagMultiPayload();
    v94 = v145;
    v86(v145, v88, v89);
    v95 = v93 + v91;
    v96 = v177;
    sub_20D855EB0(v95, v177, type metadata accessor for HistoricalUsageSnapshot);
    v97 = v93 + *(v90 + 28);
    HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v94, v96, v97);
    (*(v70 + 8))(v88, v89);
    v98 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v86(v93 + *(v90 + 20), v97 + *(v98 + 52), v89);
    v99 = sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView, &protocol conformance descriptor for CircularHistoricalUsageView);
    v100 = v147;
    v101 = v190;
    sub_20D9746C8();
    sub_20D855E50(v93, type metadata accessor for CircularHistoricalUsageView);
    v102 = v148;
    v103 = v151;
    (*(v148 + 16))(v152, v100, v151);
    swift_storeEnumTagMultiPayload();
    v191 = v90;
    v192 = v99;
    swift_getOpaqueTypeConformance2();
    v104 = v153;
    sub_20D9741B8();
    sub_20D7EB7E8(v104, v185, &qword_27C839688, &qword_20D979658);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v104, &qword_27C839688, &qword_20D979658);
    (*(v102 + 8))(v100, v103);
    return sub_20D7E3944(v101, &qword_27C838B78, &qword_20D97A5A0);
  }

  if (v69 == *MEMORY[0x277CE3B98])
  {
    v126 = v175;
    v127 = v176;
    (*(v182 + 16))(v176, v175, v189);
    v128 = v126 + *(v188 + 20);
    v129 = v177;
    sub_20D855EB0(v128, v177, type metadata accessor for HistoricalUsageSnapshot);
    v130 = v142;
    RectangularLockHistoricalUsageView.init(widgetStartDate:usageSnapshot:)(v127, v129, v142);
    v131 = sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView, &protocol conformance descriptor for RectangularLockHistoricalUsageView);
    v132 = v143;
    v101 = v190;
    v133 = v172;
    sub_20D9746C8();
    sub_20D855E50(v130, type metadata accessor for RectangularLockHistoricalUsageView);
    v134 = v144;
    v135 = v174;
    (*(v144 + 16))(v171, v132, v174);
    swift_storeEnumTagMultiPayload();
    v136 = sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView, &protocol conformance descriptor for HistoricalUsageWidgetView);
    v191 = v167;
    v192 = v136;
    v137 = swift_getOpaqueTypeConformance2();
    v191 = v168;
    v192 = MEMORY[0x277CE1428];
    v193 = v137;
    v194 = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    v191 = v133;
    v192 = v131;
    swift_getOpaqueTypeConformance2();
    v138 = v173;
    sub_20D9741B8();
    sub_20D7EB7E8(v138, v185, &qword_27C8396B0, &qword_20D979680);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v138, &qword_27C8396B0, &qword_20D979680);
    (*(v134 + 8))(v132, v135);
    return sub_20D7E3944(v101, &qword_27C838B78, &qword_20D97A5A0);
  }

  swift_storeEnumTagMultiPayload();
  v139 = sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView, &protocol conformance descriptor for CircularHistoricalUsageView);
  v191 = v149;
  v192 = v139;
  swift_getOpaqueTypeConformance2();
  v140 = v153;
  sub_20D9741B8();
  sub_20D7EB7E8(v140, v185, &qword_27C839688, &qword_20D979658);
  swift_storeEnumTagMultiPayload();
  sub_20D855F38();
  sub_20D8560D0();
  sub_20D9741B8();
  sub_20D7E3944(v140, &qword_27C839688, &qword_20D979658);
  sub_20D7E3944(v190, &qword_27C838B78, &qword_20D97A5A0);
  return (*(v32 + 8))(v68, v31);
}

uint64_t static HistoricalUsageWidgetCommon.widgetConfigurationDisplayName()()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Header string for the Historical Usage widget in the configuration UI", 69, 2);
}

uint64_t static HistoricalUsageWidgetCommon.widgetDescription()()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Description of widget functionality, placed over the widget configuration.", 74, 2);
}

uint64_t sub_20D854790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t HistoricalUsageEntryCommon.date.setter(uint64_t a1)
{
  v3 = sub_20D972628();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HistoricalUsageEntryCommon.description.getter()
{
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000022, 0x800000020D9848C0);
  v0 = sub_20D9725F8();
  MEMORY[0x20F323340](v0);

  MEMORY[0x20F323340](0xD000000000000012, 0x800000020D9848F0);
  type metadata accessor for HistoricalUsageEntryCommon(0);
  v1 = HistoricalUsageSnapshot.description.getter();
  MEMORY[0x20F323340](v1);

  return 0;
}

uint64_t sub_20D854A40(uint64_t a1)
{
  v2 = sub_20D974E98();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973FF8();
}

uint64_t sub_20D854B08(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v26 = v11;
  v12 = sub_20D8D4B48(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    sub_20D908D2C(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_20D8D4B48(a2);
    if ((v3 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_20D9757F8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v12;
    sub_20D8D6200();
    v12 = v22;
    v19 = v26;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = v12;
    sub_20D855EB0(a2, v9, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D8D5890(v23, v9, a1, v19);
    v21 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v19 = v26;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v19[7];
  v21 = *(v20 + 8 * v12);
  *(v20 + 8 * v12) = a1;
LABEL_11:
  *v4 = v19;
  return v21;
}

uint64_t sub_20D854C90(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  sub_20D855EB0(v7 + *(*(v8 - 8) + 72) * a2, v6, type metadata accessor for HistoricalUsageWidgetCommon.Home);
}

uint64_t sub_20D854D5C(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D854E4C, 0, 0);
}

uint64_t sub_20D854E4C()
{
  v38 = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 40);
    *(v0 + 96) = sub_20D972CD8();
    v4 = *(v3 + 80);
    *(v0 + 152) = v4;
    *(v0 + 104) = *(v3 + 72);
    *(v0 + 112) = 0;
    sub_20D855EB0(v1 + ((v4 + 32) & ~v4), *(v0 + 80), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    if (qword_2811270D8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = sub_20D9734F8();
    *(v0 + 120) = v8;
    *(v0 + 128) = __swift_project_value_buffer(v8, qword_2811270E0);
    sub_20D855EB0(v6, v5, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D855EB0(v6, v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    if (v11)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v37);
      *(v15 + 12) = 2080;
      v17 = (v13 + *(v14 + 20));
      v18 = *v17;
      v19 = v17[1];

      sub_20D855E50(v13, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v20 = sub_20D7F4DC8(v18, v19, &v37);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = sub_20D972648();
      v23 = v22;
      sub_20D855E50(v12, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v24 = sub_20D7F4DC8(v21, v23, &v37);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s checking '%s'/%s for onboarded EnergySite...", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    else
    {

      sub_20D855E50(v12, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      sub_20D855E50(v13, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v31 = sub_20D972648();
    v33 = v32;
    v34 = swift_task_alloc();
    *(v0 + 136) = v34;
    *v34 = v0;
    v34[1] = sub_20D855370;

    return MEMORY[0x28215C940](v31, v33);
  }

  else
  {
    if (qword_281125098 != -1)
    {
      swift_once();
    }

    v25 = sub_20D9734F8();
    __swift_project_value_buffer(v25, qword_2811250A0);
    v26 = *(v0 + 16);

    v27 = sub_20D9734D8();
    v28 = sub_20D975478();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v37);
      *(v29 + 12) = 2048;
      *(v29 + 14) = *(v26 + 16);

      _os_log_impl(&dword_20D7C9000, v27, v28, "%s found %ld onboarded homes+sites", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v29, -1, -1);
    }

    else
    {
    }

    v35 = *(v0 + 8);

    return v35(v26);
  }
}

uint64_t sub_20D855370(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_20D855470, 0, 0);
}

uint64_t sub_20D855470()
{
  v67 = v0;
  if (!*(v0 + 144))
  {
LABEL_8:
    sub_20D855EB0(*(v0 + 80), *(v0 + 48), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v17 = sub_20D9734D8();
    v18 = sub_20D975458();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 80);
    v21 = *(v0 + 48);
    if (v19)
    {
      v22 = *(v0 + 32);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v66);
      *(v23 + 12) = 2080;
      v25 = (v21 + *(v22 + 20));
      v26 = *v25;
      v27 = v25[1];

      sub_20D855E50(v21, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v28 = sub_20D7F4DC8(v26, v27, &v66);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s Onboarded site can not be found for home'%s': ignoring", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v24, -1, -1);
      MEMORY[0x20F324260](v23, -1, -1);
    }

    else
    {

      sub_20D855E50(v21, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v29 = v20;
    goto LABEL_14;
  }

  v1 = sub_20D972C88();

  if ((v1 & 1) == 0)
  {

    goto LABEL_8;
  }

  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  __swift_project_value_buffer(*(v0 + 120), qword_2811250A0);
  sub_20D855EB0(v2, v3, type metadata accessor for HistoricalUsageWidgetCommon.Home);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v65 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v66);
    *(v8 + 12) = 2080;
    v10 = sub_20D972C68();
    v12 = sub_20D7F4DC8(v10, v11, &v66);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v13 = (v7 + *(v65 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_20D855E50(v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v16 = sub_20D7F4DC8(v14, v15, &v66);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s Site %s onboarded for '%s', adding to dict...", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {

    sub_20D855E50(v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  }

  v30 = *(v0 + 80);

  sub_20D854B08(v31, v30);

  v29 = v30;
LABEL_14:
  sub_20D855E50(v29, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  v32 = *(v0 + 112) + 1;
  if (v32 == *(v0 + 88))
  {
    if (qword_281125098 != -1)
    {
      swift_once();
    }

    v33 = sub_20D9734F8();
    __swift_project_value_buffer(v33, qword_2811250A0);
    v34 = *(v0 + 16);

    v35 = sub_20D9734D8();
    v36 = sub_20D975478();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v66);
      *(v37 + 12) = 2048;
      *(v37 + 14) = *(v34 + 16);

      _os_log_impl(&dword_20D7C9000, v35, v36, "%s found %ld onboarded homes+sites", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x20F324260](v38, -1, -1);
      MEMORY[0x20F324260](v37, -1, -1);
    }

    else
    {
    }

    v59 = *(v0 + 8);

    return v59(v34);
  }

  else
  {
    *(v0 + 112) = v32;
    sub_20D855EB0(*(v0 + 24) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 104) * v32, *(v0 + 80), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    if (qword_2811270D8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 72);
    v40 = *(v0 + 80);
    v41 = *(v0 + 64);
    v42 = sub_20D9734F8();
    *(v0 + 120) = v42;
    *(v0 + 128) = __swift_project_value_buffer(v42, qword_2811270E0);
    sub_20D855EB0(v40, v39, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D855EB0(v40, v41, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v43 = sub_20D9734D8();
    v44 = sub_20D975478();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 64);
    v47 = *(v0 + 72);
    if (v45)
    {
      v48 = *(v0 + 32);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66 = v50;
      *v49 = 136315650;
      *(v49 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v66);
      *(v49 + 12) = 2080;
      v51 = (v47 + *(v48 + 20));
      v52 = *v51;
      v53 = v51[1];

      sub_20D855E50(v47, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v54 = sub_20D7F4DC8(v52, v53, &v66);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2080;
      v55 = sub_20D972648();
      v57 = v56;
      sub_20D855E50(v46, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v58 = sub_20D7F4DC8(v55, v57, &v66);

      *(v49 + 24) = v58;
      _os_log_impl(&dword_20D7C9000, v43, v44, "%s checking '%s'/%s for onboarded EnergySite...", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v50, -1, -1);
      MEMORY[0x20F324260](v49, -1, -1);
    }

    else
    {

      sub_20D855E50(v46, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      sub_20D855E50(v47, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v61 = sub_20D972648();
    v63 = v62;
    v64 = swift_task_alloc();
    *(v0 + 136) = v64;
    *v64 = v0;
    v64[1] = sub_20D855370;

    return MEMORY[0x28215C940](v61, v63);
  }
}

unint64_t sub_20D855D94()
{
  result = qword_27C839670;
  if (!qword_27C839670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839670);
  }

  return result;
}

uint64_t sub_20D855DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D855E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D855EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D855F38()
{
  result = qword_281124E10;
  if (!qword_281124E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396B0, &qword_20D979680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396B8, &qword_20D979688);
    type metadata accessor for HistoricalUsageWidgetView(255);
    sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView, &protocol conformance descriptor for HistoricalUsageWidgetView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for RectangularLockHistoricalUsageView(255);
    sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView, &protocol conformance descriptor for RectangularLockHistoricalUsageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E10);
  }

  return result;
}

unint64_t sub_20D8560D0()
{
  result = qword_281124E18;
  if (!qword_281124E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839688, &qword_20D979658);
    type metadata accessor for CircularHistoricalUsageView(255);
    sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView, &protocol conformance descriptor for CircularHistoricalUsageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E18);
  }

  return result;
}

uint64_t sub_20D856258(uint64_t a1)
{
  result = sub_20D972698();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D8562F4(uint64_t a1)
{
  sub_20D974EA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageEntryCommon(319);
    if (v2 <= 0x3F)
    {
      sub_20D856390();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D856390()
{
  if (!qword_281124C28)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124C28);
    }
  }
}

void sub_20D856408(uint64_t a1)
{
  sub_20D972628();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageSnapshot(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D8564AC()
{
  result = qword_281124DF0;
  if (!qword_281124DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396D0, &qword_20D979880);
    sub_20D855F38();
    sub_20D8560D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124DF0);
  }

  return result;
}

uint64_t sub_20D856550(unsigned int *a1)
{
  v2 = sub_20D972A08();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  sub_20D972968();
  (*(v3 + 104))(v6, *a1, v2);
  sub_20D8577E0(&qword_281127118, MEMORY[0x277D17F30], MEMORY[0x277D17F38]);
  sub_20D975208();
  sub_20D975208();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20D9757C8();
  }

  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);

  return v9 & 1;
}

void EnergyWindow.description.getter()
{
  v0 = sub_20D972A08();
  v32 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v31 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  sub_20D972988();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v5 = v7;
LABEL_5:
    sub_20D7DFFB8(v5);
    return;
  }

  v29 = v0;
  v30 = v12;
  v16 = *(v9 + 32);
  v16(v14, v7, v8);
  sub_20D972978();
  if (v15(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v14, v8);
    goto LABEL_5;
  }

  v17 = v30;
  v16(v30, v5, v8);
  v18 = v17;
  sub_20D972458();
  v20 = v19 / 3600.0;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v21 = v20;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0x6957796772656E45, 0xEE00203A776F646ELL);
  v22 = v31;
  sub_20D972968();
  v23 = v29;
  sub_20D975728();
  (*(v32 + 8))(v22, v23);
  MEMORY[0x20F323340](0x6E696E6E61707320, 0xEA00000000002067);
  v33 = v21;
  v24 = sub_20D9757A8();
  MEMORY[0x20F323340](v24);

  MEMORY[0x20F323340](0x6F72662073726820, 0xEA0000000000206DLL);
  v25 = sub_20D9725F8();
  MEMORY[0x20F323340](v25);

  MEMORY[0x20F323340](544175136, 0xE400000000000000);
  v26 = sub_20D9725F8();
  MEMORY[0x20F323340](v26);

  v27 = *(v9 + 8);
  v27(v18, v8);
  v27(v14, v8);
}

uint64_t EnergyWindow.id.getter()
{
  v0 = sub_20D972698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972688();
  v4 = sub_20D972648();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t EnergyWindow.displayWindow.getter()
{
  if (EnergyWindow.isCleanEnergy.getter())
  {
    return 1;
  }

  return EnergyWindow.isStrainedEnergy.getter();
}

BOOL EnergyWindow.isEntireEnergyForecastLength.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  sub_20D972988();
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    v14 = v5;
LABEL_5:
    sub_20D7DFFB8(v14);
    return 0;
  }

  v15 = v5;
  v16 = *(v7 + 32);
  v16(v12, v15, v6);
  sub_20D972978();
  if (v13(v3, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
    v14 = v3;
    goto LABEL_5;
  }

  v16(v10, v3, v6);
  sub_20D972458();
  v19 = v18;
  v20 = sub_20D973048();
  v21 = v20(v19);

  v22 = *(v7 + 8);
  v22(v10, v6);
  v22(v12, v6);
  return v21 > 11;
}

BOOL EnergyWindow.containsDate(referenceDate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  sub_20D972988();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v16 = v7;
LABEL_5:
    sub_20D7DFFB8(v16);
    return 0;
  }

  v25[1] = a1;
  v17 = v7;
  v18 = *(v9 + 32);
  v18(v14, v17, v8);
  sub_20D972978();
  if (v15(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v14, v8);
    v16 = v5;
    goto LABEL_5;
  }

  v18(v12, v5, v8);
  sub_20D972458();
  v21 = v20;
  sub_20D972458();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v12, v8);
  v24(v14, v8);
  return v23 > 0.0 && v21 <= 0.0;
}

BOOL EnergyWindow.endsAfterDate(referenceDate:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972978();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20D7DFFB8(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_20D972458();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    return v10 > 0.0;
  }
}

uint64_t static EnergyWindow.mockCleanNowPlusFourHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_20D9750E8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v31;
  v26 = v30;
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v30;
  v16 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v26, v14);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v17, v16);
  MEMORY[0x20F323340](0xD000000000000019, 0x800000020D984B20);
  v18 = v27;
  sub_20D9750D8();
  v19 = sub_20D9750A8();
  v21 = v20;

  result = (*(v28 + 8))(v18, v29);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    v23 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98], MEMORY[0x277D17EA8]);
    v24 = v25;
    sub_20D971C48();
    sub_20D857828(v19, v21);

    return (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
  }

  return result;
}

uint64_t sub_20D8577E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D857828(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20D84D374(result, a2);
  }

  return result;
}

uint64_t static EnergyWindow.mockDirtyNowPlusEightHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_20D9750E8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v31;
  v26 = v30;
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v30;
  v16 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v26, v14);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v17, v16);
  MEMORY[0x20F323340](0xD00000000000001ALL, 0x800000020D984B40);
  v18 = v27;
  sub_20D9750D8();
  v19 = sub_20D9750A8();
  v21 = v20;

  result = (*(v28 + 8))(v18, v29);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    v23 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98], MEMORY[0x277D17EA8]);
    v24 = v25;
    sub_20D971C48();
    sub_20D857828(v19, v21);

    return (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
  }

  return result;
}

uint64_t static EnergyWindow.mockReduceNowPlusFourHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_20D9750E8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v11);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  sub_20D972608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v31;
  v26 = v30;
  v15 = sub_20D972578();
  MEMORY[0x20F31FDD0](v15);
  sub_20D972608();
  v12(v6, v3);
  v13(v10, v7);
  v17 = v30;
  v16 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v26, v14);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v17, v16);
  MEMORY[0x20F323340](0xD00000000000001BLL, 0x800000020D984B60);
  v18 = v27;
  sub_20D9750D8();
  v19 = sub_20D9750A8();
  v21 = v20;

  result = (*(v28 + 8))(v18, v29);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_20D971C68();
    swift_allocObject();
    sub_20D971C58();
    v23 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98], MEMORY[0x277D17EA8]);
    v24 = v25;
    sub_20D971C48();
    sub_20D857828(v19, v21);

    return (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
  }

  return result;
}

uint64_t HistoricalUsageSnapshot.summaryUsageOrSurplusForInterval(starting:useShortText:gridQualityIndex:pricingIndex:)@<X0>(int a2@<W1>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v50 = a5;
  v51 = a7;
  v49 = a2;
  v47 = sub_20D971F38();
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v38 - v9;
  v10 = sub_20D975058();
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D971F48();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D975038();
  MEMORY[0x28223BE20](v14 - 8);
  v38 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D971FC8();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v42 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_20D972AF8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972DB8();
  v26 = v25;
  sub_20D972E58();
  (*(v19 + 104))(v22, *MEMORY[0x277D075B0], v18);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v53 == v52)
  {
    v27 = *(v19 + 8);
    v27(v22, v18);
    v27(v24, v18);

    return sub_20D88D380(0, v51, v26, COERCE__INT64(1.0));
  }

  v28 = sub_20D9757C8();
  v29 = *(v19 + 8);
  v29(v22, v18);
  v29(v24, v18);

  if ((v28 & 1) != 0 || (v49 & 1) == 0)
  {
    return sub_20D88D380(0, v51, v26, COERCE__INT64(1.0));
  }

  v30 = v42;
  sub_20D88D380(0, v42, v26, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v31 = MEMORY[0x277D84F90];
  *&v53 = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
  v32 = v39;
  v33 = v41;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v40 + 8))(v32, v33);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v34 = qword_28112ABE8;
  v35 = sub_20D9726E8();
  (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
  *&v53 = v31;
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v36 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  sub_20D971FB8();
  return (*(v43 + 8))(v30, v44);
}

void HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrendShort(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v78 = a2;
  v3 = sub_20D9726E8();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x28223BE20](v3);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - v6;
  v68 = sub_20D971F38();
  MEMORY[0x28223BE20](v68);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v56 - v9;
  v10 = sub_20D975058();
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20D971F48();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20D971FC8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_20D975038();
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D972628();
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x28223BE20](v19);
  v71 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D972AF8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v75 = v2;
  sub_20D972E58();
  (*(v22 + 104))(v25, *MEMORY[0x277D075B8], v21);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v80 == v79)
  {
    v28 = *(v22 + 8);
    v28(v25, v21);
    v28(v27, v21);
  }

  else
  {
    v29 = sub_20D9757C8();
    v30 = *(v22 + 8);
    v30(v25, v21);
    v30(v27, v21);

    if ((v29 & 1) == 0)
    {
      sub_20D971F28();
      return;
    }
  }

  v32 = v71;
  v31 = v72;
  v33 = v73;
  (*(v72 + 16))(v71, v74, v73);
  sub_20D85CC88(v75, v18, type metadata accessor for HistoricalUsageSnapshot);
  v34 = v18[*(v16 + 44)];
  if (v34 == 1)
  {
    if ((sub_20D972D68() & 1) == 0)
    {
      sub_20D972D88();
      v42 = v41;
      sub_20D85CEE4(v18, type metadata accessor for HistoricalUsageSnapshot);
      (*(v31 + 8))(v32, v33);
      v38 = rint(v42);
      if (v38 < 0.0)
      {
LABEL_16:
        sub_20D975028();
        sub_20D975018();
        v43 = v61;
        sub_20D88D380(0, v61, -v38, COERCE__INT64(1.0));
        v44 = MEMORY[0x277D84F90];
        *&v80 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
        sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
        v45 = v60;
        v46 = v63;
        sub_20D9755D8();
        sub_20D974FF8();
        (*(v62 + 8))(v45, v46);
        (*(v64 + 8))(v43, v65);
LABEL_25:
        sub_20D975018();
        sub_20D975048();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v52 = qword_28112ABE8;
        (*(v67 + 56))(v70, 1, 1, v66);
        *&v80 = v44;
        sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
        v53 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
        sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
        sub_20D9755D8();
        goto LABEL_30;
      }

      if (v38 > 0.0)
      {
LABEL_24:
        sub_20D975028();
        sub_20D975018();
        v49 = v61;
        sub_20D88D380(0, v61, v38, COERCE__INT64(1.0));
        v44 = MEMORY[0x277D84F90];
        *&v80 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
        sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
        v50 = v60;
        v51 = v63;
        sub_20D9755D8();
        sub_20D974FF8();
        (*(v62 + 8))(v50, v51);
        (*(v64 + 8))(v49, v65);
        goto LABEL_25;
      }

LABEL_28:
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
LABEL_29:
        v54 = qword_28112ABE8;
        (*(v67 + 56))(v70, 1, 1, v66);
        *&v80 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
        v55 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
        sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
        sub_20D9755D8();
LABEL_30:
        sub_20D971FB8();
        return;
      }

LABEL_31:
      swift_once();
      goto LABEL_29;
    }

    sub_20D972D78();
    v36 = v35;
    v37 = 0;
  }

  else
  {
    v37 = sub_20D972E18();
    v36 = 0.0;
  }

  sub_20D85CEE4(v18, type metadata accessor for HistoricalUsageSnapshot);
  (*(v31 + 8))(v32, v33);
  if (v34)
  {
    v38 = rint(v36);
    if (v38 < 0.0)
    {
      goto LABEL_16;
    }

    if (v38 > 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    if (!v37)
    {
      goto LABEL_28;
    }

    sub_20D975028();
    sub_20D975018();
    *&v79 = v37;
    sub_20D9726A8();
    sub_20D85CBD0();
    v39 = v57;
    sub_20D972058();
    sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
    v40 = v59;
    sub_20D975588();
    (*(v58 + 8))(v39, v40);
    sub_20D975008();

LABEL_21:
    sub_20D975018();
    sub_20D975048();
    if (qword_281126E98 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  sub_20D975028();
  sub_20D975018();
  if (v37 != 0x8000000000000000)
  {
    *&v79 = -v37;
    sub_20D9726A8();
    sub_20D85CBD0();
    v47 = v57;
    sub_20D972058();
    sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
    v48 = v59;
    sub_20D975588();
    (*(v58 + 8))(v47, v48);
    sub_20D975008();

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t HistoricalUsageSnapshot.getUIDateStringForRange(for:)(char *a1)
{
  v56 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v1 = MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v48 = &v46 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v59);
  v49 = &v46 - v4;
  v55 = sub_20D972628();
  v47 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972378();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972838();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_20D9727D8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20D9726E8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_20D972518();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  v27 = sub_20D972248();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = sub_20D972208();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  v29 = v56;
  sub_20D9724B8();
  sub_20D9724A8();
  v30 = *(v18 + 8);
  (v30)(v21, v17);
  v31 = v52;
  sub_20D972358();
  sub_20D9724E8();
  (*(v53 + 8))(v31, v54);
  v53 = v18 + 8;
  v54 = v17;
  (v30)(v24, v17);
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E68();
  v57 = v26;
  sub_20D972508();
  v32 = v58;
  sub_20D972568();
  sub_20D85CF44(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v33 = v55;
  result = sub_20D974FC8();
  if (result)
  {
    v36 = v47;
    v35 = v48;
    v37 = *(v47 + 16);
    v37(v48, v29, v33);
    v38 = v51;
    v37((v35 + *(v51 + 48)), v32, v33);
    v39 = v50;
    sub_20D7EB7E8(v35, v50, &unk_27C83C750, &unk_20D978DD0);
    v40 = *(v38 + 48);
    v41 = *(v36 + 32);
    v42 = v49;
    v41(v49, v39, v33);
    v56 = v30;
    v43 = *(v36 + 8);
    v43(v39 + v40, v33);
    sub_20D829514(v35, v39);
    v41((v42 + *(v59 + 36)), v39 + *(v38 + 48), v33);
    v43(v39, v33);
    v44 = v57;
    v45 = sub_20D9724F8();
    sub_20D7E3944(v42, &qword_27C839550, &qword_20D979C30);
    v43(v58, v33);
    (v56)(v44, v54);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoricalUsageSnapshot.summaryUsageOrSurplusForInterval(calculations:useShortText:gridQualityIndex:pricingIndex:)@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v57 = a1;
  v55 = sub_20D971F38();
  MEMORY[0x28223BE20](v55);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v44 - v6;
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D971F48();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D975038();
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D971FC8();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_20D972AF8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  type metadata accessor for HistoricalUsageSnapshot(0);
  v59 = v2;
  sub_20D972E58();
  v25 = sub_20D8DE378();
  v58 = *(v16 + 8);
  v58(v24, v15);
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v26 = sub_20D9734F8();
  __swift_project_value_buffer(v26, qword_28112AB78);
  v27 = sub_20D9734D8();
  v28 = sub_20D975478();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = a2;
    v31 = v30;
    v62[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_20D7F4DC8(0xD00000000000005ALL, 0x800000020D984C00, v62);
    *(v29 + 12) = 2048;
    *(v29 + 14) = v25;
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s kWh: %f", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v32 = v31;
    a2 = v45;
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v29, -1, -1);
  }

  sub_20D972E58();
  (*(v16 + 104))(v19, *MEMORY[0x277D075B0], v15);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v62[0] == v60 && v62[1] == v61)
  {
    v33 = v58;
    v58(v19, v15);
    v33(v22, v15);

    return sub_20D88D380(0, a2, v25, COERCE__INT64(1.0));
  }

  v34 = sub_20D9757C8();
  v35 = v58;
  v58(v19, v15);
  v35(v22, v15);

  if ((v34 & 1) != 0 || (v57 & 1) == 0)
  {
    return sub_20D88D380(0, a2, v25, COERCE__INT64(1.0));
  }

  v36 = v50;
  sub_20D88D380(0, v50, v25, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v37 = MEMORY[0x277D84F90];
  v62[0] = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
  v38 = v47;
  v39 = v49;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v48 + 8))(v38, v39);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v40 = qword_28112ABE8;
  v41 = sub_20D9726E8();
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v62[0] = v37;
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  sub_20D971FB8();
  return (*(v51 + 8))(v36, v52);
}

uint64_t HistoricalUsageSnapshot.numericalDailyUsageOrSurplusTrend(starting:calculations:useShortText:gridQualityFilterIndex:pricingFilterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v56[0] = a7;
  v57 = a6;
  v56[1] = a5;
  v58 = a4;
  v70 = a3;
  v73 = a1;
  v74 = a2;
  v76 = a8;
  v8 = sub_20D972018();
  MEMORY[0x28223BE20](v8 - 8);
  v67 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20D972168();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726E8();
  MEMORY[0x28223BE20](v11 - 8);
  v59 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v63 = *(v65 - 8);
  v13 = MEMORY[0x28223BE20](v65);
  v60 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = v56 - v15;
  v16 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v16);
  v69 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v56 - v19;
  v21 = sub_20D972628();
  v71 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v68 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v72 = v56 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396F0, &unk_20D97D7C0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v56 - v26;
  v28 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v56 - v33;
  sub_20D7EB7E8(v74, v27, &qword_27C8396F0, &unk_20D97D7C0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v35 = v16;
    v36 = v75;
    sub_20D7E3944(v27, &qword_27C8396F0, &unk_20D97D7C0);
    sub_20D7EB7E8(v73, v20, &qword_27C8389E8, &qword_20D9768D0);
    v37 = v71;
    if ((*(v71 + 48))(v20, 1, v21) == 1)
    {
      sub_20D7E3944(v20, &qword_27C8389E8, &qword_20D9768D0);
      return sub_20D971F28();
    }

    v44 = v72;
    (*(v37 + 32))(v72, v20, v21);
    v45 = v68;
    (*(v37 + 16))(v68, v44, v21);
    v46 = v69;
    sub_20D85CC88(v36, v69, type metadata accessor for HistoricalUsageSnapshot);
    v47 = *(v46 + *(v35 + 44));
    if (v47 == 1)
    {
      LODWORD(v75) = 1;
      if (sub_20D972D68())
      {
        sub_20D972D78();
        v38 = v48;
        v39 = 0;
        v42 = 0;
        v40 = 0.0;
      }

      else
      {
        sub_20D972D88();
        v40 = v49;
        v42 = 0;
        v38 = 0.0;
        v39 = 1;
      }

      LOBYTE(v47) = v75;
    }

    else
    {
      v42 = sub_20D972E18();
      v40 = 0.0;
      v39 = 1;
      v38 = 0.0;
    }

    sub_20D85CEE4(v46, type metadata accessor for HistoricalUsageSnapshot);
    v50 = *(v37 + 8);
    v50(v45, v21);
    v50(v72, v21);
    if ((v47 & 1) == 0)
    {
LABEL_15:
      if (v39)
      {
        v77 = v42;
        sub_20D9726A8();
        sub_20D85CBD0();
        v51 = v60;
        sub_20D972058();
        v52 = v62;
        sub_20D972158();
        v53 = v61;
        v54 = v65;
        MEMORY[0x20F320200](v52, v65);
        (*(v64 + 8))(v52, v66);
        v55 = *(v63 + 8);
        v55(v51, v54);
        sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
        sub_20D975588();
        v55(v53, v54);
        sub_20D972008();
        return sub_20D971FD8();
      }

      return sub_20D971F28();
    }
  }

  else
  {
    sub_20D85CC24(v27, v34);
    sub_20D85CC88(v34, v32, type metadata accessor for DynamicEnergyUsagesCalculations);
    sub_20D85CCF0(v32, *(v75 + *(v16 + 44)), &v78);
    v38 = v78;
    v39 = v79;
    v40 = v80;
    v41 = v81;
    v42 = v82;
    sub_20D85CEE4(v34, type metadata accessor for DynamicEnergyUsagesCalculations);
    if ((v41 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v39)
  {
    return sub_20D85B278(v70 & 1, v76, v40);
  }

  else
  {
    return sub_20D85B278(v70 & 1, v76, v38);
  }
}

uint64_t sub_20D85B278@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v30 = a1;
  v31 = a2;
  v4 = sub_20D972018();
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972168();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9757B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v27 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v27 - v22;
  if (v30)
  {
    v32 = a3;
    sub_20D9726A8();
    sub_20D7E6420();
    sub_20D972118();
    (*(v10 + 104))(v12, *MEMORY[0x277D84670], v9);
    MEMORY[0x20F3202E0](v12, 0x3FF0000000000000, 0, v14);
    (*(v10 + 8))(v12, v9);
    v24 = *(v15 + 8);
    v24(v18, v14);
    sub_20D972158();
    MEMORY[0x20F3202C0](v8, v14);
    (*(v27 + 8))(v8, v28);
    v24(v21, v14);
    sub_20D7EBC4C(&qword_27C839708, &qword_27C839700, &qword_20D97E480, MEMORY[0x277CC9168]);
    sub_20D974F28();
    v24(v23, v14);
    sub_20D972008();
    return sub_20D971FD8();
  }

  else
  {
    v26 = v31;

    return sub_20D88D380(1, v26, a3, COERCE__INT64(1.0));
  }
}

uint64_t HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v105 = a2;
  v3 = sub_20D9726E8();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v81 - v5;
  v6 = sub_20D972018();
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20D971F18();
  MEMORY[0x28223BE20](v82);
  v81 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_20D971F38();
  MEMORY[0x28223BE20](v96);
  v98 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v81 - v11;
  v12 = sub_20D975058();
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20D971F48();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_20D971FC8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_20D975038();
  MEMORY[0x28223BE20](v16 - 8);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v81 - v19;
  v20 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20D972628();
  v100 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v106 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D972AF8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  v32 = v2;
  v101 = *(v20 + 48);
  sub_20D972E58();
  (*(v26 + 104))(v29, *MEMORY[0x277D075B0], v25);
  sub_20D85CF44(&qword_2811250F8, MEMORY[0x277D075D8], MEMORY[0x277D075E8]);
  v33 = sub_20D974FD8();
  v34 = *(v26 + 8);
  v34(v29, v25);
  v34(v31, v25);
  if (v33)
  {
    return sub_20D971F28();
  }

  v36 = v100;
  (*(v100 + 16))(v106, v103, v23);
  sub_20D85CC88(v32, v22, type metadata accessor for HistoricalUsageSnapshot);
  v37 = v22[*(v20 + 44)];
  if (v37 != 1)
  {
    v40 = sub_20D972E18();
    v39 = 0.0;
    goto LABEL_7;
  }

  if (sub_20D972D68())
  {
    sub_20D972D78();
    v39 = v38;
    v40 = 0;
LABEL_7:
    sub_20D85CEE4(v22, type metadata accessor for HistoricalUsageSnapshot);
    (*(v36 + 8))(v106, v23);
    v41 = v37 ^ 1;
    v42 = 0.0;
    goto LABEL_9;
  }

  v43 = v36;
  v41 = 1;
  v44 = v106;
  sub_20D972D88();
  v42 = v45;
  sub_20D85CEE4(v22, type metadata accessor for HistoricalUsageSnapshot);
  (*(v43 + 8))(v44, v23);
  v40 = 0;
  v39 = 0.0;
LABEL_9:
  v46 = v102;
  sub_20D972D98();
  v47 = HistoricalUsageSnapshot.getUIDateStringForRange(for:)(v46);
  v49 = v48;
  sub_20D7E3944(v46, &qword_27C839550, &qword_20D979C30);
  if (!v37)
  {
    if (v40 < 0)
    {
      if (v40 == 0x8000000000000000)
      {
        __break(1u);
LABEL_38:
        swift_once();
        goto LABEL_35;
      }

      v107 = -v40;
      sub_20D9726A8();
      sub_20D85CBD0();
      v66 = v90;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      v67 = v92;
      sub_20D975588();
      (*(v91 + 8))(v66, v67);
      v68 = v108;
      v69 = v109;
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_20D977210;
      v70 = MEMORY[0x277D837D0];
      *(v59 + 56) = MEMORY[0x277D837D0];
      v61 = sub_20D84E340();
      *(v59 + 32) = v68;
      *(v59 + 40) = v69;
      *(v59 + 96) = v70;
    }

    else
    {
      if (!v40)
      {
        goto LABEL_34;
      }

      v107 = v40;
      sub_20D9726A8();
      sub_20D85CBD0();
      v55 = v90;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      v56 = v92;
      sub_20D975588();
      (*(v91 + 8))(v55, v56);
      v57 = v108;
      v58 = v109;
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_20D977210;
      v60 = MEMORY[0x277D837D0];
      *(v59 + 56) = MEMORY[0x277D837D0];
      v61 = sub_20D84E340();
      *(v59 + 32) = v57;
      *(v59 + 40) = v58;
      *(v59 + 96) = v60;
    }

    *(v59 + 104) = v61;
    *(v59 + 64) = v61;
    *(v59 + 72) = v47;
    *(v59 + 80) = v49;
    sub_20D9750C8();

    sub_20D972008();
    return sub_20D971FD8();
  }

  if ((v41 & 1) == 0)
  {
    v62 = rint(v39);
    if (v62 >= 0.0)
    {
      if (v62 <= 0.0)
      {
        goto LABEL_34;
      }

      sub_20D975028();
      sub_20D975018();
      v76 = v86;
      sub_20D88D380(0, v86, v62, COERCE__INT64(1.0));
      v108 = MEMORY[0x277D84F90];
      sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
      sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
      v77 = v83;
      v78 = v85;
      sub_20D9755D8();
      sub_20D974FF8();
      (*(v84 + 8))(v77, v78);
      (*(v87 + 8))(v76, v88);
    }

    else
    {
      sub_20D975028();
      sub_20D975018();
      v63 = v86;
      sub_20D88D380(0, v86, -v62, COERCE__INT64(1.0));
      v108 = MEMORY[0x277D84F90];
      sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
      sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
      v64 = v83;
      v65 = v85;
      sub_20D9755D8();
      sub_20D974FF8();
      (*(v84 + 8))(v64, v65);
      (*(v87 + 8))(v63, v88);
    }

    sub_20D975018();
    sub_20D975008();

    sub_20D975018();
    sub_20D975048();
    if (qword_281126E98 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v50 = rint(v42);
  if (v50 < 0.0)
  {
    v51 = v86;
    sub_20D88D380(0, v86, -v50, COERCE__INT64(1.0));
    sub_20D971F08();
    (*(v87 + 8))(v51, v88);
    sub_20D85CF44(&qword_27C8396F8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v52 = sub_20D9751A8();
    v54 = v53;
    if (qword_281126E98 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (v50 > 0.0)
  {
    v71 = v86;
    sub_20D88D380(0, v86, v50, COERCE__INT64(1.0));
    sub_20D971F08();
    (*(v87 + 8))(v71, v88);
    sub_20D85CF44(&qword_27C8396F8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v52 = sub_20D9751A8();
    v54 = v72;
    if (qword_281126E98 == -1)
    {
LABEL_28:
      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_20D977210;
      v74 = MEMORY[0x277D837D0];
      *(v73 + 56) = MEMORY[0x277D837D0];
      v75 = sub_20D84E340();
      *(v73 + 32) = v52;
      *(v73 + 40) = v54;
      *(v73 + 96) = v74;
      *(v73 + 104) = v75;
      *(v73 + 64) = v75;
      *(v73 + 72) = v47;
      *(v73 + 80) = v49;
      sub_20D9750C8();

      sub_20D972008();
      return sub_20D971FD8();
    }

LABEL_39:
    swift_once();
    goto LABEL_28;
  }

LABEL_34:
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    goto LABEL_38;
  }

LABEL_35:
  v79 = qword_28112ABE8;
  (*(v94 + 56))(v97, 1, 1, v95);
  v108 = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v80 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  return sub_20D971FB8();
}

unint64_t sub_20D85CBD0()
{
  result = qword_281126ED0;
  if (!qword_281126ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126ED0);
  }

  return result;
}

uint64_t sub_20D85CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D85CC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D85CCF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
    v7 = a1 + *(v6 + 28);
    v8 = *(v7 + 8);
    if (v8 && (*v7 - *(a1 + *(v6 + 24))) / v8 < 0.0)
    {
      v9 = sub_20D8DE5D4();
      v10 = 0;
      v11 = 0;
      v12 = 0.0;
    }

    else
    {
      v12 = sub_20D8DE6AC();
      v11 = 0;
      v9 = 0.0;
      v10 = 1;
    }
  }

  else
  {
    v11 = sub_20D8DE784();
    v12 = 0.0;
    v10 = 1;
    v9 = 0.0;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_28112AB78);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134219008;
    *(v16 + 4) = v9;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v11;
    *(v16 + 32) = 1024;
    *(v16 + 34) = v10;
    *(v16 + 38) = 1024;
    *(v16 + 40) = a2 & 1;
    _os_log_impl(&dword_20D7C9000, v14, v15, "deltaNetExports: %f, deltaNetImports: %f, avgDailyNetImportPercentChange: %ld, isCurrentIntervalConsumption %{BOOL}d), isSurplusSite: %{BOOL}d", v16, 0x2Cu);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  result = sub_20D85CEE4(a1, type metadata accessor for DynamicEnergyUsagesCalculations);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = a2 & 1;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_20D85CEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D85CF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D85D068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D979110;
  *(v0 + 32) = sub_20D974908();
  result = MEMORY[0x20F322D80](v0);
  qword_28112ABB0 = result;
  return result;
}

uint64_t sub_20D85D0D8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D977210;
  *(v3 + 32) = sub_20D974938();
  *(v3 + 40) = sub_20D974928();
  result = MEMORY[0x20F322D80](v3);
  *a2 = result;
  return result;
}

uint64_t sub_20D85D144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D979110;
  if (qword_281124DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_28112AB70;

  result = MEMORY[0x20F322D80](v0);
  qword_28112ABB8 = result;
  return result;
}

double HistoricalUsageChartMetrics.init(chartTickWidth:barCornerRadius:barImportGradient:barExportGradient:barAvoidGradient:barLabelFont:barLabelColor:barLabelSelectedColor:chartTickColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  *(a8 + 72) = xmmword_20D9798D0;
  *(a8 + 88) = xmmword_20D9798E0;
  *(a8 + 104) = xmmword_20D9798F0;
  *(a8 + 120) = xmmword_20D979900;
  *(a8 + 136) = xmmword_20D979910;
  *(a8 + 152) = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20D979110;
  v21 = objc_opt_self();
  v22 = [v21 systemGray3Color];
  *(v20 + 32) = sub_20D974888();
  *(a8 + 160) = MEMORY[0x20F322D80](v20);
  v23 = [v21 secondarySystemFillColor];
  *(a8 + 168) = sub_20D974888();
  result = -16.0;
  *(a8 + 176) = xmmword_20D979920;
  *(a8 + 192) = xmmword_20D979930;
  *a8 = a9;
  *(a8 + 8) = a10;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  return result;
}

double sub_20D85D350@<D0>(uint64_t a1@<X8>)
{
  if (qword_27C838438 != -1)
  {
    swift_once();
  }

  v2 = qword_27C840C70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D979110;

  *(v3 + 32) = sub_20D974908();
  v4 = MEMORY[0x20F322D80](v3);
  sub_20D974498();
  sub_20D9743D8();
  v5 = sub_20D974448();

  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];
  v8 = sub_20D974888();
  v9 = sub_20D974918();
  v10 = [v6 secondaryLabelColor];
  v11 = sub_20D974888();
  if (qword_281125B70 != -1)
  {
    swift_once();
  }

  v12 = qword_28112ABB8;
  *(a1 + 72) = xmmword_20D9798D0;
  *(a1 + 88) = xmmword_20D9798E0;
  *(a1 + 104) = xmmword_20D9798F0;
  *(a1 + 120) = xmmword_20D979900;
  *(a1 + 136) = xmmword_20D979910;
  *(a1 + 152) = 0x4018000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20D979110;

  v14 = [v6 systemGray3Color];
  *(v13 + 32) = sub_20D974888();
  *(a1 + 160) = MEMORY[0x20F322D80](v13);
  v15 = [v6 secondarySystemFillColor];
  *(a1 + 168) = sub_20D974888();
  *(a1 + 176) = xmmword_20D979920;
  *(a1 + 192) = xmmword_20D979930;
  result = 1.0;
  *a1 = xmmword_20D979940;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v12;
  *(a1 + 40) = v5;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.watchChartMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27C838448 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = xmmword_27C8397A0;
  v15[10] = xmmword_27C8397B0;
  v15[11] = xmmword_27C8397C0;
  v2 = xmmword_27C8397C0;
  v15[12] = xmmword_27C8397D0;
  v3 = xmmword_27C839760;
  v4 = xmmword_27C839770;
  v15[6] = xmmword_27C839770;
  v15[7] = xmmword_27C839780;
  v5 = xmmword_27C839780;
  v6 = xmmword_27C839790;
  v15[8] = xmmword_27C839790;
  v15[9] = xmmword_27C8397A0;
  v7 = xmmword_27C839720;
  v8 = xmmword_27C839730;
  v15[2] = xmmword_27C839730;
  v15[3] = xmmword_27C839740;
  v9 = xmmword_27C839740;
  v10 = xmmword_27C839750;
  v15[4] = xmmword_27C839750;
  v15[5] = xmmword_27C839760;
  v11 = xmmword_27C839710;
  v15[0] = xmmword_27C839710;
  v15[1] = xmmword_27C839720;
  a1[10] = xmmword_27C8397B0;
  a1[11] = v2;
  a1[12] = xmmword_27C8397D0;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

double sub_20D85D6C8()
{
  if (qword_281125B58 != -1)
  {
    swift_once();
  }

  v0 = qword_28112ABA8;
  v1 = qword_281125B60;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABB0;
  v3 = qword_281125B70;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABB8;

  v5 = sub_20D974488();
  v6 = objc_opt_self();
  v7 = [v6 tertiaryLabelColor];
  v8 = sub_20D974888();
  v9 = [v6 labelColor];
  v10 = sub_20D974888();
  v11 = [v6 tertiaryLabelColor];
  v12 = sub_20D974888();
  *(&xmmword_27C839820 + 8) = xmmword_20D9798D0;
  *(&xmmword_27C839830 + 8) = xmmword_20D9798E0;
  *(&xmmword_27C839840 + 8) = xmmword_20D9798F0;
  *(&xmmword_27C839850 + 8) = xmmword_20D979900;
  *(&xmmword_27C839860 + 8) = xmmword_20D979910;
  qword_27C839878 = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20D979110;
  v14 = [v6 systemGray3Color];
  *(v13 + 32) = sub_20D974888();
  *&xmmword_27C839880 = MEMORY[0x20F322D80](v13);
  v15 = [v6 secondarySystemFillColor];
  *(&xmmword_27C839880 + 1) = sub_20D974888();
  xmmword_27C839890 = xmmword_20D979920;
  xmmword_27C8398A0 = xmmword_20D979930;
  result = 1.0;
  xmmword_27C8397E0 = xmmword_20D979940;
  *&xmmword_27C8397F0 = v0;
  *(&xmmword_27C8397F0 + 1) = v2;
  *&xmmword_27C839800 = v4;
  *(&xmmword_27C839800 + 1) = v5;
  *&xmmword_27C839810 = v8;
  *(&xmmword_27C839810 + 1) = v10;
  *&xmmword_27C839820 = v12;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.iOSDetailMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27C838450 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = unk_27C839870;
  v15[10] = xmmword_27C839880;
  v15[11] = xmmword_27C839890;
  v2 = xmmword_27C839890;
  v15[12] = xmmword_27C8398A0;
  v3 = xmmword_27C839830;
  v4 = xmmword_27C839840;
  v15[6] = xmmword_27C839840;
  v15[7] = xmmword_27C839850;
  v5 = xmmword_27C839850;
  v6 = xmmword_27C839860;
  v15[8] = xmmword_27C839860;
  v15[9] = unk_27C839870;
  v7 = xmmword_27C8397F0;
  v8 = xmmword_27C839800;
  v15[2] = xmmword_27C839800;
  v15[3] = xmmword_27C839810;
  v9 = xmmword_27C839810;
  v10 = xmmword_27C839820;
  v15[4] = xmmword_27C839820;
  v15[5] = xmmword_27C839830;
  v11 = xmmword_27C8397E0;
  v15[0] = xmmword_27C8397E0;
  v15[1] = xmmword_27C8397F0;
  a1[10] = xmmword_27C839880;
  a1[11] = v2;
  a1[12] = xmmword_27C8398A0;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

double sub_20D85DA0C()
{
  if (qword_281125B58 != -1)
  {
    swift_once();
  }

  v0 = qword_28112ABA8;
  v1 = qword_281125B60;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABB0;
  v3 = qword_281125B70;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABB8;

  sub_20D974498();
  sub_20D9743D8();
  v5 = sub_20D974448();

  v6 = sub_20D974968();
  v7 = sub_20D974958();
  v8 = objc_opt_self();
  v9 = [v8 tertiaryLabelColor];
  v10 = sub_20D974888();
  *(&xmmword_281125BC0 + 8) = xmmword_20D9798D0;
  *(&xmmword_281125BD0 + 8) = xmmword_20D9798E0;
  *(&xmmword_281125BE0 + 8) = xmmword_20D9798F0;
  *(&xmmword_281125BF0 + 8) = xmmword_20D979900;
  *(&xmmword_281125C00 + 8) = xmmword_20D979910;
  qword_281125C18 = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D979110;
  v12 = [v8 systemGray3Color];
  *(v11 + 32) = sub_20D974888();
  *&xmmword_281125C20 = MEMORY[0x20F322D80](v11);
  v13 = [v8 secondarySystemFillColor];
  *(&xmmword_281125C20 + 1) = sub_20D974888();
  xmmword_281125C30 = xmmword_20D979920;
  xmmword_281125C40 = xmmword_20D979930;
  result = 0.0;
  xmmword_281125B80 = xmmword_20D979950;
  *&xmmword_281125B90 = v0;
  *(&xmmword_281125B90 + 1) = v2;
  *&xmmword_281125BA0 = v4;
  *(&xmmword_281125BA0 + 1) = v5;
  *&xmmword_281125BB0 = v6;
  *(&xmmword_281125BB0 + 1) = v7;
  *&xmmword_281125BC0 = v10;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.iOSSummaryMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_281125B78 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = unk_281125C10;
  v15[10] = xmmword_281125C20;
  v15[11] = xmmword_281125C30;
  v2 = xmmword_281125C30;
  v15[12] = xmmword_281125C40;
  v3 = xmmword_281125BD0;
  v4 = xmmword_281125BE0;
  v15[6] = xmmword_281125BE0;
  v15[7] = xmmword_281125BF0;
  v5 = xmmword_281125BF0;
  v6 = xmmword_281125C00;
  v15[8] = xmmword_281125C00;
  v15[9] = unk_281125C10;
  v7 = xmmword_281125B90;
  v8 = xmmword_281125BA0;
  v15[2] = xmmword_281125BA0;
  v15[3] = xmmword_281125BB0;
  v9 = xmmword_281125BB0;
  v10 = xmmword_281125BC0;
  v15[4] = xmmword_281125BC0;
  v15[5] = xmmword_281125BD0;
  v11 = xmmword_281125B80;
  v15[0] = xmmword_281125B80;
  v15[1] = xmmword_281125B90;
  a1[10] = xmmword_281125C20;
  a1[11] = v2;
  a1[12] = xmmword_281125C40;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_20D85DD78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D85DDC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall HistoricalUsageSnapshotManager.testHistoricalUsageUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  if (sub_20D972ED8())
  {
    v4 = sub_20D975318();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;

    sub_20D82D02C(0, 0, v3, &unk_20D979A68, v5);
  }

  else
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v6 = sub_20D9734F8();
    __swift_project_value_buffer(v6, qword_28112AB90);
    v11 = sub_20D9734D8();
    v7 = sub_20D975458();
    if (os_log_type_enabled(v11, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984DC0, &v12);
      _os_log_impl(&dword_20D7C9000, v11, v7, "%s is only available on Internal builds", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F324260](v9, -1, -1);
      MEMORY[0x20F324260](v8, -1, -1);
    }

    else
    {
      v10 = v11;
    }
  }
}

uint64_t sub_20D85E094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = *(type metadata accessor for HistoricalUsageSnapshot(0) - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D85E168, 0, 0);
}

uint64_t sub_20D85E168()
{
  v10 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[8] = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984DC0, &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: rotating HUSnapshot every 3 seconds", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }

  v6 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[9] = 0x800000020D984DC0;
  v0[10] = v6;
  v0[11] = 0;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_20D85E34C;

  return MEMORY[0x282200480](3000000000);
}

uint64_t sub_20D85E34C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20D85E8A4;
  }

  else
  {
    v2 = sub_20D85E460;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}
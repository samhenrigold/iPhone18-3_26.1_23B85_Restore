uint64_t sub_1DA8FBF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAC4();
  v8 = sub_1DA8FB818(a1, a2, v7);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t AlertCoordinatorClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8FC0B4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7018);
  __swift_project_value_buffer(v0, qword_1ECBD7018);
  return sub_1DA940594();
}

uint64_t sub_1DA8FC138@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA8FC1BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1DA9405E4();
  MEMORY[0x1EEE9AC00](v3);
  if (!v0[3])
  {
    sub_1DA940674();
    v4 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DA9596E0;
    v6 = v4;
    sub_1DA9405D4();
    v21 = v5;
    sub_1DA7AD080(&unk_1EE110D10, MEMORY[0x1E69E8498], MEMORY[0x1E69E84A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
    sub_1DA7AD0C8(&qword_1EE110CD0, &unk_1ECBD5598, &qword_1DA95B230);
    sub_1DA9411D4();
    v7 = sub_1DA9405C4();
    v0[3] = v7;

    sub_1DA9405F4();

    sub_1DA940644();
    if (qword_1ECBD47D8 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1ECBD7018);

    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315394;
      v21 = v7;

      v13 = sub_1DA940A74();
      v15 = sub_1DA7AE6E8(v13, v14, v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v21 = v2;
      swift_getMetatypeMetadata();
      v16 = sub_1DA940A74();
      v18 = sub_1DA7AE6E8(v16, v17, v20);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "Session: %s for %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v12, -1, -1);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    else
    {
    }
  }

  return v1[3];
}

uint64_t sub_1DA8FC808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8FC86C(uint64_t a1)
{
  v2 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA8FC8C8()
{
  result = qword_1ECBD7040;
  if (!qword_1ECBD7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7038, &qword_1DA962928);
    sub_1DA8FC94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7040);
  }

  return result;
}

unint64_t sub_1DA8FC94C()
{
  result = qword_1ECBD7048;
  if (!qword_1ECBD7048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA8FC9EC();
    sub_1DA8FCA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7048);
  }

  return result;
}

unint64_t sub_1DA8FC9EC()
{
  result = qword_1ECBD7058;
  if (!qword_1ECBD7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7058);
  }

  return result;
}

unint64_t sub_1DA8FCA40()
{
  result = qword_1ECBD7060;
  if (!qword_1ECBD7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7060);
  }

  return result;
}

unint64_t sub_1DA8FCA94()
{
  result = qword_1ECBD7068;
  if (!qword_1ECBD7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7068);
  }

  return result;
}

uint64_t sub_1DA8FCBF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t DismissalSyncBulletin.dismissalHash.getter()
{
  v1 = sub_1DA940934();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940A64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940944();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v12 = type metadata accessor for DismissalSyncBulletin(0);
  v13 = (v0 + v12[9]);
  if (v13[1])
  {
    MEMORY[0x1E1271BD0](*v13);
  }

  v14 = (v0 + v12[10]);
  if (v14[1])
  {
    MEMORY[0x1E1271BD0](*v14);
  }

  v15 = (v0 + v12[11]);
  if (v15[1])
  {
    MEMORY[0x1E1271BD0](*v15);
  }

  sub_1DA940A54();
  v16 = sub_1DA940A24();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  if (v18 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  if (v18 >> 60 == 15)
  {
    v18 = 0xC000000000000000;
  }

  sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  sub_1DA940924();
  sub_1DA841874(v19, v18);
  sub_1DA901E88(v19, v18, v4);
  sub_1DA828324(v19, v18);
  sub_1DA940914();
  v20 = sub_1DA828324(v19, v18);
  (*(v2 + 8))(v4, v1, v20);
  v21 = sub_1DA8FDA78(v11);

  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0, MEMORY[0x1E69E6310]);
  v22 = sub_1DA9409C4();

  (*(v24 + 8))(v11, v25);
  return v22;
}

BOOL DismissalSyncBulletin.withinDismissableWindow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DismissalSyncBulletin(0);
  sub_1DA825D4C(v1 + *(v9 + 32), v8);
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_1DA823670(v8);
    v13 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v13 = v14;
    (*(v11 + 8))(v8, v10);
  }

  sub_1DA825D4C(a1, v6);
  if (v12(v6, 1, v10) == 1)
  {
    sub_1DA823670(v6);
    v15 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v15 = v16;
    (*(v11 + 8))(v6, v10);
  }

  return vabdd_f64(v13, v15) <= 300.0;
}

unint64_t DismissalSyncPlatform.init(deviceType:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x4030202020100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t DismissalSyncPlatform.ctosPlatform.getter()
{
  v1 = *v0;
  if (*v0 > 1u)
  {
    v2 = MEMORY[0x1E6993B70];
    v3 = MEMORY[0x1E6993B80];
    if (v1 != 3)
    {
      v3 = MEMORY[0x1E6993B88];
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    goto LABEL_9;
  }

  if (*v0)
  {
    v2 = MEMORY[0x1E6993B78];
LABEL_9:
    v1 = *v2;
    v4 = *v2;
  }

  return v1;
}

uint64_t DismissalSyncPlatform.hashValue.getter()
{
  v1 = *v0;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  return sub_1DA941794();
}

uint64_t DismissalSyncBulletin.universalSectionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DismissalSyncBulletin.universalSectionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.bulletinID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DismissalSyncBulletin.bulletinID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.dismissalID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DismissalSyncBulletin.dismissalID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t DismissalSyncBulletin.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncBulletin(0) + 32);

  return sub_1DA825D4C(v3, a1);
}

uint64_t DismissalSyncBulletin.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncBulletin(0) + 32);

  return sub_1DA825C64(a1, v3);
}

uint64_t DismissalSyncBulletin.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 36));

  return v1;
}

uint64_t DismissalSyncBulletin.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 40));

  return v1;
}

uint64_t DismissalSyncBulletin.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for DismissalSyncBulletin(0) + 44));

  return v1;
}

uint64_t DismissalSyncBulletin.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DismissalSyncBulletin(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DismissalSyncBulletin.init(sectionID:universalSectionID:bulletinID:dismissalID:date:title:subtitle:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = type metadata accessor for DismissalSyncBulletin(0);
  v22 = v21[8];
  v23 = sub_1DA93FAF4();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[9]];
  v25 = &a9[v21[10]];
  v26 = &a9[v21[11]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  result = sub_1DA825C64(a10, &a9[v22]);
  *v24 = a11;
  *(v24 + 1) = a12;
  *v25 = a13;
  *(v25 + 1) = a14;
  *v26 = a15;
  *(v26 + 1) = a16;
  return result;
}

void *sub_1DA8FDA78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA940944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA902500(&qword_1ECBD7190, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v8 = sub_1DA940B54();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1DA82A778(0, v8 & ~(v8 >> 63), 0);
  v9 = v38;
  (*(v5 + 16))(v7, a1, v4);
  result = sub_1DA940B44();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v37;
    if (v8)
    {
      v33 = v1;
      v12 = v36;
      *&v35 = *(v36 + 16);
      v34 = xmmword_1DA9596E0;
      v13 = v37;
      while (v35 != v13)
      {
        if (v11 < 0)
        {
          goto LABEL_21;
        }

        if (v13 >= *(v12 + 16))
        {
          goto LABEL_22;
        }

        v14 = *(v12 + 32 + v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
        v15 = swift_allocObject();
        *(v15 + 16) = v34;
        *(v15 + 56) = MEMORY[0x1E69E7508];
        *(v15 + 64) = MEMORY[0x1E69E7558];
        *(v15 + 32) = v14;
        result = sub_1DA940A44();
        v38 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          v32 = result;
          v20 = v16;
          sub_1DA82A778((v17 > 1), v18 + 1, 1);
          v16 = v20;
          result = v32;
          v9 = v38;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = result;
        *(v19 + 40) = v16;
        ++v13;
        if (!--v8)
        {
          v37 = v13;
          v2 = v33;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v13 = v37;
LABEL_12:
      v21 = v36;
      v22 = *(v36 + 16);
      if (v13 == v22)
      {
LABEL_13:

        return v9;
      }

      v35 = xmmword_1DA9596E0;
      while (v13 < v22)
      {
        v23 = v13 + 1;
        v24 = *(v21 + 32 + v13);
        v37 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
        v25 = swift_allocObject();
        *(v25 + 16) = v35;
        *(v25 + 56) = MEMORY[0x1E69E7508];
        *(v25 + 64) = MEMORY[0x1E69E7558];
        *(v25 + 32) = v24;
        result = sub_1DA940A44();
        v38 = v9;
        v28 = *(v9 + 16);
        v27 = *(v9 + 24);
        if (v28 >= v27 >> 1)
        {
          *&v34 = result;
          v30 = v2;
          v31 = v26;
          sub_1DA82A778((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v2 = v30;
          result = v34;
          v9 = v38;
        }

        *(v9 + 16) = v28 + 1;
        v29 = v9 + 16 * v28;
        *(v29 + 32) = result;
        *(v29 + 40) = v26;
        v22 = *(v21 + 16);
        v13 = v37;
        if (v37 == v22)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DismissalSyncMessage.sectionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DismissalSyncMessage.sectionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DismissalSyncMessage.universalSectionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DismissalSyncMessage.universalSectionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DismissalSyncMessage.dismissalIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t DismissalSyncMessage.dismissalItems.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall DismissalSyncMessage.init(sectionID:universalSectionID:platform:feeds:dismissalIDs:dismissalItems:)(UserNotificationsCore::DismissalSyncMessage *__return_ptr retstr, Swift::String sectionID, Swift::String_optional universalSectionID, UserNotificationsCore::DismissalSyncPlatform platform, UserNotificationsCore::DismissalSyncFeeds feeds, Swift::OpaquePointer dismissalIDs, Swift::OpaquePointer dismissalItems)
{
  v7 = *platform;
  v8 = *feeds.rawValue;
  retstr->sectionID = sectionID;
  retstr->universalSectionID = universalSectionID;
  retstr->platform = v7;
  retstr->feeds.rawValue = v8;
  retstr->dismissalIDs = dismissalIDs;
  retstr->dismissalItems = dismissalItems;
}

void __swiftcall DismissalSyncMessage.init(sectionID:universalSectionID:platform:feeds:dismissalIDs:dismissalItemDictionaries:)(UserNotificationsCore::DismissalSyncMessage *__return_ptr retstr, Swift::String sectionID, Swift::String_optional universalSectionID, UserNotificationsCore::DismissalSyncPlatform platform, UserNotificationsCore::DismissalSyncFeeds feeds, Swift::OpaquePointer dismissalIDs, Swift::OpaquePointer dismissalItemDictionaries)
{
  v47 = retstr;
  rawValue = dismissalIDs._rawValue;
  v9 = platform;
  v46 = universalSectionID;
  v45 = sectionID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v43 - v13;
  v14 = type metadata accessor for DismissalSyncItem(0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = *v9;
  v43 = *feeds.rawValue;
  v18 = *(dismissalItemDictionaries._rawValue + 2);
  if (v18)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v49 = &v43 - v17;
    v21 = v50;
    while (1)
    {
      if (v19 >= *(dismissalItemDictionaries._rawValue + 2))
      {
        __break(1u);
        return;
      }

      v22 = *(dismissalItemDictionaries._rawValue + v19 + 4);
      if (*(v22 + 16))
      {

        v23 = sub_1DA85A4B4(104, 0xE100000000000000);
        if (v24)
        {
          sub_1DA7AD270(*(v22 + 56) + 32 * v23, v60);
          if (swift_dynamicCast())
          {
            v55 = v59;
            v56 = v58;
            v25 = *(v22 + 16);
            v57 = v20;
            if (v25 && (v26 = sub_1DA85A4B4(100, 0xE100000000000000), (v27 & 1) != 0))
            {
              sub_1DA7AD270(*(v22 + 56) + 32 * v26, v60);

              if (swift_dynamicCast())
              {
                sub_1DA93FA94();
                v28 = 0;
LABEL_15:
                v29 = sub_1DA93FAF4();
                v30 = *(*(v29 - 8) + 56);
                v31 = v54;
                v30(v54, v28, 1, v29);
                v32 = v31;
                v33 = v53;
                sub_1DA902088(v32, v53);
                v34 = *(v52 + 20);
                v30(&v21[v34], 1, 1, v29);
                v35 = v55;
                *v21 = v56;
                *(v21 + 1) = v35;
                sub_1DA825C64(v33, &v21[v34]);
                v36 = v49;
                sub_1DA9025AC(v21, v49, type metadata accessor for DismissalSyncItem);
                v20 = v57;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v20 = sub_1DA886910(0, v20[2] + 1, 1, v20);
                }

                v38 = v20[2];
                v37 = v20[3];
                if (v38 >= v37 >> 1)
                {
                  v20 = sub_1DA886910((v37 > 1), v38 + 1, 1, v20);
                }

                v20[2] = v38 + 1;
                sub_1DA9025AC(v36, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, type metadata accessor for DismissalSyncItem);
                goto LABEL_4;
              }
            }

            else
            {
            }

            v28 = 1;
            goto LABEL_15;
          }
        }
      }

LABEL_4:
      if (v18 == ++v19)
      {
        goto LABEL_21;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v39 = v47;
  object = v45._object;
  v47->sectionID._countAndFlagsBits = v45._countAndFlagsBits;
  v39->sectionID._object = object;
  v41 = v46.value._object;
  v39->universalSectionID.value._countAndFlagsBits = v46.value._countAndFlagsBits;
  v39->universalSectionID.value._object = v41;
  v39->platform = v44;
  v42 = rawValue;
  v39->feeds.rawValue = v43;
  v39->dismissalIDs._rawValue = v42;
  v39->dismissalItems._rawValue = v20;
}

uint64_t DismissalSyncItem.init(dictionary:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  if (*(a1 + 16))
  {
    v10 = sub_1DA85A4B4(104, 0xE100000000000000);
    if (v11)
    {
      sub_1DA7AD270(*(a1 + 56) + 32 * v10, v24);
      if (swift_dynamicCast())
      {
        v12 = v23[0];
        v13 = v23[1];
        if (*(a1 + 16) && (v14 = sub_1DA85A4B4(100, 0xE100000000000000), (v15 & 1) != 0))
        {
          sub_1DA7AD270(*(a1 + 56) + 32 * v14, v24);

          if (swift_dynamicCast())
          {
            sub_1DA93FA94();
            v16 = 0;
LABEL_12:
            v19 = sub_1DA93FAF4();
            v20 = *(*(v19 - 8) + 56);
            v20(v9, v16, 1, v19);
            sub_1DA902088(v9, v7);
            v21 = type metadata accessor for DismissalSyncItem(0);
            v22 = *(v21 + 20);
            v20(a2 + v22, 1, 1, v19);
            *a2 = v12;
            *(a2 + 1) = v13;
            sub_1DA825C64(v7, a2 + v22);
            return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
          }
        }

        else
        {
        }

        v16 = 1;
        goto LABEL_12;
      }
    }
  }

  v17 = type metadata accessor for DismissalSyncItem(0);
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t DismissalSyncItem.hash.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DismissalSyncItem.hash.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DismissalSyncItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncItem(0) + 20);

  return sub_1DA825D4C(v3, a1);
}

uint64_t DismissalSyncItem.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DismissalSyncItem(0) + 20);

  return sub_1DA825C64(a1, v3);
}

uint64_t DismissalSyncItem.init(hash:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for DismissalSyncItem(0) + 20);
  v9 = sub_1DA93FAF4();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_1DA825C64(a3, &a4[v8]);
}

BOOL DismissalSyncItem.withinDismissableWindow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DismissalSyncItem(0);
  sub_1DA825D4C(v1 + *(v9 + 20), v8);
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_1DA823670(v8);
    v13 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v13 = v14;
    (*(v11 + 8))(v8, v10);
  }

  sub_1DA825D4C(a1, v6);
  if (v12(v6, 1, v10) == 1)
  {
    sub_1DA823670(v6);
    v15 = 0.0;
  }

  else
  {
    sub_1DA93FAA4();
    v15 = v16;
    (*(v11 + 8))(v6, v10);
  }

  return vabdd_f64(v13, v15) <= 300.0;
}

uint64_t SyncService.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncService.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA8FEC7C;
}

id SyncService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SyncService.init()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1DA940FC4();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v7 = sub_1DA940A04();
  v8 = [v6 initWithService_];

  if (v8)
  {
    type metadata accessor for SyncServiceIDSWrapper();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = objc_allocWithZone(type metadata accessor for IDSInboundMessaging());

    v25 = sub_1DA9021D8(v11, v10);
    type metadata accessor for IDSOutboundMessaging();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = &off_1F5638E30;
    v13 = objc_allocWithZone(ObjectType);
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v23 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue;
    v22 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);

    sub_1DA940824();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DA902500(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v24 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
    sub_1DA9411D4();
    (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
    *&v13[v23] = sub_1DA941004();
    v14 = MEMORY[0x1E69E7CD0];
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads] = MEMORY[0x1E69E7CD0];
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs] = v14;
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds] = 0;
    v15 = &v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = &v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID];
    *v16 = 0;
    *(v16 + 1) = 0;
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer] = 0;
    v17 = &v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service];
    *v17 = v9;
    v17[1] = &off_1F5638E30;
    v18 = &v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_inboundMessaging];
    v19 = v25;
    *v18 = v25;
    v18[1] = &off_1F5638E10;
    v20 = &v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_outboundMessaging];
    *v20 = v12;
    v20[1] = &off_1F5634E68;
    *&v13[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_flushInterval] = 0x3FB999999999999ALL;
    v30.receiver = v13;
    v30.super_class = v24;
    v21 = v19;
    objc_msgSendSuper2(&v30, sel_init);
    *&v21[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer + 8] = &protocol witness table for SyncService;
    swift_unknownObjectWeakAssign();

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id SyncService.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DA941054();
    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall SyncService.pairedDeviceCount()()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (!v1)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_1DA941264();
    goto LABEL_4;
  }

  v2 = v1;
  sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
  v3 = sub_1DA940BE4();

  if (v3 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v4;
}

double SyncService.enqueueRemoval(for:feeds:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940854();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DismissalSyncBulletin(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = *a2;
  v21[1] = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DA902548(a1, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_1DA9025AC(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for DismissalSyncBulletin);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_1DA902614;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_22;
  v19 = _Block_copy(aBlock);

  sub_1DA940824();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v19);
  _Block_release(v19);
  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);

  return result;
}

void sub_1DA8FF804(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = type metadata accessor for DismissalSyncBulletin(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1DA8FFA1C();
    if (v10)
    {
      v19 = a3;
      sub_1DA8FFB08(a2, &v19);
    }

    else
    {
      if (qword_1ECBD47D0 != -1)
      {
        swift_once();
      }

      v11 = sub_1DA9405A4();
      __swift_project_value_buffer(v11, qword_1ECBE3DE8);
      sub_1DA902548(a2, v7);
      v12 = sub_1DA940584();
      v13 = sub_1DA940F34();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        v16 = *(v7 + 4);
        v17 = *(v7 + 5);

        sub_1DA902C7C(v7);
        v18 = sub_1DA7AE6E8(v16, v17, &v19);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1DA7A9000, v12, v13, "Not enqueueing removal for %s due to lack of destination", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1E12739F0](v15, -1, -1);
        MEMORY[0x1E12739F0](v14, -1, -1);
      }

      else
      {

        sub_1DA902C7C(v7);
      }
    }
  }
}

void sub_1DA8FFA1C()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) accounts];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    sub_1DA888354();
    v3 = sub_1DA940E94();

    if ((v3 & 0xC000000000000001) != 0)
    {
LABEL_3:
      v4 = sub_1DA941264();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
    if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(v3 + 16);
LABEL_6:

  if (!v4)
  {

    sub_1DA9019CC();
  }
}

uint64_t sub_1DA8FFB08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DismissalSyncBulletin(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a2;
  v14 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v12 = v14;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v40 = v14;
  LOBYTE(v14) = sub_1DA9408F4();
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    v16 = *a1;
    v15 = a1[1];
    v17 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds;
    if (v13 == *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds))
    {
      v18 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
      if (v18)
      {
        v19 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID) == v16 && v18 == v15;
        if (v19 || (sub_1DA941684() & 1) != 0)
        {
          v20 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
          v21 = a1[3];
          if (v20)
          {
            if (v21 && (*(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID) == a1[2] && v20 == v21 || (sub_1DA941684() & 1) != 0))
            {
LABEL_17:
              if (qword_1ECBD47D0 == -1)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }
          }

          else if (!v21)
          {
            goto LABEL_17;
          }
        }
      }
    }

    sub_1DA8FFFC8(0);
    *(v3 + v17) = v13;
    v22 = (v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
    *v22 = v16;
    v22[1] = v15;

    v23 = a1[3];
    v24 = (v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    *v24 = a1[2];
    v24[1] = v23;

    goto LABEL_17;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_18:
  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1ECBE3DE8);
  sub_1DA902548(a1, v8);
  v26 = sub_1DA940584();
  v27 = sub_1DA940F34();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42[0] = v29;
    *v28 = 136315138;
    v30 = *(v8 + 4);
    v31 = *(v8 + 5);

    sub_1DA902C7C(v8);
    v32 = sub_1DA7AE6E8(v30, v31, v42);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1DA7A9000, v26, v27, "Enqueueing removal of bulletin %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);

    v33 = a1[7];
    if (v33)
    {
LABEL_20:
      v34 = a1[6];
      swift_beginAccess();

      sub_1DA8A9058(&v41, v34, v33);
      swift_endAccess();
      goto LABEL_23;
    }
  }

  else
  {

    sub_1DA902C7C(v8);
    v33 = a1[7];
    if (v33)
    {
      goto LABEL_20;
    }
  }

  v35 = sub_1DA902CD8(a1);
  swift_beginAccess();
  sub_1DA8A9A2C(&v41, v35);
  swift_endAccess();
LABEL_23:

  v37 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer;
  if (!*(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
  {
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v39 = sub_1DA900224(sub_1DA902F0C, v38, 0.1);

    *(v3 + v37) = v39;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DA8FFFC8(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_1DA9408C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1DA9408F4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer;
    if (*(v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DA941054();
      swift_unknownObjectRelease();
    }

    *(v2 + v10) = 0;
    swift_unknownObjectRelease();
    v11 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
    swift_beginAccess();
    if (*(*(v2 + v11) + 16) || (v12 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs, v13 = swift_beginAccess(), *(*(v2 + v12) + 16)))
    {
      sub_1DA900BE8();
      if (v13)
      {
        sub_1DA8871EC(v13);

        v13 = sub_1DA90100C();
      }
    }

    if (a1)
    {
      a1(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA9001C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1DA8FFFC8(0);
  }
}

uint64_t sub_1DA900224(uint64_t a1, void (*a2)(void, void), double a3)
{
  v40 = a1;
  v41 = a2;
  v3 = sub_1DA9407E4();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v35 - v6;
  v44 = sub_1DA940884();
  v49 = *(v44 - 8);
  v7 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v9;
  v10 = sub_1DA9407F4();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1DA940854();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA941024();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA7AF3EC(0, &qword_1ECBD7160, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1ECBD7168, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7170, &qword_1DA962D98);
  sub_1DA7AD11C(&qword_1ECBD7178, &qword_1ECBD7170, &qword_1DA962D98, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  v19 = sub_1DA941034();
  (*(v16 + 8))(v18, v15);
  ObjectType = swift_getObjectType();
  v21 = swift_allocObject();
  v22 = v41;
  v21[2] = v40;
  v21[3] = v22;
  v21[4] = v19;
  aBlock[4] = sub_1DA902F14;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_48_0;
  v23 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1DA940824();
  v36 = ObjectType;
  sub_1DA901D9C();
  sub_1DA941044();
  _Block_release(v23);
  (*(v38 + 8))(v12, v39);
  (*(v35 + 8))(v14, v37);

  v24 = v43;
  sub_1DA940864();
  v25 = v42;
  sub_1DA9408D4();
  v26 = *(v49 + 8);
  v49 += 8;
  v41 = v26;
  v27 = v44;
  v26(v24, v44);
  v29 = v47;
  v28 = v48;
  v30 = *(v47 + 104);
  v31 = v45;
  v30(v45, *MEMORY[0x1E69E7F40], v48);
  v32 = v46;
  *v46 = 0;
  v30(v32, *MEMORY[0x1E69E7F28], v28);
  MEMORY[0x1E12721A0](v25, v31, v32, v36);
  v33 = *(v29 + 8);
  v33(v32, v28);
  v33(v31, v28);
  v41(v25, v27);
  sub_1DA941064();
  return v19;
}

double SyncService.flushPendingRemovals(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1DA9026A4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_15_1;
  v14 = _Block_copy(aBlock);

  sub_1DA7B3DC0(a1, a2);
  sub_1DA940824();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);

  return result;
}

void sub_1DA900B78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DA8FFFC8(a2);
  }
}

void sub_1DA900BE8()
{
  v1 = v0;
  v2 = sub_1DA9408C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID + 8);
  if (!v8)
  {
    return;
  }

  v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
  v34 = v8;

  sub_1DA9412F4();
  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v9;
  sub_1DA90C5E0(&v35, 115, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v33;
  v12 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID + 8);
  if (v12)
  {
    v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    v34 = v12;

    sub_1DA9412F4();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v11;
    sub_1DA90C5E0(&v35, 117, 0xE100000000000000, v13);
    v11 = v33;
  }

  v33 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds);
  sub_1DA9412F4();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v11;
  sub_1DA90C5E0(&v35, 102, 0xE100000000000000, v14);
  v15 = v33;
  v16 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_1DA8BF808(*(v17 + 16), 0);
    v30 = sub_1DA8BFC0C(&v35, v19 + 4, v18, v17);
    v20 = v35;

    sub_1DA830720(v20);
    if (v30 == v18)
    {
      v32 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7138, &qword_1DA962D88);
      sub_1DA902B00();
      sub_1DA9412F4();
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v15;
      sub_1DA90C5E0(&v35, 98, 0xE100000000000000, v21);
      v15 = v32;
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

LABEL_8:
  v22 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_1DA8BF688(*(v23 + 16), 0);
    v26 = sub_1DA8BF88C(&v35, v25 + 4, v24, v23);
    v27 = v35;

    sub_1DA830720(v27);
    if (v26 == v24)
    {
      v31 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
      sub_1DA902C00();
      sub_1DA9412F4();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      sub_1DA90C5E0(&v35, 109, 0xE100000000000000, v28);
      return;
    }

    goto LABEL_14;
  }
}

uint64_t sub_1DA90100C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalPayloads;
    swift_beginAccess();
    v9 = MEMORY[0x1E69E7CD0];
    *(v0 + v8) = MEMORY[0x1E69E7CD0];

    v10 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingDismissalIDs;
    swift_beginAccess();
    *(v0 + v10) = v9;

    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingFeeds) = 0;
    v11 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingSectionID);
    *v11 = 0;
    v11[1] = 0;

    v12 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_pendingUniversalSectionID);
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SyncService.consume(_:)(UserNotificationsCore::IncomingSyncPayload *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v58 - v6;
  v71 = type metadata accessor for DismissalSyncItem(0);
  v70 = *(v71 - 8);
  v7 = MEMORY[0x1EEE9AC00](v71);
  v69 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - v9;
  countAndFlagsBits = a1->sectionID._countAndFlagsBits;
  object = a1->sectionID._object;
  v13 = a1->universalSectionID.value._countAndFlagsBits;
  v14 = a1->universalSectionID.value._object;
  platform = a1->platform;
  rawValue = a1->feeds.rawValue;
  v66 = a1->dismissalIDs._rawValue;
  v17 = a1->dismissalItemsDictionaries._rawValue;
  v64 = v1;
  v62 = v13;
  v60 = platform;
  v59 = rawValue;
  v65 = countAndFlagsBits;
  if (platform <= 1)
  {
    if (!platform)
    {

      goto LABEL_20;
    }

    v18 = MEMORY[0x1E6993B78];
  }

  else
  {
    v18 = MEMORY[0x1E6993B70];
    v19 = MEMORY[0x1E6993B80];
    if (platform != 3)
    {
      v19 = MEMORY[0x1E6993B88];
    }

    if (platform != 2)
    {
      v18 = v19;
    }
  }

  v20 = *v18;
  v21 = objc_opt_self();

  v22 = [v21 sharedCategories];
  v23 = *MEMORY[0x1E6993B68];

  v24 = sub_1DA940A04();

  v25 = [v22 bundleIDForPlatform:v23 fromBundleID:v24 platform:v20];

  if (v25)
  {
    v26 = sub_1DA940A14();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      if (qword_1ECBD47D0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_20:
  v20 = v17[2];
  v63 = object;

  v61 = v14;

  if (v20)
  {
    v14 = 0;
    object = v17 + 4;
    v28 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CA0];
    v68 = v10;
    v67 = v17;
    while (1)
    {
      if (v14 >= v17[2])
      {
        __break(1u);
LABEL_44:
        swift_once();
LABEL_15:
        v30 = sub_1DA9405A4();
        __swift_project_value_buffer(v30, qword_1ECBE3DE8);

        v31 = sub_1DA940584();
        v32 = sub_1DA940F34();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v77 = v75;
          *v33 = 136446466;

          v34 = sub_1DA7AE6E8(v65, object, &v77);
          LODWORD(v74) = v32;
          v35 = v34;

          *(v33 + 4) = v35;
          *(v33 + 12) = 2082;
          *(v33 + 14) = sub_1DA7AE6E8(v26, v28, &v77);
          _os_log_impl(&dword_1DA7A9000, v31, v74, "Mapping sectionID using categories: %{public}s -> %{public}s", v33, 0x16u);
          v36 = v75;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v36, -1, -1);
          MEMORY[0x1E12739F0](v33, -1, -1);
        }

        v65 = v26;
        object = v28;
        goto LABEL_20;
      }

      v37 = object[v14];
      if (*(v37 + 16))
      {

        v38 = sub_1DA85A4B4(104, 0xE100000000000000);
        if (v39)
        {
          sub_1DA7AD270(*(v37 + 56) + 32 * v38, &v77);
          if (swift_dynamicCast())
          {
            v74 = *(&v76[0] + 1);
            v75 = *&v76[0];
            if (*(v37 + 16) && (v40 = sub_1DA85A4B4(100, 0xE100000000000000), (v41 & 1) != 0))
            {
              sub_1DA7AD270(*(v37 + 56) + 32 * v40, &v77);

              if (swift_dynamicCast())
              {
                sub_1DA93FA94();
                v42 = 0;
LABEL_34:
                v43 = sub_1DA93FAF4();
                v44 = *(*(v43 - 8) + 56);
                v45 = v73;
                v44(v73, v42, 1, v43);
                v46 = v45;
                v47 = v72;
                sub_1DA902088(v46, v72);
                v48 = *(v71 + 20);
                v49 = v69;
                v44(v69 + v48, 1, 1, v43);
                v50 = v74;
                *v49 = v75;
                v49[1] = v50;
                sub_1DA825C64(v47, v49 + v48);
                v51 = v49;
                v10 = v68;
                sub_1DA9025AC(v51, v68, type metadata accessor for DismissalSyncItem);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v28 = sub_1DA886910(0, *(v28 + 16) + 1, 1, v28);
                }

                v17 = v67;
                v53 = *(v28 + 16);
                v52 = *(v28 + 24);
                if (v53 >= v52 >> 1)
                {
                  v28 = sub_1DA886910((v52 > 1), v53 + 1, 1, v28);
                }

                *(v28 + 16) = v53 + 1;
                sub_1DA9025AC(v10, v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53, type metadata accessor for DismissalSyncItem);
                v26 = MEMORY[0x1E69E7CA0];
                goto LABEL_23;
              }
            }

            else
            {
            }

            v42 = 1;
            goto LABEL_34;
          }
        }
      }

LABEL_23:
      if (v20 == ++v14)
      {
        goto LABEL_40;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_40:
  *&v77 = v65;
  *(&v77 + 1) = v63;
  *&v78 = v62;
  *(&v78 + 1) = v61;
  LOBYTE(v79) = v60;
  *(&v79 + 1) = v59;
  *&v80 = v66;
  *(&v80 + 1) = v28;
  v54 = v64;
  v55 = v64 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    v76[0] = v77;
    v76[1] = v78;
    v76[2] = v79;
    v76[3] = v80;
    (*(v56 + 8))(v54, v76, ObjectType, v56);
    swift_unknownObjectRelease();
  }

  sub_1DA9026B0(&v77);
}

void sub_1DA9019CC()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
    v3 = sub_1DA940BE4();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_15:

      return;
    }
  }

  v4 = sub_1DA941264();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1272460](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 isDefaultPairedDevice];

    if ((v9 & 1) == 0)
    {
      ++v5;
      if (v8 != v4)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1DA901B78(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA901BE8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1DA902F64;
}

uint64_t sub_1DA901C8C()
{
  v1 = [*(*(*v0 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_service) + 16) devices];
  if (!v1)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_1DA941264();
    goto LABEL_4;
  }

  v2 = v1;
  sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
  v3 = sub_1DA940BE4();

  if (v3 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v4;
}

uint64_t sub_1DA901D9C()
{
  sub_1DA9407F4();
  sub_1DA902500(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  return sub_1DA9411D4();
}

uint64_t sub_1DA901E88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DA940934();
      sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return sub_1DA940904();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DA9020F8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DA9020F8(v5, v6);
  }

  sub_1DA940934();
  sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return sub_1DA940904();
}

uint64_t sub_1DA902088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA9020F8(uint64_t a1, uint64_t a2)
{
  result = sub_1DA93F7E4();
  if (!result || (result = sub_1DA93F804(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DA93F7F4();
      sub_1DA940934();
      sub_1DA902500(&unk_1ECBD7070, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return sub_1DA940904();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DA9021D8(uint64_t a1, char *a2)
{
  v20 = a1;
  v19 = sub_1DA940FC4();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_queue;
  v8 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v17[0] = "queue_flushTimer";
  v17[1] = v8;
  sub_1DA940824();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DA902500(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v19);
  *&a2[v18] = sub_1DA941004();
  v9 = &a2[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_service];
  v10 = v20;
  *v9 = v20;
  *(v9 + 1) = &off_1F5638E30;
  v11 = type metadata accessor for IDSInboundMessaging();
  v21.receiver = a2;
  v21.super_class = v11;

  v12 = objc_msgSendSuper2(&v21, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_queue];
  v14 = *(v10 + 16);
  v15 = v12;
  [v14 addDelegate:v15 queue:v13];

  return v15;
}

uint64_t sub_1DA902500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA902548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissalSyncBulletin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA9025AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DA902614()
{
  v1 = *(type metadata accessor for DismissalSyncBulletin(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA8FF804(v3, (v0 + v2), v4);
}

unint64_t sub_1DA9026E4()
{
  result = qword_1ECBD70E0;
  if (!qword_1ECBD70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70E0);
  }

  return result;
}

unint64_t sub_1DA90273C()
{
  result = qword_1ECBD70E8;
  if (!qword_1ECBD70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70E8);
  }

  return result;
}

unint64_t sub_1DA902794()
{
  result = qword_1ECBD70F0;
  if (!qword_1ECBD70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70F0);
  }

  return result;
}

unint64_t sub_1DA9027EC()
{
  result = qword_1ECBD70F8;
  if (!qword_1ECBD70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD70F8);
  }

  return result;
}

unint64_t sub_1DA902844()
{
  result = qword_1ECBD7100;
  if (!qword_1ECBD7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7100);
  }

  return result;
}

void sub_1DA9028E0(uint64_t a1)
{
  sub_1DA89E3C8();
  if (v1 <= 0x3F)
  {
    sub_1DA8235A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA902A34(uint64_t a1)
{
  sub_1DA8235A8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DA902B00()
{
  result = qword_1ECBD7140;
  if (!qword_1ECBD7140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7138, &qword_1DA962D88);
    sub_1DA902B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7140);
  }

  return result;
}

unint64_t sub_1DA902B84()
{
  result = qword_1ECBD7148;
  if (!qword_1ECBD7148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7150, &qword_1DA962D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7148);
  }

  return result;
}

unint64_t sub_1DA902C00()
{
  result = qword_1ECBD7158;
  if (!qword_1ECBD7158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7158);
  }

  return result;
}

uint64_t sub_1DA902C7C(uint64_t a1)
{
  v2 = type metadata accessor for DismissalSyncBulletin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA902CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = DismissalSyncBulletin.dismissalHash.getter();
  v20 = v9;
  sub_1DA9412F4();
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v10;
  sub_1DA90C5E0(v18, 104, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v12 = v19;
  v13 = type metadata accessor for DismissalSyncBulletin(0);
  sub_1DA825D4C(a1 + *(v13 + 32), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DA823670(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1DA93FAA4();
    v19 = v14;
    sub_1DA9412F4();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v12;
    sub_1DA90C5E0(v18, 100, 0xE100000000000000, v15);
    (*(v6 + 8))(v8, v5);
    return v19;
  }

  return v12;
}

uint64_t sub_1DA902F14()
{
  (*(v0 + 16))();
  swift_getObjectType();
  return sub_1DA941054();
}

uint64_t sub_1DA902F6C()
{
  v0 = sub_1DA8497BC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD71C0, qword_1DA962DD8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECBD7198 = result;
  return result;
}

uint64_t sub_1DA902FC8()
{
  v7 = sub_1DA940FC4();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DA7AC344();
  sub_1DA940824();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1DA941004();
  qword_1ECBD71A0 = result;
  return result;
}

void sub_1DA903218(char a1, NSObject *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v168 = a3;
  v169 = a4;
  v165 = a2;
  v9 = sub_1DA9407F4();
  v163 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v160 = &v143[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = sub_1DA940854();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v158 = &v143[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_1DA93F9F4();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v143[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_1DA93FA14();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v151 = &v143[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = sub_1DA93FAF4();
  v164 = *(v166 - 8);
  v14 = MEMORY[0x1EEE9AC00](v166);
  v16 = &v143[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v150 = &v143[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v143[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v143[-v22];
  v24 = sub_1DA9408B4();
  v25 = *(v24 - 8);
  v170 = v24;
  v171 = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v143[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v143[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v143[-v34];
  MEMORY[0x1EEE9AC00](v33);
  v167 = &v143[-v37];
  if (a1)
  {
    v146 = v36;
    v147 = v9;
    v148 = a5;
    v149 = a6;
    v38 = swift_allocObject();
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    v162 = v38;
    if (qword_1ECBD47E0 != -1)
    {
      v38 = swift_once();
    }

    v39 = qword_1ECBD7198;
    MEMORY[0x1EEE9AC00](v38);
    v40 = v169;
    *&v143[-16] = v168;
    *&v143[-8] = v40;

    os_unfair_lock_lock((v39 + 24));
    sub_1DA90513C((v39 + 16), v23);
    os_unfair_lock_unlock((v39 + 24));

    v42 = v170;
    v41 = v171;
    if ((v171[6])(v23, 1, v170) == 1)
    {
      v43 = sub_1DA905158(v23);
      v44 = v165;
      sub_1DA90477C(v43);
      if ((v45 & 1) == 0)
      {
        v117 = v166;
        if (qword_1ECBD47F0 != -1)
        {
          swift_once();
        }

        v118 = sub_1DA9405A4();
        __swift_project_value_buffer(v118, qword_1ECBD71A8);
        v119 = v164;
        (*(v164 + 16))(v16, v44, v117);
        v120 = sub_1DA940584();
        v121 = sub_1DA940F34();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          aBlock[0] = v171;
          *v122 = 136315138;
          v123 = v151;
          sub_1DA93FA04();
          v124 = v152;
          sub_1DA93F9E4();
          v125 = sub_1DA93FAD4();
          v127 = v126;
          (*(v155 + 8))(v124, v156);
          (*(v153 + 8))(v123, v154);
          (*(v119 + 8))(v16, v117);
          v128 = sub_1DA7AE6E8(v125, v127, aBlock);

          *(v122 + 4) = v128;
          _os_log_impl(&dword_1DA7A9000, v120, v121, "Date not in fuzzing range; %s.", v122, 0xCu);
          v129 = v171;
          __swift_destroy_boxed_opaque_existential_1(v171);
          MEMORY[0x1E12739F0](v129, -1, -1);
          MEMORY[0x1E12739F0](v122, -1, -1);
        }

        else
        {

          v130 = (*(v119 + 8))(v16, v117);
        }

        (v148)(v130);
        goto LABEL_37;
      }

      sub_1DA940894();
      v46 = sub_1DA90524C();
      v47 = v167;
      v48 = sub_1DA9408D4();
      v49 = qword_1ECBD7198;
      MEMORY[0x1EEE9AC00](v48);
      v50 = v169;
      *&v143[-32] = v168;
      *&v143[-24] = v50;
      *&v143[-16] = v47;

      os_unfair_lock_lock(v49 + 6);
      sub_1DA905388(&v49[4]);
      os_unfair_lock_unlock(v49 + 6);

      if (qword_1ECBD47F0 != -1)
      {
        swift_once();
      }

      v51 = sub_1DA9405A4();
      __swift_project_value_buffer(v51, qword_1ECBD71A8);
      v52 = v170;
      v53 = v171;
      (v171[2])(v28, v47, v170);
      v54 = v162;

      v55 = sub_1DA940584();
      v56 = sub_1DA940F34();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v149;
      if (v57)
      {
        v59 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        aBlock[0] = v165;
        *v59 = 136315650;
        v60 = sub_1DA904470(v54);
        v61 = MEMORY[0x1E1271B80](v60);
        v145 = v55;
        v62 = v61;
        v64 = v63;

        v65 = sub_1DA7AE6E8(v62, v64, aBlock);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2048;
        *(v59 + 14) = v46;
        *(v59 + 22) = 2080;
        sub_1DA9408A4();
        v66 = v150;
        sub_1DA93FA74();
        v67 = v151;
        sub_1DA93FA04();
        v68 = v152;
        sub_1DA93F9E4();
        v69 = sub_1DA93FAD4();
        v144 = v56;
        v71 = v70;
        (*(v155 + 8))(v68, v156);
        (*(v153 + 8))(v67, v154);
        (*(v164 + 8))(v66, v166);
        v72 = v53[1];
        v72(v28, v52);
        v73 = sub_1DA7AE6E8(v69, v71, aBlock);

        *(v59 + 24) = v73;
        v74 = v145;
        _os_log_impl(&dword_1DA7A9000, v145, v144, "[%s] Delaying closure by %fs - deadline: %s.", v59, 0x20u);
        v75 = v165;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v75, -1, -1);
        MEMORY[0x1E12739F0](v59, -1, -1);
      }

      else
      {

        v72 = v53[1];
        v72(v28, v52);
      }

      v72(v146, v52);
    }

    else
    {
      (v41[4])(v35, v23, v42);
      v82 = v41[2];
      v83 = v167;
      v82(v167, v35, v42);
      if (qword_1ECBD47F0 != -1)
      {
        swift_once();
      }

      v84 = sub_1DA9405A4();
      __swift_project_value_buffer(v84, qword_1ECBD71A8);
      v85 = v164;
      (*(v164 + 16))(v20, v165, v166);
      v82(v32, v83, v42);
      v86 = v162;

      v87 = sub_1DA940584();
      v88 = sub_1DA940F34();
      v165 = v87;
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        aBlock[0] = v146;
        *v89 = 136315650;
        v90 = sub_1DA904470(v86);
        v92 = v91;
        v94 = v93;
        v96 = v95;

        v97 = MEMORY[0x1E1271B80](v90, v92, v94, v96);
        v99 = v98;

        v100 = sub_1DA7AE6E8(v97, v99, aBlock);

        *(v89 + 4) = v100;
        *(v89 + 12) = 2080;
        sub_1DA90477C(v101);
        if (v102)
        {
          v103 = 0;
        }

        else
        {
          v103 = 0x20666F2074756F20;
        }

        if (v102)
        {
          v104 = 0xE000000000000000;
        }

        else
        {
          v104 = 0xED000065676E6172;
        }

        v164 = *(v85 + 8);
        v105 = v166;
        (v164)(v20, v166);
        v106 = sub_1DA7AE6E8(v103, v104, aBlock);

        *(v89 + 14) = v106;
        *(v89 + 22) = 2080;
        sub_1DA9408A4();
        v107 = v150;
        sub_1DA93FA74();
        v108 = v151;
        sub_1DA93FA04();
        v109 = v152;
        sub_1DA93F9E4();
        v110 = sub_1DA93FAD4();
        LODWORD(v145) = v88;
        v112 = v111;
        (*(v155 + 8))(v109, v156);
        (*(v153 + 8))(v108, v154);
        (v164)(v107, v105);
        v113 = v170;
        v72 = v171[1];
        v72(v32, v170);
        v114 = sub_1DA7AE6E8(v110, v112, aBlock);

        *(v89 + 24) = v114;
        v115 = v165;
        _os_log_impl(&dword_1DA7A9000, v165, v145, "[%s] Delaying%s closure until %s to match related closures..", v89, 0x20u);
        v116 = v146;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v116, -1, -1);
        MEMORY[0x1E12739F0](v89, -1, -1);

        v72(v35, v113);
      }

      else
      {

        v72 = v171[1];
        v72(v32, v42);
        (*(v85 + 8))(v20, v166);
        v72(v35, v42);
      }

      v58 = v149;
    }

    v131 = v148;
    if (qword_1ECBD47E8 != -1)
    {
      swift_once();
    }

    v132 = qword_1ECBD71A0;
    v133 = swift_allocObject();
    v134 = v168;
    v135 = v169;
    v133[2] = v157;
    v133[3] = v134;
    v136 = v162;
    v133[4] = v135;
    v133[5] = v136;
    v133[6] = v131;
    v133[7] = v58;
    aBlock[4] = sub_1DA9053A8;
    aBlock[5] = v133;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_23;
    v137 = _Block_copy(aBlock);

    v138 = v132;

    v139 = v158;
    sub_1DA940824();
    v172 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v140 = v160;
    v141 = v147;
    sub_1DA9411D4();
    v142 = v167;
    MEMORY[0x1E1272060](v167, v139, v140, v137);
    _Block_release(v137);

    (*(v163 + 8))(v140, v141);
    (*(v159 + 8))(v139, v161);

    v72(v142, v170);
LABEL_37:

    return;
  }

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v76 = sub_1DA9405A4();
  __swift_project_value_buffer(v76, qword_1ECBD71A8);
  v77 = sub_1DA940584();
  v78 = sub_1DA940F34();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = a5;
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1DA7A9000, v77, v78, "Fuzz disabled.", v80, 2u);
    v81 = v80;
    a5 = v79;
    MEMORY[0x1E12739F0](v81, -1, -1);
  }

  a5();
}

void *sub_1DA904470(void *a1)
{
  v2 = sub_1DA93FB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[5])
  {
    v6 = a1[2];
LABEL_5:

    return v6;
  }

  sub_1DA93FB14();
  v7 = sub_1DA93FB04();
  v9 = v8;
  v10 = (*(v3 + 8))(v5, v2);
  v15[0] = 45;
  v15[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v10);
  v15[-2] = v15;
  result = sub_1DA904D7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DA8E59F8, &v15[-4], v7, v9, v15);
  if (result[2])
  {
    v6 = result[4];
    v12 = result[5];
    v13 = result[6];
    v14 = result[7];

    swift_beginAccess();
    a1[2] = v6;
    a1[3] = v12;
    a1[4] = v13;
    a1[5] = v14;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA90463C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1DA85A4B4(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1DA9408B4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = sub_1DA9408B4();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

void sub_1DA90477C(uint64_t a1)
{
  sub_1DA93F9D4();
  v2 = fmod(v1, 3600.0);
  v3 = fmod(trunc(v2), 60.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 > 1)
  {
    return;
  }

  sub_1DA93F9D4();
  v5 = trunc(fmod(v4, 3600.0)) / 60.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1DA90489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1DA9408B4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a4, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1DA8F11E0(v9, a2, a3);
}

uint64_t sub_1DA9049C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (qword_1ECBD47E0 != -1)
  {
    a1 = swift_once();
  }

  v7 = qword_1ECBD7198;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v7 + 6);
  sub_1DA9053B8(&v7[4]);
  os_unfair_lock_unlock(v7 + 6);

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBD71A8);

  v9 = sub_1DA940584();
  v10 = sub_1DA940F34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_1DA904470(a4);
    v14 = MEMORY[0x1E1271B80](v13);
    v16 = v15;

    v17 = sub_1DA7AE6E8(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "[%s] Running.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);
  }

  return a5(v18);
}

uint64_t sub_1DA904BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_1DA9408B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  return sub_1DA8F11E0(v7, a2, a3);
}

uint64_t sub_1DA904D0C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD71A8);
  __swift_project_value_buffer(v0, qword_1ECBD71A8);
  return sub_1DA940594();
}

unint64_t sub_1DA904D7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DA940B34();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DA886B14(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DA886B14((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DA940B24();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DA940AD4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DA940AD4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DA940B34();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DA886B14(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DA940B34();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DA886B14(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DA886B14((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DA940AD4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA905158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA9051C0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E1273A10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E1273A10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1DA90524C()
{
  v0 = sub_1DA9051C0(0x20000000000001uLL);
  v1 = vcvtd_n_f64_u64(v0, 0x35uLL) * 4.0 + 1.0;
  if (v0 == 0x20000000000000)
  {
    v2 = 5.0;
  }

  else
  {
    v2 = v1;
  }

  if (qword_1ECBD47F0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1ECBD71A8);
  v4 = sub_1DA940584();
  v5 = sub_1DA940EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v2;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 0x3FF0000000000000;
    *(v6 + 22) = 2048;
    *(v6 + 24) = 0x4014000000000000;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Using fuzz of %fs. [%f...%f]", v6, 0x20u);
    MEMORY[0x1E12739F0](v6, -1, -1);
  }

  return v2;
}

id sub_1DA9055BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IDSInboundMessaging();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1DA905670(uint64_t a1)
{
  if (a1)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1ECBE3DE8);

    oslog = sub_1DA940584();
    v3 = sub_1DA940F34();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1DA7A9000, oslog, v3, "Active IDS accounts changed. Count: %ld", v4, 0xCu);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1DA9057CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBE3DE8);
    v19 = sub_1DA940F14();
    log = sub_1DA940584();
    if (os_log_type_enabled(log, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DA7A9000, log, v19, "Couldn't unwrap fromID for incoming message", v20, 2u);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = *(*(v3 + OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_service) + 16);
  v8 = sub_1DA940A04();
  log = [v6 deviceForFromID_];

  if (!log)
  {
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1ECBE3DE8);
    v22 = sub_1DA940F14();

    log = sub_1DA940584();

    if (os_log_type_enabled(log, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v62 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DA7AE6E8(a2, a3, &v62);
      _os_log_impl(&dword_1DA7A9000, log, v22, "Received IDS message from invalid device ID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
      goto LABEL_27;
    }

LABEL_23:

    return;
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  v66 = 115;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v9 = v3, v10 = sub_1DA85A788(&v62), (v11 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_27;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v10, v61);
  sub_1DA862DE8(&v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    return;
  }

  v12 = v67;
  v58 = v66;
  *&v61[0] = 117;
  *(&v61[0] + 1) = 0xE100000000000000;
  sub_1DA9412F4();
  if (*(a1 + 16) && (v13 = sub_1DA85A788(&v62), (v14 & 1) != 0))
  {
    sub_1DA7AD270(*(a1 + 56) + 32 * v13, v61);
    sub_1DA862DE8(&v62);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = v66;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v67;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1DA862DE8(&v62);
    v16 = 0;
    v17 = 0;
  }

  v25 = [log deviceType];
  if (v25 >= 7)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x4030202020100uLL >> (8 * v25);
  }

  *&v61[0] = 102;
  *(&v61[0] + 1) = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v27 = sub_1DA85A788(&v62), (v28 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_37;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v27, v61);
  sub_1DA862DE8(&v62);
  if (!swift_dynamicCast())
  {
LABEL_37:
    v29 = 15871;
    goto LABEL_38;
  }

  v29 = v66;
LABEL_38:
  v66 = 98;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v30 = sub_1DA85A788(&v62), (v31 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_43;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v30, v61);
  sub_1DA862DE8(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7258, qword_1DA962E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v32 = v66;
LABEL_44:
  v66 = 109;
  v67 = 0xE100000000000000;
  sub_1DA9412F4();
  if (!*(a1 + 16) || (v33 = sub_1DA85A788(&v62), (v34 & 1) == 0))
  {
    sub_1DA862DE8(&v62);
    goto LABEL_49;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v33, v61);
  sub_1DA862DE8(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v35 = v66;
LABEL_50:
  *&v62 = v59;
  *(&v62 + 1) = v12;
  *&v63 = v16;
  *(&v63 + 1) = v17;
  LOBYTE(v64) = v26;
  *(&v64 + 1) = v29;
  *&v65 = v35;
  *(&v65 + 1) = v32;
  v36 = qword_1ECBD47D0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA9405A4();
  __swift_project_value_buffer(v37, qword_1ECBE3DE8);

  v38 = log;
  v39 = sub_1DA940584();
  v40 = sub_1DA940F34();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v61[0] = v42;
    *v41 = 136315650;
    v43 = sub_1DA940984();
    v45 = sub_1DA7AE6E8(v43, v44, v61);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = sub_1DA7AE6E8(v59, v12, v61);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2080;
    v47 = [v38 name];

    if (!v47)
    {
      __break(1u);
      return;
    }

    v48 = v9;
    v49 = sub_1DA940A14();
    v51 = v50;

    v52 = sub_1DA7AE6E8(v49, v51, v61);

    *(v41 + 24) = v52;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "Received IDS message %s for %s from %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v42, -1, -1);
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  else
  {

    v48 = v9;
  }

  v53 = v48 + OBJC_IVAR____TtC21UserNotificationsCore19IDSInboundMessaging_payloadConsumer;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v56 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    v61[3] = v65;
    (*(v56 + 8))(v61, ObjectType, v56);
  }

  sub_1DA906018(&v62);
}

uint64_t sub_1DA906108()
{

  v1 = OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince;
  v2 = sub_1DA93FAF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AlertCoordinatorContext.init(sourceBundleIdentifier:notificationIdentifier:interruptionLevel:shouldPlayLightsAndSirens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AlertCoordinatorBulletinObserver.__allocating_init(serviceManager:)(char *a1)
{
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3 && (v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties, swift_beginAccess(), (v5 = *&a1[v4]) != 0) && (v6 = *&a1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor]) != 0)
  {
    type metadata accessor for AlertCoordinatorBulletinObserver();
    v7 = swift_allocObject();

    v8 = sub_1DA909DCC(v3, v5, v6, v7);

    return v8;
  }

  else
  {
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1ECBD7260);
    v11 = a1;
    v12 = sub_1DA940584();
    v13 = sub_1DA940F24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v11 = v11;
      v16 = [v11 description];
      v17 = sub_1DA940A14();
      v19 = v18;

      v20 = sub_1DA7AE6E8(v17, v19, &v21);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Invalid context for init: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12739F0](v15, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DA906424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA93FB54();
  v1 = *(v0 + 120);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84AA88(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void *sub_1DA9064E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[5];
  if (!v2)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  sub_1DA90A554(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);

  sub_1DA93FB74();

  v4 = *(v2 + 56);

  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v20 = MEMORY[0x1E69E7CC0];
      result = sub_1DA82A778(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v20;
      v19 = v4 & 0xC000000000000001;
      v17 = a2;
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v19)
        {
          v9 = MEMORY[0x1E1272460](v6, v4);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v4;
        result = [*(v9 + 16) uniqueID];
        if (!result)
        {
          goto LABEL_22;
        }

        v11 = result;
        a2 = sub_1DA940A14();
        v13 = v12;

        v15 = *(v20 + 16);
        v14 = *(v20 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DA82A778((v14 > 1), v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        v16 = v20 + 16 * v15;
        *(v16 + 32) = a2;
        *(v16 + 40) = v13;
        ++v6;
        v4 = v10;
        if (v8 == v5)
        {

          a2 = v17;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v5 = sub_1DA941264();
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:

  v7 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *a2 = v7;
  return result;
}

double sub_1DA906738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DA940D34();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1DA8DB00C(0, 0, v2, &unk_1DA963050, v5);

  return result;
}

uint64_t sub_1DA90685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_1DA9068F0;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA9068F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA9069EC, 0, 0);
}

uint64_t sub_1DA9069EC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA906424();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DA906A78(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for NotificationSource(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (*(a1 + 40) != 1)
  {
LABEL_9:
    v25 = v15;
    v26 = qword_1ECBD47F8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1ECBD7260);

    v28 = sub_1DA940584();
    v29 = sub_1DA940EF4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v18;
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v30 = 136380931;
      *(v30 + 4) = sub_1DA7AE6E8(v25, v16, v68);
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_1DA7AE6E8(v31, v17, v68);
      _os_log_impl(&dword_1DA7A9000, v28, v29, "[%{private}s:%{public}s] bulletin does not alert", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v32, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
    }

    if (a2)
    {
LABEL_14:

      a2(0);
      return;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v65 = *a1;
  if (*(a1 + 32) == 3)
  {
    v19 = qword_1ECBD47F8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1ECBD7260);

    v21 = sub_1DA940584();
    v22 = sub_1DA940EF4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v18;
      v18 = swift_slowAlloc();
      v68[0] = v18;
      *v23 = 136380931;
      *(v23 + 4) = sub_1DA7AE6E8(v65, v16, v68);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1DA7AE6E8(v24, v17, v68);
      _os_log_impl(&dword_1DA7A9000, v21, v22, "[%{private}s:%{public}s] skipping coordination and allowing critical alert", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    if (a2)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_9;
  }

  v61 = v18;
  v62 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = a3;
  v64 = a2;
  v60 = v3;
  sub_1DA7BABAC(v3 + 48, v68);
  v33 = v69;
  v34 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v35 = *(v34 + 24);

  v35(v65, v16, 0, v33, v34);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD6640, qword_1DA95F868);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v36 = v64;
    goto LABEL_26;
  }

  v37 = v62;
  sub_1DA90A4EC(v11, v62, type metadata accessor for NotificationSource);
  __swift_destroy_boxed_opaque_existential_1(v68);
  v68[0] = &unk_1F56316E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DA9596E0;
  v39 = v37[3];
  *(v38 + 32) = v37[2];
  *(v38 + 40) = v39;
  v67 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA8B99B4();
  v40 = sub_1DA940EE4();

  v41 = v63;
  if (v40)
  {
    v42 = 2;
    v36 = v64;
LABEL_25:
    sub_1DA8304A0(4);
    sub_1DA830524(v42);
    sub_1DA830524(4uLL);
    sub_1DA90A2FC(v62, type metadata accessor for NotificationSource);
LABEL_26:
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v51 = sub_1DA9405A4();
    __swift_project_value_buffer(v51, qword_1ECBD7260);

    v52 = sub_1DA940584();
    v53 = sub_1DA940EF4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68[0] = v55;
      *v54 = 136380931;
      *(v54 + 4) = sub_1DA7AE6E8(v65, v16, v68);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_1DA7AE6E8(v61, v17, v68);
      _os_log_impl(&dword_1DA7A9000, v52, v53, "[%{private}s:%{public}s] skipping coordination for known-duplicate source", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v55, -1, -1);
      MEMORY[0x1E12739F0](v54, -1, -1);
    }

    if (v36)
    {

      v36(0);
      return;
    }

    goto LABEL_35;
  }

  v42 = v37[7];
  v36 = v64;
  if (v42 != 4)
  {
    sub_1DA8304B0(v42);
    goto LABEL_25;
  }

  sub_1DA830524(4uLL);
  sub_1DA830524(4uLL);
  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v43 = sub_1DA9405A4();
  __swift_project_value_buffer(v43, qword_1ECBD7260);

  v44 = sub_1DA940584();
  v45 = sub_1DA940EF4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68[0] = v47;
    *v46 = 136380931;
    v48 = v65;
    *(v46 + 4) = sub_1DA7AE6E8(v65, v16, v68);
    *(v46 + 12) = 2082;
    v49 = v61;
    *(v46 + 14) = sub_1DA7AE6E8(v61, v17, v68);
    _os_log_impl(&dword_1DA7A9000, v44, v45, "[%{private}s:%{public}s] evaluating bulletin", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v47, -1, -1);
    MEMORY[0x1E12739F0](v46, -1, -1);

    v50 = v60;
  }

  else
  {

    v50 = v60;
    v49 = v61;
    v48 = v65;
  }

  v56 = sub_1DA940D34();
  v57 = v66;
  (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v50;
  v58[5] = v49;
  v58[6] = v17;
  v58[7] = v48;
  v58[8] = v16;
  v58[9] = v36;
  v58[10] = v41;

  sub_1DA7B3DC0(v36, v41);
  sub_1DA8DB00C(0, 0, v57, &unk_1DA962EF8, v58);

  sub_1DA90A2FC(v62, type metadata accessor for NotificationSource);
}

uint64_t sub_1DA90747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v13;
  v8[12] = v14;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_1DA93FAF4();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for AlertCoordinationMessage(0);
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA907628, 0, 0);
}

void sub_1DA907628()
{
  v1 = *(v0[6] + 32);
  v0[22] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1DA9076E0;

    sub_1DA854330((v0 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA9076E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA9077F8, 0, 0);
}

void sub_1DA9077F8()
{
  v78 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 192);
  v5 = *(v0 + 193);
  v6 = *(v3 + 120);
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_1DA90A35C;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_1DA7BFAB8(v9);
  os_unfair_lock_unlock(v6 + 4);

  if (v4 > 1)
  {
  }

  else
  {
    v10 = sub_1DA941684();

    if ((v10 & 1) == 0)
    {
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v11 = sub_1DA9405A4();
      __swift_project_value_buffer(v11, qword_1ECBD7260);

      v12 = sub_1DA940584();
      v13 = sub_1DA940F34();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = *(v0 + 72);
        v14 = *(v0 + 80);
        v72 = v5;
        v17 = *(v0 + 56);
        v16 = *(v0 + 64);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v75 = v19;
        *v18 = 136381187;
        *(v18 + 4) = sub_1DA7AE6E8(v15, v14, &v75);
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(v17, v16, &v75);
        *(v18 + 22) = 2082;
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1DA941364();
        v20 = v77;
        *(v0 + 16) = v76;
        *(v0 + 24) = v20;
        MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
        *(v0 + 194) = v4;
        sub_1DA941494();
        MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
        *(v0 + 195) = v72;
        sub_1DA941494();
        v21 = sub_1DA7AE6E8(*(v0 + 16), *(v0 + 24), &v75);

        *(v18 + 24) = v21;
        _os_log_impl(&dword_1DA7A9000, v12, v13, "[%{private}s:%{public}s] allowing local alert. (%{public}s)", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);
      }

      v22 = *(v0 + 88);
      if (v22)
      {
        v23 = *(v0 + 168);
        v22(0);
        v24 = v23;
LABEL_20:
        sub_1DA7BA120(v24, &unk_1ECBD6FB8, &unk_1DA962770);
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1ECBD7260);

  v26 = sub_1DA940584();
  v27 = sub_1DA940F34();

  if (os_log_type_enabled(v26, v27))
  {
    v73 = v5;
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);
    v32 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v75 = v71;
    *v32 = 136381187;
    *(v32 + 4) = sub_1DA7AE6E8(v29, v28, &v75);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_1DA7AE6E8(v31, v30, &v75);
    *(v32 + 22) = 2080;
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1DA941364();
    v33 = v77;
    *(v0 + 32) = v76;
    *(v0 + 40) = v33;
    MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
    *(v0 + 196) = v4;
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
    *(v0 + 197) = v73;
    sub_1DA941494();
    v34 = sub_1DA7AE6E8(*(v0 + 32), *(v0 + 40), &v75);

    *(v32 + 24) = v34;
    _os_log_impl(&dword_1DA7A9000, v26, v27, "[%{private}s:%{public}s] suppressing local alert. waiting for remote device. (%s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v71, -1, -1);
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  v35 = *(v0 + 160);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  sub_1DA90A37C(*(v0 + 168), v35);
  v38 = (*(v36 + 48))(v35, 1, v37);
  v39 = *(v0 + 160);
  if (v38 != 1)
  {
    sub_1DA90A4EC(v39, *(v0 + 152), type metadata accessor for AlertCoordinationMessage);

    v53 = sub_1DA940584();
    v54 = sub_1DA940F34();

    if (os_log_type_enabled(v53, v54))
    {
      v56 = *(v0 + 72);
      v55 = *(v0 + 80);
      v58 = *(v0 + 56);
      v57 = *(v0 + 64);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v76 = v60;
      *v59 = 136380931;
      *(v59 + 4) = sub_1DA7AE6E8(v56, v55, &v76);
      *(v59 + 12) = 2082;
      *(v59 + 14) = sub_1DA7AE6E8(v58, v57, &v76);
      _os_log_impl(&dword_1DA7A9000, v53, v54, "[%{private}s:%{public}s] already have response from remote coordinator", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v60, -1, -1);
      MEMORY[0x1E12739F0](v59, -1, -1);
    }

    v61 = *(v0 + 88);
    if (v61)
    {
      v62 = *(v0 + 168);
      v63 = *(v0 + 152);
      v65 = *(v0 + 112);
      v64 = *(v0 + 120);
      v67 = *(v0 + 96);
      v66 = *(v0 + 104);

      sub_1DA93FAE4();
      type metadata accessor for PendingAlertReply(0);
      v68 = swift_allocObject();
      *(v68 + 16) = v61;
      *(v68 + 24) = v67;
      (*(v65 + 32))(v68 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v64, v66);
      *(v68 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask) = 0;
      sub_1DA909994(v68, v63);
      sub_1DA7B5220(v61, v67);
      swift_setDeallocating();
      (*(v65 + 8))(v68 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v66);
      swift_deallocClassInstance();
      sub_1DA90A2FC(v63, type metadata accessor for AlertCoordinationMessage);
      v24 = v62;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v40 = *(v0 + 128);
  v41 = *(v0 + 88);
  v74 = *(v0 + 96);
  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  v45 = *(v0 + 56);
  v44 = *(v0 + 64);
  v46 = *(v0 + 48);
  sub_1DA7BA120(v39, &unk_1ECBD6FB8, &unk_1DA962770);
  sub_1DA940D04();
  v47 = sub_1DA940D34();
  (*(*(v47 - 8) + 56))(v40, 0, 1, v47);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v46;
  v48[5] = v45;
  v48[6] = v44;
  v48[7] = v43;
  v48[8] = v42;

  v49 = sub_1DA8DB00C(0, 0, v40, &unk_1DA963088, v48);
  v50 = swift_task_alloc();
  v50[2] = v46;
  v50[3] = v45;
  v50[4] = v44;
  v50[5] = v41;
  v50[6] = v74;
  v50[7] = v49;
  v51 = swift_task_alloc();
  *(v51 + 16) = sub_1DA90A4C8;
  *(v51 + 24) = v50;
  os_unfair_lock_lock(v6 + 4);
  sub_1DA84AA88(v52);
  os_unfair_lock_unlock(v6 + 4);
  v70 = *(v0 + 168);

  sub_1DA7BA120(v70, &unk_1ECBD6FB8, &unk_1DA962770);

LABEL_21:

  v69 = *(v0 + 8);

  v69();
}

uint64_t sub_1DA90828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1DA941474();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_1DA941454();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA9083BC, 0, 0);
}

uint64_t sub_1DA9083BC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_1DA941434();
  sub_1DA941444();
  v4 = *(v3 + 8);
  *(v0 + 136) = v4;
  *(v0 + 144) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 16) = xmmword_1DA962EE0;
  *(v0 + 32) = 0;
  sub_1DA9416F4();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = sub_1DA90A554(&qword_1ECBD4D30, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v5 = v0;
  v5[1] = sub_1DA908518;
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  return MEMORY[0x1EEE6DA68](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_1DA908518()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = v2[17];
  if (v0)
  {
    v4 = v2[16];
    v5 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3(v4, v5);
    v6 = sub_1DA9087B8;
  }

  else
  {
    v7 = v2[16];
    v8 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3(v7, v8);
    v6 = sub_1DA908694;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DA908694()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v11 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = *(v4 + 120);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v11;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_1DA90A59C;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_1DA84AA88(v8);
  os_unfair_lock_unlock(v5 + 4);

  if (!v1)
  {

    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

uint64_t sub_1DA9087B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DA908834(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1DA940E04() & 1) == 0)
  {
    v36 = a4;
    v14 = sub_1DA908CDC(a2, a3);
    if (v14)
    {
      v15 = v14;
      v34 = a2;
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v16 = sub_1DA9405A4();
      __swift_project_value_buffer(v16, qword_1ECBD7260);

      v17 = sub_1DA940584();
      v18 = sub_1DA940F14();

      v35 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v33 = v5;
        v20 = v19;
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136381187;
        *(v20 + 4) = sub_1DA7AE6E8(v36, a5, &v37);
        v22 = v17;
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_1DA7AE6E8(v34, a3, &v37);
        *(v20 + 22) = 2082;
        (*(v11 + 16))(v13, v15 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v10);
        sub_1DA90A554(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v23 = sub_1DA941614();
        v25 = v24;
        (*(v11 + 8))(v13, v10);
        v26 = sub_1DA7AE6E8(v23, v25, &v37);

        *(v20 + 24) = v26;
        _os_log_impl(&dword_1DA7A9000, v22, v35, "[%{private}s:%{public}s] timed out waiting for remote device since %{public}s; allowing local alert.", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v21, -1, -1);
        MEMORY[0x1E12739F0](v20, -1, -1);
      }

      else
      {
      }

      v32 = *(v15 + 16);

      v32(0);
    }

    else
    {
      if (qword_1ECBD47F8 != -1)
      {
        swift_once();
      }

      v27 = sub_1DA9405A4();
      __swift_project_value_buffer(v27, qword_1ECBD7260);

      v28 = sub_1DA940584();
      v29 = sub_1DA940F14();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136380931;
        *(v30 + 4) = sub_1DA7AE6E8(v36, a5, &v37);
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_1DA7AE6E8(a2, a3, &v37);
        _os_log_impl(&dword_1DA7A9000, v28, v29, "[%{private}s:%{public}s] timed out waiting for remote device but don't have a pending reply.", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v31, -1, -1);
        MEMORY[0x1E12739F0](v30, -1, -1);
      }
    }
  }
}

uint64_t sub_1DA908CDC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((*(v2 + 120) + 16));
  swift_beginAccess();
  v5 = *(v2 + 88);
  if (*(v5 + 16))
  {

    v6 = sub_1DA85A4B4(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  swift_beginAccess();

  sub_1DA8F097C(0, a1, a2);
  swift_endAccess();
  return v8;
}

uint64_t sub_1DA908DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    sub_1DA93FAE4();
    type metadata accessor for PendingAlertReply(0);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    (*(v12 + 32))(v16 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_pendingSince, v15, v11);
    *(v16 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask) = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 88);
    *(a1 + 88) = 0x8000000000000000;
    sub_1DA90B108(v16, v19, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 88) = v20;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AlertCoordinatorBulletinObserver.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return v0;
}

uint64_t AlertCoordinatorBulletinObserver.__deallocating_deinit()
{
  AlertCoordinatorBulletinObserver.deinit();

  return swift_deallocClassInstance();
}

void AlertCoordinatorBulletinObserver.response(_:fromID:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for AlertCoordinationMessage(0);
  v10 = sub_1DA909248(v7, v8, a1 + *(v9 + 24), a2, a3);
  if (v10)
  {
    sub_1DA909994(v10, a1);
  }

  else
  {
    v11 = *(v3 + 120);
    v12 = MEMORY[0x1EEE9AC00](0);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    sub_1DA84A760(v13);
    os_unfair_lock_unlock(v11 + 4);
  }
}

uint64_t sub_1DA90912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1DA857528(a4, &v12 - v8);
  v10 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_1DA8F13F4(v9, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1DA909248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v43 = a4;
  v44 = a2;
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = *(v6 + 120);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(v11 + 16);
  v42 = a3;
  v17(v15, a3, v10);
  (*(v11 + 56))(v15, 0, 1, v10);
  swift_beginAccess();

  sub_1DA8F09A8(v15, v43, a5);
  swift_endAccess();
  v18 = sub_1DA908CDC(a1, v44);
  if (!v18)
  {
    v38 = v17;
    v39 = 0;
    v20 = v41;
    v19 = v42;
    v37 = a1;
    v40 = v16;
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1ECBD7260);
    v22 = v20;
    v23 = v20;
    v24 = v10;
    v38(v23, v19, v10);

    v25 = v44;

    v26 = sub_1DA940584();
    v27 = sub_1DA940F14();

    v28 = v11;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v29 = 136446723;
      *(v29 + 4) = sub_1DA7AE6E8(v37, v25, v45);
      *(v29 + 12) = 2081;
      *(v29 + 14) = sub_1DA7AE6E8(v43, a5, v45);
      *(v29 + 22) = 2080;
      sub_1DA90A554(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v30 = sub_1DA941614();
      v32 = v31;
      (*(v28 + 8))(v22, v24);
      v33 = sub_1DA7AE6E8(v30, v32, v45);

      *(v29 + 24) = v33;
      _os_log_impl(&dword_1DA7A9000, v26, v27, "[%{public}s] no pending reply for response from %{private}s; sent %s", v29, 0x20u);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v34, -1, -1);
      MEMORY[0x1E12739F0](v29, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v22, v24);
    }

    v18 = v39;
    v16 = v40;
  }

  os_unfair_lock_unlock(v16 + 4);
  return v18;
}

uint64_t sub_1DA909658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - v10;
  swift_beginAccess();
  v12 = *(a1 + 96);
  if (*(v12 + 16))
  {

    v21 = a2;
    v13 = sub_1DA85A4B4(a2, a3);
    if (v14)
    {
      v15 = v13;
      v20[0] = *(v12 + 56);
      v16 = type metadata accessor for AlertCoordinationMessage(0);
      v17 = *(v16 - 8);
      v20[1] = v4;
      v18 = v17;
      sub_1DA857528(v20[0] + *(v17 + 72) * v15, a4);

      (*(v18 + 56))(a4, 0, 1, v16);
    }

    else
    {

      v16 = type metadata accessor for AlertCoordinationMessage(0);
      (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }

    a2 = v21;
  }

  else
  {
    v16 = type metadata accessor for AlertCoordinationMessage(0);
    (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }

  type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  swift_beginAccess();

  sub_1DA8F13F4(v11, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1DA9098F0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7260);
  __swift_project_value_buffer(v0, qword_1ECBD7260);
  return sub_1DA940594();
}

uint64_t sub_1DA909994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  if (*(a1 + OBJC_IVAR____TtC21UserNotificationsCore17PendingAlertReply_timeoutTask))
  {
    sub_1DA940DE4();
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  if ((v12 & 1) == 0)
  {
    if (qword_1ECBD47F8 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1ECBD7260);
    sub_1DA857528(a2, v9);

    v23 = sub_1DA940584();
    v24 = sub_1DA940F34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1DA7AE6E8(v10, v11, &v34);
      *(v25 + 12) = 2082;
      v27 = AlertCoordinationMessage.description.getter();
      v29 = v28;
      sub_1DA90A2FC(v9, type metadata accessor for AlertCoordinationMessage);
      v30 = sub_1DA7AE6E8(v27, v29, &v34);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] allowing local alert. (%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v26, -1, -1);
      MEMORY[0x1E12739F0](v25, -1, -1);

      return (*(a1 + 16))(v12);
    }

    v31 = v9;
LABEL_14:
    sub_1DA90A2FC(v31, type metadata accessor for AlertCoordinationMessage);
    return (*(a1 + 16))(v12);
  }

  if (qword_1ECBD47F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  __swift_project_value_buffer(v13, qword_1ECBD7260);
  sub_1DA857528(a2, v7);

  v14 = sub_1DA940584();
  v15 = sub_1DA940F34();

  if (!os_log_type_enabled(v14, v15))
  {

    v31 = v7;
    goto LABEL_14;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v34 = v17;
  *v16 = 136446466;
  *(v16 + 4) = sub_1DA7AE6E8(v10, v11, &v34);
  *(v16 + 12) = 2082;
  v18 = AlertCoordinationMessage.description.getter();
  v20 = v19;
  sub_1DA90A2FC(v7, type metadata accessor for AlertCoordinationMessage);
  v21 = sub_1DA7AE6E8(v18, v20, &v34);

  *(v16 + 14) = v21;
  _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] suppressing local alert; remote device alerted. (%{public}s", v16, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v17, -1, -1);
  MEMORY[0x1E12739F0](v16, -1, -1);

  return (*(a1 + 16))(v12);
}

uint64_t sub_1DA909DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for NotificationSourceMonitor(0);
  v12[4] = &off_1F5636AC8;
  v12[0] = a3;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v8 = MEMORY[0x1E69E7CC8];
  *(a4 + 88) = MEMORY[0x1E69E7CC8];
  *(a4 + 96) = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(a4 + 104) = v8;
  *(a4 + 112) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 120) = v10;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  sub_1DA7BABAC(v12, a4 + 48);
  swift_beginAccess();
  *(a1 + 48) = &protocol witness table for AlertCoordinatorBulletinObserver;
  swift_unknownObjectWeakAssign();

  sub_1DA906424();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a4;
}

uint64_t sub_1DA909EC4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DA7B7660;

  return sub_1DA90747C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for PendingAlertReply(uint64_t a1)
{
  result = qword_1ECBD7278;
  if (!qword_1ECBD7278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA90A02C(uint64_t a1)
{
  result = sub_1DA93FAF4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA90A0D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DA90A11C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA90A204()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_1DA90A248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA90685C(a1, v4, v5, v6);
}

uint64_t sub_1DA90A2FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA90A37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90A3EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DA7B7660;

  return sub_1DA90828C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DA90A4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA90A554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UserNotificationsCore::IntelligenceServiceUntoolOverride __swiftcall IntelligenceServiceUntoolOverride.init(individualSummary:isHighlight:)(UserNotificationsCore::IntelligenceServiceUntoolOverride individualSummary, Swift::Bool_optional isHighlight)
{
  *v2 = individualSummary.individualSummary;
  *(v2 + 16) = isHighlight;
  individualSummary.isHighlight = isHighlight;
  return individualSummary;
}

uint64_t IntelligenceServiceUntoolOverride.toDictionary()()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    v4 = *v0;
    v10 = MEMORY[0x1E69E6158];
    *&v9 = v4;
    *(&v9 + 1) = v1;
    sub_1DA848FE8(&v9, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v8, 49, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v2 != 2)
  {
    v10 = MEMORY[0x1E69E6370];
    LOBYTE(v9) = v2 & 1;
    sub_1DA848FE8(&v9, v8);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v8, 50, 0xE100000000000000, v6);
  }

  return v3;
}

uint64_t sub_1DA90A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v4 = sub_1DA85A4B4(49, 0xE100000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }

LABEL_16:

    v12 = 2;
    goto LABEL_17;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v4, v15);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v9 = sub_1DA85A4B4(50, 0xE100000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1DA7AD270(*(a1 + 56) + 32 * v9, v15);

  result = swift_dynamicCast();
  v12 = v13;
  if (!result)
  {
    v12 = 2;
  }

LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  return result;
}

double sub_1DA90A7F8@<D0>(uint64_t a1@<X8>)
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_11;
  }

  v2 = sub_1DA93FF84();
  v3 = [v2 request];

  v4 = [v3 content];
  v5 = [v4 userInfo];

  v6 = sub_1DA940974();
  sub_1DA9412F4();
  if (!*(v6 + 16) || (v7 = sub_1DA85A788(&v19), (v8 & 1) == 0))
  {

    sub_1DA862DE8(&v19);
    goto LABEL_11;
  }

  sub_1DA7AD270(*(v6 + 56) + 32 * v7, v21);
  sub_1DA862DE8(&v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7288, &qword_1DA963108);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *a1 = xmmword_1DA95F150;
    *(a1 + 16) = 0;
    return result;
  }

  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1EE11AD90);

  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v19 = v13;
    *v12 = 136315138;
    v14 = sub_1DA940984();
    v16 = sub_1DA7AE6E8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "Found IntelligenceServiceUntoolOverride value %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  sub_1DA90A6CC(0xD000000000000021, &v19);
  v17 = v20;
  result = *&v19;
  *a1 = v19;
  *(a1 + 16) = v17;
  return result;
}

void sub_1DA90AAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85B844(v16, a4 & 1);
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA860068();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    sub_1DA830524(v23);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1DA90AD8C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = sub_1DA93FB24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1DA85A5DC(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v36();
      goto LABEL_9;
    }

    v37();
    v24 = sub_1DA85A5DC(a2);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = a1;
  v27 = v39;
  v28 = *v8;
  if (v22)
  {
    v29 = v28[7];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    v31 = *(v30 - 8);
    v32 = *(v31 + 40);
    v33 = v30;
    v34 = v29 + *(v31 + 72) * v18;

    return v32(v34, v26, v33);
  }

  else
  {
    (*(v13 + 16))(v15, a2, v12);
    return sub_1DA90CAA4(v18, v15, v26, v28, v38, v27);
  }
}

_OWORD *sub_1DA90AFBC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DA85A788(a2);
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
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DA8605BC();
      goto LABEL_7;
    }

    sub_1DA85C028(v13, a3 & 1);
    v19 = sub_1DA85A788(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DA862D8C(a2, v21);
      return sub_1DA90CBAC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1DA848FE8(a1, v17);
}

void sub_1DA90B188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1DA85A4B4(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = sub_1DA85A4B4(a2, a3);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1DA9416E4();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    v28(v30, a1, v29);
    return;
  }

LABEL_13:
  sub_1DA90CE40(v18, a2, a3, a1, v24, a8);
}

void sub_1DA90B340(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DA7BFAD4(a2);
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
      sub_1DA86079C();
      goto LABEL_7;
    }

    sub_1DA85C31C(v13, a3 & 1);
    v23 = sub_1DA7BFAD4(a2);
    if ((v14 & 1) == (v24 & 1))
    {
      v10 = v23;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA9416E4();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1DA93FBD4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    v20(v22, a1, v21);
    return;
  }

LABEL_13:
  sub_1DA90CC28(v10, a2, a1, v16);
}

void sub_1DA90B540(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A5A0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85C9FC(v16, a4 & 1);
      v11 = sub_1DA85A5A0(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA860D68();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1DA90B6A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA860ECC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DA85CC70(v16, a4 & 1);
    v11 = sub_1DA85A4B4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1DA9416E4();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1DA848FE8(a1, v22);
  }

  else
  {
    sub_1DA90CCD4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1DA90B7F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DA90B84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1DA90B8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1DA90BA70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DA85A5A0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DA85D1D8(v14, a3 & 1);
      v9 = sub_1DA85A5A0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1DA8611E0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1DA90BC14(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85D470(v16, a4 & 1);
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA861364();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_1DA863074(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_1DA90BDD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

id sub_1DA90BF68(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DA85A7CC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DA85D9F4(v13, a3 & 1);
      v8 = sub_1DA85A7CC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for NotificationServiceConnection();
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1DA86168C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_1DA90C0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85DC64(v16, a4 & 1);
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA8617F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1DA90C27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1DA90C414(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DA93FB24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DA85A5DC(a2);
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
      sub_1DA86226C();
      goto LABEL_7;
    }

    sub_1DA85ED44(v17, a3 & 1);
    v21 = sub_1DA85A5DC(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1DA90CD88(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1DA9416E4();
    __break(1u);
    return;
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

void sub_1DA90C5E0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85F120(v16, a4 & 1);
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA8624EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_1DA90D054(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_1DA90C7C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DA85A4B4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DA862950();
      goto LABEL_7;
    }

    sub_1DA85F79C(v15, a4 & 1);
    v21 = sub_1DA85A4B4(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1DA9416E4();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AlertCoordinationMessage(0) - 8) + 72) * v12;

    sub_1DA90CF8C(a1, v20);
    return;
  }

LABEL_13:
  sub_1DA90CEF4(v12, a2, a3, a1, v18);
}

void sub_1DA90C928(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DA85F7D8(v16, a4 & 1);
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA86298C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1DA90CAA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1DA93FB24();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_1DA90CBAC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DA848FE8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DA90CC28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1DA93FBD4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1DA90CCD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DA848FE8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1DA90CD40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA90CD88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DA93FB24();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1DA90CE40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1DA90CEF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AlertCoordinationMessage(0);
  result = sub_1DA90CFF0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DA90CF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90CFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90D0B4()
{
  v24[3] = *MEMORY[0x1E69E9840];
  v1 = sub_1DA93F8E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA93F964();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 0;
  v9 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:v24];
  v10 = v24[0];
  if (!v9)
  {
    v14 = v24[0];
    v15 = sub_1DA93F8C4();

    swift_willThrow();
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE114E48);
    v17 = v15;
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Failed to get library directory; %{public}@. Exiting.", v20, 0xCu);
      sub_1DA828378(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    exit(0);
  }

  v11 = v9;
  sub_1DA93F914();
  v12 = v10;

  v24[0] = 0xD000000000000011;
  v24[1] = 0x80000001DA956470;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1DA8282D0();
  sub_1DA93F954();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DA90D470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DA9407A4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v15 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72A0, qword_1DA9632A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA90F66C(&unk_1EE113F58, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963368);
  sub_1DA940794();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1DA90F6B4(v7, v11);
  v12 = sub_1DA90D8D8(v11);
  v13 = MEMORY[0x1E69E6378];
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = v13;
  *a1 = v12 & 1;
  return sub_1DA90F534(v11, type metadata accessor for UserNotificationsVendorClientTransaction);
}

uint64_t sub_1DA90D8D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FB24();
  v101 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v93 - v7;
  v103 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v103);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v100 = &v93 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v93 - v19;
  if (qword_1EE110DA0 != -1)
  {
    swift_once();
  }

  v97 = sub_1DA9405A4();
  v21 = __swift_project_value_buffer(v97, qword_1EE110DB0);
  sub_1DA90F594(a1, v20, type metadata accessor for UserNotificationsVendorClientTransaction);
  v102 = v21;
  v22 = sub_1DA940584();
  v23 = sub_1DA940EF4();
  v24 = os_log_type_enabled(v22, v23);
  v96 = v13;
  v95 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v93 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v94 = a1;
    v28 = v27;
    *&v110 = v27;
    *v26 = 136315138;
    sub_1DA90F594(v20, v18, type metadata accessor for UserNotificationsVendorClientTransaction);
    v29 = sub_1DA940A74();
    v30 = v10;
    v31 = v2;
    v33 = v32;
    sub_1DA90F534(v20, type metadata accessor for UserNotificationsVendorClientTransaction);
    v34 = sub_1DA7AE6E8(v29, v33, &v110);
    v2 = v31;
    v10 = v30;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_1DA7A9000, v22, v23, "transaction %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v35 = v28;
    a1 = v94;
    MEMORY[0x1E12739F0](v35, -1, -1);
    v36 = v26;
    v4 = v93;
    MEMORY[0x1E12739F0](v36, -1, -1);
  }

  else
  {

    sub_1DA90F534(v20, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  sub_1DA90F594(a1, v9, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v9;
      v40 = *(v9 + 1);
      v42 = *(v9 + 2);

      v43 = sub_1DA940584();
      v44 = sub_1DA940F34();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v110 = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_1DA7AE6E8(v41, v40, &v110);
        *(v45 + 12) = 2080;
        v47 = MEMORY[0x1E1271CD0](v42, MEMORY[0x1E69E6158]);
        v49 = sub_1DA7AE6E8(v47, v48, &v110);

        *(v45 + 14) = v49;
        _os_log_impl(&dword_1DA7A9000, v43, v44, "transaction bundleIdentifier: %s recordIdentifiers: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v46, -1, -1);
        MEMORY[0x1E12739F0](v45, -1, -1);
      }

      v50 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository);
      sub_1DA8AD06C(v42);

      v51 = sub_1DA940E84();

      v52 = sub_1DA940A04();

      [v50 removeNotificationRecordsForIdentifiers:v51 bundleIdentifier:v52];
    }

    else
    {
      v67 = v101;
      v68 = v98;
      (*(v101 + 16))(v98, a1 + *(v10 + 24), v4);
      (*(v67 + 56))(v68, 0, 1, v4);
      v69 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
      swift_beginAccess();
      sub_1DA90F5FC(v68, v2 + v69);
      swift_endAccess();
      v70 = a1;
      v71 = v100;
      sub_1DA90F594(v70, v100, type metadata accessor for UserNotificationsVendorClientTransaction);

      v72 = sub_1DA940584();
      v73 = sub_1DA940F34();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v110 = v75;
        *v74 = 136315394;
        sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v76 = sub_1DA941614();
        v78 = v77;
        sub_1DA90F534(v71, type metadata accessor for UserNotificationsVendorClientTransaction);
        v79 = sub_1DA7AE6E8(v76, v78, &v110);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2080;
        v80 = sub_1DA941614();
        v82 = sub_1DA7AE6E8(v80, v81, &v110);

        *(v74 + 14) = v82;
        _os_log_impl(&dword_1DA7A9000, v72, v73, "VendorSession hello: %s maps to: %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v75, -1, -1);
        MEMORY[0x1E12739F0](v74, -1, -1);
      }

      else
      {

        sub_1DA90F534(v71, type metadata accessor for UserNotificationsVendorClientTransaction);
      }
    }

    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v38 = v101;
    v39 = v99;
    (*(v101 + 32))(v99, v9, v4);
    sub_1DA90E4E8(v39);
    (*(v38 + 8))(v39, v4);
    return 1;
  }

  v53 = *(v9 + 1);
  v110 = *v9;
  v111 = v53;
  v54 = *(v9 + 3);
  v112 = *(v9 + 2);
  v113 = v54;
  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v97, qword_1ECBE3DA0);
  sub_1DA848A24(&v110, &v106);
  v55 = sub_1DA940584();
  v56 = sub_1DA940F34();
  sub_1DA84A040(&v110);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v105 = v58;
    *v57 = 136315138;
    v106 = v110;
    v107 = v111;
    v108 = v112;
    v109 = v113;
    sub_1DA848A24(&v110, v104);
    v59 = sub_1DA940A74();
    v61 = sub_1DA7AE6E8(v59, v60, &v105);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_1DA7A9000, v55, v56, "VendorSession perform(action:): %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1E12739F0](v58, -1, -1);
    MEMORY[0x1E12739F0](v57, -1, -1);
  }

  v62 = v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v64 = *(v62 + 8);
    v65 = Strong;
    ObjectType = swift_getObjectType();
    v104[0] = v65;
    v106 = v110;
    v107 = v111;
    v108 = v112;
    v109 = v113;
    (*(v64 + 8))(&v106, ObjectType, v64);
    sub_1DA84A040(&v110);
    swift_unknownObjectRelease();
    return 1;
  }

  sub_1DA84A040(&v110);
  v84 = v96;
  sub_1DA90F594(a1, v96, type metadata accessor for UserNotificationsVendorClientTransaction);
  v85 = sub_1DA940584();
  v86 = sub_1DA940F14();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v106 = v88;
    *v87 = 136315138;
    sub_1DA90F594(v84, v95, type metadata accessor for UserNotificationsVendorClientTransaction);
    v89 = sub_1DA940A74();
    v91 = v90;
    sub_1DA90F534(v84, type metadata accessor for UserNotificationsVendorClientTransaction);
    v92 = sub_1DA7AE6E8(v89, v91, &v106);

    *(v87 + 4) = v92;
    _os_log_impl(&dword_1DA7A9000, v85, v86, "No action responder for transaction %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1E12739F0](v88, -1, -1);
    MEMORY[0x1E12739F0](v87, -1, -1);
  }

  else
  {

    sub_1DA90F534(v84, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  return 0;
}

void sub_1DA90E4E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v40 - v5;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(v7 + 16);
  v44 = a1;
  v42 = v12;
  v12(&v40 - v10, a1, v6);
  v13 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository);
  v14 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_categoryRepositoryAggregator);
  v15 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_settingsProvider;
  v16 = type metadata accessor for VendorSession(0);
  v48[3] = v16;
  v48[4] = &off_1F5639028;
  v48[0] = v2;
  v40 = type metadata accessor for HistoricalNotificationsRequestProcessor(0);
  v17 = swift_allocObject();
  v46 = *(v2 + v15);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v48, v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = (v17 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint);
  v23[3] = v16;
  v23[4] = &off_1F5639028;
  *v23 = v22;
  v45 = v7;
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID, v11, v6);
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_repository) = v13;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_categoryRepositoryAggregator) = v14;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider) = v46;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_1(v48);
  *(v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = v17;

  v24 = sub_1DA940D34();
  v25 = v41;
  (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v17;

  sub_1DA8DB00C(0, 0, v25, &unk_1DA963290, v26);

  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1ECBE3DA0);
  v28 = v43;
  v42(v43, v44, v6);

  v29 = sub_1DA940584();
  v30 = sub_1DA940F34();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v31 = 136315394;
    sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = sub_1DA941614();
    v35 = v34;
    (*(v45 + 8))(v28, v6);
    v36 = sub_1DA7AE6E8(v33, v35, v48);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v47 = v17;

    v37 = sub_1DA940A74();
    v39 = sub_1DA7AE6E8(v37, v38, v48);

    *(v31 + 14) = v39;
    _os_log_impl(&dword_1DA7A9000, v29, v30, "beginHistoricalNotificationsRequest: continuationUUID: %s %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v32, -1, -1);
    MEMORY[0x1E12739F0](v31, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v28, v6);
  }
}

uint64_t sub_1DA90EAB8()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key;
  v2 = sub_1DA93FB24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID, &unk_1ECBD6F98, &unk_1DA963280);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1DA7C5714(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate);
  sub_1DA7C5714(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder);
  return v0;
}

uint64_t sub_1DA90EBA8()
{
  sub_1DA90EAB8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VendorSession(uint64_t a1)
{
  result = qword_1EE1137F8;
  if (!qword_1EE1137F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA90EC54(uint64_t a1)
{
  sub_1DA93FB24();
  if (v1 <= 0x3F)
  {
    sub_1DA90ED5C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA90ED5C(uint64_t a1)
{
  if (!qword_1EE114C48)
  {
    sub_1DA93FB24();
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE114C48);
    }
  }
}

uint64_t sub_1DA90EDD8()
{
  v1 = *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA8F400C(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA90EE38(uint64_t a1)
{
  v3 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = *(a1 + *(MEMORY[0x1EEE9AC00](v4) + 28));
  if (v5 >> 62)
  {
    if (sub_1DA941264())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = 0;
  }

LABEL_4:
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session), *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session + 24));
  sub_1DA90F66C(qword_1EE1141E0, type metadata accessor for UserNotificationsVendorTransaction, &protocol conformance descriptor for UserNotificationsVendorTransaction);
  return sub_1DA940624();
}

unint64_t sub_1DA90F23C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v9 - v3;
  v9[1] = 0;
  v9[2] = 0xE000000000000000;
  sub_1DA941364();

  v10 = 0xD000000000000010;
  v11 = 0x80000001DA955D20;
  sub_1DA93FB24();
  sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v5);

  MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
  v6 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
  swift_beginAccess();
  sub_1DA8F7018(v1 + v6, v4);
  v7 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v7);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_1DA90F40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA819C68(a1, v4, v5, v6);
}

uint64_t sub_1DA90F4C0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110DB0);
  __swift_project_value_buffer(v0, qword_1EE110DB0);
  return sub_1DA940594();
}

uint64_t sub_1DA90F534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA90F594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA90F5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90F66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA90F6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90F780(uint64_t a1)
{
  result = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DA93FB24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DA90F804(uint64_t a1)
{
  sub_1DA90F88C();
  if (v1 <= 0x3F)
  {
    sub_1DA90F8D4();
    if (v2 <= 0x3F)
    {
      sub_1DA90F904(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DA90F88C()
{
  if (!qword_1EE115A48)
  {
    v0 = sub_1DA93FB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE115A48);
    }
  }
}

ValueMetadata *sub_1DA90F8D4()
{
  result = qword_1EE115278[0];
  if (!qword_1EE115278[0])
  {
    result = &type metadata for NotificationActionSelector;
    atomic_store(&type metadata for NotificationActionSelector, qword_1EE115278);
  }

  return result;
}

void sub_1DA90F904(uint64_t a1)
{
  if (!qword_1EE114DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE114DF8);
    }
  }
}

uint64_t sub_1DA90F97C(void *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72F8, &qword_1DA9633F8);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v34 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7300, &qword_1DA963400);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v34 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7308, &qword_1DA963408);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v4;
  v38 = sub_1DA93FB24();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7310, &qword_1DA963410);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7318, &qword_1DA963418);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911F38();
  sub_1DA941834();
  sub_1DA9120DC(v47, v12, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *(v12 + 2);
      LOBYTE(v54) = 3;
      sub_1DA911F8C();
      v24 = v44;
      v25 = v49;
      sub_1DA9415A4();
      LOBYTE(v54) = 0;
      v26 = v46;
      v27 = v58;
      sub_1DA9415D4();

      if (v27)
      {

        (*(v45 + 8))(v24, v26);
        return (*(v48 + 8))(v15, v25);
      }

      else
      {
        *&v54 = v23;
        LOBYTE(v50) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        sub_1DA8EF6F4(&qword_1ECBD6DA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
        sub_1DA941604();
        (*(v45 + 8))(v24, v26);
        (*(v48 + 8))(v15, v25);
      }
    }

    else
    {
      LOBYTE(v54) = 0;
      sub_1DA912088();
      v33 = v49;
      sub_1DA9415A4();
      (*(v35 + 8))(v9, v7);
      return (*(v48 + 8))(v15, v33);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v28 = *(v12 + 1);
    v54 = *v12;
    v55 = v28;
    v29 = *(v12 + 3);
    v56 = *(v12 + 2);
    v57 = v29;
    LOBYTE(v50) = 2;
    sub_1DA911FE0();
    v30 = v41;
    v31 = v49;
    sub_1DA9415A4();
    v50 = v54;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    sub_1DA864940();
    v32 = v43;
    sub_1DA941604();
    (*(v42 + 8))(v30, v32);
    (*(v48 + 8))(v15, v31);
    return sub_1DA84A040(&v54);
  }

  else
  {
    v17 = v37;
    v18 = v38;
    (*(v37 + 32))(v6, v12, v38);
    LOBYTE(v54) = 1;
    sub_1DA912034();
    v19 = v36;
    v20 = v49;
    sub_1DA9415A4();
    sub_1DA911E2C(&qword_1EE114C70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v21 = v40;
    sub_1DA941604();
    (*(v39 + 8))(v19, v21);
    (*(v17 + 8))(v6, v18);
    return (*(v48 + 8))(v15, v20);
  }
}

uint64_t sub_1DA9101B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72B8, &qword_1DA9633C8);
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v72 = &v55 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72C0, &qword_1DA9633D0);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v71 = &v55 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72C8, &qword_1DA9633D8);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v70 = &v55 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72D0, &qword_1DA9633E0);
  v68 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v55 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72D8, &unk_1DA9633E8);
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v55 - v7;
  v9 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v21 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DA911F38();
  v22 = v74;
  sub_1DA941804();
  if (!v22)
  {
    v23 = v67;
    v57 = v18;
    v56 = v15;
    v24 = v68;
    v55 = v12;
    v25 = v70;
    v26 = v71;
    v27 = v72;
    v58 = v20;
    v74 = v9;
    v28 = v69;
    v29 = sub_1DA941594();
    v30 = (2 * *(v29 + 16)) | 1;
    v80 = v29;
    v81 = v29 + 32;
    v82 = 0;
    v83 = v30;
    v31 = sub_1DA8675E8();
    if (v31 != 4 && v82 == v83 >> 1)
    {
      if (v31 > 1u)
      {
        if (v31 == 2)
        {
          LOBYTE(v76) = 2;
          sub_1DA911FE0();
          sub_1DA941504();
          v36 = v73;
          sub_1DA865250();
          v42 = v63;
          sub_1DA941584();
          (*(v64 + 8))(v26, v42);
          (*(v36 + 8))(v8, v28);
          swift_unknownObjectRelease();
          v51 = v77;
          v52 = v56;
          *v56 = v76;
          *(v52 + 1) = v51;
          v53 = v79;
          *(v52 + 2) = v78;
          *(v52 + 3) = v53;
        }

        else
        {
          LOBYTE(v76) = 3;
          sub_1DA911F8C();
          v38 = v27;
          sub_1DA941504();
          v39 = v73;
          LOBYTE(v76) = 0;
          v47 = v60;
          v48 = sub_1DA941554();
          v50 = v49;
          v71 = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
          v84 = 1;
          sub_1DA8EF6F4(&qword_1EE110CC0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          sub_1DA941584();
          (*(v65 + 8))(v38, v47);
          (*(v39 + 8))(v8, v28);
          swift_unknownObjectRelease();
          v54 = v76;
          v52 = v55;
          *v55 = v71;
          v52[1] = v50;
          v52[2] = v54;
        }

        swift_storeEnumTagMultiPayload();
        v46 = v52;
      }

      else
      {
        if (!v31)
        {
          LOBYTE(v76) = 0;
          sub_1DA912088();
          sub_1DA941504();
          (*(v24 + 8))(v23, v59);
          (*(v73 + 8))(v8, v28);
          swift_unknownObjectRelease();
          v40 = v58;
          swift_storeEnumTagMultiPayload();
          v41 = v66;
LABEL_15:
          sub_1DA911E74(v40, v41);
          return __swift_destroy_boxed_opaque_existential_1(v75);
        }

        LOBYTE(v76) = 1;
        sub_1DA912034();
        v37 = v25;
        sub_1DA941504();
        sub_1DA93FB24();
        v43 = v28;
        sub_1DA911E2C(&unk_1EE114C58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v44 = v57;
        v45 = v61;
        sub_1DA941584();
        (*(v62 + 8))(v37, v45);
        (*(v73 + 8))(v8, v43);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v46 = v44;
      }

      v40 = v58;
      sub_1DA911E74(v46, v58);
      v41 = v66;
      goto LABEL_15;
    }

    v32 = sub_1DA9413B4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
    *v34 = v74;
    sub_1DA941514();
    sub_1DA9413A4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v73 + 8))(v8, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_1DA910C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA910CDC(uint64_t a1)
{
  v2 = sub_1DA911FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910D18(uint64_t a1)
{
  v2 = sub_1DA911FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA910D54()
{
  v1 = 0x6F6C6C6568;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x65766F6D6572;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA910DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA91277C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA910DF0(uint64_t a1)
{
  v2 = sub_1DA911F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910E2C(uint64_t a1)
{
  v2 = sub_1DA911F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA910E68(uint64_t a1)
{
  v2 = sub_1DA912088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910EA4(uint64_t a1)
{
  v2 = sub_1DA912088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA910EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA9507C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA910F90(uint64_t a1)
{
  v2 = sub_1DA912034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910FCC(uint64_t a1)
{
  v2 = sub_1DA912034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA911008()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DA911040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DA956550 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DA941684();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DA911124(uint64_t a1)
{
  v2 = sub_1DA911F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA911160(uint64_t a1)
{
  v2 = sub_1DA911F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA9111CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF444955556E6F69;
  v4 = 0x5555746E65696C63;
  if (v2 == 1)
  {
    v4 = 0x746361736E617274;
  }

  else
  {
    v3 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746361736E617274;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF657079546E6F69;
  }

  v7 = 0xEF444955556E6F69;
  v8 = 0x5555746E65696C63;
  if (*a2 == 1)
  {
    v8 = 0x746361736E617274;
  }

  else
  {
    v7 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746361736E617274;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF657079546E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA9112D8()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA911388(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA911424(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

unint64_t sub_1DA9114D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA9128DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA911500(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0xEF444955556E6F69;
  v5 = 0x746361736E617274;
  if (v2 != 1)
  {
    v5 = 0x5555746E65696C63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746361736E617274;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DA91157C()
{
  v1 = 0x5555746E65696C63;
  if (*v0 == 1)
  {
    v1 = 0x746361736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

unint64_t sub_1DA9115E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA9128DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA91160C(uint64_t a1)
{
  v2 = sub_1DA911DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA911648(uint64_t a1)
{
  v2 = sub_1DA911DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA911684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1DA93FB24();
  v25 = *(v27 - 8);
  v3 = MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72B0, &qword_1DA9633C0);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v22 - v9;
  v11 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911DD8();
  v30 = v10;
  v14 = v31;
  sub_1DA941804();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v31 = v13;
  v15 = a1;
  v16 = v26;
  v17 = v27;
  v34 = 0;
  sub_1DA911E2C(&qword_1EE113F70, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType, &unk_1DA963340);
  v18 = v28;
  sub_1DA941584();
  sub_1DA911E74(v18, v31);
  v33 = 2;
  sub_1DA911E2C(&unk_1EE114C58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1DA941584();
  v19 = &v31[*(v22 + 24)];
  v28 = *(v25 + 32);
  v28(v19, v6, v17);
  v32 = 1;
  sub_1DA941584();
  v20 = v31;
  (*(v16 + 8))(v30, v29);
  v28((v20 + *(v22 + 20)), v24, v17);
  sub_1DA9120DC(v20, v23, type metadata accessor for UserNotificationsVendorClientTransaction);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_1DA911ED8(v20, type metadata accessor for UserNotificationsVendorClientTransaction);
}

uint64_t sub_1DA911B68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72A8, &qword_1DA9633B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911DD8();
  sub_1DA941834();
  v11 = 0;
  type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  sub_1DA911E2C(qword_1EE113F78, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType, &unk_1DA963318);
  sub_1DA941604();
  if (!v1)
  {
    type metadata accessor for UserNotificationsVendorClientTransaction(0);
    v10 = 2;
    sub_1DA93FB24();
    sub_1DA911E2C(&qword_1EE114C70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1DA941604();
    v9 = 1;
    sub_1DA941604();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DA911DD8()
{
  result = qword_1EE115700[0];
  if (!qword_1EE115700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115700);
  }

  return result;
}

uint64_t sub_1DA911E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA911E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA911ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DA911F38()
{
  result = qword_1EE1157F8;
  if (!qword_1EE1157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157F8);
  }

  return result;
}

unint64_t sub_1DA911F8C()
{
  result = qword_1ECBD72E0;
  if (!qword_1ECBD72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72E0);
  }

  return result;
}

unint64_t sub_1DA911FE0()
{
  result = qword_1ECBD72E8;
  if (!qword_1ECBD72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72E8);
  }

  return result;
}

unint64_t sub_1DA912034()
{
  result = qword_1ECBD72F0;
  if (!qword_1ECBD72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72F0);
  }

  return result;
}

unint64_t sub_1DA912088()
{
  result = qword_1EE1157E0;
  if (!qword_1EE1157E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157E0);
  }

  return result;
}

uint64_t sub_1DA9120DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA9121A8()
{
  result = qword_1ECBD7320;
  if (!qword_1ECBD7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7320);
  }

  return result;
}

unint64_t sub_1DA912200()
{
  result = qword_1ECBD7328;
  if (!qword_1ECBD7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7328);
  }

  return result;
}

unint64_t sub_1DA912258()
{
  result = qword_1ECBD7330;
  if (!qword_1ECBD7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7330);
  }

  return result;
}

unint64_t sub_1DA9122B0()
{
  result = qword_1ECBD7338;
  if (!qword_1ECBD7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7338);
  }

  return result;
}

unint64_t sub_1DA912308()
{
  result = qword_1ECBD7340;
  if (!qword_1ECBD7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7340);
  }

  return result;
}

unint64_t sub_1DA912360()
{
  result = qword_1EE1157D0;
  if (!qword_1EE1157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157D0);
  }

  return result;
}

unint64_t sub_1DA9123B8()
{
  result = qword_1EE1157D8;
  if (!qword_1EE1157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157D8);
  }

  return result;
}

unint64_t sub_1DA912410()
{
  result = qword_1EE115800;
  if (!qword_1EE115800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115800);
  }

  return result;
}

unint64_t sub_1DA912468()
{
  result = qword_1EE115808;
  if (!qword_1EE115808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115808);
  }

  return result;
}

unint64_t sub_1DA9124C0()
{
  result = qword_1EE1157C0;
  if (!qword_1EE1157C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157C0);
  }

  return result;
}

unint64_t sub_1DA912518()
{
  result = qword_1EE1157C8;
  if (!qword_1EE1157C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157C8);
  }

  return result;
}

unint64_t sub_1DA912570()
{
  result = qword_1EE1157B0;
  if (!qword_1EE1157B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157B0);
  }

  return result;
}

unint64_t sub_1DA9125C8()
{
  result = qword_1EE1157B8;
  if (!qword_1EE1157B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157B8);
  }

  return result;
}

unint64_t sub_1DA912620()
{
  result = qword_1EE1157E8;
  if (!qword_1EE1157E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157E8);
  }

  return result;
}

unint64_t sub_1DA912678()
{
  result = qword_1EE1157F0;
  if (!qword_1EE1157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157F0);
  }

  return result;
}

unint64_t sub_1DA9126D0()
{
  result = qword_1EE1156F0;
  if (!qword_1EE1156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1156F0);
  }

  return result;
}

unint64_t sub_1DA912728()
{
  result = qword_1EE1156F8;
  if (!qword_1EE1156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1156F8);
  }

  return result;
}

uint64_t sub_1DA91277C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DA956530 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

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

unint64_t sub_1DA9128DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1DA9129D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v51 = a3;
  v9 = type metadata accessor for UserNotificationsCloudRecord(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v48 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  sub_1DA93F7A4();
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA917214(&unk_1ECBD73E0, type metadata accessor for UserNotificationsCloudRecord, &protocol conformance descriptor for UserNotificationsCloudRecord);
  sub_1DA93F784();
  if (v5)
  {

    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBE3D78);
    sub_1DA841874(a1, a2);
    sub_1DA841874(a1, a2);
    v19 = v5;
    v15 = sub_1DA940584();
    v12 = sub_1DA940F14();

    if (!os_log_type_enabled(v15, v12))
    {
      sub_1DA828324(a1, a2);
      sub_1DA828324(a1, a2);
LABEL_34:

      swift_willThrow();
      return;
    }

    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v9 = 136446978;
    if (v52)
    {
      v21 = 7104846;
      v22 = 0xE300000000000000;
    }

    else
    {
      v53 = v51;
      sub_1DA841820();
      v21 = sub_1DA941144();
      v22 = v29;
    }

    v30 = sub_1DA7AE6E8(v21, v22, &v54);

    *(v9 + 4) = v30;
    *(v9 + 12) = 2050;
    v31 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v31)
      {
        sub_1DA828324(a1, a2);
        v32 = BYTE6(a2);
LABEL_33:
        *(v9 + 14) = v32;
        sub_1DA828324(a1, a2);
        *(v9 + 22) = 2080;
        *(v9 + 24) = sub_1DA7AE6E8(0xD00000000000001CLL, 0x80000001DA956640, &v54);
        *(v9 + 32) = 2112;
        v39 = v5;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 34) = v40;
        *v20 = v40;
        _os_log_impl(&dword_1DA7A9000, v15, v12, "[v%{public}s] Encountered error decoding payload of size %{public}ldB to type %s; %@", v9, 0x2Au);
        sub_1DA7BA120(v20, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v20, -1, -1);
        v41 = v50;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v41, -1, -1);
        MEMORY[0x1E12739F0](v9, -1, -1);
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v31 != 2)
    {
      sub_1DA828324(a1, a2);
      v32 = 0;
      goto LABEL_33;
    }

    v26 = *(a1 + 16);
    v33 = *(a1 + 24);
    sub_1DA828324(a1, a2);
    v32 = v33 - v26;
    if (!__OFSUB__(v33, v26))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else
  {

    sub_1DA916BA4(v17, a5, type metadata accessor for UserNotificationsCloudRecord);
    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1ECBE3D78);
    sub_1DA916AF0(a5, v15, type metadata accessor for UserNotificationsCloudRecord);
    sub_1DA841874(a1, a2);
    sub_1DA841874(a1, a2);
    v24 = sub_1DA940584();
    v25 = sub_1DA940F34();
    if (!os_log_type_enabled(v24, v25))
    {
      sub_1DA828324(a1, a2);
      sub_1DA828324(a1, a2);

      sub_1DA85758C(v15, type metadata accessor for UserNotificationsCloudRecord);
      return;
    }

    v49 = v25;
    v50 = v24;
    v26 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v26 = 136446978;
    if (v52)
    {
      v27 = 7104846;
      v28 = 0xE300000000000000;
      goto LABEL_23;
    }
  }

  v53 = v51;
  sub_1DA841820();
  v27 = sub_1DA941144();
  v28 = v34;
LABEL_23:
  v35 = sub_1DA7AE6E8(v27, v28, &v54);

  *(v26 + 4) = v35;
  *(v26 + 12) = 2050;
  v36 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v20 = *(a1 + 16);
      v38 = *(a1 + 24);
      sub_1DA828324(a1, a2);
      v37 = v38 - v20;
      if (__OFSUB__(v38, v20))
      {
        __break(1u);
LABEL_30:
        sub_1DA828324(a1, a2);
        LODWORD(v32) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v32 = v32;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      sub_1DA828324(a1, a2);
      v37 = 0;
    }

LABEL_38:
    *(v26 + 14) = v37;
    sub_1DA828324(a1, a2);
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_1DA7AE6E8(0xD00000000000001CLL, 0x80000001DA956640, &v54);
    *(v26 + 32) = 2082;
    sub_1DA916AF0(v15, v12, type metadata accessor for UserNotificationsCloudRecord);
    sub_1DA85758C(v12, type metadata accessor for UserNotificationsCloudRecord);
    v42 = sub_1DA941884();
    v44 = v43;
    sub_1DA85758C(v15, type metadata accessor for UserNotificationsCloudRecord);
    v45 = sub_1DA7AE6E8(v42, v44, &v54);

    *(v26 + 34) = v45;
    v46 = v50;
    _os_log_impl(&dword_1DA7A9000, v50, v49, "[v%{public}s] Decoded payload of size %{public}ldB to type %s (actual: %{public}s).", v26, 0x2Au);
    v47 = v48;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v47, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    return;
  }

  if (!v36)
  {
    sub_1DA828324(a1, a2);
    v37 = BYTE6(a2);
    goto LABEL_38;
  }

  sub_1DA828324(a1, a2);
  LODWORD(v37) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v37 = v37;
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
}

id sub_1DA913174()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA91325C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties(0);
  if (v9())
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE11AD30);
    v11 = a6;
    v12 = a1;
    v13 = a2;

    oslog = sub_1DA940584();
    v14 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v15 = 136316162;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
      v17 = sub_1DA940A74();
      v19 = sub_1DA7AE6E8(v17, v18, &v59);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
      v21 = sub_1DA940A74();
      v23 = sub_1DA7AE6E8(v21, v22, &v59);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
      v24 = sub_1DA940A74();
      v26 = sub_1DA7AE6E8(v24, v25, &v59);

      *(v15 + 24) = v26;
      *(v15 + 32) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v27 = sub_1DA940A74();
      v29 = sub_1DA7AE6E8(v27, v28, &v59);

      *(v15 + 34) = v29;
      *(v15 + 42) = 2080;
      v30 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
      v31 = sub_1DA940A74();
      v33 = sub_1DA7AE6E8(v31, v32, &v59);

      *(v15 + 44) = v33;
      v34 = "UserNotificationsIDSCloudReceiver service: %s account: %s message: %s fromID: %s context: %s";
LABEL_10:
      _os_log_impl(&dword_1DA7A9000, oslog, v14, v34, v15, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v57, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v35 = sub_1DA9405A4();
    __swift_project_value_buffer(v35, qword_1EE11AD30);
    v36 = a6;
    v37 = a1;
    v38 = a2;

    oslog = sub_1DA940584();
    v14 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v15 = 136316162;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
      v40 = sub_1DA940A74();
      v42 = sub_1DA7AE6E8(v40, v41, &v59);

      *(v15 + 4) = v42;
      *(v15 + 12) = 2080;
      v43 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
      v44 = sub_1DA940A74();
      v46 = sub_1DA7AE6E8(v44, v45, &v59);

      *(v15 + 14) = v46;
      *(v15 + 22) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
      v47 = sub_1DA940A74();
      v49 = sub_1DA7AE6E8(v47, v48, &v59);

      *(v15 + 24) = v49;
      *(v15 + 32) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v50 = sub_1DA940A74();
      v52 = sub_1DA7AE6E8(v50, v51, &v59);

      *(v15 + 34) = v52;
      *(v15 + 42) = 2080;
      v53 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
      v54 = sub_1DA940A74();
      v56 = sub_1DA7AE6E8(v54, v55, &v59);

      *(v15 + 44) = v56;
      v34 = "UserNotificationsIDSCloudReceiver !isActive - skipping: service: %s account: %s message: %s fromID: %s context: %s";
      goto LABEL_10;
    }
  }
}

void sub_1DA913940(char *a1, uint64_t a2)
{
  v208 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v203 = &v189 - v5;
  v6 = sub_1DA93F964();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v189 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v207 = &v189 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v206 = &v189 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v201 = &v189 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v198 = &v189 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v196 = &v189 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v200 = &v189 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v199 = &v189 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v202 = &v189 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v189 - v30;
  v205 = v2;
  v32 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties(0);
  if ((v32() & 1) == 0)
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v55 = sub_1DA9405A4();
    __swift_project_value_buffer(v55, qword_1EE11AD30);
    (*(v7 + 16))(v10, v208, v6);

    v56 = v7;
    v57 = sub_1DA940584();
    v58 = sub_1DA940F34();

    if (!os_log_type_enabled(v57, v58))
    {

      (*(v56 + 8))(v10, v6);
      return;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v211 = v60;
    *v59 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v61 = sub_1DA941614();
    v63 = v62;
    (*(v56 + 8))(v10, v6);
    v64 = sub_1DA7AE6E8(v61, v63, &v211);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v65 = sub_1DA940984();
    v67 = sub_1DA7AE6E8(v65, v66, &v211);

    *(v59 + 14) = v67;
    v68 = "UserNotificationsIDSCloudReceiver !isActive - skipping: dispatchAttachment(incomingResourceAt): %s metadata: %s";
    goto LABEL_26;
  }

  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  v34 = __swift_project_value_buffer(v33, qword_1EE11AD30);
  v35 = *(v7 + 16);
  v36 = v208;
  v195 = v7 + 16;
  v194 = v35;
  v35(v31, v208, v6);

  v197 = v34;
  v37 = sub_1DA940584();
  v38 = sub_1DA940F34();

  v39 = os_log_type_enabled(v37, v38);
  v204 = v7;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v193 = a2;
    v42 = v6;
    v43 = v41;
    v211 = v41;
    *v40 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v44 = sub_1DA941614();
    v46 = v45;
    v47 = *(v7 + 8);
    v47(v31, v42);
    v48 = sub_1DA7AE6E8(v44, v46, &v211);

    *(v40 + 4) = v48;
    *(v40 + 12) = 2080;
    v49 = sub_1DA940984();
    v51 = sub_1DA7AE6E8(v49, v50, &v211);

    *(v40 + 14) = v51;
    _os_log_impl(&dword_1DA7A9000, v37, v38, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s metadata: %s", v40, 0x16u);
    swift_arrayDestroy();
    v52 = v43;
    v6 = v42;
    a2 = v193;
    MEMORY[0x1E12739F0](v52, -1, -1);
    v53 = v40;
    v36 = v208;
    MEMORY[0x1E12739F0](v53, -1, -1);

    v54 = v47;
  }

  else
  {

    v54 = *(v7 + 8);
    v54(v31, v6);
  }

  v209 = 0xD000000000000010;
  v210 = 0x80000001DA950340;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v69 = sub_1DA85A788(&v211), (v70 & 1) == 0))
  {
    sub_1DA862DE8(&v211);
    goto LABEL_24;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v69, v213);
  sub_1DA862DE8(&v211);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v194(v13, v36, v6);

    v57 = sub_1DA940584();
    v58 = sub_1DA940F14();

    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_38;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v211 = v60;
    *v59 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v88 = sub_1DA941614();
    v90 = v89;
    v54(v13, v6);
    v91 = sub_1DA7AE6E8(v88, v90, &v211);

    *(v59 + 4) = v91;
    *(v59 + 12) = 2080;
    v92 = sub_1DA940984();
    v94 = sub_1DA7AE6E8(v92, v93, &v211);

    *(v59 + 14) = v94;
    v68 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no bundleIdentifier in metadata: %s";
LABEL_26:
    _os_log_impl(&dword_1DA7A9000, v57, v58, v68, v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v60, -1, -1);
    MEMORY[0x1E12739F0](v59, -1, -1);

    return;
  }

  v71 = v209;
  v72 = v210;
  v209 = 0xD00000000000001DLL;
  v210 = 0x80000001DA955E70;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v73 = sub_1DA85A788(&v211), (v74 & 1) == 0))
  {
    sub_1DA862DE8(&v211);
    goto LABEL_29;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v73, v213);
  sub_1DA862DE8(&v211);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:

    v95 = v207;
    v194(v207, v36, v6);

    v96 = sub_1DA940584();
    v97 = sub_1DA940F14();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = v6;
      v100 = swift_slowAlloc();
      v211 = v100;
      *v98 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v101 = sub_1DA941614();
      v102 = v95;
      v103 = v101;
      v105 = v104;
      v54(v102, v99);
      v106 = sub_1DA7AE6E8(v103, v105, &v211);

      *(v98 + 4) = v106;
      *(v98 + 12) = 2080;
      v107 = sub_1DA940984();
      v109 = sub_1DA7AE6E8(v107, v108, &v211);

      *(v98 + 14) = v109;
      _os_log_impl(&dword_1DA7A9000, v96, v97, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no notificationRecord.identifier in metadata: %s", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v100, -1, -1);
      MEMORY[0x1E12739F0](v98, -1, -1);

      return;
    }

    v110 = v95;
    goto LABEL_39;
  }

  v207 = v71;
  v76 = v209;
  v75 = v210;
  v209 = 0xD000000000000015;
  v210 = 0x80000001DA955E50;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v77 = sub_1DA85A788(&v211), (v78 & 1) == 0))
  {
    sub_1DA862DE8(&v211);
LABEL_33:

    v13 = v206;
    v194(v206, v36, v6);

    v57 = sub_1DA940584();
    v58 = sub_1DA940F14();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v211 = v60;
      *v59 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v111 = sub_1DA941614();
      v113 = v112;
      v54(v13, v6);
      v114 = sub_1DA7AE6E8(v111, v113, &v211);

      *(v59 + 4) = v114;
      *(v59 + 12) = 2080;
      v115 = sub_1DA940984();
      v117 = sub_1DA7AE6E8(v115, v116, &v211);

      *(v59 + 14) = v117;
      v68 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no attachment.identifier in metadata: %s";
      goto LABEL_26;
    }

LABEL_38:

    v110 = v13;
LABEL_39:
    v54(v110, v6);
    return;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v77, v213);
  sub_1DA862DE8(&v211);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v193 = a2;
  v206 = v6;
  v80 = v209;
  v79 = v210;
  v81 = &v205[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_attachmentDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {

    v84 = v203;
    v6 = v206;
    (*(v204 + 56))(v203, 1, 1, v206);
    v85 = v208;
LABEL_36:
    sub_1DA7BA120(v84, &qword_1ECBD6310, &unk_1DA95F3B0);
    v13 = v201;
    v194(v201, v85, v6);

    v57 = sub_1DA940584();
    v58 = sub_1DA940F14();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v211 = v60;
      *v59 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v118 = sub_1DA941614();
      v120 = v119;
      v54(v13, v6);
      v121 = sub_1DA7AE6E8(v118, v120, &v211);

      *(v59 + 4) = v121;
      *(v59 + 12) = 2080;
      v122 = sub_1DA940984();
      v124 = sub_1DA7AE6E8(v122, v123, &v211);

      *(v59 + 14) = v124;
      v68 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s attachmentDelegate failed to store URL with metadata: %s";
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  v191 = v80;
  v192 = v79;
  v82 = *(v81 + 1);
  ObjectType = swift_getObjectType();
  v84 = v203;
  v85 = v208;
  (*(v82 + 8))(v208, v76, v75, v207, v72, ObjectType, v82);
  swift_unknownObjectRelease();
  v86 = v72;
  v87 = v204;
  v6 = v206;
  if ((*(v204 + 48))(v84, 1, v206) == 1)
  {

    goto LABEL_36;
  }

  v201 = v86;
  v125 = v202;
  (*(v87 + 32))(v202, v84, v6);
  v126 = v194;
  v194(v199, v85, v6);
  v126(v200, v125, v6);

  v127 = v205;
  v128 = sub_1DA940584();
  v129 = sub_1DA940F34();
  v205 = v127;

  LODWORD(v203) = v129;
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v213[0] = v190;
    *v130 = 136315906;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v189 = v128;
    v131 = v199;
    v132 = sub_1DA941614();
    v134 = v133;
    v54(v131, v6);
    v135 = sub_1DA7AE6E8(v132, v134, v213);

    *(v130 + 4) = v135;
    *(v130 + 12) = 2080;
    v136 = v200;
    v137 = sub_1DA941614();
    v139 = v138;
    v54(v136, v6);
    v140 = sub_1DA7AE6E8(v137, v139, v213);

    *(v130 + 14) = v140;
    *(v130 + 22) = 2080;
    v141 = sub_1DA940984();
    v143 = sub_1DA7AE6E8(v141, v142, v213);

    *(v130 + 24) = v143;
    *(v130 + 32) = 2080;
    v144 = v205;
    v145 = &v205[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v147 = *(v145 + 1);
    v211 = Strong;
    v212 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
    v148 = sub_1DA940A74();
    v150 = sub_1DA7AE6E8(v148, v149, v213);

    *(v130 + 34) = v150;
    v151 = v189;
    _os_log_impl(&dword_1DA7A9000, v189, v203, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s newURL: %s metadata: %s sending to: %s", v130, 0x2Au);
    v152 = v190;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v152, -1, -1);
    v153 = v130;
    v154 = v202;
    v85 = v208;
    MEMORY[0x1E12739F0](v153, -1, -1);

    v155 = v144;
  }

  else
  {

    v54(v200, v6);
    v54(v199, v6);
    v155 = v205;
    v154 = v202;
  }

  v156 = &v155[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
  v157 = swift_unknownObjectWeakLoadStrong();
  v158 = v198;
  v159 = v201;
  if (v157)
  {
    v160 = *(v156 + 1);
    v161 = swift_getObjectType();
    (*(v160 + 24))(v154, v191, v192, v76, v75, v207, v159, v161, v160);
    swift_unknownObjectRelease();
  }

  v208 = v156;

  v162 = v196;
  v163 = v206;
  v164 = v194;
  v194(v196, v85, v206);
  v164(v158, v154, v163);

  v165 = v205;
  v166 = sub_1DA940584();
  v167 = sub_1DA940F34();

  if (os_log_type_enabled(v166, v167))
  {
    v168 = v158;
    v169 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v213[0] = v207;
    *v169 = 136315906;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    LODWORD(v205) = v167;
    v170 = sub_1DA941614();
    v171 = v162;
    v173 = v172;
    v54(v171, v163);
    v174 = sub_1DA7AE6E8(v170, v173, v213);

    *(v169 + 4) = v174;
    *(v169 + 12) = 2080;
    v175 = sub_1DA941614();
    v177 = v176;
    v54(v168, v163);
    v178 = sub_1DA7AE6E8(v175, v177, v213);

    *(v169 + 14) = v178;
    *(v169 + 22) = 2080;
    v179 = sub_1DA940984();
    v181 = sub_1DA7AE6E8(v179, v180, v213);

    *(v169 + 24) = v181;
    *(v169 + 32) = 2080;
    v182 = v208;
    v183 = swift_unknownObjectWeakLoadStrong();
    v184 = *(v182 + 1);
    v211 = v183;
    v212 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
    v185 = sub_1DA940A74();
    v187 = sub_1DA7AE6E8(v185, v186, v213);

    *(v169 + 34) = v187;
    _os_log_impl(&dword_1DA7A9000, v166, v205, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s DONE! newURL: %s metadata: %s sending to: %s", v169, 0x2Au);
    v188 = v207;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v188, -1, -1);
    MEMORY[0x1E12739F0](v169, -1, -1);

    v54(v202, v163);
  }

  else
  {

    v54(v158, v163);
    v54(v162, v163);
    v54(v154, v163);
  }
}

void sub_1DA9152A4(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6, void *a7)
{
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  __swift_project_value_buffer(v13, qword_1EE11AD30);
  v14 = a2;
  v15 = a1;
  sub_1DA915D8C(a3, a4);
  v16 = a7;

  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();

  sub_1DA852CB0(a3, a4);
  v43 = v16;

  v44 = v18;
  v19 = v18;
  v20 = v17;
  if (os_log_type_enabled(v17, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136316162;
    v23 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
    v24 = sub_1DA940A74();
    v26 = sub_1DA7AE6E8(v24, v25, &v46);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
    v28 = sub_1DA940A74();
    v30 = sub_1DA7AE6E8(v28, v29, &v46);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    sub_1DA915D8C(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6958, &qword_1DA960370);
    v31 = sub_1DA940A74();
    v33 = sub_1DA7AE6E8(v31, v32, &v46);

    *(v21 + 24) = v33;
    *(v21 + 32) = 2080;
    v34 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v35 = sub_1DA940A74();
    v37 = sub_1DA7AE6E8(v35, v36, &v46);

    *(v21 + 34) = v37;
    *(v21 + 42) = 2080;
    v38 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
    v39 = sub_1DA940A74();
    v41 = sub_1DA7AE6E8(v39, v40, &v46);

    *(v21 + 44) = v41;
    _os_log_impl(&dword_1DA7A9000, v20, v44, "UserNotificationsIDSCloudReceiver service: %s account: %s data: %s fromID: %s context: %s", v21, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);

    v42 = a3;
  }

  else
  {

    v42 = a3;
    v34 = a5;
  }

  if (a4 >> 60 == 15)
  {
    __break(1u);
  }

  else if (a6)
  {
    sub_1DA915630(v42, a4, v34, a6);
    return;
  }

  __break(1u);
}

void sub_1DA915630(uint64_t a1, NSObject *a2, uint64_t a3, NSObject *a4)
{
  v42 = a2;
  v40 = type metadata accessor for UserNotificationsCloudRecord(0);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v39 - v14);
  v41 = v4;
  v16 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties(0);
  if (v16())
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE11AD30);

    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();

    v20 = os_log_type_enabled(v18, v19);
    v39 = a3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = a4;
      v24 = v22;
      v43 = v22;
      *v21 = 136315138;
      v25 = a3;
      v26 = v23;
      *(v21 + 4) = sub_1DA7AE6E8(v25, v23, &v43);
      _os_log_impl(&dword_1DA7A9000, v18, v19, "UserNotificationsIDSCloudReceiver dispatch(data): fromID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    else
    {
      v26 = a4;
    }

    sub_1DA9129D0(a1, v42, 0, 1, v15);
    sub_1DA916AF0(v15, v13, type metadata accessor for UserNotificationsCloudRecord);
    v31 = sub_1DA940584();
    v32 = sub_1DA940F34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v42 = v26;
      v34 = v45;
      *v33 = 136315138;
      sub_1DA916AF0(v13, v10, type metadata accessor for UserNotificationsCloudRecord);
      v43 = 0;
      v44 = 0xE000000000000000;
      MEMORY[0x1E1271BD0](*v10, v10[1]);
      MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
      sub_1DA8D346C(v10 + *(v40 + 20));
      v35 = v43;
      v36 = v44;
      sub_1DA85758C(v13, type metadata accessor for UserNotificationsCloudRecord);
      sub_1DA85758C(v10, type metadata accessor for UserNotificationsCloudRecord);
      v37 = sub_1DA7AE6E8(v35, v36, &v45);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1DA7A9000, v31, v32, "UserNotificationsIDSCloudReceiver dispatch(data): %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v38 = v34;
      v26 = v42;
      MEMORY[0x1E12739F0](v38, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);
    }

    else
    {

      sub_1DA85758C(v13, type metadata accessor for UserNotificationsCloudRecord);
    }

    sub_1DA915DA0(v15, v39, v26);
    sub_1DA85758C(v15, type metadata accessor for UserNotificationsCloudRecord);
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE11AD30);
    v42 = sub_1DA940584();
    v28 = sub_1DA940F14();
    if (os_log_type_enabled(v42, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DA7A9000, v42, v28, "UserNotificationsIDSCloudReceiver dispatch(data): !isActive - skipping", v29, 2u);
      MEMORY[0x1E12739F0](v29, -1, -1);
    }

    v30 = v42;
  }
}

uint64_t sub_1DA915D8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA841874(result, a2);
  }

  return result;
}
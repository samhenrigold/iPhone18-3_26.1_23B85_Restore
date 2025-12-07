void *static ImportExport.RecordCounts.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (!v5)
  {
    *a3 = *result + *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

double sub_1A845DDB8@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5980 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB2E7F20;
  result = *&xmmword_1EB2E7F00;
  v3 = *&qword_1EB2E7F10;
  *a1 = xmmword_1EB2E7F00;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t sub_1A845DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, _OWORD *))
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v6;
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v7;
  return (a5)(v10, v12, a3, a4);
}

uint64_t ImportExport.RecordCounts.description.getter()
{
  sub_1A84E646C();

  strcpy(v2, "RecordCounts: ");
  v0 = ImportExport.RecordCounts.displayDescription.getter();
  MEMORY[0x1AC56A990](v0);

  return v2[0];
}

uint64_t ImportExport.RecordCounts.displayDescription.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x61737265766E6F63, 0xEF203A736E6F6974);
  sub_1A84E676C();
  sub_1A840D3B0();
  v0 = sub_1A84E639C();
  v2 = v1;

  MEMORY[0x1AC56A990](v0, v2);

  MEMORY[0x1AC56A990](0x6567617373656D20, 0xEB00000000203A73);
  sub_1A84E676C();
  v3 = sub_1A84E639C();
  v5 = v4;

  MEMORY[0x1AC56A990](v3, v5);

  MEMORY[0x1AC56A990](0x6D68636174746120, 0xEE00203A73746E65);
  sub_1A84E676C();
  v6 = sub_1A84E639C();
  v8 = v7;

  MEMORY[0x1AC56A990](v6, v8);

  MEMORY[0x1AC56A990](0x6963697472617020, 0xEE003A73746E6170);
  sub_1A84E676C();
  v9 = sub_1A84E639C();
  v11 = v10;

  MEMORY[0x1AC56A990](v9, v11);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8531E00);
  sub_1A84E676C();
  v12 = sub_1A84E639C();
  v14 = v13;

  MEMORY[0x1AC56A990](v12, v14);

  return 0;
}

unint64_t ImportExport.RecordCounts.displayKeyValues.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A83EA2FC(&qword_1EB2E7F40, &qword_1A8506A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8506A40;
  strcpy((inited + 32), "conversations");
  *(inited + 46) = -4864;
  *(inited + 48) = v1;
  *(inited + 56) = 0x736567617373656DLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 0x656D686361747461;
  *(inited + 88) = 0xEB0000000073746ELL;
  *(inited + 96) = v3;
  strcpy((inited + 104), "participants");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000001A8531E20;
  *(inited + 144) = v5;
  v7 = sub_1A83EBD30(inited);
  swift_setDeallocating();
  sub_1A83EA2FC(&qword_1EB2E7F48, &qword_1A8506A68);
  swift_arrayDestroy();
  return v7;
}

uint64_t ImportExport.RecordCounts.format(report:)(uint64_t a1)
{
  result = ImportExport.RecordCounts.displayKeyValues.getter();
  v3 = 0;
  v5 = result + 64;
  v4 = *(result + 64);
  v20 = a1;
  v21 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      do
      {
LABEL_8:
        v11 = (*(v21 + 48) + 16 * (__clz(__rbit64(v8)) | (v3 << 6)));
        v13 = *v11;
        v12 = v11[1];

        v22 = sub_1A84E676C();
        v15 = v14;
        v16 = *(a1 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A83EEBEC(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1A83EEBEC((v17 > 1), v18 + 1, 1, v16);
          v16 = result;
        }

        v8 &= v8 - 1;
        *(v16 + 16) = v18 + 1;
        v19 = (v16 + 32 * v18);
        v19[4] = v13;
        v19[5] = v12;
        v19[6] = v22;
        v19[7] = v15;
        a1 = v20;
        *(v20 + 16) = v16;
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A845E670()
{
  result = qword_1EB2E7F50;
  if (!qword_1EB2E7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F50);
  }

  return result;
}

uint64_t sub_1A845E6C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A845E6E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1A845E73C()
{
  result = qword_1EB2E7F58;
  if (!qword_1EB2E7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F58);
  }

  return result;
}

unint64_t sub_1A845E794()
{
  result = qword_1EB2E7F60;
  if (!qword_1EB2E7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F60);
  }

  return result;
}

unint64_t sub_1A845E7EC()
{
  result = qword_1EB2E7F68;
  if (!qword_1EB2E7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F68);
  }

  return result;
}

uint64_t sub_1A845E840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001A8531E40 == a2;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF746E756F43746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531E60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531E20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A845EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1A824B2D4(a1, &qword_1EB2E7FA8, &qword_1A8506D10);
    sub_1A84607A0(a2, a3, v9);

    return sub_1A824B2D4(v9, &qword_1EB2E7FA8, &qword_1A8506D10);
  }

  else
  {
    sub_1A8462480(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1A848D3C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1A845EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A8243DDC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1A848DAD4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1A824B2D4(a1, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8460990(a2, a3, v9);

    return sub_1A824B2D4(v9, &qword_1EB2E66B0, &qword_1A8500960);
  }

  return result;
}

uint64_t sub_1A845EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A848E248(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A824B390(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A848F72C();
        v14 = v16;
      }

      result = sub_1A8490564();
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A845ED90()
{
  v0 = MEMORY[0x1AC56AD90]();
  v2 = v1;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_1A845EBC8(v4, v0, v2);
  return swift_endAccess();
}

char *SyncedSettingsManager.init(daemonController:connection:notificationCenter:)(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  *&v3[v7] = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController] = a1;
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_connection] = a2;
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SyncedSettingsManager();
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = *&v10[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController];
  v12 = v10;
  v13 = [v11 listener];
  [v13 addHandler_];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1A845EFB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E5CAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A84E5CCC();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1A84E5C9C();
  sub_1A824431C(v11, qword_1EB2FF010);
  v12 = sub_1A84E5C7C();
  v13 = sub_1A84E61BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A823F000, v12, v13, "didUpdateSettingsKeys", v14, 2u);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
  }

  sub_1A8460A58();
  v15 = sub_1A84E624C();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  aBlock[4] = sub_1A8460AA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B743E0;
  v17 = _Block_copy(aBlock);

  v18 = v2;

  sub_1A84E5A8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A824B214();
  sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
  sub_1A824B26C();
  sub_1A84E63CC();
  MEMORY[0x1AC56AD50](0, v10, v7, v17);
  _Block_release(v17);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v21);
}

void sub_1A845F2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
    v38 = OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter;
    v5 = (a1 + 40);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      swift_bridgeObjectRetain_n();
      v10 = sub_1A84E62AC();
      if (v11)
      {
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v12 = sub_1A84E5C9C();
        sub_1A824431C(v12, qword_1EB2FF010);

        v13 = sub_1A84E5C7C();
        v14 = sub_1A84E61BC();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v39[0] = v16;
          *v15 = 136315138;
          v17 = sub_1A82446BC(v8, v9, v39);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_1A823F000, v13, v14, "could not make SyncedSettingKey from updated key: %s", v15, 0xCu);
          sub_1A8244788(v16);
          MEMORY[0x1AC56D3F0](v16, -1, -1);
          MEMORY[0x1AC56D3F0](v15, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v18 = v10;

        v19 = MEMORY[0x1AC56AD90](v18);
        v21 = v20;
        swift_beginAccess();
        v22 = sub_1A824B390(v19, v21);
        if (v23)
        {
          v24 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *(v3 + v4);
          *(v3 + v4) = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A848EF90();
          }

          sub_1A8243DDC((*(v26 + 56) + 32 * v24), v39);
          sub_1A848CEB4(v24, v26);
          *(v3 + v4) = v26;
        }

        else
        {
          memset(v39, 0, sizeof(v39));
        }

        sub_1A824B2D4(v39, &qword_1EB2E66B0, &qword_1A8500960);
        swift_endAccess();
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v27 = sub_1A84E5C9C();
        sub_1A824431C(v27, qword_1EB2FF010);
        v28 = sub_1A84E5C7C();
        v29 = sub_1A84E61BC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = v4;
          v32 = swift_slowAlloc();
          *&v39[0] = v32;
          *v30 = 136315138;
          v33 = sub_1A84E62BC();
          v35 = sub_1A82446BC(v33, v34, v39);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_1A823F000, v28, v29, "posting notification for %s", v30, 0xCu);
          sub_1A8244788(v32);
          v36 = v32;
          v4 = v31;
          v3 = a2;
          MEMORY[0x1AC56D3F0](v36, -1, -1);
          MEMORY[0x1AC56D3F0](v30, -1, -1);
        }

        v6 = *(v3 + v38);
        v7 = sub_1A84E62DC();
        [v6 postNotificationName:v7 object:0];
      }

      v5 += 2;
      --v2;
    }

    while (v2);
  }
}

id SyncedSettingsManager.__deallocating_deinit()
{
  v1 = [*&v0[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController] listener];
  [v1 removeHandler_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SyncedSettingsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A845F8B8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v4 = v3;
  v23 = 0u;
  v24 = 0u;
  v8 = MEMORY[0x1AC56AD90]();
  v10 = v9;
  v11 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_1A824B390(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    sub_1A8244F40(*(v12 + 56) + 32 * v13, v22);

    sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8243DDC(v22, &v23);
  }

  else
  {

    v16 = [objc_opt_self() sharedInstance];
    v17 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v18 = sub_1A84E5D8C();

    v19 = [v16 getValueFromDomain:v17 forKey:v18];

    if (v19)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
      sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
      sub_1A8243DDC(v22, v21);
      sub_1A8243DDC(v21, v22);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
      sub_1A84E62CC();
      sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v23 = v22[0];
    v24 = v22[1];
  }

  sub_1A846140C(a1, &v23, v4, a2, a3);

  return sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
}

uint64_t sub_1A845FBA0(uint64_t a1, uint64_t a2)
{
  sub_1A8462404(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = sub_1A82471E0(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1A84E679C();
    (*(v5 + 8))(v7, v3);
    sub_1A8244788(v10);
  }

  else
  {
    v8 = 0;
  }

  (*(a2 + 16))(a2, v8);
  return swift_unknownObjectRelease();
}

void sub_1A845FCDC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1AC56AD90](a2);
  v8 = v7;
  sub_1A8244F40(a1, v16);
  swift_beginAccess();
  sub_1A845EBC8(v16, v6, v8);
  swift_endAccess();
  v9 = *(v2 + OBJC_IVAR___IMSyncedSettingsManager_Impl_connection);
  [v9 waitForSetup];
  v10 = [v9 remoteProxy];
  sub_1A82471E0(a1, a1[3]);
  [v10 setSettingValue:sub_1A84E679C() forKey:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v11 = *(v3 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  v12 = sub_1A84E62DC();
  sub_1A83EA2FC(&qword_1EB2E7FA0, &unk_1A8506CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  v16[0] = 0x6E6F73616572;
  v16[1] = 0xE600000000000000;
  v14 = MEMORY[0x1E69E6158];
  sub_1A84E641C();
  *(inited + 96) = v14;
  *(inited + 72) = 0x53796C6C61636F4CLL;
  *(inited + 80) = 0xEA00000000007465;
  sub_1A83EC354(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &qword_1EB2E8790, &qword_1A85008F0);
  v15 = sub_1A84E5D2C();

  [v11 postNotificationName:v12 object:0 userInfo:v15];
}

void sub_1A845FF7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(a1, a1[3]);
  v6 = sub_1A84E679C();
  v7 = sub_1A84E62DC();
  [v5 addObserver:v6 selector:a2 name:v7 object:0];
  swift_unknownObjectRelease();
}

void sub_1A84600F0(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(a1, a1[3]);
  v4 = sub_1A84E679C();
  v5 = sub_1A84E62DC();
  [v3 removeObserver:v4 name:v5 object:0];
  swift_unknownObjectRelease();
}

BOOL sub_1A846024C(uint64_t a1)
{
  v3 = MEMORY[0x1AC56AD90]();
  v5 = v4;
  v6 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (, v8 = sub_1A824B390(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    sub_1A8244F40(*(v7 + 56) + 32 * v8, &v28);

    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
    v11 = 1;
  }

  else
  {

    v28 = 0u;
    v29 = 0u;
    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
    v12 = [objc_opt_self() sharedInstance];
    v13 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v14 = sub_1A84E5D8C();

    v15 = [v12 getValueFromDomain:v13 forKey:v14];

    v11 = v15 != 0;
    if (v15)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
  }

  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v16 = sub_1A84E5C9C();
  sub_1A824431C(v16, qword_1EB2FF010);
  v17 = sub_1A84E5C7C();
  v18 = sub_1A84E61BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v28 = v20;
    *v19 = 136315394;
    if (v11)
    {
      v21 = 0xD000000000000012;
    }

    else
    {
      v21 = 0xD00000000000001ALL;
    }

    if (v11)
    {
      v22 = "Local value does not exist";
    }

    else
    {
      v22 = "notificationCenter";
    }

    v23 = sub_1A82446BC(v21, v22 | 0x8000000000000000, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_1A84E62BC();
    v26 = sub_1A82446BC(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1A823F000, v17, v18, "%s for key: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v20, -1, -1);
    MEMORY[0x1AC56D3F0](v19, -1, -1);
  }

  return v11;
}

id SyncedSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A846065C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, _BYTE *a4)
{
  sub_1A8462404(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast() && (v7 & 1) != 0)
    {
      return a2(a4);
    }
  }

  else
  {
    sub_1A824B2D4(v8, &qword_1EB2E66B0, &qword_1A8500960);
  }

  v9 = MEMORY[0x1E69E6370];
  v8[0] = 0;
  a2(v8);
  return sub_1A824B2D4(v8, &qword_1EB2E66B0, &qword_1A8500960);
}

void sub_1A8460730()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A84E5D8C();
  v2 = [v0 initWithSuiteName_];

  qword_1EB2E7F70 = v2;
}

uint64_t sub_1A84607A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A824B390(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A848E5E4();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ImportExport.Message(0);
    v19 = *(v12 - 8);
    sub_1A8462480(v11 + *(v19 + 72) * v8, a3);
    sub_1A848CCC8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ImportExport.Message(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1A84608F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1A824B390(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A848EAFC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1A8490564();
  *v3 = v8;
  return v9;
}

double sub_1A8460990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A824B390(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A848EF90();
      v10 = v12;
    }

    sub_1A8243DDC((*(v10 + 56) + 32 * v8), a3);
    sub_1A848CEB4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1A8460A58()
{
  result = qword_1ED767638;
  if (!qword_1ED767638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED767638);
  }

  return result;
}

uint64_t sub_1A8460AAC()
{
  v0 = [objc_opt_self() sharedInstanceForBagType_];
  v1 = sub_1A84E5D8C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  sub_1A8462404(v14, &v12);
  if (!*(&v13 + 1))
  {
    sub_1A824B2D4(&v12, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2FF010);
    v5 = sub_1A84E5C7C();
    v9 = sub_1A84E61BC();
    if (!os_log_type_enabled(v5, v9))
    {
      v3 = 1;
      goto LABEL_17;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v9, "Local value allows forced unkown filtering", v7, 2u);
    v3 = 1;
    goto LABEL_15;
  }

  v3 = v11;
  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1EB2FF010);
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E61BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v6, "Server allows forced unkown filtering", v7, 2u);
LABEL_15:
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

LABEL_17:

  sub_1A824B2D4(v14, &qword_1EB2E66B0, &qword_1A8500960);
  return v3;
}

id sub_1A8460D4C()
{
  if ([objc_opt_self() IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender])
  {
    v0 = [objc_opt_self() IMMessagesFilteringSettingForPreferedSubscription];
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v1 = sub_1A84E5C9C();
    sub_1A824431C(v1, qword_1EB2FF010);
    v2 = sub_1A84E5C7C();
    v3 = sub_1A84E61BC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      if (v0)
      {
        v6 = 1936027492;
      }

      else
      {
        v6 = 0x746F6E2073656F64;
      }

      if (v0)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      v8 = sub_1A82446BC(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1A823F000, v2, v3, "Subcription %s expect forced unknown filtering", v4, 0xCu);
      sub_1A8244788(v5);
      MEMORY[0x1AC56D3F0](v5, -1, -1);
      MEMORY[0x1AC56D3F0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A84E5C9C();
    sub_1A824431C(v9, qword_1EB2FF010);
    v10 = sub_1A84E5C7C();
    v11 = sub_1A84E61BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v10, v11, "Region does not expect forced unknown filtering", v12, 2u);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
    }

    return 0;
  }

  return v0;
}

id sub_1A8460FB0()
{
  if ((sub_1A8460AAC() & 1) == 0)
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v7 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device does not allow forced unknown filtering";
      goto LABEL_15;
    }

LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  if (qword_1EB2E5988 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB2E7F70;
  if (qword_1EB2E7F70)
  {
    v1 = sub_1A84E5D8C();
    v2 = [v0 BOOLForKey_];

    if ((v2 & 1) != 0 || (v3 = sub_1A84E5D8C(), v4 = [v0 BOOLForKey_], v3, v4))
    {
      if (qword_1EB2E46E8 != -1)
      {
        swift_once();
      }

      v5 = sub_1A84E5C9C();
      sub_1A824431C(v5, qword_1EB2FF010);
      v6 = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "User modified unknown or spam. Device does not force unknown filtering";
LABEL_15:
        _os_log_impl(&dword_1A823F000, v6, v7, v9, v8, 2u);
        v11 = 0;
LABEL_16:
        MEMORY[0x1AC56D3F0](v8, -1, -1);
LABEL_35:

        return v11;
      }

      goto LABEL_34;
    }
  }

  if (sub_1A8460D4C())
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v13))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v14 = "Device expects forced unknown filtering.";
LABEL_28:
      _os_log_impl(&dword_1A823F000, v6, v13, v14, v8, 2u);
      v11 = 1;
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v16 = result;
    v17 = [result activeAccountsAreEligibleForFilterUnknownSendersByDefault];

    if (v17 != 1)
    {
      if (qword_1EB2E46E8 != -1)
      {
        swift_once();
      }

      v19 = sub_1A84E5C9C();
      sub_1A824431C(v19, qword_1EB2FF010);
      v6 = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Device does not force unknown filtering.";
        goto LABEL_15;
      }

      goto LABEL_34;
    }

    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v18 = sub_1A84E5C9C();
    sub_1A824431C(v18, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v13))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v14 = "Accounts expect forced filtering.";
      goto LABEL_28;
    }

LABEL_29:
    v11 = 1;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A846140C(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  if (a1 == 4)
  {
    sub_1A8462404(a2, &v34);
    if (*(&v35 + 1))
    {

      v13 = MEMORY[0x1E69E6370];
      if (swift_dynamicCast())
      {
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v14 = sub_1A84E5C9C();
        sub_1A824431C(v14, qword_1EB2FF010);
        v15 = sub_1A84E5C7C();
        v16 = sub_1A84E61BC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v34 = v18;
          *v17 = 67109378;
          *(v17 + 4) = v33;
          *(v17 + 8) = 2080;
          v19 = sub_1A84E62BC();
          v21 = sub_1A82446BC(v19, v20, &v34);

          *(v17 + 10) = v21;
          _os_log_impl(&dword_1A823F000, v15, v16, "Found %{BOOL}d for %s", v17, 0x12u);
          sub_1A8244788(v18);
          MEMORY[0x1AC56D3F0](v18, -1, -1);
          v22 = v17;
          v13 = MEMORY[0x1E69E6370];
          MEMORY[0x1AC56D3F0](v22, -1, -1);
        }

        *(&v35 + 1) = v13;
        LOBYTE(v34) = v33;
        goto LABEL_22;
      }
    }

    else
    {

      sub_1A824B2D4(&v34, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v24 = sub_1A8460FB0();
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v25 = sub_1A84E5C9C();
    sub_1A824431C(v25, qword_1EB2FF010);
    v26 = sub_1A84E5C7C();
    v27 = sub_1A84E61BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v34 = v29;
      *v28 = 67109378;
      *(v28 + 4) = v24 & 1;
      *(v28 + 8) = 2080;
      v30 = sub_1A84E62BC();
      v32 = sub_1A82446BC(v30, v31, &v34);

      *(v28 + 10) = v32;
      _os_log_impl(&dword_1A823F000, v26, v27, "Falling back to %{BOOL}d for %s", v28, 0x12u);
      sub_1A8244788(v29);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
      MEMORY[0x1AC56D3F0](v28, -1, -1);
    }

    *(&v35 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v34) = v24 & 1;
    goto LABEL_22;
  }

  if (a1 == 5)
  {
    v10 = objc_opt_self();

    if ([v10 isTimeSensitiveCustomModelAvailable])
    {
      sub_1A8462404(a2, &v34);
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1A8462530;
      *(v11 + 24) = v9;
      v12 = v35;
      *(v11 + 32) = v34;
      *(v11 + 48) = v12;

      sub_1A845F8B8(4, sub_1A846252C, v11);
    }

    *(&v35 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v34) = 0;
LABEL_22:
    a4(&v34);
    sub_1A824B2D4(&v34, &qword_1EB2E66B0, &qword_1A8500960);
  }

  a4(a2);
}

void sub_1A84619F8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A84623D4;
  *(v8 + 24) = v7;
  if (a1 == 4)
  {
    sub_1A8462404(a2, &v46);
    if (*(&v47 + 1))
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v12 = MEMORY[0x1E69E6370];
      if (swift_dynamicCast())
      {
        v13 = LOBYTE(v44[0]);
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v14 = sub_1A84E5C9C();
        sub_1A824431C(v14, qword_1EB2FF010);
        v15 = sub_1A84E5C7C();
        v16 = sub_1A84E61BC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v46 = v18;
          *v17 = 67109378;
          *(v17 + 4) = v13;
          *(v17 + 8) = 2080;
          v19 = sub_1A84E62BC();
          v21 = sub_1A82446BC(v19, v20, &v46);

          *(v17 + 10) = v21;
          _os_log_impl(&dword_1A823F000, v15, v16, "Found %{BOOL}d for %s", v17, 0x12u);
          sub_1A8244788(v18);
          MEMORY[0x1AC56D3F0](v18, -1, -1);
          v22 = v17;
          v12 = MEMORY[0x1E69E6370];
          MEMORY[0x1AC56D3F0](v22, -1, -1);
        }

        *(&v47 + 1) = v12;
        LOBYTE(v46) = v13;
        goto LABEL_21;
      }
    }

    else
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      sub_1A824B2D4(&v46, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v29 = sub_1A8460FB0();
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v30 = sub_1A84E5C9C();
    sub_1A824431C(v30, qword_1EB2FF010);
    v31 = sub_1A84E5C7C();
    v32 = sub_1A84E61BC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v46 = v34;
      *v33 = 67109378;
      *(v33 + 4) = v29 & 1;
      *(v33 + 8) = 2080;
      v35 = sub_1A84E62BC();
      v37 = sub_1A82446BC(v35, v36, &v46);

      *(v33 + 10) = v37;
      _os_log_impl(&dword_1A823F000, v31, v32, "Falling back to %{BOOL}d for %s", v33, 0x12u);
      sub_1A8244788(v34);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
      MEMORY[0x1AC56D3F0](v33, -1, -1);
    }

    *(&v47 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v46) = v29 & 1;
    goto LABEL_21;
  }

  if (a1 != 5)
  {
    _Block_copy(a4);
    sub_1A8462404(a2, &v46);
    v23 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v24 = sub_1A82471E0(&v46, *(&v47 + 1));
      v25 = *(v23 - 8);
      MEMORY[0x1EEE9AC00](v24);
      v27 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v27);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v28 = sub_1A84E679C();
      (*(v25 + 8))(v27, v23);
      sub_1A8244788(&v46);
    }

    else
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v28 = 0;
    }

    a4[2](a4, v28);
    swift_unknownObjectRelease();
    _Block_release(a4);
    goto LABEL_27;
  }

  v9 = objc_opt_self();
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);

  if (([v9 isTimeSensitiveCustomModelAvailable] & 1) == 0)
  {
    *(&v47 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v46) = 0;
LABEL_21:
    sub_1A8462404(&v46, v44);
    v38 = v45;
    if (v45)
    {
      v39 = sub_1A82471E0(v44, v45);
      v40 = *(v38 - 8);
      MEMORY[0x1EEE9AC00](v39);
      v42 = v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v42);
      _Block_copy(a4);
      v43 = sub_1A84E679C();
      (*(v40 + 8))(v42, v38);
      sub_1A8244788(v44);
    }

    else
    {
      _Block_copy(a4);
      v43 = 0;
    }

    a4[2](a4, v43);
    swift_unknownObjectRelease();
    _Block_release(a4);
    sub_1A824B2D4(&v46, &qword_1EB2E66B0, &qword_1A8500960);
LABEL_27:

    goto LABEL_28;
  }

  sub_1A8462404(a2, &v46);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A84623DC;
  *(v10 + 24) = v8;
  v11 = v47;
  *(v10 + 32) = v46;
  *(v10 + 48) = v11;

  sub_1A845F8B8(4, sub_1A8462474, v10);

LABEL_28:

  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1A8462160(uint64_t a1, uint64_t a2, void *aBlock)
{
  v20 = 0u;
  v21 = 0u;
  _Block_copy(aBlock);
  v6 = MEMORY[0x1AC56AD90](a1);
  v8 = v7;
  v9 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (*(v10 + 16) && (, v11 = sub_1A824B390(v6, v8), v13 = v12, , (v13 & 1) != 0))
  {
    sub_1A8244F40(*(v10 + 56) + 32 * v11, v19);

    sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8243DDC(v19, &v20);
  }

  else
  {

    v14 = [objc_opt_self() sharedInstance];
    v15 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v16 = sub_1A84E5D8C();

    v17 = [v14 getValueFromDomain:v15 forKey:v16];

    if (v17)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
      sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
      sub_1A8243DDC(v19, v18);
      sub_1A8243DDC(v18, v19);
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      sub_1A84E62CC();
      sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v20 = v19[0];
    v21 = v19[1];
  }

  _Block_copy(aBlock);
  sub_1A84619F8(a1, &v20, a2, aBlock);
  _Block_release(aBlock);
  sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
  _Block_release(aBlock);
}

uint64_t sub_1A8462404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8462480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84624E4()
{

  if (*(v0 + 56))
  {
    sub_1A8244788((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

double _sSo15IMChorosMonitorC6IMCoreE21timeSinceBeingOffGridSdyF_0()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = *MEMORY[0x1E69A70A0];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 messagesAppDomain];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 objectForKey_];

    if (v15)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      v16 = swift_dynamicCast();
      (*(v1 + 56))(v9, v16 ^ 1u, 1, v0);
      goto LABEL_9;
    }
  }

  else
  {

    v22 = 0u;
    v23 = 0u;
  }

  sub_1A824B2D4(&v22, &qword_1EB2E66B0, &qword_1A8500960);
  (*(v1 + 56))(v9, 1, 1, v0);
LABEL_9:
  sub_1A843ED60(v9, v7);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
    v17 = 0.0;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    sub_1A84E568C();
    v17 = fabs(v18);
    (*(v1 + 8))(v3, v0);
  }

  sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
  return v17;
}

void sub_1A8462834()
{
  v15 = *MEMORY[0x1E69E9840];
  LOBYTE(v13) = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1A84E555C();
  v2 = sub_1A84E5D8C();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v13];

  if (!v3 || (v13 & 1) == 0)
  {
    LOBYTE(v13) = 0;
    v4 = [v0 defaultManager];
    sub_1A84E555C();
    v5 = sub_1A84E5D8C();

    v6 = [v4 fileExistsAtPath:v5 isDirectory:&v13];

    if (v6 && (v13 & 1) == 0)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1A84E646C();

      v13 = 0xD000000000000023;
      v14 = 0x80000001A8532090;
      v12 = sub_1A84E555C();
      MEMORY[0x1AC56A990](v12);

      sub_1A84E653C();
      __break(1u);
    }

    else
    {
      v7 = [v0 defaultManager];
      v8 = sub_1A84E551C();
      v13 = 0;
      v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v13];

      if (v9)
      {
        v10 = v13;
      }

      else
      {
        v11 = v13;
        sub_1A84E548C();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1A8462A9C()
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v11) = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1A84E555C();
  v2 = sub_1A84E5D8C();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v11];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1A84E551C();
    v11 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v11];

    if (v6)
    {
      v7 = v11;
      v8 = 1;
    }

    else
    {
      v9 = v11;
      sub_1A84E548C();

      swift_willThrow();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t URL.relativePath(toParent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v32 - v3;
  v4 = sub_1A84E558C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E549C();
  v8 = sub_1A84E54EC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_1A84E549C();
  v10 = sub_1A84E54EC();
  v9(v7, v4);
  v11 = *(v10 + 16);
  v12 = *(v8 + 16);
  if (v12 >= v11)
  {
    (*(v5 + 56))(a1, 1, 1, v4);
  }

  else
  {
    v33 = v5;
    v34 = v4;
    v35 = a1;
    v13 = 0;
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v11 == v14)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v10 + 16);
      if (v14 >= v12)
      {
        if (v14 >= v17)
        {
          goto LABEL_25;
        }

        v19 = v8;
        v20 = v10;
        v22 = *(v10 + v13 + 32);
        v21 = *(v10 + v13 + 40);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A824A1FC(0, *(v15 + 2) + 1, 1, v15);
        }

        v4 = *(v15 + 2);
        v23 = *(v15 + 3);
        v24 = v15;
        if (v4 >= v23 >> 1)
        {
          v24 = sub_1A824A1FC((v23 > 1), v4 + 1, 1, v15);
        }

        *(v24 + 2) = v4 + 1;
        v15 = v24;
        v16 = &v24[16 * v4];
        *(v16 + 4) = v22;
        *(v16 + 5) = v21;
        v8 = v19;
        v10 = v20;
      }

      else
      {
        if (v14 >= v17)
        {
          goto LABEL_24;
        }

        if (v14 >= *(v8 + 16))
        {
          goto LABEL_26;
        }

        v18 = *(v10 + v13 + 32) == *(v8 + v13 + 32) && *(v10 + v13 + 40) == *(v8 + v13 + 40);
        if (!v18 && (sub_1A84E67AC() & 1) == 0)
        {

          return (*(v33 + 56))(v35, 1, 1, v34);
        }
      }

      ++v14;
      v13 += 16;
    }

    while (v11 != v14);
    v37 = v15;

    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v25 = sub_1A84E5D6C();
    v27 = v26;

    v4 = v36;
    URL.init(relativeFilePath:)(v25, v27, v36);
    v29 = v33;
    v28 = v34;
    if ((*(v33 + 48))(v4, 1, v34) != 1)
    {

      v30 = v35;
      (*(v29 + 32))(v35, v4, v28);
      return (*(v29 + 56))(v30, 0, 1, v28);
    }

LABEL_27:
    sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
    result = sub_1A84E653C();
    __break(1u);
  }

  return result;
}

uint64_t URL.init(relativeFilePath:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  if ((sub_1A84E5F0C() & 1) == 0)
  {
    v13 = 47;
    v14 = 0xE100000000000000;
    MEMORY[0x1AC56A990](a1, a2);

    a1 = v13;
    a2 = v14;
  }

  v13 = 0x2F2F3A656C6966;
  v14 = 0xE700000000000000;
  MEMORY[0x1AC56A990](a1, a2);

  sub_1A84E556C();

  v9 = sub_1A84E558C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    sub_1A824B2D4(v8, &qword_1EB2E7068, &unk_1A8501EB0);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a3, v11, 1, v9);
}

uint64_t URL.mimeType.getter()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1A84E5C5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1A84E54BC();
  sub_1A84E5C4C();
  sub_1A84E5C2C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A824B2D4(v2, &qword_1EB2E7340, &qword_1A8501EF8);
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v8 = sub_1A84E5C3C();
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    if (v10)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t URL.contentType.getter()
{
  v0 = sub_1A84E5C5C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1A84E54BC();
  sub_1A84E5C4C();
  sub_1A84E5C2C();
  if ((*(v1 + 48))(v4, 1, v0) == 1)
  {
    sub_1A824B2D4(v4, &qword_1EB2E7340, &qword_1A8501EF8);
    return 0;
  }

  else
  {
    v6 = sub_1A84E5C1C();
    (*(v1 + 8))(v4, v0);
    return v6;
  }
}

uint64_t static NSISO8601DateFormatter.fileNameTimestamp()()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1A84E56CC();
  v5 = sub_1A84E565C();
  (*(v1 + 8))(v3, v0);
  v6 = [v4 stringFromDate_];

  v7 = sub_1A84E5DBC();
  v9 = v8;

  v12[4] = v7;
  v12[5] = v9;
  v12[2] = 58;
  v12[3] = 0xE100000000000000;
  v12[0] = 45;
  v12[1] = 0xE100000000000000;
  sub_1A840D3B0();
  v10 = sub_1A84E637C();

  return v10;
}

uint64_t sub_1A8463774(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v69 = a1;
  v3 = sub_1A84E56DC();
  v68 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v56 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v70 = v2;
  v15 = *v2;
  v16 = v2[1];
  v17 = sub_1A84E5D8C();
  v18 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v18)
  {

    return v18 == 0;
  }

  v64 = v12;
  v65 = v14;
  v59 = v6;
  v60 = v9;
  v63 = 0;
  v61 = v15;
  v62 = sub_1A84E5D8C();
  v19 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v66 = type metadata accessor for ImportExport.Attachment(0);
  v20 = v70;
  v21 = sub_1A84E5D8C();
  v22 = [v19 dateFromString_];

  if (!v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  v23 = v20;
  v58 = v16;
  v24 = v64;
  sub_1A84E569C();

  v25 = v65;
  v26 = v24;
  v27 = v3;
  v28 = v68;
  v57 = v68[4];
  v57(v65, v26, v27);
  v29 = sub_1A84E565C();
  v64 = [v29 __im_nanosecondTimeInterval];

  v30 = v28[1];
  v30(v25, v27);
  v31 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v32 = sub_1A84E5D8C();
  v33 = [v31 dateFromString_];

  v34 = v69;
  if (!v33)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = v59;
  sub_1A84E569C();

  v36 = v60;
  v57(v60, v35, v27);
  v37 = v27;
  v38 = sub_1A84E565C();
  v68 = [v38 __im_nanosecondTimeInterval];

  v30(v36, v37);
  v65 = sub_1A84E5D8C();
  sub_1A8463DDC(v34);
  if (v39)
  {
    v69 = sub_1A84E5D8C();
  }

  else
  {
    v69 = 0;
  }

  v40 = v66;
  v67 = sub_1A84E5D8C();
  if (v23[10])
  {
    v57 = sub_1A84E5D8C();
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v60) = *(v23 + v40[18]);
  v61 = *(v23 + v40[15]);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  if (v71)
  {
    v41 = sub_1A84E5D2C();
  }

  else
  {
    v41 = 0;
  }

  LODWORD(v59) = *(v23 + v40[16]);
  sub_1A84E595C();
  if (v71)
  {
    v42 = sub_1A84E5D2C();
  }

  else
  {
    v42 = 0;
  }

  sub_1A84E595C();
  if (v71)
  {
    v43 = sub_1A84E5D2C();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_1A84E5D8C();
  if (*(v23 + v40[19] + 8))
  {
    v45 = sub_1A84E5D8C();
  }

  else
  {
    v45 = 0;
  }

  if (*(v23 + v66[20] + 8))
  {
    v46 = sub_1A84E5D8C();
  }

  else
  {
    v46 = 0;
  }

  v66 = v46;
  v70 = v43;
  v47 = v42;
  v48 = v62;
  v49 = v44;
  v50 = v65;
  v51 = v41;
  v52 = v69;
  v53 = v67;
  v54 = v57;
  v68 = IMDAttachmentRecordCreate();

  v18 = v63;
  if (v68)
  {
    return v18 == 0;
  }

LABEL_30:
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

uint64_t sub_1A8463DDC(uint64_t a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_1A84E5D8C();
    v13 = [v12 stringByAbbreviatingWithTildeInPath];

    v14 = sub_1A84E5DBC();
  }

  else
  {
LABEL_6:
    v15 = type metadata accessor for ImportExport.Attachment(0);
    sub_1A8243D74(v1 + *(v15 + 40), v5, &qword_1EB2E7068, &unk_1A8501EB0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1A824B2D4(v5, &qword_1EB2E7068, &unk_1A8501EB0);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_1A84E555C();
      v16 = sub_1A84E5D8C();

      v17 = [v16 stringByAbbreviatingWithTildeInPath];

      v14 = sub_1A84E5DBC();
      (*(v7 + 8))(v10, v6);
    }
  }

  return v14;
}

uint64_t sub_1A846403C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v177 = a2;
  v3 = v2;
  v168 = a1;
  v179[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ImportExport.Attachment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v173 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v161 - v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v170 = &v161 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v164 = &v161 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v163 = (&v161 - v14);
  v15 = sub_1A84E5C9C();
  v16 = *(v15 - 8);
  v174 = v15;
  v175 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v171 = (&v161 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v165 = &v161 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v167 = &v161 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v162 = &v161 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v166 = &v161 - v28;
  v29 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v161 - v30;
  v32 = sub_1A84E558C();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v169 = &v161 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v172 = &v161 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v161 - v40;
  v43 = v42;
  v45 = v44;
  sub_1A8243D74(v3 + v4[10], v31, &qword_1EB2E7068, &unk_1A8501EB0);
  if (v45[6](v31, 1, v43) == 1)
  {
    sub_1A824B2D4(v31, &qword_1EB2E7068, &unk_1A8501EB0);
    sub_1A84E5C8C();
    sub_1A8467450(v3, v9, type metadata accessor for ImportExport.Attachment);
    sub_1A8467450(v3, v173, type metadata accessor for ImportExport.Attachment);
    v46 = sub_1A84E5C7C();
    v47 = sub_1A84E619C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v179[0] = v172;
      *v48 = 136315394;
      v49 = *v9;
      v50 = v9[1];

      sub_1A8467380(v9, type metadata accessor for ImportExport.Attachment);
      v51 = sub_1A82446BC(v49, v50, v179);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v52 = v173;
      v178 = *(v173 + v4[23]);
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v54 = v53;
      v56 = v55;
      sub_1A8467380(v52, type metadata accessor for ImportExport.Attachment);
      v57 = sub_1A82446BC(v54, v56, v179);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_1A823F000, v46, v47, "attachment has no file path %s: reasons: %s", v48, 0x16u);
      v58 = v172;
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v58, -1, -1);
      MEMORY[0x1AC56D3F0](v48, -1, -1);
    }

    else
    {

      sub_1A8467380(v173, type metadata accessor for ImportExport.Attachment);
      sub_1A8467380(v9, type metadata accessor for ImportExport.Attachment);
    }

    (*(v175 + 8))(v19, v174);
    goto LABEL_9;
  }

  v59 = v45[4];
  v59(v41, v31, v43);
  if (*(v3 + v4[12]))
  {
    v60 = v171;
    sub_1A84E5C8C();
    v61 = v170;
    sub_1A8467450(v3, v170, type metadata accessor for ImportExport.Attachment);
    v45[2](v35, v41, v43);
    v62 = v43;
    v63 = sub_1A84E5C7C();
    v64 = sub_1A84E619C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v168 = v41;
      v66 = v65;
      v67 = swift_slowAlloc();
      v179[0] = v67;
      *v66 = 136315394;
      v173 = v62;
      v68 = v45;
      v69 = *v61;
      v70 = v61[1];

      sub_1A8467380(v61, type metadata accessor for ImportExport.Attachment);
      v71 = sub_1A82446BC(v69, v70, v179);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v72 = sub_1A84E555C();
      v74 = v73;
      v75 = v68[1];
      v76 = v35;
      v77 = v173;
      (v75)(v76, v173);
      v78 = sub_1A82446BC(v72, v74, v179);

      *(v66 + 14) = v78;
      _os_log_impl(&dword_1A823F000, v63, v64, "attachment %s has relative file path: %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v67, -1, -1);
      MEMORY[0x1AC56D3F0](v66, -1, -1);

      (*(v175 + 8))(v171, v174);
      (v75)(v168, v77);
    }

    else
    {

      v85 = v45[1];
      (v85)(v35, v62);
      sub_1A8467380(v61, type metadata accessor for ImportExport.Attachment);
      (*(v175 + 8))(v60, v174);
      (v85)(v41, v62);
    }

    v86 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
    return (*(*(v86 - 8) + 56))(v177, 1, 1, v86);
  }

  v170 = v4;
  v171 = v45;
  sub_1A84E555C();
  v81 = sub_1A84E5E2C();
  v83 = v82;

  sub_1A84674B8();
  if (sub_1A84E616C())
  {
    v161 = v81;
    v170 = v83;
    v173 = v43;
    v84 = v176;
  }

  else
  {

    sub_1A84E555C();
    v87 = sub_1A84E5E2C();
    v89 = v88;

    v161 = v87;
    v90 = sub_1A84E616C();
    v84 = v176;
    if ((v90 & 1) == 0)
    {
      v123 = v166;
      sub_1A84E5C8C();
      v124 = v163;
      sub_1A8467450(v3, v163, type metadata accessor for ImportExport.Attachment);
      v125 = v164;
      sub_1A8467450(v3, v164, type metadata accessor for ImportExport.Attachment);

      v126 = sub_1A84E5C7C();
      v127 = v89;
      v128 = sub_1A84E619C();

      if (os_log_type_enabled(v126, v128))
      {
        v129 = swift_slowAlloc();
        v168 = v41;
        v130 = v129;
        v172 = swift_slowAlloc();
        v179[0] = v172;
        *v130 = 136315650;
        v173 = v43;
        v131 = *v124;
        v132 = v124[1];

        sub_1A8467380(v124, type metadata accessor for ImportExport.Attachment);
        v133 = sub_1A82446BC(v131, v132, v179);

        *(v130 + 4) = v133;
        *(v130 + 12) = 2080;
        v134 = sub_1A82446BC(v161, v127, v179);

        *(v130 + 14) = v134;
        *(v130 + 22) = 2080;
        v178 = *(v125 + *(v170 + 92));
        ImportExport.Attachment.MissingFileReasons.description.getter();
        v136 = v135;
        v138 = v137;
        sub_1A8467380(v125, type metadata accessor for ImportExport.Attachment);
        v139 = sub_1A82446BC(v136, v138, v179);

        *(v130 + 24) = v139;
        _os_log_impl(&dword_1A823F000, v126, v128, "attachment %s source path does not exist on disk: %s, reasons: %s", v130, 0x20u);
        v140 = v172;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v140, -1, -1);
        MEMORY[0x1AC56D3F0](v130, -1, -1);

        (*(v175 + 8))(v166, v174);
        v171[1](v168, v173);
      }

      else
      {

        sub_1A8467380(v125, type metadata accessor for ImportExport.Attachment);
        sub_1A8467380(v124, type metadata accessor for ImportExport.Attachment);
        (*(v175 + 8))(v123, v174);
        v171[1](v41, v43);
      }

LABEL_9:
      v79 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
      return (*(*(v79 - 8) + 56))(v177, 1, 1, v79);
    }

    v170 = v89;
    v173 = v43;
  }

  sub_1A8466510(v172);
  sub_1A84E555C();
  v176 = sub_1A84E5E2C();
  v92 = v91;

  v93 = v169;
  sub_1A84E553C();
  if (sub_1A84E54CC())
  {

    v94 = v165;
    sub_1A84E5C8C();

    v95 = sub_1A84E5C7C();
    v96 = sub_1A84E618C();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v168 = v41;
      v98 = v97;
      v99 = swift_slowAlloc();
      v179[0] = v99;
      *v98 = 136315138;
      v100 = sub_1A82446BC(v176, v92, v179);

      *(v98 + 4) = v100;
      _os_log_impl(&dword_1A823F000, v95, v96, "Attachment already exists at path: %s, skipping...", v98, 0xCu);
      sub_1A8244788(v99);
      MEMORY[0x1AC56D3F0](v99, -1, -1);
      MEMORY[0x1AC56D3F0](v98, -1, -1);

      (*(v175 + 8))(v94, v174);
      v101 = v171[1];
      v102 = v173;
      v101(v93, v173);
      v101(v172, v102);
      v103 = v168;
    }

    else
    {

      (*(v175 + 8))(v94, v174);
      v101 = v171[1];
      v102 = v173;
      v101(v93, v173);
      v101(v172, v102);
      v103 = v41;
    }

    v101(v103, v102);
    goto LABEL_9;
  }

  v168 = v41;
  sub_1A8462834();
  v104 = v170;
  if (!v84)
  {
    v105 = [objc_opt_self() defaultManager];
    v106 = sub_1A84E5D8C();
    v107 = sub_1A84E5D8C();
    v179[0] = 0;
    v108 = [v105 copyItemAtPath:v106 toPath:v107 error:v179];
    v170 = v104;
    v109 = v108;

    if (v109)
    {
      v110 = v179[0];
      v111 = v162;
      sub_1A84E5C8C();
      v112 = v170;

      v113 = sub_1A84E5C7C();
      v114 = sub_1A84E618C();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v179[0] = v116;
        *v115 = 136315394;
        *(v115 + 4) = sub_1A82446BC(v161, v170, v179);
        *(v115 + 12) = 2080;
        v117 = sub_1A82446BC(v176, v92, v179);

        *(v115 + 14) = v117;
        _os_log_impl(&dword_1A823F000, v113, v114, "Copyied attachment %s to %s", v115, 0x16u);
        swift_arrayDestroy();
        v118 = v116;
        v112 = v170;
        MEMORY[0x1AC56D3F0](v118, -1, -1);
        v119 = v115;
        v120 = v161;
        MEMORY[0x1AC56D3F0](v119, -1, -1);

        (*(v175 + 8))(v162, v174);
        v121 = v171[1];
        v122 = v173;
        v121(v169, v173);
        v121(v168, v122);
      }

      else
      {

        (*(v175 + 8))(v111, v174);
        v157 = v171[1];
        v122 = v173;
        v157(v93, v173);
        v157(v168, v122);
        v120 = v161;
      }

      v158 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
      v159 = *(v158 + 48);
      v160 = v177;
      *v177 = v120;
      v160[1] = v112;
      v59(v160 + v159, v172, v122);
      return (*(*(v158 - 8) + 56))(v160, 0, 1, v158);
    }

    v141 = v179[0];
    v84 = sub_1A84E548C();

    swift_willThrow();
    v104 = v170;
  }

  v142 = v167;
  sub_1A84E5C8C();

  v143 = v84;
  v144 = sub_1A84E5C7C();
  v145 = sub_1A84E619C();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v179[0] = v148;
    *v146 = 136315650;
    v149 = sub_1A82446BC(v161, v104, v179);

    *(v146 + 4) = v149;
    *(v146 + 12) = 2080;
    v150 = sub_1A82446BC(v176, v92, v179);

    *(v146 + 14) = v150;
    *(v146 + 22) = 2112;
    v151 = v84;
    v152 = _swift_stdlib_bridgeErrorToNSError();
    *(v146 + 24) = v152;
    *v147 = v152;
    _os_log_impl(&dword_1A823F000, v144, v145, "Copying attachment %s to %s failed with error %@", v146, 0x20u);
    sub_1A824B2D4(v147, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v147, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v148, -1, -1);
    MEMORY[0x1AC56D3F0](v146, -1, -1);

    (*(v175 + 8))(v167, v174);
    v153 = v171[1];
    v154 = v169;
  }

  else
  {

    (*(v175 + 8))(v142, v174);
    v153 = v171[1];
    v154 = v93;
  }

  v155 = v173;
  v153(v154, v173);
  v153(v172, v155);
  v153(v168, v155);
  v156 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  return (*(*(v156 - 8) + 56))(v177, 1, 1, v156);
}

uint64_t sub_1A8465554()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Attachment(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v76 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v76 - v9;
  v10 = sub_1A84E5C9C();
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v76 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v76 - v19;
  v20 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v76 - v21;
  v23 = sub_1A84E558C();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v76 - v27;
  v82 = v2;
  v30 = v29;
  v32 = v31;
  sub_1A8243D74(v1 + *(v2 + 40), v22, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v32 + 48))(v22, 1, v30) == 1)
  {
    sub_1A824B2D4(v22, &qword_1EB2E7068, &unk_1A8501EB0);
    sub_1A84E5C8C();
    sub_1A8467450(v1, v8, type metadata accessor for ImportExport.Attachment);
    sub_1A8467450(v1, v5, type metadata accessor for ImportExport.Attachment);
    v33 = sub_1A84E5C7C();
    v34 = sub_1A84E619C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86 = v36;
      *v35 = 136315394;
      v37 = *v8;
      v38 = v8[1];

      sub_1A8467380(v8, type metadata accessor for ImportExport.Attachment);
      v39 = sub_1A82446BC(v37, v38, &v86);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v85 = *&v5[*(v82 + 92)];
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v41 = v40;
      v43 = v42;
      sub_1A8467380(v5, type metadata accessor for ImportExport.Attachment);
      v44 = sub_1A82446BC(v41, v43, &v86);

      *(v35 + 14) = v44;
      _os_log_impl(&dword_1A823F000, v33, v34, "unable to generate file hash - attachment has no file path %s: reasons: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v36, -1, -1);
      MEMORY[0x1AC56D3F0](v35, -1, -1);
    }

    else
    {

      sub_1A8467380(v5, type metadata accessor for ImportExport.Attachment);
      sub_1A8467380(v8, type metadata accessor for ImportExport.Attachment);
    }

    (*(v84 + 8))(v14, v83);
  }

  else
  {
    (*(v32 + 32))(v28, v22, v30);
    v77 = v28;
    sub_1A84E555C();
    v45 = sub_1A84E5E2C();
    v47 = v46;

    sub_1A84674B8();
    if (sub_1A84E616C())
    {
      v48 = v81;
      sub_1A84E5C8C();
      v49 = v80;
      sub_1A8467450(v1, v80, type metadata accessor for ImportExport.Attachment);

      v50 = sub_1A84E5C7C();
      v51 = sub_1A84E619C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v79 = v30;
        v54 = v53;
        v86 = v53;
        *v52 = 136315394;
        v55 = sub_1A82446BC(v45, v47, &v86);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        v85 = *(v49 + *(v82 + 92));
        ImportExport.Attachment.MissingFileReasons.description.getter();
        v57 = v56;
        v59 = v58;
        sub_1A8467380(v49, type metadata accessor for ImportExport.Attachment);
        v60 = sub_1A82446BC(v57, v59, &v86);

        *(v52 + 14) = v60;
        _os_log_impl(&dword_1A823F000, v50, v51, "unable to generate file hash - no file exists at path: %s: reasons: %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v54, -1, -1);
        MEMORY[0x1AC56D3F0](v52, -1, -1);

        (*(v84 + 8))(v48, v83);
        (*(v32 + 8))(v77, v79);
      }

      else
      {

        sub_1A8467380(v49, type metadata accessor for ImportExport.Attachment);
        (*(v84 + 8))(v48, v83);
        (*(v32 + 8))(v77, v30);
      }
    }

    else
    {
      v62 = v30;
      v63 = v32;
      v64 = v84;
      sub_1A84E54FC();
      v65 = sub_1A84E55AC();
      v67 = v66;
      v68 = *(v63 + 8);
      v68(v26, v62);

      v69 = sub_1A84E55EC();
      v70 = IMSharedHelperMD5OfData();

      if (v70)
      {
        v71 = sub_1A84E5DBC();
        sub_1A83F5994(v65, v67);

        v68(v77, v62);
        return v71;
      }

      v72 = v78;
      sub_1A84E5C8C();
      v73 = sub_1A84E5C7C();
      v74 = sub_1A84E619C();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1A823F000, v73, v74, "unable to generate file hash - IMSharedHelperMD5OfData returned nil", v75, 2u);
        MEMORY[0x1AC56D3F0](v75, -1, -1);
      }

      sub_1A83F5994(v65, v67);

      (*(v64 + 8))(v72, v83);
      v68(v77, v62);
    }
  }

  return 0;
}

unint64_t sub_1A84660EC()
{
  v1 = v0;
  v2 = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v3 = v45;
  if (v45)
  {
    *&v47[0] = sub_1A84E5DBC();
    *(&v47[0] + 1) = v4;
    sub_1A84E641C();
    if (*(v45 + 16) && (v5 = sub_1A8250C0C(&v45), (v6 & 1) != 0))
    {
      sub_1A8244F40(*(v3 + 56) + 32 * v5, v44);
      sub_1A8250D18(&v45);
      sub_1A8243DDC(v44, v47);
      v7 = sub_1A84E5DBC();
      v9 = v8;
      sub_1A8244F40(v47, &v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v2;
      sub_1A848DAD4(&v45, v7, v9, isUniquelyReferenced_nonNull_native);

      sub_1A8244788(v47);
      v2 = *&v44[0];
    }

    else
    {
      sub_1A8250D18(&v45);
    }

    *&v44[0] = sub_1A84E5DBC();
    *(&v44[0] + 1) = v11;
    sub_1A84E641C();
    if (*(v3 + 16) && (v12 = sub_1A8250C0C(&v45), (v13 & 1) != 0))
    {
      sub_1A8244F40(*(v3 + 56) + 32 * v12, v44);
      sub_1A8250D18(&v45);

      sub_1A8243DDC(v44, v47);
      v14 = sub_1A84E5DBC();
      v16 = v15;
      sub_1A8244F40(v47, &v45);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v2;
      sub_1A848DAD4(&v45, v14, v16, v17);

      sub_1A8244788(v47);
      v2 = *&v44[0];
    }

    else
    {

      sub_1A8250D18(&v45);
    }
  }

  v18 = MEMORY[0x1E69E6158];
  v19 = sub_1A84E5DBC();
  if (*(v2 + 16))
  {
    v21 = sub_1A824B390(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_1A8244F40(*(v2 + 56) + 32 * v21, &v45);
      sub_1A824B2D4(&v45, &qword_1EB2E66B0, &qword_1A8500960);
      goto LABEL_16;
    }
  }

  else
  {
  }

  v45 = 0u;
  v46 = 0u;
  sub_1A824B2D4(&v45, &qword_1EB2E66B0, &qword_1A8500960);
  v24 = sub_1A8465554();
  if (!v25)
  {

    return 0;
  }

  v26 = v24;
  v27 = v25;
  v28 = sub_1A84E5DBC();
  v30 = v29;
  *(&v46 + 1) = v18;
  *&v45 = v26;
  *(&v45 + 1) = v27;
  sub_1A8243DDC(&v45, v47);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *&v44[0] = v2;
  sub_1A848DAD4(v47, v28, v30, v31);

  v2 = *&v44[0];
LABEL_16:
  v32 = sub_1A84E5DBC();
  if (!*(v2 + 16))
  {

    goto LABEL_20;
  }

  v34 = sub_1A824B390(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_20:
    v45 = 0u;
    v46 = 0u;
    sub_1A824B2D4(&v45, &qword_1EB2E66B0, &qword_1A8500960);
    v37 = sub_1A84E5DBC();
    v39 = v38;
    v40 = *v1;
    v41 = v1[1];
    *(&v46 + 1) = v18;
    *&v45 = v40;
    *(&v45 + 1) = v41;
    sub_1A8243DDC(&v45, v47);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v44[0] = v2;
    sub_1A848DAD4(v47, v37, v39, v42);

    return *&v44[0];
  }

  sub_1A8244F40(*(v2 + 56) + 32 * v34, &v45);
  sub_1A824B2D4(&v45, &qword_1EB2E66B0, &qword_1A8500960);
  return v2;
}

void sub_1A8466510(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = type metadata accessor for ImportExport.Attachment(0);
  if (*(v2 + *(v17 + 64)) != 1)
  {
    v20 = v2[6];
    v21 = HIBYTE(v20) & 0xF;
    v31 = v2[5];
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
    }

    else
    {
      sub_1A8243D74(v2 + *(v17 + 40), v6, &qword_1EB2E7068, &unk_1A8501EB0);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1A824B2D4(v6, &qword_1EB2E7068, &unk_1A8501EB0);
      }

      else
      {
        (*(v8 + 32))(v16, v6, v7);
        v31 = sub_1A84E550C();
        (*(v8 + 8))(v16, v7);
      }
    }

    v23 = sub_1A84E5D8C();
    v24 = sub_1A84E5D8C();
    v25 = v2[10];
    v30 = a1;
    if (v25)
    {
      v26 = sub_1A84E5D8C();
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_1A84E5D8C();
    v28 = IMAttachmentPersistentPath();

    if (v28)
    {
      sub_1A84E5DBC();

      sub_1A84E54FC();

      sub_1A84E553C();
      sub_1A84E552C();

      v29 = *(v8 + 8);
      v29(v11, v7);
      v29(v14, v7);
      return;
    }

    goto LABEL_22;
  }

  v18 = sub_1A84660EC();
  if (v18)
  {
    sub_1A84A5368(v18);

    v19 = sub_1A84E5D2C();
  }

  else
  {
    v19 = 0;
  }

  v22 = IMSharedHelperCachePathForStickerWithProperties();

  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_1A84E5DBC();

  sub_1A84E54FC();
}

uint64_t sub_1A8466930(uint64_t a1, char *a2)
{
  v3 = v2;
  v80 = a2;
  v5 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v61 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7FB0, &qword_1A8506D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v61 - v10);
  v87 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  v12 = *(v87 - 8);
  v13 = MEMORY[0x1EEE9AC00](v87);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v67 = (&v61 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v61 - v17;
  v18 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - v19;
  v70 = type metadata accessor for ImportExport.Attachment(0);
  v21 = *(v70 - 8);
  v22 = MEMORY[0x1EEE9AC00](v70);
  v76 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v77 = (&v61 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v61 - v26;
  v27 = type metadata accessor for ImportExport.MessagePart(0);
  result = MEMORY[0x1EEE9AC00](v27);
  v89 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v61 = a1 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage;
  v31 = *(a1 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage + 216);
  v88 = *(v31 + 16);
  if (v88)
  {
    v32 = v21;
    v33 = 0;
    v86 = v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v81 = MEMORY[0x1E69E7CC0];
    v85 = *(result + 44);
    v63 = v32;
    v84 = (v32 + 48);
    v66 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_copiedAttachments;
    v75 = (v12 + 48);
    v34 = v70;
    v65 = v11;
    v64 = v20;
    v82 = v31;
    v83 = v29;
    while (1)
    {
      if (v33 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v38 = v89;
      sub_1A8467450(v86 + *(v29 + 72) * v33, v89, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(v38 + v85, v20, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A8467380(v38, type metadata accessor for ImportExport.MessagePart);
      if ((*v84)(v20, 1, v34) == 1)
      {
        break;
      }

      sub_1A846731C(v20, v90);
      sub_1A846403C(v80, v11);
      if (v3)
      {
        goto LABEL_22;
      }

      if ((*v75)(v11, 1, v87) == 1)
      {
        sub_1A8467380(v90, type metadata accessor for ImportExport.Attachment);
        v35 = v11;
        v36 = &qword_1EB2E7FB0;
        v37 = &qword_1A8506D20;
        goto LABEL_4;
      }

      v39 = v79;
      sub_1A84673E0(v11, v79);
      v40 = v67;
      sub_1A8243D74(v39, v67, &qword_1EB2E7FB8, &qword_1A8506D28);
      v72 = *v40;
      v74 = 0;
      v41 = v40[1];
      v73 = *(v87 + 48);
      v42 = sub_1A84E555C();
      v71 = v43;
      v44 = v69;
      v45 = v66;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = *(v44 + v45);
      *(v44 + v45) = 0x8000000000000000;
      v47 = v78;
      sub_1A848DD70(v42, v71, v72, v41, isUniquelyReferenced_nonNull_native);

      *(v44 + v45) = v92;
      swift_endAccess();
      v48 = sub_1A84E558C();
      v49 = *(v48 - 8);
      (*(v49 + 8))(v40 + v73, v48);
      v50 = v39;
      v51 = v68;
      sub_1A8243D74(v50, v68, &qword_1EB2E7FB8, &qword_1A8506D28);

      (*(v49 + 32))(v47, v51 + *(v87 + 48), v48);
      (*(v49 + 56))(v47, 0, 1, v48);
      v91 = 0;
      v52 = v77;
      v53 = v74;
      ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v47, 0, 0, &v91, v77);
      v3 = v53;
      if (v53)
      {
        sub_1A824B2D4(v78, &qword_1EB2E7068, &unk_1A8501EB0);
        sub_1A824B2D4(v79, &qword_1EB2E7FB8, &qword_1A8506D28);
LABEL_22:
        sub_1A8467380(v90, type metadata accessor for ImportExport.Attachment);
      }

      sub_1A824B2D4(v78, &qword_1EB2E7068, &unk_1A8501EB0);
      sub_1A8467450(v52, v76, type metadata accessor for ImportExport.Attachment);
      v54 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1A83EF118(0, v54[2] + 1, 1, v54);
      }

      v11 = v65;
      v31 = v82;
      v56 = v54[2];
      v55 = v54[3];
      if (v56 >= v55 >> 1)
      {
        v81 = sub_1A83EF118((v55 > 1), v56 + 1, 1, v54);
      }

      else
      {
        v81 = v54;
      }

      sub_1A8467380(v77, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v79, &qword_1EB2E7FB8, &qword_1A8506D28);
      sub_1A8467380(v90, type metadata accessor for ImportExport.Attachment);
      v57 = v81;
      v81[2] = v56 + 1;
      result = sub_1A846731C(v76, v57 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v56);
      v20 = v64;
      v34 = v70;
LABEL_5:
      ++v33;
      v29 = v83;
      if (v88 == v33)
      {
        goto LABEL_19;
      }
    }

    v35 = v20;
    v36 = &qword_1EB2E6F50;
    v37 = &unk_1A8502920;
LABEL_4:
    result = sub_1A824B2D4(v35, v36, v37);
    v31 = v82;
    goto LABEL_5;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v58 = v62;
  ImportExport.Message.update(attachments:)(v81, v62);
  if (v3)
  {
  }

  v59 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message;
  v60 = v69;
  swift_beginAccess();
  sub_1A84672B8(v58, v60 + v59);
  return swift_endAccess();
}

uint64_t sub_1A84672B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A846731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8467380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84673E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8467450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A84674B8()
{
  result = qword_1EB2E7FC0;
  if (!qword_1EB2E7FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E7FC0);
  }

  return result;
}

uint64_t sub_1A8467504(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = a1 / v4 * 100.0;
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1A85013E0;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_1A84E5DDC();
  sub_1A840D3B0();
  v17 = sub_1A84E639C();
  v10 = v9;

  sub_1A84E646C();

  sub_1A84E676C();
  v11 = sub_1A84E639C();

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  sub_1A84E676C();
  v12 = sub_1A84E639C();
  v14 = v13;

  MEMORY[0x1AC56A990](v12, v14);

  MEMORY[0x1AC56A990](2128928, 0xE300000000000000);
  MEMORY[0x1AC56A990](v17, v10);

  result = MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85321E0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v16);

    return v11;
  }

  return result;
}

uint64_t sub_1A84677D8()
{
  v1 = v0;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002BLL, 0x80000001A8532110);
  result = swift_beginAccess();
  v3 = v0[9];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_beginAccess();
  v4 = v1[4];
  if (v4 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_1A8467504(v3, v4);
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532140);
  result = v1[10];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[5];
  if (v6 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = sub_1A8467504(result, v6);
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532160);
  result = v1[11];
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[6];
  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = sub_1A8467504(result, v8);
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532180);
  result = v1[12];
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[7];
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = sub_1A8467504(result, v10);
    MEMORY[0x1AC56A990](v11);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321A0);
    v12 = sub_1A8467504(v1[13], v1[8]);
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321C0);
    swift_beginAccess();

    v13 = ImportExport.Timer.elapsedTimeDescription.getter();
    v15 = v14;

    MEMORY[0x1AC56A990](v13, v15);

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t ImportExportProgressReporting.progressDescription.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002BLL, 0x80000001A8532110);
  result = a2[6](a1, a2);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = a2[1](a1, a2);
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = sub_1A8467EB0(v5, result);
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532140);
  result = a2[7](a1, a2);
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  result = a2[2](a1, a2);
  if (result < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = sub_1A8467EB0(v7, result);
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532160);
  result = a2[8](a1, a2);
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  result = a2[3](a1, a2);
  if (result < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = sub_1A8467EB0(v9, result);
  MEMORY[0x1AC56A990](v10);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532180);
  result = a2[9](a1, a2);
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = result;
  result = a2[4](a1, a2);
  if ((result & 0x8000000000000000) == 0)
  {
    v12 = sub_1A8467EB0(v11, result);
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321A0);
    v13 = a2[10](a1, a2);
    v14 = a2[5](a1, a2);
    v15 = sub_1A8467EB0(v13, v14);
    MEMORY[0x1AC56A990](v15);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321C0);
    a2[11](a1, a2);
    v16 = ImportExport.Timer.elapsedTimeDescription.getter();
    v18 = v17;

    MEMORY[0x1AC56A990](v16, v18);

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A8467E10()
{
  sub_1A84E676C();
  sub_1A840D3B0();
  v0 = sub_1A84E639C();

  return v0;
}

uint64_t sub_1A8467EB0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = a1 / v4 * 100.0;
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1A85013E0;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_1A84E5DDC();
  sub_1A840D3B0();
  v9 = sub_1A84E639C();
  v11 = v10;

  sub_1A84E646C();
  v12 = sub_1A8467E10();

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  v13 = sub_1A8467E10();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](2128928, 0xE300000000000000);
  MEMORY[0x1AC56A990](v9, v11);

  result = MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85321E0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    return v12;
  }

  return result;
}

uint64_t sub_1A84681BC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2006)
  {
    if (result <= 3002)
    {
      if (result <= 3000)
      {
        if (result == 2007)
        {
          *a2 = 9;
          return result;
        }

        if (result == 3000)
        {
          *a2 = 10;
          return result;
        }

        goto LABEL_39;
      }

      if (result == 3001)
      {
        *a2 = 11;
      }

      else
      {
        *a2 = 12;
      }
    }

    else
    {
      if (result > 3004)
      {
        switch(result)
        {
          case 3005:
            *a2 = 15;
            return result;
          case 3006:
            *a2 = 16;
            return result;
          case 3007:
            *a2 = 17;
            return result;
        }

        goto LABEL_39;
      }

      if (result == 3003)
      {
        *a2 = 13;
      }

      else
      {
        *a2 = 14;
      }
    }
  }

  else
  {
    if (result > 2001)
    {
      if (result <= 2003)
      {
        if (result == 2002)
        {
          *a2 = 4;
        }

        else
        {
          *a2 = 5;
        }
      }

      else if (result == 2004)
      {
        *a2 = 6;
      }

      else if (result == 2005)
      {
        *a2 = 7;
      }

      else
      {
        *a2 = 8;
      }

      return result;
    }

    if (result <= 1999)
    {
      if (result == 1000)
      {
        *a2 = 0;
        return result;
      }

      if (result == 1001)
      {
        *a2 = 1;
        return result;
      }

LABEL_39:
      *a2 = 18;
      return result;
    }

    if (result == 2000)
    {
      *a2 = 2;
    }

    else
    {
      *a2 = 3;
    }
  }

  return result;
}

uint64_t sub_1A846837C@<X0>(uint64_t a1@<X8>)
{
  v269 = a1;
  v278 = *MEMORY[0x1E69E9840];
  v1 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v248 = &v215 - v2;
  v239 = sub_1A84E5C5C();
  v238 = *(v239 - 8);
  v3 = MEMORY[0x1EEE9AC00](v239);
  v233 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v237 = &v215 - v5;
  v236 = sub_1A84E577C();
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7FB0, &qword_1A8506D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v262 = (&v215 - v8);
  v254 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  v253 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v245 = &v215 - v9;
  v10 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v249 = &v215 - v11;
  v252 = sub_1A84E56DC();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v241 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1A84E5C9C();
  v259 = *(v260 - 8);
  v13 = MEMORY[0x1EEE9AC00](v260);
  v247 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v232 = &v215 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v250 = &v215 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v246 = &v215 - v19;
  v270 = sub_1A84E558C();
  v267 = *(v270 - 8);
  v20 = MEMORY[0x1EEE9AC00](v270);
  v243 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v256 = &v215 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v257 = &v215 - v24;
  v25 = sub_1A84E531C();
  v265 = *(v25 - 1);
  v266 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v264 = &v215 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v215 - v31;
  v33 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v261 = &v215 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v273 = (&v215 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v271 = &v215 - v38;
  v39 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v230 = &v215 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v215 - v42;
  v44 = type metadata accessor for ImportExport.Attachment(0);
  v45 = *(v44 - 1);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v244 = &v215 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v231 = &v215 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v215 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v263 = &v215 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = (&v215 - v55);
  v268 = type metadata accessor for ImportExport.Conversation(0);
  sub_1A8243D74(&v274[*(v268 + 80)], v43, &qword_1EB2E6F50, &unk_1A8502920);
  v229 = v45;
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_1A824B2D4(v43, &qword_1EB2E6F50, &unk_1A8502920);
    v57 = 1;
LABEL_3:
    v58 = v269;
    return (*(*(v268 - 8) + 56))(v58, v57, 1);
  }

  sub_1A846731C(v43, v56);
  v60 = v56[1];
  v216 = *v56;
  v61 = v271;
  sub_1A8243D74(v56 + v44[10], v271, &qword_1EB2E7068, &unk_1A8501EB0);
  v62 = v56[8];
  v220 = v56[7];
  v63 = v56[10];
  v219 = v56[9];
  v221 = *(v56 + v44[15]);
  v64 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v65 = *(*(v64 - 8) + 56);
  v227 = v32;
  v65(v32, 1, 1, v64);
  v215 = v56[2];
  v66 = v44[24];
  v276 = 0;
  v222 = v60;

  sub_1A84E5B8C();
  v67 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v225 = v66;
  sub_1A84E594C();
  v68 = v44[25];
  v276 = 0;
  sub_1A84E5B8C();
  v224 = v68;
  sub_1A84E594C();
  v258 = v44;
  v69 = v44[26];
  v276 = 0;
  sub_1A84E5B8C();
  v226 = v69;
  v217 = v67;
  sub_1A84E594C();
  v276 = 0x6F685070756F7247;
  v277 = 0xEF6567616D496F74;
  v228 = v63;

  v223 = v62;

  v70 = v264;
  sub_1A84E530C();
  sub_1A840D3B0();
  v240 = sub_1A84E636C();
  v255 = v71;
  (*(v265 + 8))(v70, v266);
  v72 = v273;
  sub_1A8243D74(v61, v273, &qword_1EB2E7068, &unk_1A8501EB0);
  v73 = v267;
  v74 = v270;
  v266 = v267[6];
  v75 = (v266)(v72, 1, v270);
  v76 = v56;
  v77 = v61;
  v78 = v52;
  v79 = v73;
  v242 = v76;
  v218 = v29;
  if (v75 == 1)
  {
    sub_1A824B2D4(v273, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_9;
  }

  v80 = v257;
  (v73[4])(v257, v273, v74);
  v81 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v82 = v74;
  v83 = sub_1A84E5D8C();

  v84 = [v81 fileExistsAtPath_];

  if (v84)
  {
    (v79[1])(v80, v82);
    v74 = v82;
LABEL_9:
    v273 = v78;
    v85 = v77;
    v86 = v261;
    sub_1A8243D74(v85, v261, &qword_1EB2E7068, &unk_1A8501EB0);
    if ((v266)(v86, 1, v74) == 1)
    {
      sub_1A824B2D4(v86, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v87 = 0;
      v88 = 0xE000000000000000;
      v89 = v258;
      v90 = v223;
LABEL_12:
      v91 = v221;
      goto LABEL_41;
    }

    v92 = v256;
    (v79[4])(v256, v86, v74);
    v93 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v94 = sub_1A84E5D8C();

    v276 = 0;
    v95 = [v93 attributesOfItemAtPath:v94 error:&v276];

    v96 = v276;
    if (!v95)
    {
      v130 = v276;
      v131 = sub_1A84E548C();

      swift_willThrow();
      v272 = 0;
      v132 = v246;
      sub_1A84E5C8C();
      v133 = v243;
      (v79[2])(v243, v92, v74);
      v134 = sub_1A84E5C7C();
      v135 = sub_1A84E619C();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v267 = v131;
        v137 = v136;
        v138 = v133;
        v266 = swift_slowAlloc();
        v276 = v266;
        *v137 = 136315138;
        v139 = sub_1A84E555C();
        v141 = v140;
        v142 = v79[1];
        v142(v138, v74);
        v143 = sub_1A82446BC(v139, v141, &v276);

        *(v137 + 4) = v143;
        _os_log_impl(&dword_1A823F000, v134, v135, "Failed to get file attributes for file ath path: %s", v137, 0xCu);
        v144 = v266;
        sub_1A8244788(v266);
        MEMORY[0x1AC56D3F0](v144, -1, -1);
        MEMORY[0x1AC56D3F0](v137, -1, -1);

        (*(v259 + 8))(v246, v260);
        v142(v256, v74);
      }

      else
      {

        v188 = v79[1];
        v188(v133, v74);
        (*(v259 + 8))(v132, v260);
        v188(v92, v74);
      }

      goto LABEL_11;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v97 = sub_1A84E5D3C();
    v98 = v96;

    v99 = HIBYTE(v255) & 0xF;
    if ((v255 & 0x2000000000000000) == 0)
    {
      v99 = v240 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {

      v240 = sub_1A84E550C();
      v255 = v100;
    }

    v89 = v258;
    v90 = v223;
    v91 = v221;
    v101 = v248;
    if (*(v97 + 16) && (v102 = sub_1A8490560(), (v103 & 1) != 0) && (sub_1A8244F40(*(v97 + 56) + 32 * v102, &v276), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v104 = v238;
      v105 = v239;
      if ((*(v238 + 48))(v101, 1, v239) == 1)
      {
        sub_1A824B2D4(v101, &qword_1EB2E7340, &qword_1A8501EF8);
        v106 = v79;
        v91 = v221;
        if (v221)
        {
          goto LABEL_35;
        }
      }

      else
      {
        (*(v104 + 32))(v237, v101, v105);
        v211 = HIBYTE(v90) & 0xF;
        if ((v90 & 0x2000000000000000) == 0)
        {
          v211 = v220 & 0xFFFFFFFFFFFFLL;
        }

        v91 = v221;
        if (!v211)
        {
          v220 = sub_1A84E5C1C();
          v213 = v212;

          v90 = v213;
        }

        v106 = v79;
        if (!v228)
        {
          v106 = v79;
          v219 = sub_1A84E5C3C();
          v228 = v214;
        }

        (*(v238 + 8))(v237, v239);
        if (v91)
        {
LABEL_35:
          if (*(v97 + 16) && (v145 = sub_1A8490560(), v106 = v79, (v146 & 1) != 0))
          {
            v221 = v91;
            sub_1A8244F40(*(v97 + 56) + 32 * v145, &v276);

            v147 = v249;
            v148 = v252;
            v149 = swift_dynamicCast();
            v150 = v251;
            (*(v251 + 56))(v147, v149 ^ 1u, 1, v148);
            if ((*(v150 + 48))(v147, 1, v148) != 1)
            {
              (*(v150 + 32))(v241, v147, v148);
              v266 = objc_opt_self();
              v267 = sub_1A84E565C();
              if (qword_1EB2E5990 != -1)
              {
                swift_once();
              }

              v192 = v236;
              v193 = sub_1A824431C(v236, qword_1EB2E7FC8);
              swift_beginAccess();
              v194 = v235;
              v195 = v234;
              (*(v235 + 16))(v234, v193, v192);
              v196 = sub_1A84E576C();
              (*(v194 + 8))(v195, v192);
              v197 = v267;
              v198 = [v266 stringFromDate:v267 timeZone:v196 formatOptions:1907];

              v87 = sub_1A84E5DBC();
              v88 = v199;

              (*(v251 + 8))(v241, v252);
              (v79[1])(v92, v270);
              goto LABEL_12;
            }

            (v79[1])(v92, v270);
            v91 = v221;
          }

          else
          {

            (v106[1])(v92, v270);
            v147 = v249;
            (*(v251 + 56))(v249, 1, 1, v252);
          }

          sub_1A824B2D4(v147, &qword_1EB2E6F48, &unk_1A8501F00);
          v87 = 0;
          v88 = 0xE000000000000000;
LABEL_41:
          v151 = v273;
          v152 = v222;
          *v273 = v216;
          v151[1] = v152;
          v151[2] = v215;
          v151[3] = 0;
          v153 = v240;
          v151[4] = 0xE000000000000000;
          v151[5] = v153;
          v151[6] = v255;
          v154 = (v151 + v89[14]);
          *v154 = v87;
          v154[1] = v88;
          *(v151 + v89[15]) = v91;
          v151[7] = v220;
          v151[8] = v90;
          v155 = v228;
          v151[9] = v219;
          v151[10] = v155;
          v156 = v271;
          sub_1A8243D74(v271, v151 + v89[10], &qword_1EB2E7068, &unk_1A8501EB0);
          *(v151 + v89[11]) = 1;
          *(v151 + v89[12]) = 0;
          *(v151 + v89[13]) = 0;
          *(v151 + v89[18]) = 1;
          *(v151 + v89[16]) = 0;
          *(v151 + v89[17]) = 0;
          v157 = (v151 + v89[19]);
          *v157 = 0;
          v157[1] = 0;
          v158 = (v151 + v89[20]);
          *v158 = 0;
          v158[1] = 0;
          v159 = v227;
          sub_1A8243D74(v227, v151 + v89[21], &qword_1EB2E7348, &qword_1A8504400);
          *(v151 + v89[22]) = 0;
          v160 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
          v161 = *(*(v160 - 8) + 8);
          v161(v151 + v225, v160);
          v275 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          v161(v151 + v224, v160);
          v275 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          v162 = v160;
          v163 = v258;
          v161(v151 + v226, v162);
          v275 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          sub_1A824B2D4(v159, &qword_1EB2E7348, &qword_1A8504400);
          sub_1A824B2D4(v156, &qword_1EB2E7068, &unk_1A8501EB0);
          *(v151 + v163[23]) = 0;
          v164 = v151;
          v165 = v263;
          sub_1A846731C(v164, v263);
          v166 = v262;
          v167 = v272;
          sub_1A846403C(v274, v262);
          if (v167)
          {
            sub_1A846C790(v165, type metadata accessor for ImportExport.Attachment);
            return sub_1A846C790(v242, type metadata accessor for ImportExport.Attachment);
          }

          v168 = (*(v253 + 48))(v166, 1, v254);
          v169 = v242;
          if (v168 == 1)
          {
            sub_1A824B2D4(v166, &qword_1EB2E7FB0, &qword_1A8506D20);
            v170 = v247;
            sub_1A84E5C8C();
            v171 = v244;
            sub_1A846C7F0(v169, v244, type metadata accessor for ImportExport.Attachment);
            v172 = sub_1A84E5C7C();
            v173 = sub_1A84E619C();
            if (!os_log_type_enabled(v172, v173))
            {

              sub_1A846C790(v171, type metadata accessor for ImportExport.Attachment);
              (*(v259 + 8))(v170, v260);
              sub_1A846C790(v165, type metadata accessor for ImportExport.Attachment);
              v183 = v169;
              goto LABEL_50;
            }

            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v275 = v175;
            *v174 = 136315138;
            v176 = v165;
            v177 = ImportExport.Attachment.description.getter();
            v178 = v171;
            v180 = v179;
            sub_1A846C790(v178, type metadata accessor for ImportExport.Attachment);
            v181 = sub_1A82446BC(v177, v180, &v275);

            *(v174 + 4) = v181;
            _os_log_impl(&dword_1A823F000, v172, v173, "Failed to copy group photo attachment file for groupPhoto: %s", v174, 0xCu);
            sub_1A8244788(v175);
            MEMORY[0x1AC56D3F0](v175, -1, -1);
            MEMORY[0x1AC56D3F0](v174, -1, -1);

            (*(v259 + 8))(v247, v260);
            v182 = v176;
          }

          else
          {
            v184 = v245;
            sub_1A84673E0(v166, v245);
            v185 = sub_1A84E555C();
            v187 = sub_1A8463774(v185, v186);
            v189 = v187;

            if (v189)
            {
              v190 = v230;
              sub_1A846C7F0(v165, v230, type metadata accessor for ImportExport.Attachment);
              (*(v229 + 56))(v190, 0, 1, v163);
              v191 = v269;
              ImportExport.Conversation.update(groupPhoto:)(v190, v269);
              sub_1A824B2D4(v190, &qword_1EB2E6F50, &unk_1A8502920);
              sub_1A824B2D4(v184, &qword_1EB2E7FB8, &qword_1A8506D28);
              sub_1A846C790(v165, type metadata accessor for ImportExport.Attachment);
              sub_1A846C790(v169, type metadata accessor for ImportExport.Attachment);
              v57 = 0;
              v58 = v191;
              return (*(*(v268 - 8) + 56))(v58, v57, 1);
            }

            v200 = v232;
            sub_1A84E5C8C();
            v201 = v231;
            sub_1A846C7F0(v165, v231, type metadata accessor for ImportExport.Attachment);
            v202 = sub_1A84E5C7C();
            v203 = sub_1A84E619C();
            if (!os_log_type_enabled(v202, v203))
            {

              sub_1A846C790(v201, type metadata accessor for ImportExport.Attachment);
              (*(v259 + 8))(v200, v260);
              sub_1A824B2D4(v184, &qword_1EB2E7FB8, &qword_1A8506D28);
              sub_1A846C790(v165, type metadata accessor for ImportExport.Attachment);
              v183 = v242;
              goto LABEL_50;
            }

            v204 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v275 = v205;
            *v204 = 136315138;
            v206 = ImportExport.Attachment.description.getter();
            v207 = v201;
            v209 = v208;
            sub_1A846C790(v207, type metadata accessor for ImportExport.Attachment);
            v210 = sub_1A82446BC(v206, v209, &v275);

            *(v204 + 4) = v210;
            _os_log_impl(&dword_1A823F000, v202, v203, "Failed to import attachment for groupPhoto: %s", v204, 0xCu);
            sub_1A8244788(v205);
            MEMORY[0x1AC56D3F0](v205, -1, -1);
            MEMORY[0x1AC56D3F0](v204, -1, -1);

            (*(v259 + 8))(v200, v260);
            sub_1A824B2D4(v245, &qword_1EB2E7FB8, &qword_1A8506D28);
            v182 = v263;
          }

          sub_1A846C790(v182, type metadata accessor for ImportExport.Attachment);
          v183 = v242;
LABEL_50:
          sub_1A846C790(v183, type metadata accessor for ImportExport.Attachment);
          v57 = 1;
          goto LABEL_3;
        }
      }
    }

    else
    {
      v106 = v79;
      if (v91)
      {
        goto LABEL_35;
      }
    }

    if (*(v97 + 16) && (v128 = sub_1A8490560(), v106 = v79, (v129 & 1) != 0) && (sub_1A8244F40(*(v97 + 56) + 32 * v128, &v276), swift_dynamicCast()))
    {
      v91 = v275;
    }

    else
    {
      v91 = 0;
    }

    goto LABEL_35;
  }

  v107 = v78;
  v108 = v82;
  v109 = v77;

  v276 = 0;
  v277 = 0xE000000000000000;
  sub_1A84E646C();

  v276 = 0xD00000000000002ELL;
  v277 = 0x80000001A8530150;
  v110 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v110);

  v111 = v276;
  v112 = v277;
  sub_1A8412484();
  v113 = swift_allocError();
  *v114 = v111;
  *(v114 + 8) = v112;
  *(v114 + 16) = 1;
  swift_willThrow();

  (v79[1])(v80, v108);
  v115 = v113;
  v116 = v250;
  sub_1A84E5C8C();
  v117 = v113;
  v118 = sub_1A84E5C7C();
  v119 = sub_1A84E619C();

  v120 = os_log_type_enabled(v118, v119);
  v121 = v227;
  if (v120)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v122 = 138412290;
    v124 = v113;
    v125 = _swift_stdlib_bridgeErrorToNSError();
    *(v122 + 4) = v125;
    *v123 = v125;
    _os_log_impl(&dword_1A823F000, v118, v119, "Failed to create an attachment with error: %@", v122, 0xCu);
    sub_1A824B2D4(v123, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v123, -1, -1);
    MEMORY[0x1AC56D3F0](v122, -1, -1);
  }

  (*(v259 + 8))(v116, v260);
  swift_willThrow();
  sub_1A824B2D4(v121, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v109, &qword_1EB2E7068, &unk_1A8501EB0);
  sub_1A846C790(v242, type metadata accessor for ImportExport.Attachment);

  v126 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v127 = *(*(v126 - 8) + 8);
  v127(&v107[v225], v126);
  v127(&v107[v224], v126);
  return (v127)(&v107[v226], v126);
}

void sub_1A846A4E0(uint64_t a1)
{
  v40 = a1;
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 56);
    v30 = v3 - 1;
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 = *(v5 - 1);
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_19;
      }

      v8 = v4 + 1;
      v5 += 18;
      v9 = (v7 + (v6 << 7));
      v10 = v9[3];
      v12 = v9[4];
      v11 = v9[5];
      v32 = v9[2];
      v33 = v10;
      v34 = v12;
      v35 = v11;
      v13 = v9[6];
      v14 = v9[7];
      v15 = v9[9];
      v38 = v9[8];
      v39 = v15;
      v36 = v13;
      v37 = v14;
      sub_1A840243C(&v32, v31);
      v16 = sub_1A84E5D8C();
      v17 = sub_1A84E5D8C();

      v18 = IMDHandleRecordCopyHandleForIDOnService();

      if (v18)
      {
        sub_1A841E128(&v32);
      }

      else
      {
        v31[4] = v36;
        v31[5] = v37;
        v31[6] = v38;
        v31[7] = v39;
        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        v31[3] = v35;
        v19 = sub_1A847551C();
        if (v28)
        {
          sub_1A841E128(&v32);
          return;
        }

        v18 = v19;
        v20 = sub_1A84E5D8C();
        v21 = sub_1A84E5D8C();

        v22 = IMDHandleRecordCopyHandleForIDOnService();

        sub_1A841E128(&v32);
        if (!v22)
        {
          *&v31[0] = 0;
          *(&v31[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();

          *&v31[0] = 0xD000000000000019;
          *(&v31[0] + 1) = 0x80000001A8532220;
          v24 = ImportExport.Conversation.description.getter();
          MEMORY[0x1AC56A990](v24);

          MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8532240);
          v25 = v31[0];
          sub_1A84023CC();
          swift_allocError();
          *v26 = v25;
          *(v26 + 16) = 1;
          swift_willThrow();

          return;
        }

        if (__OFADD__(v27, 1))
        {
          goto LABEL_20;
        }

        ++v27;
      }

      v23 = IMDChatRecordRefFromIMDChatRecord();
      IMDChatRecordAddHandle();

      if (v30 == v4)
      {
        return;
      }

      ++v4;
      if (v8 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1A846A940()
{
  v2 = v0;
  v3 = sub_1A846B93C(v0[1], v0[2]);
  if (v1 || v3)
  {
    return;
  }

  v4 = v0[30];
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v5, 0);
    v6 = (v4 + 80);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1A83EF534((v9 > 1), v10 + 1, 1);
      }

      *(v30 + 16) = v10 + 1;
      v11 = v30 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 18;
      --v5;
    }

    while (v5);
  }

  v12 = [objc_opt_self() synchronousDatabase];
  v13 = sub_1A84E5FEC();

  v14 = sub_1A84E5D8C();

  if (*(v2 + 40))
  {
    v15 = 45;
  }

  else
  {
    v15 = 43;
  }

  v16 = [v12 chatRecordsWithHandles:v13 serviceName:v14 displayName:0 groupID:0 style:v15];
  swift_unknownObjectRelease();

  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v17 = sub_1A84E5FFC();

  if (v17 >> 62)
  {
    v18 = sub_1A84E654C();
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_31:

    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_13:
  v28 = v18 - 1;
  if (v18 < 1)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v17 & 0xC000000000000001;
    v27 = v17 + 32;
    do
    {
      if (v21)
      {
        v22 = MEMORY[0x1AC56AF80](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 lastMessageRecord];
      if (v24)
      {
        v25 = v24;
        if (v29 >= [v24 rawDate])
        {
        }

        else
        {
          v29 = [v25 &selRef_IMMMSEnabledForPhoneNumber_simID_ + 3];

          v19 = v23;
        }
      }

      else
      {
      }

      ++v20;
    }

    while (v18 != v20);
    if (v19)
    {
      goto LABEL_29;
    }

    if (v21)
    {
      MEMORY[0x1AC56AF80](v28, v17);
LABEL_29:

      return;
    }

    if (v18 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v27 + 8 * v28);
      goto LABEL_29;
    }
  }

  __break(1u);
}

void sub_1A846AD4C(void *a1)
{
  v3 = v1;
  v5 = sub_1A84E570C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A846C3F0();
  if (v2)
  {
    return;
  }

  v10 = v9;
  v109 = a1;
  v104 = 0;
  v11 = v1[3];
  v12 = v3[4];
  v13 = sub_1A84E5D8C();
  if (!v3[7])
  {
    v110 = 0;
    if (!v3[40])
    {
      goto LABEL_8;
    }

LABEL_6:

    v14 = sub_1A83F9050(v11, v12);
    v16 = v15;
    v17 = sub_1A84E55EC();
    sub_1A83F5994(v14, v16);
    v18 = [v17 __imHexString];

    if (!v18)
    {
      goto LABEL_79;
    }

    sub_1A84E56FC();
    sub_1A84E56EC();
    (*(v6 + 8))(v8, v5);
    v19 = sub_1A84E5D8C();

    v13 = v19;
    v110 = v18;
    goto LABEL_8;
  }

  v110 = sub_1A84E5D8C();
  if (v3[40])
  {
    goto LABEL_6;
  }

LABEL_8:
  v20 = sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  v21 = [v109 properties];
  v107 = v3;
  v108 = v13;
  if (!v21)
  {
    goto LABEL_30;
  }

  v22 = v21;
  v23 = sub_1A84E5D3C();

  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
LABEL_14:
  if (v26)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v30 >= v27)
    {
      break;
    }

    v26 = *(v23 + 64 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
LABEL_19:
      v31 = __clz(__rbit64(v26)) | (v28 << 6);
      sub_1A824B334(*(v23 + 48) + 40 * v31, v113);
      sub_1A8244F40(*(v23 + 56) + 32 * v31, v114);
      sub_1A824B334(v113, v112);
      sub_1A8244F40(v114, v111);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v20;
      v33 = sub_1A8250C0C(v112);
      v35 = v20[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_76;
      }

      v39 = v34;
      if (v20[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v44 = v33;
        sub_1A848F134();
        v33 = v44;
        v20 = v115;
        if (v39)
        {
          goto LABEL_12;
        }

LABEL_25:
        v20[(v33 >> 6) + 8] |= 1 << v33;
        v41 = v33;
        sub_1A824B334(v112, v20[6] + 40 * v33);
        sub_1A8243DDC(v111, (v20[7] + 32 * v41));
        v42 = v20[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (!v37)
        {
          v20[2] = v43;
          goto LABEL_13;
        }

        goto LABEL_78;
      }

      sub_1A848BCC4(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1A8250C0C(v112);
      if ((v39 & 1) != (v40 & 1))
      {
LABEL_81:
        sub_1A84E67EC();
        __break(1u);
        return;
      }

LABEL_24:
      v20 = v115;
      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_12:
      v29 = (v20[7] + 32 * v33);
      sub_1A8244788(v29);
      sub_1A8243DDC(v111, v29);
LABEL_13:
      v26 &= v26 - 1;
      sub_1A8250D18(v112);
      sub_1A824B2D4(v113, &unk_1EB2E8EA0, &unk_1A850B550);
      goto LABEL_14;
    }
  }

LABEL_30:
  v45 = 1 << *(v10 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v10 + 64);
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  while (2)
  {
    if (v47)
    {
LABEL_40:
      v52 = __clz(__rbit64(v47)) | (v49 << 6);
      sub_1A824B334(*(v10 + 48) + 40 * v52, v113);
      sub_1A8244F40(*(v10 + 56) + 32 * v52, v114);
      sub_1A824B334(v113, v112);
      sub_1A8244F40(v114, v111);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v20;
      v54 = sub_1A8250C0C(v112);
      v56 = v20[2];
      v57 = (v55 & 1) == 0;
      v37 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v37)
      {
        goto LABEL_75;
      }

      v59 = v55;
      if (v20[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          v64 = v54;
          sub_1A848F134();
          v54 = v64;
          v20 = v115;
          if ((v59 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_1A848BCC4(v58, v53);
        v54 = sub_1A8250C0C(v112);
        if ((v59 & 1) != (v60 & 1))
        {
          goto LABEL_81;
        }
      }

      v20 = v115;
      if ((v59 & 1) == 0)
      {
LABEL_46:
        v20[(v54 >> 6) + 8] |= 1 << v54;
        v61 = v54;
        sub_1A824B334(v112, v20[6] + 40 * v54);
        sub_1A8243DDC(v111, (v20[7] + 32 * v61));
        v62 = v20[2];
        v37 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v37)
        {
          goto LABEL_77;
        }

        v20[2] = v63;
        goto LABEL_34;
      }

LABEL_33:
      v50 = (v20[7] + 32 * v54);
      sub_1A8244788(v50);
      sub_1A8243DDC(v111, v50);
LABEL_34:
      v47 &= v47 - 1;
      sub_1A8250D18(v112);
      sub_1A824B2D4(v113, &unk_1EB2E8EA0, &unk_1A850B550);
      continue;
    }

    break;
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v10 + 64 + 8 * v51);
    ++v49;
    if (v47)
    {
      v49 = v51;
      goto LABEL_40;
    }
  }

  v65 = v107;
  if (v107[40])
  {

    v66 = v109;
    goto LABEL_55;
  }

  v67 = sub_1A84E67AC();

  v66 = v109;
  if ((v67 & 1) != 0 || (v68 = *(v65 + 9)) == 0)
  {
LABEL_55:

    v69 = [v66 groupName];
    if (v69)
    {
      v70 = v69;
      sub_1A84E5DBC();
      v68 = v71;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
  }

  v72 = IMDChatRecordRefFromIMDChatRecord();
  if (v20[2])
  {
    sub_1A84A5630(v20);
    v73 = sub_1A84E5D2C();

    v74 = JWEncodeDictionary();

    if (!v74)
    {
      goto LABEL_80;
    }

    v75 = sub_1A84E55FC();
    v77 = v76;

    v103 = sub_1A84E55EC();
    sub_1A83F5994(v75, v77);
  }

  else
  {
    v103 = 0;
  }

  v78 = [v66 style];
  v102 = [v66 accountID];
  v79 = [v66 serviceName];
  if (!v79)
  {
    sub_1A84E5DBC();
    v79 = sub_1A84E5D8C();
  }

  v80 = [v66 guid];
  if (!v80)
  {
    sub_1A84E5DBC();
    v80 = sub_1A84E5D8C();
  }

  v98 = v78;
  if (v68)
  {

    v99 = sub_1A84E5D8C();

    v106 = sub_1A84E5D8C();
  }

  else
  {
    v106 = 0;
    v99 = 0;
  }

  v100 = v80;
  v101 = v79;
  v109 = v72;
  v97 = [v66 lastAddressedHandle];
  v96 = [v66 accountLogin];
  v107 = [v66 groupID];
  v95 = [v66 isFiltered];
  v94 = [v66 successfulQuery];
  v105 = [v66 cloudServerChangeToken];
  v93 = [v66 cloudSyncState];
  v81 = [v66 cloudRecordID];
  if (!v81)
  {
    sub_1A84E5DBC();
    v81 = sub_1A84E5D8C();
  }

  v92 = [v66 lastAddressedSIMID];
  v90 = [v66 isBlackholed];
  [v66 syndicationType];
  [v66 rawSyndicationDate];
  [v66 isRecovered];
  [v66 isDeletingIncomingMessages];
  v91 = v81;
  [v66 lastReadMessageTimestamp];
  [v66 state];
  v82 = v110;
  v83 = v96;
  v84 = v97;
  v85 = v99;
  v86 = v102;
  v87 = v103;
  v88 = v101;
  v89 = v100;
  IMDChatRecordBulkUpdate();
}

id sub_1A846B93C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8501390;
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1A83F8174();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 64) = v10;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;

  v11 = sub_1A84E614C();
  v12 = [v4 chatRecordsFilteredByPredicate_];

  swift_unknownObjectRelease();
  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v13 = sub_1A84E5FFC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1A84E654C();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1AC56AF80](0, v13);
    goto LABEL_6;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_6:
    v16 = v15;

    return v16;
  }

  __break(1u);
  return result;
}

void sub_1A846BB2C()
{
  v2 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A84E5C9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A84E570C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A846C3F0();
  if (v1)
  {
    return;
  }

  v14 = v13;
  v66 = v4;
  v68 = v6;
  v69 = v5;
  v70 = 0;
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_1A84E5D8C();
  v18 = v0[6];
  v73 = v0[7];
  v74 = v18;
  v76 = v0;
  if (v73)
  {
    v19 = sub_1A84E5D8C();
  }

  else
  {
    v19 = 0;
  }

  v20 = v76[40];
  v67 = v8;
  if (v20)
  {
    v79 = v17;
    v21 = v19;

    v22 = sub_1A83F9050(v16, v15);
    v24 = v23;
    v25 = sub_1A84E55EC();
    sub_1A83F5994(v22, v24);
    v26 = [v25 __imHexString];

    if (!v26)
    {
      __break(1u);
      goto LABEL_38;
    }

    sub_1A84E56FC();
    sub_1A84E56EC();
    (*(v10 + 8))(v12, v9);
    v27 = sub_1A84E5D8C();

    v28 = v27;
    v19 = v26;
    v29 = v76;
  }

  else
  {
    v29 = v76;
    v28 = v17;
  }

  v75 = v19;
  if (*(v14 + 16))
  {
    v30 = v29;
    sub_1A84A5630(v14);
    v31 = sub_1A84E5D2C();

    v32 = JWEncodeDictionary();

    if (v32)
    {

      v33 = sub_1A84E55FC();
      v35 = v34;

      v71 = sub_1A84E55EC();
      sub_1A83F5994(v33, v35);
      v29 = v30;
      goto LABEL_13;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v71 = 0;
LABEL_13:
  v36 = v73;
  v37 = sub_1A84E5D8C();

  v72 = sub_1A84E5D8C();
  if (*(v29 + 40) == 1)
  {

    v38 = 0;
  }

  else
  {
    v39 = sub_1A84E67AC();

    v38 = 0;
    if (v36 && (v39 & 1) == 0)
    {
      v38 = sub_1A84E5D8C();
    }
  }

  if (*(v29 + 40) == 1)
  {

LABEL_23:
    v41 = 0;
    goto LABEL_24;
  }

  v40 = sub_1A84E67AC();

  if ((v40 & 1) != 0 || !*(v29 + 72))
  {
    goto LABEL_23;
  }

  v41 = sub_1A84E5D8C();
LABEL_24:
  v79 = v28;
  if (*(v29 + 288))
  {
    v42 = sub_1A84E5D8C();
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_1A84E5D8C();
  if (v36)
  {
    v44 = sub_1A84E5D8C();
  }

  else
  {
    v44 = 0;
  }

  v45 = v42;
  v46 = v71;
  v47 = v38;
  v48 = v72;
  v49 = IMDChatRecordCreate();

  if (v49)
  {
    [objc_allocWithZone(MEMORY[0x1E69A5DA0]) initWithRecordRef_];
  }

  else
  {
    v50 = v67;
    sub_1A84E5C8C();
    v51 = v66;
    sub_1A846C7F0(v76, v66, type metadata accessor for ImportExport.Conversation);
    v52 = sub_1A84E5C7C();
    v53 = sub_1A84E619C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v77 = v55;
      *v54 = 136315138;
      v56 = ImportExport.Conversation.description.getter();
      v57 = v51;
      v59 = v58;
      sub_1A846C790(v57, type metadata accessor for ImportExport.Conversation);
      v60 = sub_1A82446BC(v56, v59, &v77);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_1A823F000, v52, v53, "Failed to import new chat record for conversation: %s", v54, 0xCu);
      sub_1A8244788(v55);
      MEMORY[0x1AC56D3F0](v55, -1, -1);
      MEMORY[0x1AC56D3F0](v54, -1, -1);
    }

    else
    {

      sub_1A846C790(v51, type metadata accessor for ImportExport.Conversation);
    }

    (*(v68 + 8))(v50, v69);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000033, 0x80000001A8532260);
    v61 = ImportExport.Conversation.description.getter();
    MEMORY[0x1AC56A990](v61);

    v62 = v77;
    v63 = v78;
    sub_1A841D4A8();
    swift_allocError();
    *v64 = v62;
    *(v64 + 8) = v63;
    *(v64 + 16) = 4;
    swift_willThrow();
  }
}

unint64_t sub_1A846C3F0()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for ImportExport.Attachment(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v10 = v29[0];
  if (!v29[0])
  {
    v10 = sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  }

  v11 = *(v1 + 320);
  v12 = MEMORY[0x1E69E6158];
  if (v11)
  {
    v13 = *(v1 + 312);
    *&v27 = 0x70756F7247534352;
    *(&v27 + 1) = 0xEB00000000495255;

    v25 = v9;
    sub_1A84E641C();
    v28 = v12;
    *&v27 = v13;
    *(&v27 + 1) = v11;
    sub_1A8243DDC(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v10;
    sub_1A848DC24(v26, v29, isUniquelyReferenced_nonNull_native);
    sub_1A8250D18(v29);
    v15 = v30;
    *&v27 = 0xD000000000000017;
    *(&v27 + 1) = 0x80000001A8532200;
    v16 = v12;
    v9 = v25;
    sub_1A84E641C();
    v28 = MEMORY[0x1E69E6530];
    *&v27 = 1;
    sub_1A8243DDC(&v27, v26);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v15;
    sub_1A848DC24(v26, v29, v17);
    sub_1A8250D18(v29);
    v10 = v30;
  }

  else
  {
    v16 = MEMORY[0x1E69E6158];
  }

  sub_1A8243D74(v1 + *(v9 + 80), v4, &qword_1EB2E6F50, &unk_1A8502920);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
  }

  else
  {
    sub_1A846731C(v4, v8);
    *&v27 = sub_1A84E5DBC();
    *(&v27 + 1) = v18;
    v19 = v16;
    sub_1A84E641C();
    v20 = *v8;
    v21 = v8[1];
    v28 = v19;
    *&v27 = v20;
    *(&v27 + 1) = v21;
    sub_1A8243DDC(&v27, v26);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v10;
    sub_1A848DC24(v26, v29, v22);
    sub_1A8250D18(v29);
    sub_1A846C790(v8, type metadata accessor for ImportExport.Attachment);
    return v30;
  }

  return v10;
}

uint64_t sub_1A846C790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A846C7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A846C858(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E5C9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = [a1 canonicalizedURIString];
    if (!v10)
    {
      sub_1A84E5DBC();
      v10 = sub_1A84E5D8C();
    }

    v11 = [a1 uncanonicalizedURIString];
    v12 = sub_1A84E5DBC();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = &selRef_uncanonicalizedURIString;
    }

    else
    {
      v16 = &selRef_canonicalizedURIString;
    }

    v17 = [a1 *v16];
    v93 = sub_1A84E5DBC();

    v18 = [a1 serviceName];
    sub_1A84E5DBC();
    v20 = v19;

    v99 = 0;
    ImportExport.ServiceType.init(for:default:)(v20, &v99, &v100);
    v21 = v100;
    v22 = [a1 countryCodeString];
    v23 = sub_1A84E5DBC();
    v96 = v24;
    v97 = v23;

    v25 = [a2 _unformattedPhoneNumber];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1A84E5DBC();
      v91 = v28;
      v92 = v27;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }

    v67 = [a2 email];
    if (v67)
    {
      v68 = v67;
      v69 = sub_1A84E5DBC();
      v89 = v70;
      v90 = v69;
    }

    else
    {
      v89 = 0;
      v90 = 0;
    }

    v71 = [a2 fullName];
    if (v71)
    {
      v72 = v71;
      v73 = sub_1A84E5DBC();
      v86 = v74;
      v87 = v73;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v75 = [a2 _contactID];
    v98 = v21;
    if (v75)
    {
      v76 = v75;
      v85 = sub_1A84E5DBC();
      v66 = v77;
    }

    else
    {
      v85 = 0;
      v66 = 0;
    }

    v88 = [a1 rowID];
    v78 = [v10 _stripFZIDPrefix];

    if (v78)
    {
      v79 = sub_1A84E5DBC();
      v94 = v80;
      v95 = v79;

      v81 = sub_1A84E5D8C();
      v82 = [v81 _stripFZIDPrefix];

      if (v82)
      {

        v56 = sub_1A84E5DBC();
        v58 = v83;

        v60 = v91;
        v59 = v92;
        v62 = v89;
        v61 = v90;
        v63 = v87;
        v50 = v88;
        v65 = v85;
        v64 = v86;
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1A84E5C8C();
  v29 = a1;
  v30 = sub_1A84E5C7C();
  v31 = sub_1A84E619C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_1A823F000, v30, v31, "No handle passed in for handleRecord: %@", v32, 0xCu);
    sub_1A845CDA8(v33);
    MEMORY[0x1AC56D3F0](v33, -1, -1);
    MEMORY[0x1AC56D3F0](v32, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v35 = [v29 canonicalizedURIString];
  if (!v35)
  {
    sub_1A84E5DBC();
    v35 = sub_1A84E5D8C();
  }

  v36 = [v29 uncanonicalizedURIString];
  v37 = sub_1A84E5DBC();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = &selRef_uncanonicalizedURIString;
  }

  else
  {
    v41 = &selRef_canonicalizedURIString;
  }

  v42 = [v29 *v41];
  sub_1A84E5DBC();

  v43 = [v29 serviceName];
  sub_1A84E5DBC();
  v45 = v44;

  v101 = 0;
  ImportExport.ServiceType.init(for:default:)(v45, &v101, &v102);
  v46 = v102;
  v47 = [v29 countryCodeString];
  v48 = sub_1A84E5DBC();
  v96 = v49;
  v97 = v48;

  v50 = [v29 rowID];
  v51 = [v35 _stripFZIDPrefix];

  if (!v51)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v98 = v46;
  v52 = sub_1A84E5DBC();
  v94 = v53;
  v95 = v52;

  v54 = sub_1A84E5D8C();
  v55 = [v54 _stripFZIDPrefix];

  if (v55)
  {

    v56 = sub_1A84E5DBC();
    v58 = v57;

    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
LABEL_36:
    v84 = v95;
    *a3 = v50;
    *(a3 + 8) = v84;
    *(a3 + 16) = v94;
    *(a3 + 24) = v56;
    *(a3 + 32) = v58;
    *(a3 + 40) = v98;
    *(a3 + 48) = v97;
    *(a3 + 56) = v96;
    *(a3 + 64) = v59;
    *(a3 + 72) = v60;
    *(a3 + 80) = v61;
    *(a3 + 88) = v62;
    *(a3 + 96) = v63;
    *(a3 + 104) = v64;
    *(a3 + 112) = v65;
    *(a3 + 120) = v66;
    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t static NSISO8601DateFormatter.string(fromDate:)()
{
  v0 = sub_1A84E577C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A84E565C();
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1A824431C(v0, qword_1EB2E7FC8);
  swift_beginAccess();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_1A84E576C();
  (*(v1 + 8))(v3, v0);
  v8 = [ObjCClassFromMetadata stringFromDate:v4 timeZone:v7 formatOptions:1907];

  v9 = sub_1A84E5DBC();
  return v9;
}

id Date.nanosecondTimeInterval.getter(uint64_t a1)
{
  v1 = sub_1A84E565C();
  v2 = [v1 __im_nanosecondTimeInterval];

  return v2;
}

uint64_t sub_1A846D0FC()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E7FE0, &qword_1A8506E00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1A84E577C();
  sub_1A82442B8(v3, qword_1EB2E7FC8);
  v4 = sub_1A824431C(v3, qword_1EB2E7FC8);
  sub_1A84E575C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static TimeZone.utc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E577C();
  v3 = sub_1A824431C(v2, qword_1EB2E7FC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TimeZone.utc.setter(uint64_t a1)
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E577C();
  v3 = sub_1A824431C(v2, qword_1EB2E7FC8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TimeZone.utc.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v1 = sub_1A84E577C();
  sub_1A824431C(v1, qword_1EB2E7FC8);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1A846D468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52[2] = a4;
  v53 = a5;
  v52[1] = a2;
  v10 = sub_1A84E56DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = v14;
  if (!a7)
  {
    v16 = [a1 path];
    sub_1A84E5DBC();
  }

  sub_1A84E5E2C();

  v17 = [a1 guid];
  if (!v17)
  {
    sub_1A84E5DBC();
    v17 = sub_1A84E5D8C();
  }

  [v14 setGuid_];

  v18 = sub_1A84E5D8C();

  [v14 _setLocalPath_];

  v19 = [a1 utiString];
  if (!v19)
  {
    sub_1A84E5DBC();
    v19 = sub_1A84E5D8C();
  }

  [v14 setType_];

  v20 = [a1 createdDate];
  sub_1A84E569C();

  v21 = sub_1A84E565C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  [v14 setCreatedDate_];

  v23 = [a1 startDate];
  sub_1A84E569C();

  v24 = sub_1A84E565C();
  v22(v13, v10);
  [v14 _setStartDate_];

  [v14 _setTransferState_];
  [v14 setIsIncoming_];
  v25 = [a1 transferUserInfo];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1A84E5D3C();

    sub_1A84A5368(v27);

    v28 = sub_1A84E5D2C();
  }

  else
  {
    v28 = 0;
  }

  [v14 setUserInfo_];

  result = [a1 totalBytes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v14 setTotalBytes_];
    v30 = [a1 transferName];
    if (!v30)
    {
      sub_1A84E5DBC();
      v30 = sub_1A84E5D8C();
    }

    [v14 setFilename_];

    v31 = [a1 attributionInfo];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1A84E5D3C();

      sub_1A84A5368(v33);

      v34 = sub_1A84E5D2C();
    }

    else
    {
      v34 = 0;
    }

    [v14 setAttributionInfo_];

    [v14 setIsSticker_];
    v35 = [a1 stickerUserInfo];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1A84E5D3C();

      sub_1A84A5368(v37);

      v38 = sub_1A84E5D2C();
    }

    else
    {
      v38 = 0;
    }

    v39 = v53;
    [v14 setStickerUserInfo_];

    [v14 setHideAttachment_];
    [v14 setCloudKitSyncState_];
    v40 = [a1 cloudServerChangeToken];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1A84E55FC();
      v44 = v43;

      v45 = sub_1A84E55EC();
      sub_1A83F5994(v42, v44);
    }

    else
    {
      v45 = 0;
    }

    [v14 setCloudKitServerChangeTokenBlob_];

    v46 = [a1 cloudRecordID];
    [v14 setCloudKitRecordID_];

    v47 = [a1 originalGUID];
    if (!v47)
    {
      sub_1A84E5DBC();
      v47 = sub_1A84E5D8C();
    }

    [v14 setOriginalGUID_];

    [v14 setCommSafetySensitive_];
    v48 = [a1 emojiImageContentIdentifier];
    if (!v48)
    {
      sub_1A84E5DBC();
      v48 = sub_1A84E5D8C();
    }

    [v14 setAdaptiveImageGlyphContentIdentifier_];

    v49 = [a1 emojiImageShortDescription];
    if (!v49)
    {
      sub_1A84E5DBC();
      v49 = sub_1A84E5D8C();
    }

    [v14 setAdaptiveImageGlyphContentDescription_];

    if (a3)
    {
      v50 = sub_1A84E5D8C();
    }

    else
    {
      v50 = 0;
    }

    [v14 setAccountID_];

    if (v39)
    {
      v51 = sub_1A84E5D8C();
    }

    else
    {
      v51 = 0;
    }

    [v14 setMessageGUID_];

    return v14;
  }

  return result;
}

unint64_t IMFileTransferErrorReason.name.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6F7272456F6ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 2:
      result = 0x654465746F6D6572;
      break;
    case 4:
      result = 0x646574737562;
      break;
    case 5:
      result = 0x74756F656D6974;
      break;
    case 9:
      result = 0x617461446F6ELL;
      break;
    case 10:
      result = 0x614365746F6D6572;
      break;
    case 11:
      result = 0x6E61436C61636F6CLL;
      break;
    case 12:
      result = 0x6E456E6F6D656164;
      break;
    case 13:
      result = 0x6365446C61636F6CLL;
      break;
    case 14:
      result = 0x7974697275636573;
      break;
    case 15:
      result = 0x7463657078656E75;
      break;
    case 16:
      result = 0x727245726568746FLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7265676E6F4C6F6ELL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 21:
      result = 0x746F4E646C756F63;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0x4C6F6F54656C6966;
      break;
    case 25:
      result = 0x72456D6F74737563;
      break;
    case 26:
      result = 0x64657269707865;
      break;
    case 27:
      result = 0x726F7774654E6F6ELL;
      break;
    case 28:
      result = 0x6F685070756F7267;
      break;
    case 29:
      result = 0x64657463656A6572;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 31:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t ImportExport.ArchiveExporter.progress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
  swift_beginAccess();
  v4 = *(v3 + 24);
  a1[3] = type metadata accessor for ImportExport.ExportStatistics();
  a1[4] = &protocol witness table for ImportExport.ExportStatistics;
  *a1 = v4;
}

uint64_t ImportExport.ArchiveExporter.archiveManifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  swift_beginAccess();
  return sub_1A846E154(v1 + v3, a1);
}

uint64_t sub_1A846E154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(withArchivingOptions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveExporter.init(withArchivingOptions:)(a1);
  return v2;
}

uint64_t ImportExport.ArchiveExporter.init(withArchivingOptions:)(uint64_t a1)
{
  v3 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v7 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  sub_1A846E3B0(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A846E3B0(a1, v5, type metadata accessor for ImportExport.ExportOptions);
  type metadata accessor for ImportExport.Exporter(0);
  v8 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB2E8880;

  sub_1A846F310(a1);
  *(v8 + 24) = v9;
  sub_1A846F428(v5, v8 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v8 + 16) = 0;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter) = v8;
  return v1;
}

uint64_t sub_1A846E3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(withArchivingOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImportExport.ArchiveExporter.init(withArchivingOptions:conversations:)(a1, a2);
  return v4;
}

uint64_t ImportExport.ArchiveExporter.init(withArchivingOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v9 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  sub_1A846E3B0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A846E3B0(a1, v7, type metadata accessor for ImportExport.ExportOptions);
  type metadata accessor for ImportExport.Exporter(0);
  v10 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB2E8880;

  sub_1A846F310(a1);
  *(v10 + 24) = v11;
  sub_1A846F428(v7, v10 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v10 + 16) = a2;
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter) = v10;
  return v2;
}

uint64_t ImportExport.ArchiveExporter.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ArchivingOptions(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A846E3B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, v3, type metadata accessor for ImportExport.ArchivingOptions);
  type metadata accessor for ImportExport.ArchiveWritingIterator(0);
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v6 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = v0;
  sub_1A846E3B0(v3, v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A846F310(v3);
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v4;
}

uint64_t sub_1A846E770()
{
  v1 = 0x726574726F707865;
  if (*v0 != 1)
  {
    v1 = 0x4D65766968637261;
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

uint64_t sub_1A846E7DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A846F894(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A846E804(uint64_t a1)
{
  v2 = sub_1A846F3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A846E840(uint64_t a1)
{
  v2 = sub_1A846F3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveExporter.deinit()
{
  sub_1A846F310(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions);

  sub_1A846F36C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest);
  return v0;
}

uint64_t ImportExport.ArchiveExporter.__deallocating_deinit()
{
  sub_1A846F310(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions);

  sub_1A846F36C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveExporter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1A83EA2FC(&qword_1EB2E7FF0, &qword_1A8506E10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1A82471E0(a1, a1[3]);
  sub_1A846F3D4();
  sub_1A84E68AC();
  LOBYTE(v15) = 0;
  type metadata accessor for ImportExport.ArchivingOptions(0);
  sub_1A846F548(&qword_1EB2E8000, type metadata accessor for ImportExport.ArchivingOptions, &protocol conformance descriptor for ImportExport.ArchivingOptions);
  sub_1A84E672C();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
    v16 = 1;
    type metadata accessor for ImportExport.Exporter(0);
    sub_1A846F548(&qword_1EB2E7D30, type metadata accessor for ImportExport.Exporter, &protocol conformance descriptor for ImportExport.Exporter);
    sub_1A84E672C();
    v12 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
    swift_beginAccess();
    sub_1A846E154(v3 + v12, v7);
    v16 = 2;
    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A846F548(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    sub_1A84E66BC();
    sub_1A846F36C(v7);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveExporter.init(from:)(a1);
  return v2;
}

char *ImportExport.ArchiveExporter.init(from:)(void *a1)
{
  v3 = v1;
  v27 = *v3;
  v28 = v2;
  v5 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v24 = type metadata accessor for ImportExport.ArchivingOptions(0);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A83EA2FC(&qword_1EB2E8008, &qword_1A8506E18);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v12 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v13 = a1[3];
  v29 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A846F3D4();
  v14 = v28;
  sub_1A84E689C();
  if (v14)
  {
    sub_1A846F36C(&v3[OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v11;
    v15 = v23;
    v28 = v7;
    LOBYTE(v30) = 0;
    sub_1A846F548(&qword_1EB2E8010, type metadata accessor for ImportExport.ArchivingOptions, &protocol conformance descriptor for ImportExport.ArchivingOptions);
    v16 = v25;
    v17 = v26;
    sub_1A84E666C();
    sub_1A846F428(v16, &v3[OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions], type metadata accessor for ImportExport.ArchivingOptions);
    type metadata accessor for ImportExport.Exporter(0);
    v31 = 1;
    sub_1A846F548(&qword_1EB2E7D58, type metadata accessor for ImportExport.Exporter, &protocol conformance descriptor for ImportExport.Exporter);
    sub_1A84E666C();
    *&v3[OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter] = v30;
    LOBYTE(v30) = 2;
    sub_1A846F548(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    v19 = v28;
    sub_1A84E65FC();
    (*(v15 + 8))(v10, v17);
    v20 = v22;
    swift_beginAccess();
    sub_1A846F490(v19, &v3[v20]);
    swift_endAccess();
  }

  sub_1A8244788(v29);
  return v3;
}

uint64_t sub_1A846F12C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ImportExport.ArchivingOptions(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A846E3B0(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, v5, type metadata accessor for ImportExport.ArchivingOptions);
  type metadata accessor for ImportExport.ArchiveWritingIterator(0);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v9 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = v6;
  sub_1A846E3B0(v5, v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A846F310(v5);
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];

  *a1 = v7;
  return result;
}

char *sub_1A846F294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ArchiveExporter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A846F310(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ArchivingOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A846F36C(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A846F3D4()
{
  result = qword_1EB2E7FF8;
  if (!qword_1EB2E7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7FF8);
  }

  return result;
}

uint64_t sub_1A846F428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A846F490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A846F548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ImportExport.ArchiveExporter(uint64_t a1)
{
  result = qword_1EB2E8020;
  if (!qword_1EB2E8020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A846F5E4(uint64_t a1)
{
  type metadata accessor for ImportExport.ArchivingOptions(319);
  if (v1 <= 0x3F)
  {
    sub_1A846F724(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A846F724(uint64_t a1)
{
  if (!qword_1EB2E8030)
  {
    type metadata accessor for ImportExport.ArchiveManifest(255);
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E8030);
    }
  }
}

unint64_t sub_1A846F790()
{
  result = qword_1EB2E8038;
  if (!qword_1EB2E8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8038);
  }

  return result;
}

unint64_t sub_1A846F7E8()
{
  result = qword_1EB2E8040;
  if (!qword_1EB2E8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8040);
  }

  return result;
}

unint64_t sub_1A846F840()
{
  result = qword_1EB2E8048;
  if (!qword_1EB2E8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8048);
  }

  return result;
}

uint64_t sub_1A846F894(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A85323B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726574726F707865 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

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

uint64_t sub_1A846FA88()
{
  if (!*&v0[OBJC_IVAR___IMCloudKitSyncProgress_descriptor + 8])
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR___IMCloudKitSyncProgress_descriptor];
  v2 = qword_1EB2E46B8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_1A84E5C9C();
  sub_1A824431C(v3, qword_1EB2FEFF8);
  v4 = v0;
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E619C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v4 type];

    _os_log_impl(&dword_1A823F000, v5, v6, "Progress label is null for %ld", v7, 0xCu);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  return v1;
}

id sub_1A846FF48(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A84E5D8C();

  return v5;
}

uint64_t IMCloudKitSyncProgress.description.getter()
{
  v1 = v0;
  v2 = [v0 percentCompleteString];
  if (v2)
  {
    v3 = v2;
    v52 = sub_1A84E5DBC();
    v53 = v4;
  }

  else
  {
    v52 = 7104878;
    v53 = 0xE300000000000000;
  }

  v5 = [v0 userMessageLabel];
  if (v5)
  {
    v6 = v5;
    v56 = sub_1A84E5DBC();
    v57 = v7;
  }

  else
  {
    v56 = 7104878;
    v57 = 0xE300000000000000;
  }

  v8 = [v0 actionLabel];
  if (v8)
  {
    v9 = v8;
    v54 = sub_1A84E5DBC();
    v55 = v10;
  }

  else
  {
    v54 = 7104878;
    v55 = 0xE300000000000000;
  }

  sub_1A8244B68(0, &qword_1EB2E8050, 0x1E696ADA0);
  v11 = sub_1A84E61EC();
  [v0 progressBarValue];
  v12 = sub_1A84E60DC();
  v13 = [v11 stringFromNumber_];

  if (v13)
  {
    v51 = sub_1A84E5DBC();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v51 = 7104878;
  }

  v16 = sub_1A84E61EC();
  [v0 progressBarMax];
  v17 = sub_1A84E60DC();
  v18 = [v16 stringFromNumber_];

  if (v18)
  {
    v19 = sub_1A84E5DBC();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v22 = sub_1A84E61EC();
  [v0 remainingItems];
  v23 = sub_1A84E60DC();
  v24 = [v22 stringFromNumber_];

  if (v24)
  {
    v25 = sub_1A84E5DBC();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1A84E646C();
  v58.receiver = v1;
  v58.super_class = IMCloudKitSyncProgress;
  v28 = objc_msgSendSuper2(&v58, sel_description);
  v29 = sub_1A84E5DBC();
  v31 = v30;

  MEMORY[0x1AC56A990](v29, v31);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85323D0);
  MEMORY[0x1AC56A990](v52, v53);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  MEMORY[0x1AC56A990](v51, v15);

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  MEMORY[0x1AC56A990](v19, v21);

  MEMORY[0x1AC56A990](8236, 0xE200000000000000);
  MEMORY[0x1AC56A990](v25, v27);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A85323F0);
  v32 = [v1 type];
  if (v32 > 2)
  {
    if (v32 <= 4)
    {
      if (v32 == 3)
      {
        v33 = 0x80000001A852FA00;
        v34 = 0xD000000000000012;
      }

      else
      {
        v33 = 0x80000001A852FBB0;
        v34 = 0xD000000000000015;
      }

      goto LABEL_36;
    }

    if (v32 == 5)
    {
      v35 = "deviceStorageIsFull";
      goto LABEL_34;
    }

    if (v32 == 6)
    {
      v35 = "keyRollPendingError";
LABEL_34:
      v33 = (v35 - 32) | 0x8000000000000000;
      v34 = 0xD000000000000013;
      goto LABEL_36;
    }

LABEL_31:
    v33 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

  if (!v32)
  {
    v33 = 0xE900000000000067;
    v34 = 0x6E69636E79537369;
    goto LABEL_36;
  }

  if (v32 != 1)
  {
    if (v32 == 2)
    {
      v33 = 0xE600000000000000;
      v34 = 0x6E6564646968;
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v33 = 0xE600000000000000;
  v34 = 0x646573756170;
LABEL_36:
  MEMORY[0x1AC56A990](v34, v33);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8532410);
  v36 = [v1 progressLabel];
  v37 = sub_1A84E5DBC();
  v39 = v38;

  MEMORY[0x1AC56A990](v37, v39);

  MEMORY[0x1AC56A990](0x6D2072657375202CLL, 0xEF20656761737365);
  MEMORY[0x1AC56A990](v56, v57);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8532430);
  MEMORY[0x1AC56A990](v54, v55);

  MEMORY[0x1AC56A990](0x6E6564646968202CLL, 0xE900000000000020);
  v40 = [v1 isHidden];
  v41 = v40 == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v42, v43);

  MEMORY[0x1AC56A990](0x206574617473202CLL, 0xE800000000000000);
  v44 = [v1 syncState];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 description];

    v47 = sub_1A84E5DBC();
    v49 = v48;
  }

  else
  {
    v49 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x1AC56A990](v47, v49);

  return v59;
}

void __swiftcall IMCloudKitSyncProgress.init()(IMCloudKitSyncProgress *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t IMCloudKitSyncProgressType.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E69636E79537369;
      case 1:
        return 0x646573756170;
      case 2:
        return 0x6E6564646968;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000013;
    }

    if (a1 == 6)
    {
      return 0xD000000000000013;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000015;
  }
}

id sub_1A847094C(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_type] = a1;
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_syncState] = a2;
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_syncStatistics] = a3;
  if (a3)
  {
    v7 = a2;
    v8 = a3;
    v9 = [v8 syncedRecordCount];
    *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarValue] = v9;
    v10 = [v8 totalRecordCount];
  }

  else
  {
    *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarValue] = 0;
    v11 = a2;
    v10 = 0.0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarMax] = v10;
  sub_1A84C1728(a1, a2, v17);
  v12 = &v3[OBJC_IVAR___IMCloudKitSyncProgress_descriptor];
  v13 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v13;
  v14 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v14;
  v16.receiver = v3;
  v16.super_class = IMCloudKitSyncProgress;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_1A8470A54()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  if (v2)
  {
    if ([v0 syncStatus] == 1)
    {
      return [v0 hasNotSyncedInLastSevenDays];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = [v0 isSyncing];
    if (result)
    {
      result = [v0 hasNotSyncedInLastSevenDays];
      if (result)
      {
        return ([v0 syncingFailed] ^ 1);
      }
    }
  }

  return result;
}

id sub_1A8470B58()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  result = [v0 shouldSendSyncProgress];
  if (result)
  {
    v4 = &selRef_syncJobState;
    if (!v2)
    {
      v4 = &selRef_syncControllerSyncState;
    }

    return ([v0 *v4] == 4);
  }

  return result;
}

BOOL sub_1A8470C28()
{
  v1 = v0;
  v2 = sub_1A84E56DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - v7;
  v8 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = [objc_opt_self() sharedFeatureFlags];
  v21 = [v20 isMessagesIniCloudVersion2];

  if (v21)
  {
    v22 = [v1 lastFullSyncDate];
    if (v22)
    {
      v23 = v22;
      sub_1A84E569C();

      (*(v3 + 56))(v17, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v17, 1, 1, v2);
    }
  }

  else
  {
    v24 = [v1 lastSyncDate];
    if (v24)
    {
      v25 = v24;
      sub_1A84E569C();

      (*(v3 + 56))(v14, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v14, 1, 1, v2);
    }

    v17 = v14;
  }

  sub_1A83F8010(v17, v19);
  sub_1A843ED60(v19, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_1A8471100(v11);
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v26 = sub_1A84E5C9C();
    sub_1A824431C(v26, qword_1EB2FEFF8);
    v27 = sub_1A84E5C7C();
    v28 = sub_1A84E61BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1A823F000, v27, v28, "No last sync date so we obviously haven't synced in the last week.", v29, 2u);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
    }

    sub_1A8471100(v19);
    return 1;
  }

  else
  {
    v31 = v36;
    (*(v3 + 32))(v36, v11, v2);
    sub_1A84E56CC();
    sub_1A84E564C();
    v33 = v32;
    v34 = *(v3 + 8);
    v34(v6, v2);
    v34(v31, v2);
    sub_1A8471100(v19);
    return v33 >= 604800.0;
  }
}

uint64_t sub_1A8471100(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImportExport.ReportItem.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

char *ImportExport.Report.add(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A83EEBEC((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[32 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v2;
  *(v10 + 6) = v5;
  *(v10 + 7) = v4;
  *(v1 + 16) = v6;
  return result;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(v1 + 24);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EECF8(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = sub_1A83EECF8((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  *(v11 + 4) = v3;
  *(v11 + 5) = v2;
  *(v11 + 6) = v4;
  *(v11 + 7) = v5;
  v11[64] = v6;
  *(v1 + 24) = v7;
  return result;
}

Swift::Void __swiftcall ImportExport.Report.add(reportNamed:forList:)(Swift::String reportNamed, Swift::OpaquePointer forList)
{
  object = reportNamed._object;
  countAndFlagsBits = reportNamed._countAndFlagsBits;
  v5 = *(forList._rawValue + 2);
  if (v5)
  {
    v19 = reportNamed._countAndFlagsBits;

    v7 = (forList._rawValue + 40);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A83EEBEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1A83EEBEC((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[32 * v12];
      *(v13 + 4) = 0;
      *(v13 + 5) = 0xE000000000000000;
      *(v13 + 6) = v10;
      *(v13 + 7) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
    LOBYTE(v5) = 0;
    countAndFlagsBits = v19;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v2 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1A83EECF8(0, *(v14 + 2) + 1, 1, v14);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1A83EECF8((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[40 * v17];
  *(v18 + 4) = countAndFlagsBits;
  *(v18 + 5) = object;
  *(v18 + 6) = v8;
  *(v18 + 7) = v15;
  v18[64] = v5;
  *(v2 + 24) = v14;
}

uint64_t ImportExportReportable.formattedReport.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = (*(a2 + 8))();
  v7[1] = v4;
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = MEMORY[0x1E69E7CC0];
  v8 = 0;
  (*(a2 + 16))(v7, a1, a2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v5 = sub_1A84E5D6C();

  return v5;
}

char *ImportExportReportable.reportLines.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = (*(a2 + 8))();
  v7[1] = v4;
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = MEMORY[0x1E69E7CC0];
  v8 = 0;
  (*(a2 + 16))(v7, a1, a2);
  v5 = sub_1A8471734(0);

  return v5;
}

uint64_t ImportExport.Report.init(reportNamed:items:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  return result;
}

uint64_t ImportExport.ReportItem.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t ImportExportReportable.report.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = (*(a2 + 8))();
  *(a3 + 8) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  v8 = *(a2 + 16);

  return v8(a3, a1, a2);
}

char *sub_1A8471734(unint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  v67 = *(v7 + 16);
  if (v67 || *(v6 + 16))
  {
    v78 = *v1;
    v79 = v5;
    v80 = v7;
    v81 = v6;
    v82 = v8;
    v9 = &v78;
    result = sub_1A847355C();
    v61 = a1;
    v62 = result;
    v64 = v6;
    v66 = v7;
    if (a1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (!v67)
      {
        goto LABEL_32;
      }

LABEL_17:
      v20 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_63;
      }

      v20 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_64;
      }

      if ((v61 - 0x1FFFFFFFFFFFFFFFLL) >> 62 != 3)
      {
        goto LABEL_65;
      }

      v5 = 0;
      v22 = (v7 + 56);
      while (1)
      {
        v20 = *(v7 + 16);
        if (v5 >= v20)
        {
          break;
        }

        v23 = *v22;
        v68 = *(v22 - 1);
        v24 = *(v22 - 3);
        v25 = *(v22 - 2);
        v78 = 0;
        v79 = 0xE000000000000000;
        sub_1A840D3B0();

        v26 = sub_1A84E639C();
        v27 = HIBYTE(v25) & 0xF;
        v78 = v26;
        v79 = v28;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v29 = 8250;
        }

        else
        {
          v29 = 8224;
        }

        v30 = sub_1A84E639C();
        MEMORY[0x1AC56A990](v30);

        MEMORY[0x1AC56A990](v29, 0xE200000000000000);

        MEMORY[0x1AC56A990](v68, v23);

        v2 = v78;
        v8 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A824A1FC(0, *(v11 + 2) + 1, 1, v11);
        }

        v32 = *(v11 + 2);
        v31 = *(v11 + 3);
        v9 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v11 = sub_1A824A1FC((v31 > 1), v32 + 1, 1, v11);
        }

        ++v5;
        *(v11 + 2) = v9;
        v33 = &v11[16 * v32];
        *(v33 + 4) = v2;
        *(v33 + 5) = v8;
        v22 += 4;
        v7 = v66;
        if (v67 == v5)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        do
        {
          __break(1u);
LABEL_69:
          v11 = sub_1A824A1FC((v20 > 1), v9, 1, v11);
LABEL_16:
          v7 = v66;
          *(v11 + 2) = v9;
          v21 = &v11[16 * v5];
          *(v21 + 4) = v2;
          *(v21 + 5) = v8;
          if (v67)
          {
            goto LABEL_17;
          }

LABEL_32:
          v34 = v64;
          v63 = *(v64 + 16);
          if (!v63)
          {
            return v11;
          }

          v20 = v61;
          v5 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_66;
          }

          v20 = v62 + 1;
          v61 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_67;
          }

          v20 = (v5 - 0x2000000000000000) >> 62;
        }

        while (v20 != 3);
        v9 = 0;
        v60 = v5;
        v62 = v64 + 32;
        while (1)
        {
          v20 = *(v34 + 16);
          if (v9 >= v20)
          {
            break;
          }

          v69 = v9;
          v35 = v62 + 40 * v9;
          v37 = *v35;
          v36 = *(v35 + 8);
          v38 = *(v35 + 16);
          v39 = *(v35 + 24);
          v2 = *(v35 + 32);
          v78 = *v35;
          v79 = v36;
          v80 = v38;
          v81 = v39;
          v82 = v2;

          v9 = &v78;
          v40 = sub_1A8471734(v5);
          v8 = 0xE000000000000000;
          v78 = 0;
          v79 = 0xE000000000000000;
          v66 = v39;
          v67 = v38;
          if (v2 == 1)
          {
            v41 = *(v38 + 16);
            v42 = *(v39 + 16);
            v43 = __OFADD__(v41, v42);
            v20 = v41 + v42;
            if (v43)
            {
              goto LABEL_62;
            }

            v72 = sub_1A84E676C();
            v76 = v44;
            MEMORY[0x1AC56A990](0x746E656D656C4520, 0xE900000000000073);
            v8 = v76;
            v65 = v72;
          }

          else
          {
            v65 = 0;
          }

          sub_1A840D3B0();
          v45 = sub_1A84E639C();
          v46 = HIBYTE(v36) & 0xF;
          v73 = v45;
          v77 = v47;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v46 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            v48 = 8250;
          }

          else
          {
            v48 = 8224;
          }

          v49 = sub_1A84E639C();
          MEMORY[0x1AC56A990](v49);

          MEMORY[0x1AC56A990](v48, 0xE200000000000000);

          MEMORY[0x1AC56A990](v65, v8);

          MEMORY[0x1AC56A990](v73, v77);

          v50 = v78;
          v8 = v79;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1A824A1FC(0, *(v11 + 2) + 1, 1, v11);
          }

          v52 = *(v11 + 2);
          v51 = *(v11 + 3);
          if (v52 >= v51 >> 1)
          {
            v11 = sub_1A824A1FC((v51 > 1), v52 + 1, 1, v11);
          }

          *(v11 + 2) = v52 + 1;
          v53 = &v11[16 * v52];
          *(v53 + 4) = v50;
          *(v53 + 5) = v8;
          v2 = *(v40 + 16);
          if (v2)
          {
            v54 = 0;
            v55 = 16 * v52;
            v56 = v52 + 2;
            do
            {
              v57 = *(v40 + v54 + 32);
              v8 = *(v40 + v54 + 40);
              v58 = *(v11 + 3);

              if (v56 - 1 >= v58 >> 1)
              {
                v11 = sub_1A824A1FC((v58 > 1), v56, 1, v11);
              }

              *(v11 + 2) = v56;
              v59 = &v11[v55 + v54];
              *(v59 + 6) = v57;
              *(v59 + 7) = v8;
              v54 += 16;
              ++v56;
              --v2;
            }

            while (v2);
          }

          v9 = v69 + 1;

          v34 = v64;
          v5 = v60;
          if (v69 + 1 == v63)
          {
            return v11;
          }
        }
      }
    }

    v78 = 0;
    v79 = 0xE000000000000000;
    if (!v8)
    {
      v14 = 0;
      v13 = 0xE000000000000000;
LABEL_10:
      sub_1A84E5E7C();
      sub_1A840D3B0();
      v15 = sub_1A84E639C();
      v16 = HIBYTE(v5) & 0xF;
      v71 = v15;
      v75 = v17;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v16 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v18 = 8250;
      }

      else
      {
        v18 = 8224;
      }

      v19 = sub_1A84E639C();
      MEMORY[0x1AC56A990](v19);

      MEMORY[0x1AC56A990](v18, 0xE200000000000000);

      MEMORY[0x1AC56A990](v14, v13);

      MEMORY[0x1AC56A990](v71, v75);

      v2 = v78;
      v8 = v79;
      v11 = sub_1A824A1FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v11 + 2);
      v20 = *(v11 + 3);
      v9 = v5 + 1;
      if (v5 >= v20 >> 1)
      {
        goto LABEL_69;
      }

      goto LABEL_16;
    }

    if (!__OFADD__(*(v7 + 16), *(v6 + 16)))
    {
      v70 = sub_1A84E676C();
      v74 = v12;
      MEMORY[0x1AC56A990](0x746E656D656C4520, 0xE900000000000073);
      v14 = v70;
      v13 = v74;
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ImportExport.Report.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.Report.init(listNamed:items:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  return result;
}

char *ImportExport.Report.add(value:)(uint64_t a1)
{
  sub_1A84E652C();
  v2 = *(v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v2 + 2) + 1, 1, v2);
    v2 = result;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    result = sub_1A83EEBEC((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[32 * v5];
  *(v6 + 4) = 0;
  *(v6 + 5) = 0xE000000000000000;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0xE000000000000000;
  *(v1 + 16) = v2;
  return result;
}

char *ImportExport.Report.add(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A84E652C();
  v6 = *(v3 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A83EEBEC((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[32 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0xE000000000000000;
  *(v3 + 16) = v6;
  return result;
}

double ImportExport.Report.add(reportNamed:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_1A82471E0(a3, v6);

  return sub_1A8473744(a1, a2, v8, v3, v6, v7);
}

uint64_t ImportExport.Report.add(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_1A82471E0(a1, v2);

  return sub_1A847362C(v4, v1, v2, v3);
}

Swift::Void __swiftcall ImportExport.Report.add(reportNamed:for:)(Swift::String reportNamed, Swift::OpaquePointer a2)
{
  countAndFlagsBits = reportNamed._countAndFlagsBits;
  rawValue = a2._rawValue;
  v38 = 0;
  v4 = a2._rawValue + 64;
  v5 = 1 << *(a2._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2._rawValue + 8);
  v8 = (v5 + 63) >> 6;
  object = reportNamed._object;

  v30 = rawValue;

  v9 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_5:
    if (v8 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v7 = 0;
        v34 = 0u;
        v35 = 0u;
        v9 = v12;
        v33 = 0u;
        goto LABEL_14;
      }

      v7 = *&v4[8 * v10];
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    v2 = sub_1A83EECF8(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_23;
  }

  while (1)
  {
    v10 = v9;
LABEL_13:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (v30[6] + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1A8244F40(v30[7] + 32 * v14, v32);
    *&v33 = v16;
    *(&v33 + 1) = v17;
    sub_1A8243DDC(v32, &v34);

LABEL_14:
    v36 = v33;
    v37[0] = v34;
    v37[1] = v35;
    rawValue = *(&v33 + 1);
    if (!*(&v33 + 1))
    {
      break;
    }

    v18 = v36;
    sub_1A8243DDC(v37, &v33);
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_1A84E652C();
    v2 = *(&v32[0] + 1);
    v19 = *&v32[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1A83EEBEC(0, *(v31 + 2) + 1, 1, v31);
    }

    v21 = *(v31 + 2);
    v20 = *(v31 + 3);
    if (v21 >= v20 >> 1)
    {
      v31 = sub_1A83EEBEC((v20 > 1), v21 + 1, 1, v31);
    }

    sub_1A8244788(&v33);
    *(v31 + 2) = v21 + 1;
    v22 = &v31[32 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = rawValue;
    *(v22 + 6) = v19;
    *(v22 + 7) = v2;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(rawValue) = v38;
  v9 = v27;
  v2 = *(v27 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v23 = MEMORY[0x1E69E7CC0];
  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1A83EECF8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[40 * v25];
  *(v26 + 4) = countAndFlagsBits;
  *(v26 + 5) = object;
  *(v26 + 6) = v31;
  *(v26 + 7) = v23;
  v26[64] = rawValue;
  *(v9 + 24) = v2;
}

uint64_t sub_1A847249C()
{
  v1 = 1701667182;
  v2 = 0x6E6572646C696863;
  if (*v0 != 2)
  {
    v2 = 0x7473694C7369;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
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

uint64_t sub_1A8472508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8473F98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8472530(uint64_t a1)
{
  v2 = sub_1A8473910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847256C(uint64_t a1)
{
  v2 = sub_1A8473910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Report.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E8090, &qword_1A8507038);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v8;
  v15[1] = *(v1 + 32);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  sub_1A82471E0(v10, v9);
  sub_1A8473910();
  sub_1A84E68AC();
  LOBYTE(v19) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1A83EA2FC(&qword_1EB2E80A0, &qword_1A8507040);
    sub_1A8473A84(&qword_1EB2E80A8, sub_1A8473964, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v19 = v13;
    v18 = 2;
    sub_1A83EA2FC(&qword_1EB2E80B8, &qword_1A8507048);
    sub_1A84739B8(&qword_1EB2E80C0, sub_1A8473A30, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    LOBYTE(v19) = 3;
    sub_1A84E66DC();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t ImportExport.Report.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E80D0, &qword_1A8507050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473910();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v21) = 0;
  v9 = sub_1A84E660C();
  v19 = v10;
  sub_1A83EA2FC(&qword_1EB2E80A0, &qword_1A8507040);
  v20 = 1;
  sub_1A8473A84(&qword_1EB2E80D8, sub_1A8473AFC, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  v18 = v21;
  sub_1A83EA2FC(&qword_1EB2E80B8, &qword_1A8507048);
  v20 = 2;
  sub_1A84739B8(&qword_1EB2E80E8, sub_1A8473B50, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  v17 = v21;
  LOBYTE(v21) = 3;
  v12 = sub_1A84E661C();
  (*(v6 + 8))(v8, v5);
  v13 = v12 & 1;
  v15 = v18;
  v14 = v19;
  *a2 = v9;
  *(a2 + 8) = v14;
  v16 = v17;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;

  sub_1A8244788(a1);
}

uint64_t ImportExport.ReportItem.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.ReportItem.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A8472C58()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1A8472C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A8472D60(uint64_t a1)
{
  v2 = sub_1A8473BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8472D9C(uint64_t a1)
{
  v2 = sub_1A8473BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ReportItem.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E80F8, &qword_1A8507058);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473BA4();
  sub_1A84E68AC();
  v12 = 0;
  v8 = v10[3];
  sub_1A84E66CC();
  if (!v8)
  {
    v11 = 1;
    sub_1A84E66CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImportExport.ReportItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8108, &qword_1A8507060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8473BA4();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v19 = 0;
  v9 = sub_1A84E660C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1A84E660C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_1A8244788(a1);
}

uint64_t ImportExport.ReportItem.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = *v0;

    MEMORY[0x1AC56A990](8250, 0xE200000000000000);
    MEMORY[0x1AC56A990](v2, v3);
    return v6;
  }

  else
  {
  }

  return v2;
}

uint64_t ImportExport.Report.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A84E646C();

  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0x3A736D657469203ALL, 0xE900000000000020);
  v5 = *(v3 + 16);
  if (v5)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v5, 0);
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v10 = *(v6 - 3) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v31 = *(v6 - 3);
        swift_bridgeObjectRetain_n();

        MEMORY[0x1AC56A990](8250, 0xE200000000000000);
        MEMORY[0x1AC56A990](v9, v8);

        v9 = v31;
        v8 = v7;
      }

      else
      {
      }

      v12 = *(v32 + 16);
      v11 = *(v32 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF534((v11 > 1), v12 + 1, 1);
      }

      *(v32 + 16) = v12 + 1;
      v13 = v32 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v14 = sub_1A84E5D6C();
  v16 = v15;

  MEMORY[0x1AC56A990](v14, v16);

  MEMORY[0x1AC56A990](0x72646C696863202CLL, 0xEC000000203A6E65);
  v17 = *(v4 + 16);
  if (v17)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v17, 0);
    v18 = v33;
    v19 = v4 + 64;
    do
    {
      v20 = ImportExport.Report.description.getter();
      v34 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = v20;
        v26 = v21;
        sub_1A83EF534((v22 > 1), v23 + 1, 1);
        v21 = v26;
        v20 = v25;
        v18 = v34;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  v27 = sub_1A84E5D6C();
  v29 = v28;

  MEMORY[0x1AC56A990](v27, v29);

  return 0x203A74726F706552;
}

uint64_t sub_1A847355C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (!v3)
  {
    v4 = 0;
    v7 = *(v2 + 16);
    if (!v7)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = 0;
  v5 = v1 + 40;
  do
  {

    v6 = sub_1A84E5E7C();

    if (v6 > v4)
    {
      v4 = v6;
    }

    v5 += 32;
    --v3;
  }

  while (v3);
  v7 = *(v2 + 16);
  if (v7)
  {
LABEL_9:
    v8 = v2 + 40;
    do
    {

      v9 = sub_1A84E5E7C();

      if (v9 > v4)
      {
        v4 = v9;
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return v4;
}

uint64_t sub_1A847362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(a4 + 8))(a3, a4);
  sub_1A8473744(v10, v11, v9, a2, a3, a4);

  return (*(v7 + 8))(v9, a3);
}

double sub_1A8473744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v14, v15);
  v26 = a1;
  *&v27 = a2;
  *(&v27 + 1) = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v29 = 0;
  v16 = *(a6 + 16);

  v16(&v26, a5, a6);
  (*(v11 + 8))(v13, a5);
  v17 = v26;
  v25 = v27;
  v18 = v28;
  v19 = v29;
  v20 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1A83EECF8(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1A83EECF8((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[40 * v22];
  *(v23 + 4) = v17;
  result = *&v25;
  *(v23 + 40) = v25;
  *(v23 + 7) = v18;
  v23[64] = v19;
  *(a4 + 24) = v20;
  return result;
}

unint64_t sub_1A8473910()
{
  result = qword_1EB2E8098;
  if (!qword_1EB2E8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8098);
  }

  return result;
}

unint64_t sub_1A8473964()
{
  result = qword_1EB2E80B0;
  if (!qword_1EB2E80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80B0);
  }

  return result;
}

uint64_t sub_1A84739B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E80B8, &qword_1A8507048);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8473A30()
{
  result = qword_1EB2E80C8;
  if (!qword_1EB2E80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80C8);
  }

  return result;
}

uint64_t sub_1A8473A84(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E80A0, &qword_1A8507040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8473AFC()
{
  result = qword_1EB2E80E0;
  if (!qword_1EB2E80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80E0);
  }

  return result;
}

unint64_t sub_1A8473B50()
{
  result = qword_1EB2E80F0;
  if (!qword_1EB2E80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E80F0);
  }

  return result;
}

unint64_t sub_1A8473BA4()
{
  result = qword_1EB2E8100;
  if (!qword_1EB2E8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8100);
  }

  return result;
}

__n128 sub_1A8473C20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8473C34(uint64_t a1, int a2)
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

uint64_t sub_1A8473C7C(uint64_t result, int a2, int a3)
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

uint64_t sub_1A8473CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A8473D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8473D8C()
{
  result = qword_1EB2E8110;
  if (!qword_1EB2E8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8110);
  }

  return result;
}

unint64_t sub_1A8473DE4()
{
  result = qword_1EB2E8118;
  if (!qword_1EB2E8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8118);
  }

  return result;
}

unint64_t sub_1A8473E3C()
{
  result = qword_1EB2E8120;
  if (!qword_1EB2E8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8120);
  }

  return result;
}

unint64_t sub_1A8473E94()
{
  result = qword_1EB2E8128;
  if (!qword_1EB2E8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8128);
  }

  return result;
}

unint64_t sub_1A8473EEC()
{
  result = qword_1EB2E8130;
  if (!qword_1EB2E8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8130);
  }

  return result;
}

unint64_t sub_1A8473F44()
{
  result = qword_1EB2E8138;
  if (!qword_1EB2E8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8138);
  }

  return result;
}

uint64_t sub_1A8473F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C7369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A84740F4()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return 0;
  }

  sub_1A8474400();
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = sub_1A84E620C();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7104878;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  sub_1A84E646C();
  sub_1A840D3B0();
  v9 = sub_1A84E635C();
  v11 = v10;

  MEMORY[0x1AC56A990](v9, v11);

  MEMORY[0x1AC56A990](8250, 0xE200000000000000);
  MEMORY[0x1AC56A990](v7, v8);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  v12 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  v13 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v13);

  result = MEMORY[0x1AC56A990](8236, 0xE200000000000000);
  if (v3 < v4)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v14);

    MEMORY[0x1AC56A990](0x696E69616D657220, 0xEC000000202C676ELL);
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    MEMORY[0x1AC56A990](0x6C6F7365726E7520, 0xEC00000029646576);
    return 0;
  }

  return result;
}

unint64_t sub_1A8474400()
{
  result = qword_1EB2E8050;
  if (!qword_1EB2E8050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8050);
  }

  return result;
}

uint64_t sub_1A847444C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[40])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1A84744A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1A84744FC(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8158, &qword_1A8507510);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8474D90();
  sub_1A84E68AC();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  sub_1A84E671C();
  v10[12] = 2;
  sub_1A84E671C();
  v10[11] = 3;
  sub_1A84E671C();
  v10[10] = 4;
  sub_1A84E671C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A84746F4()
{
  v1 = *v0;
  v2 = 0x707954746E756F63;
  v3 = 0x6C61746F74;
  v4 = 0x736574656C6564;
  if (v1 != 3)
  {
    v4 = 0x766C6F7365726E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E7973;
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

uint64_t sub_1A8474790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8474990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84747B8(uint64_t a1)
{
  v2 = sub_1A8474D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84747F4(uint64_t a1)
{
  v2 = sub_1A8474D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A8474830@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A8474B48(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_1A8474890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A84748E0(v5, v7);
}

BOOL sub_1A84748E0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    if (v3 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 5)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    v6 = sub_1A8436500(v2, v3);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return a1[4] == a2[4];
  }

  return 0;
}

uint64_t sub_1A8474990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465636E7973 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736574656C6564 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A8474B48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8140, &qword_1A8507508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8474D90();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v21 = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v9 = v22;
  v20 = 1;
  v10 = sub_1A84E665C();
  v19 = 2;
  v16 = sub_1A84E665C();
  v18 = 3;
  v15 = sub_1A84E665C();
  v17 = 4;
  v11 = sub_1A84E665C();
  (*(v6 + 8))(v8, v5);
  result = sub_1A8244788(a1);
  *a2 = v9;
  v13 = v15;
  v14 = v16;
  *(a2 + 8) = v10;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_1A8474D90()
{
  result = qword_1EB2E8148;
  if (!qword_1EB2E8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8148);
  }

  return result;
}

unint64_t sub_1A8474DE4()
{
  result = qword_1EB2E8150;
  if (!qword_1EB2E8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8150);
  }

  return result;
}

unint64_t sub_1A8474E38()
{
  result = qword_1EB2E8160;
  if (!qword_1EB2E8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8160);
  }

  return result;
}

unint64_t sub_1A8474EA0()
{
  result = qword_1EB2E8168;
  if (!qword_1EB2E8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8168);
  }

  return result;
}

unint64_t sub_1A8474EF8()
{
  result = qword_1EB2E8170;
  if (!qword_1EB2E8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8170);
  }

  return result;
}

unint64_t sub_1A8474F50()
{
  result = qword_1EB2E8178;
  if (!qword_1EB2E8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8178);
  }

  return result;
}

uint64_t sub_1A8474FB0()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84750A8(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A847518C(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

unint64_t sub_1A8475280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A84754D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A84752B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7374616863;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D686361747461;
  v7 = 0xEE00736574616470;
  v8 = 0x556567617373656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001A852EE20;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x736567617373656DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1A8475378()
{
  result = qword_1EB2E8180;
  if (!qword_1EB2E8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8180);
  }

  return result;
}

unint64_t sub_1A847547C()
{
  result = qword_1EB2E8188;
  if (!qword_1EB2E8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8188);
  }

  return result;
}

unint64_t sub_1A84754D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A84E65AC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A847551C()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v0[1] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v14 = sub_1A84E5D8C();
    v13 = sub_1A84E5D8C();

    v4 = sub_1A84E5D8C();
    v5 = sub_1A84E5D8C();
    v6 = sub_1A84E5D8C();

    v7 = sub_1A84E5D8C();
    v2 = IMDHandleRecordCreate();

    if (!v2)
    {
      sub_1A84E646C();

      v10 = ImportExport.ParticipantAddress.description.getter();
      MEMORY[0x1AC56A990](v10);

      sub_1A84023CC();
      swift_allocError();
      *v11 = 0xD000000000000019;
      *(v11 + 8) = 0x80000001A8532220;
      *(v11 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1A84E646C();

    v8 = ImportExport.ParticipantAddress.description.getter();
    MEMORY[0x1AC56A990](v8);

    MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8532720);
    sub_1A84023CC();
    swift_allocError();
    *v9 = 0xD000000000000019;
    *(v9 + 8) = 0x80000001A8532220;
    *(v9 + 16) = 1;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1A8475A14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v82 - v9);
  v100 = [a1 rowID];
  v11 = [a1 guid];
  v99 = sub_1A84E5DBC();
  v13 = v12;

  v14 = [a1 chatIdentifier];
  v98 = sub_1A84E5DBC();
  v16 = v15;

  LODWORD(v96) = [a1 style];
  v17 = [a1 groupID];
  if (v17)
  {
    v18 = v17;
    v97 = sub_1A84E5DBC();
    v102 = v19;
  }

  else
  {
    v97 = 0;
    v102 = 0;
  }

  v20 = [a1 groupName];
  if (v20)
  {
    v21 = v16;
    v22 = v13;
    v23 = v20;
    v95 = sub_1A84E5DBC();
    v101 = v24;

    v13 = v22;
    v16 = v21;
  }

  else
  {
    v95 = 0;
    v101 = 0;
  }

  sub_1A84761F4(v115);
  if (v2)
  {
  }

  v112 = v115[6];
  v113 = v115[7];
  v114 = v115[8];
  v108 = v115[2];
  v109 = v115[3];
  v110 = v115[4];
  v111 = v115[5];
  v106 = v115[0];
  v107 = v115[1];
  sub_1A84764B4();
  v91 = v26;
  v92 = v13;
  v93 = v7;
  v94 = v10;
  v90 = sub_1A8476C64();
  v27 = [a1 serviceName];
  sub_1A84E5DBC();
  v29 = v28;

  LOBYTE(v104[0]) = 0;
  ImportExport.ServiceType.init(for:default:)(v29, v104, &v117);
  v30 = v117;
  v31 = [a1 isFiltered];
  if (v31 >= 5)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  v89 = v32;
  v33 = [a1 lastAddressedHandle];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1A84E5DBC();
    v87 = v36;
    v88 = v35;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v37 = v94;
  v38 = sub_1A8476D94();
  v85 = v39;
  v86 = v38;
  v40 = sub_1A8477308();
  v83 = v41;
  v84 = v40;
  v42 = [a1 properties];
  v116 = v30;
  if (v42)
  {
    v43 = v42;
    v82 = sub_1A84E5D3C();

    sub_1A847A2F0();
    if (v44)
    {
      goto LABEL_18;
    }

LABEL_21:
    v50 = type metadata accessor for ImportExport.Attachment(0);
    (*(*(v50 - 8) + 56))(v37, 1, 1, v50);
    goto LABEL_24;
  }

  v82 = 0;
  sub_1A847A2F0();
  if (!v49)
  {
    goto LABEL_21;
  }

LABEL_18:
  v45 = sub_1A84E5D8C();
  v46 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v46)
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

    v48 = v94;
    sub_1A8492848(v47, v94);
    v81 = type metadata accessor for ImportExport.Attachment(0);
    (*(*(v81 - 8) + 56))(v48, 0, 1, v81);
  }

  else
  {

    v51 = v94;
    v52 = type metadata accessor for ImportExport.Attachment(0);
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
  }

LABEL_24:
  v53 = v96 == 45;
  v96 = type metadata accessor for ImportExport.Conversation(0);
  v54 = *(v96 + 84);
  *&v104[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v55 = v99;
  *a2 = v100;
  *(a2 + 8) = v55;
  v57 = v97;
  v56 = v98;
  *(a2 + 16) = v92;
  *(a2 + 24) = v56;
  *(a2 + 32) = v16;
  *(a2 + 40) = v53;
  v58 = v102;
  *(a2 + 48) = v57;
  *(a2 + 56) = v58;
  v59 = v101;
  *(a2 + 64) = v95;
  *(a2 + 72) = v59;
  v60 = v113;
  *(a2 + 192) = v112;
  *(a2 + 208) = v60;
  *(a2 + 224) = v114;
  v61 = v109;
  *(a2 + 128) = v108;
  *(a2 + 144) = v61;
  v62 = v111;
  *(a2 + 160) = v110;
  *(a2 + 176) = v62;
  v63 = v107;
  *(a2 + 96) = v106;
  *(a2 + 112) = v63;
  v105 = v91;
  sub_1A8400E7C(&v106, v104);

  sub_1A841D43C(&v105);

  *(a2 + 240) = v105;
  *(a2 + 248) = v90 & 1;
  v64 = v116;
  *(a2 + 272) = v116;
  *(a2 + 273) = v89;
  v65 = v87;
  *(a2 + 280) = v88;
  *(a2 + 288) = v65;
  v66 = v85;
  *(a2 + 296) = v86;
  *(a2 + 304) = v66;
  v67 = v83;
  *(a2 + 312) = v84;
  *(a2 + 320) = v67;
  v68 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v68 - 8) + 8))(a2 + v54, v68);
  *&v104[0] = v82;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v69 = v94;
  sub_1A8415BC8(v94, a2 + *(v96 + 80));
  if ((*(&v107 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*(&v107 + 1) >= *(v107 + 16))
  {
LABEL_44:
    __break(1u);

    __break(1u);
    return result;
  }

  v70 = (v107 + (*(&v107 + 1) << 7));
  v71 = v70[4];
  v72 = v70[5];
  v73 = v70[3];
  v104[0] = v70[2];
  v104[1] = v73;
  v104[2] = v71;
  v104[3] = v72;
  v74 = v70[6];
  v75 = v70[7];
  v76 = v70[9];
  v104[6] = v70[8];
  v104[7] = v76;
  v104[4] = v74;
  v104[5] = v75;
  v78 = *(&v104[0] + 1);
  v77 = v73;
  sub_1A840243C(v104, &v103);
  sub_1A8400ED8(&v106);

  sub_1A841E128(v104);
  *(a2 + 80) = v78;
  *(a2 + 88) = v77;

  if (v64 > 3)
  {
    if (v64 > 5)
    {
      if (v64 == 6)
      {
        v79 = 0xE300000000000000;
        v80 = 5456722;
      }

      else
      {
        v79 = 0xEC000000534D5365;
        v80 = 0x74696C6C65746153;
      }
    }

    else if (v64 == 4)
    {
      v80 = 5459283;
      v79 = 0xE300000000000000;
    }

    else
    {
      v79 = 0xE800000000000000;
      v80 = 0x656D695465636146;
    }
  }

  else if (v64 > 1)
  {
    if (v64 == 2)
    {
      v79 = 0xE800000000000000;
    }

    else
    {
      v79 = 0xEC0000006574694CLL;
    }

    v80 = 0x6567617373654D69;
  }

  else if (v64)
  {
    v79 = 0xE300000000000000;
    v80 = 7958113;
  }

  else
  {
    v79 = 0xE700000000000000;
    v80 = 0x6E776F6E6B6E75;
  }

  result = sub_1A824B2D4(v69, &qword_1EB2E6F50, &unk_1A8502920);
  *(a2 + 256) = v80;
  *(a2 + 264) = v79;
  return result;
}
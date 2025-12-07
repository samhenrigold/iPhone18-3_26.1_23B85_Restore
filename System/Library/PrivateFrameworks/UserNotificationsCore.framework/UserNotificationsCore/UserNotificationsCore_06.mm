void *sub_1DA886204(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1DA8863EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E38, &qword_1DA95D538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA88650C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DC0, &qword_1DA95D480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA886670(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1DA8867C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1DA886938(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DA886B14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DB8, &qword_1DA95D478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t IncomingSyncPayload.sectionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IncomingSyncPayload.sectionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IncomingSyncPayload.universalSectionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IncomingSyncPayload.universalSectionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IncomingSyncPayload.dismissalIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t IncomingSyncPayload.dismissalItemsDictionaries.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall IncomingSyncPayload.init(sectionID:universalSectionID:platform:feeds:dismissalIDs:dismissalItemsDictionaries:)(UserNotificationsCore::IncomingSyncPayload *__return_ptr retstr, Swift::String sectionID, Swift::String_optional universalSectionID, UserNotificationsCore::DismissalSyncPlatform platform, UserNotificationsCore::DismissalSyncFeeds feeds, Swift::OpaquePointer dismissalIDs, Swift::OpaquePointer dismissalItemsDictionaries)
{
  v7 = *platform;
  v8 = *feeds.rawValue;
  retstr->sectionID = sectionID;
  retstr->universalSectionID = universalSectionID;
  retstr->platform = v7;
  retstr->feeds.rawValue = v8;
  retstr->dismissalIDs = dismissalIDs;
  retstr->dismissalItemsDictionaries = dismissalItemsDictionaries;
}

uint64_t sub_1DA886E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DA886EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA886F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DA7B7470;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DA8870D0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DA941214();
    v5 = v4;
    v6 = sub_1DA9412B4();
    v8 = v7;
    v9 = MEMORY[0x1E1272310](v3, v5, v6, v7);
    sub_1DA8883BC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1DA8883BC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1DA9411E4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1DA887F6C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1DA8883BC(v3, v5, v2 != 0);
  return v12;
}

void sub_1DA8871EC(uint64_t a1)
{
  v73[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA887AB4();
  v4 = MEMORY[0x1E69E7CD0];
  v72 = MEMORY[0x1E69E7CD0];
  v69 = *(v1 + 16);
  v5 = [*(v69 + 16) accounts];
  if (v5)
  {
    v6 = v5;
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    sub_1DA888354();
    v4 = sub_1DA940E94();
  }

  v7 = sub_1DA8870D0(v4);

  if (v7)
  {
    v8 = IDSCopyIDForAccount();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1DA940A14();
      v12 = v11;

      sub_1DA8A9058(v73, v10, v12);
    }

    else
    {
    }
  }

  if (qword_1ECBD47D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  __swift_project_value_buffer(v13, qword_1ECBE3DE8);

  v14 = sub_1DA940584();
  v15 = sub_1DA940F34();

  v68 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v73[0] = v17;
    *v16 = 136315650;
    swift_beginAccess();

    v18 = sub_1DA940EA4();
    v20 = v19;

    v21 = sub_1DA7AE6E8(v18, v20, v73);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1DA940EA4();
    v24 = sub_1DA7AE6E8(v22, v23, v73);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = sub_1DA940984();
    v27 = sub_1DA7AE6E8(v25, v26, v73);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1DA7A9000, v14, v15, "sending IDS message to cloudDestinations %s and localDestinations %s. Message: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v17, -1, -1);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  swift_beginAccess();
  v28 = 0x1FA9D2000uLL;
  if (*(v72 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E50, &unk_1DA95D6E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA958370;
    *(inited + 32) = sub_1DA940A14();
    v30 = MEMORY[0x1E69E6370];
    *(inited + 40) = v31;
    *(inited + 72) = v30;
    *(inited + 48) = 0;
    *(inited + 80) = sub_1DA940A14();
    *(inited + 88) = v32;
    *(inited + 120) = MEMORY[0x1E69E6530];
    *(inited + 96) = 172800;
    v33 = sub_1DA849034(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B8, &qword_1DA95B140);
    swift_arrayDestroy();
    sub_1DA859A10(a1);

    sub_1DA8A7BF4(v34);

    sub_1DA859CFC(v33);

    v71 = 0;
    v35 = *(v69 + 16);
    v36 = sub_1DA940964();

    v37 = sub_1DA940E84();

    v38 = sub_1DA940964();
    v28 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;

    v70 = 0;
    LODWORD(v35) = [v35 sendMessage:v36 toDestinations:v37 priority:100 options:v38 identifier:&v71 error:&v70];

    if (v35)
    {
      v39 = v71;
      v40 = v70;
      v41 = v39;
      if (!*(v3 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v49 = v70;
      v50 = sub_1DA93F8C4();

      swift_willThrow();
      v41 = v71;
      v51 = sub_1DA940F14();
      v52 = v50;
      v53 = sub_1DA940584();

      if (os_log_type_enabled(v53, v51))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v50;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_1DA7A9000, v53, v51, "sending to cloud failed with error %@", v54, 0xCu);
        sub_1DA828378(v55);
        MEMORY[0x1E12739F0](v55, -1, -1);
        MEMORY[0x1E12739F0](v54, -1, -1);
      }

      else
      {
      }

      a1 = v68;
      v28 = 0x1FA9D2000;
      if (!*(v3 + 16))
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v41 = 0;
    if (!*(v3 + 16))
    {
LABEL_24:

      return;
    }
  }

  v42 = sub_1DA888190(1);
  sub_1DA859A10(a1);
  sub_1DA8A7BF4(v3);

  sub_1DA859CFC(v42);

  v71 = v41;
  v43 = *(v69 + 16);
  v44 = sub_1DA940964();

  v45 = sub_1DA940E84();

  v46 = sub_1DA940964();

  v70 = 0;
  v47 = [v43 (v28 + 2296)];

  if (v47)
  {
    v48 = v70;
  }

  else
  {
    v58 = v70;
    v59 = sub_1DA93F8C4();

    swift_willThrow();
    v60 = v71;

    v61 = sub_1DA940F14();
    v62 = v59;
    v63 = sub_1DA940584();

    if (os_log_type_enabled(v63, v61))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v59;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v67;
      *v65 = v67;
      _os_log_impl(&dword_1DA7A9000, v63, v61, "sending to local devices failed with error %@", v64, 0xCu);
      sub_1DA828378(v65);
      MEMORY[0x1E12739F0](v65, -1, -1);
      MEMORY[0x1E12739F0](v64, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DA887AB4()
{
  v1 = [*(*(v0 + 16) + 16) devices];
  if (v1)
  {
    v2 = v1;
    sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
    v3 = sub_1DA940BE4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_30:
    v5 = sub_1DA941264();
    p_cb = &OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_31:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  p_cb = &OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb;
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_6:
  v7 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v8 = v3 & 0xC000000000000001;
  v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
  v45 = v3 & 0xC000000000000001;
  v46 = v3;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x1E1272460](v10, v3);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (![v11 v9[438]])
      {
        if (*(p_cb + 250) != -1)
        {
          swift_once();
        }

        v14 = sub_1DA9405A4();
        __swift_project_value_buffer(v14, qword_1ECBE3DE8);
        v15 = v12;
        v12 = sub_1DA940584();
        v16 = sub_1DA940F34();

        if (os_log_type_enabled(v12, v16))
        {
          v17 = swift_slowAlloc();
          v18 = v5;
          v19 = v4;
          v20 = p_cb;
          v21 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v15;
          *v21 = v15;
          v22 = v15;
          _os_log_impl(&dword_1DA7A9000, v12, v16, "Found non-default device %@", v17, 0xCu);
          sub_1DA828378(v21);
          v23 = v21;
          p_cb = v20;
          v4 = v19;
          v5 = v18;
          v3 = v46;
          MEMORY[0x1E12739F0](v23, -1, -1);
          v24 = v17;
          v8 = v45;
          MEMORY[0x1E12739F0](v24, -1, -1);
        }

        v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
        goto LABEL_9;
      }

      v13 = IDSCopyIDForDevice();
      if (v13)
      {
        break;
      }

LABEL_9:

      ++v10;
      if (v7 == v5)
      {
        goto LABEL_32;
      }
    }

    v25 = v13;
    v26 = sub_1DA940A14();
    v28 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1DA7B6928(0, *(v44 + 2) + 1, 1, v44);
    }

    v32 = *(v44 + 2);
    v31 = *(v44 + 3);
    if (v32 >= v31 >> 1)
    {
      v44 = sub_1DA7B6928((v31 > 1), v32 + 1, 1, v44);
    }

    *(v44 + 2) = v32 + 1;
    v33 = &v44[16 * v32];
    *(v33 + 4) = v26;
    *(v33 + 5) = v28;
    v8 = v30;
    v9 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
  }

  while (v7 != v5);
LABEL_32:

  v34 = sub_1DA8AD06C(v44);

  if (*(v34 + 16) > 1uLL)
  {
    if (*(p_cb + 250) != -1)
    {
      swift_once();
    }

    v35 = sub_1DA9405A4();
    __swift_project_value_buffer(v35, qword_1ECBE3DE8);
    v36 = sub_1DA940F14();

    v37 = sub_1DA940584();

    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      v40 = sub_1DA940EA4();
      v42 = sub_1DA7AE6E8(v40, v41, &v47);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1DA7A9000, v37, v36, "Found more than one default paired device: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E12739F0](v39, -1, -1);
      MEMORY[0x1E12739F0](v38, -1, -1);
    }
  }

  return v34;
}

void sub_1DA887F6C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E1272360](a1, a2, v7);
      sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DA7AF3EC(0, &unk_1ECBD7180, 0x1E69A4828);
    if (sub_1DA941244() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1DA941254();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1DA941104();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1DA941114();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_1DA888190(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E50, &unk_1DA95D6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  *(inited + 32) = sub_1DA940A14();
  v3 = MEMORY[0x1E69E6370];
  *(inited + 40) = v4;
  *(inited + 72) = v3;
  *(inited + 48) = 0;
  *(inited + 80) = sub_1DA940A14();
  *(inited + 88) = v5;
  v6 = MEMORY[0x1E69E6530];
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 172800;
  v7 = sub_1DA849034(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B8, &qword_1DA95B140);
  swift_arrayDestroy();
  if (a1)
  {
    v8 = sub_1DA940A14();
    v10 = v9;
    v19 = v6;
    *&v18 = 5;
    sub_1DA848FE8(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v17, v8, v10, isUniquelyReferenced_nonNull_native);

    v12 = sub_1DA940A14();
    v14 = v13;
    v19 = v3;
    LOBYTE(v18) = 1;
    sub_1DA848FE8(&v18, v17);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90B6A0(v17, v12, v14, v15);
  }

  return v7;
}

unint64_t sub_1DA888354()
{
  result = qword_1ECBD5E58;
  if (!qword_1ECBD5E58)
  {
    sub_1DA7AF3EC(255, &unk_1ECBD7180, 0x1E69A4828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E58);
  }

  return result;
}

uint64_t sub_1DA8883BC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DA8883C8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 137) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1DA93FEC4();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_1DA9401F4();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA88851C, 0, 0);
}

uint64_t sub_1DA88851C()
{
  v100 = v0;
  if ((*(v0 + 137) | 2) != 2)
  {
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);
    v25 = *(v0 + 40);
    v26 = sub_1DA9405A4();
    __swift_project_value_buffer(v26, qword_1EE110E20);
    v7 = *(v23 + 16);
    v7(v22, v25, v24);
    v8 = sub_1DA940584();
    v27 = sub_1DA940F34();
    v28 = os_log_type_enabled(v8, v27);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    if (v28)
    {
      v98 = v7;
      v29 = *(v0 + 137);
      v30 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v99 = v95;
      *v30 = 136315394;
      *(v0 + 136) = v29;
      v31 = sub_1DA940A74();
      v33 = sub_1DA7AE6E8(v31, v32, &v99);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v34 = sub_1DA941614();
      v36 = v35;
      (*(v12 + 8))(v11, v13);
      v37 = v34;
      v7 = v98;
      v38 = sub_1DA7AE6E8(v37, v36, &v99);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1DA7A9000, v8, v27, "Skipping fetch for action: %s %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v95, -1, -1);
      v21 = v30;
      goto LABEL_11;
    }

LABEL_12:

    (*(v12 + 8))(v11, v13);
    goto LABEL_13;
  }

  v1 = sub_1DA9401C4();
  if (v1)
  {

    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 40);
    v6 = sub_1DA9405A4();
    __swift_project_value_buffer(v6, qword_1EE110E20);
    v7 = *(v4 + 16);
    v7(v2, v5, v3);
    v8 = sub_1DA940584();
    v9 = sub_1DA940F34();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v99 = v97;
      *v14 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v94 = v9;
      v15 = v7;
      v16 = sub_1DA941614();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = v16;
      v7 = v15;
      v20 = sub_1DA7AE6E8(v19, v18, &v99);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v8, v94, "Notification already has source - skipping fetch: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x1E12739F0](v97, -1, -1);
      v21 = v14;
LABEL_11:
      MEMORY[0x1E12739F0](v21, -1, -1);

LABEL_13:
      v7(*(v0 + 32), *(v0 + 40), *(v0 + 80));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v41 = *(v0 + 48);
  v42 = *(v41 + 16);
  v43 = *(v41 + 24);
  swift_getObjectType();
  v44 = sub_1DA940014();
  v45 = (*(v43 + 8))(v44);

  if (v45)
  {
    v46 = *(*(v0 + 88) + 16);
    v46(*(v0 + 128), *(v0 + 40), *(v0 + 80));
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 120);
    v48 = *(v0 + 80);
    v49 = *(v0 + 40);
    v50 = sub_1DA9405A4();
    __swift_project_value_buffer(v50, qword_1EE110E20);
    v46(v47, v49, v48);

    v51 = sub_1DA940584();
    v52 = sub_1DA940F34();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 120);
    v55 = *(v0 + 80);
    v56 = *(v0 + 88);
    if (v53)
    {
      v96 = v52;
      v58 = *(v0 + 64);
      v57 = *(v0 + 72);
      v90 = v43;
      v59 = *(v0 + 56);
      v91 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v99 = v93;
      *v91 = 136315394;
      log = v51;
      sub_1DA940124();
      sub_1DA889240(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
      v60 = sub_1DA941614();
      v61 = v55;
      v63 = v62;
      (*(v58 + 8))(v57, v59);
      (*(v56 + 8))(v54, v61);
      v64 = sub_1DA7AE6E8(v60, v63, &v99);

      *(v91 + 4) = v64;
      *(v91 + 12) = 2080;
      *(v0 + 16) = v42;
      *(v0 + 24) = v90;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v65 = sub_1DA940A74();
      v67 = sub_1DA7AE6E8(v65, v66, &v99);

      *(v91 + 14) = v67;
      _os_log_impl(&dword_1DA7A9000, log, v96, "Fetching settings for notification %s from: %s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v93, -1, -1);
      MEMORY[0x1E12739F0](v91, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v54, v55);
    }

    v85 = *(v0 + 128);
    v86 = *(v0 + 80);
    v87 = *(v0 + 88);
    v88 = *(v0 + 32);
    sub_1DA9401D4();
    (*(v87 + 32))(v88, v85, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  else
  {
    if (qword_1EE110E18 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 112);
    v69 = *(v0 + 80);
    v70 = *(v0 + 88);
    v71 = *(v0 + 40);
    v72 = sub_1DA9405A4();
    __swift_project_value_buffer(v72, qword_1EE110E20);
    (*(v70 + 16))(v68, v71, v69);
    v73 = sub_1DA940584();
    v74 = sub_1DA940F14();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 112);
    v77 = *(v0 + 80);
    v78 = *(v0 + 88);
    if (v75)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v99 = v80;
      *v79 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v81 = sub_1DA941614();
      v83 = v82;
      (*(v78 + 8))(v76, v77);
      v84 = sub_1DA7AE6E8(v81, v83, &v99);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_1DA7A9000, v73, v74, "Fetching failed: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1E12739F0](v80, -1, -1);
      MEMORY[0x1E12739F0](v79, -1, -1);
    }

    else
    {

      (*(v78 + 8))(v76, v77);
    }

    v89 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    *(v89 + 24) = &type metadata for SectionSettingsFetchActor.ActorError;
    *(v89 + 32) = sub_1DA8891EC();
    sub_1DA93FF14();
    sub_1DA93FF34();
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1DA888F60(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA8883C8(a1, a2, a3);
}

UNNotificationSettings_optional __swiftcall UNNotificationSettingsCenter.settings(for:)(Swift::String a1)
{
  v2 = sub_1DA940A04();
  v3 = [v1 sourceWithIdentifier_];

  if (v3)
  {
    v5 = [v3 sourceSettings];

    v3 = [v5 notificationSettings];
  }

  v6 = v3;
  result.value.super.isa = v6;
  result.is_nil = v4;
  return result;
}

id sub_1DA8890B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA940A04();
  v4 = [v2 sourceWithIdentifier_];

  if (v4)
  {
    v5 = [v4 sourceSettings];

    v4 = [v5 notificationSettings];
  }

  return v4;
}

uint64_t sub_1DA88916C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E20);
  __swift_project_value_buffer(v0, qword_1EE110E20);
  return sub_1DA940594();
}

unint64_t sub_1DA8891EC()
{
  result = qword_1EE111F18;
  if (!qword_1EE111F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F18);
  }

  return result;
}

uint64_t sub_1DA889240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA88929C()
{
  result = qword_1EE111F28;
  if (!qword_1EE111F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F28);
  }

  return result;
}

unint64_t sub_1DA8892F0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA88929C();
  result = sub_1DA889320();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA889320()
{
  result = qword_1EE111F20;
  if (!qword_1EE111F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111F20);
  }

  return result;
}

uint64_t ToolServiceClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ToolServiceClient.init()();
  return v0;
}

uint64_t ToolServiceClient.init()()
{
  v1 = sub_1DA9405E4();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DA940674();
  sub_1DA7AC344();
  sub_1DA940FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
  *(swift_allocObject() + 16) = xmmword_1DA9596E0;
  sub_1DA9405D4();
  sub_1DA88B8E8(&unk_1EE110D10, MEMORY[0x1E69E8498], MEMORY[0x1E69E84A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
  sub_1DA84AA04();
  sub_1DA9411D4();
  *(v0 + 16) = sub_1DA9405C4();
  sub_1DA8896D0();
  return v0;
}

void sub_1DA8896D0()
{
  if (*(v0 + 16))
  {

    sub_1DA940644();
    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11AFD0);

    oslog = sub_1DA940584();
    v5 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_1DA940674();

      v8 = sub_1DA940A74();
      v10 = sub_1DA7AE6E8(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DA7A9000, oslog, v5, "configureSession() session: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E12739F0](v7, -1, -1);
      MEMORY[0x1E12739F0](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v1 = sub_1DA9405A4();
    __swift_project_value_buffer(v1, qword_1EE11AFD0);
    oslog = sub_1DA940584();
    v2 = sub_1DA940F14();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v2, "configureSession(): No XPC listener found", v3, 2u);
      MEMORY[0x1E12739F0](v3, -1, -1);
    }
  }
}

uint64_t sub_1DA889A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = a4;
  *(v4 + 64) = 1;
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_1DA88B984;

  return sub_1DA889B24(v4 + 16);
}

uint64_t sub_1DA889B24(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA889B44, 0, 0);
}

uint64_t sub_1DA889B44()
{
  v1 = *(v0[5] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1DA889CC4;
    v5 = MEMORY[0x1E69E6158];

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1DA88B7A0, v3, v5);
  }

  else
  {
    sub_1DA88B74C();
    swift_allocError();
    *v6 = xmmword_1DA95D870;
    *(v6 + 16) = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DA889CC4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DA889E48;
  }

  else
  {

    v2 = sub_1DA889DE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA889DE0()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1DA889E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA889EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA889EE0, 0, 0);
}

uint64_t sub_1DA889EE0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = v5;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;

  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1DA889FB8;

  return sub_1DA889B24(v0 + 16);
}

uint64_t sub_1DA889FB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 136) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA88A138, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1DA88A138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA88A1B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = 0;
  *(v5 + 64) = 2;
  v6 = swift_task_alloc();
  *(v5 + 72) = v6;
  *v6 = v5;
  v6[1] = sub_1DA88B984;

  return sub_1DA889B24(v5 + 16);
}

uint64_t sub_1DA88A264()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 4;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DA88A30C;

  return sub_1DA889B24(v0 + 16);
}

uint64_t sub_1DA88A30C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1DA88A41C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DA88A4AC, 0, 0);
}

uint64_t sub_1DA88A4AC()
{
  v1 = objc_opt_self();
  v2 = sub_1DA940964();
  *(v0 + 72) = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v0 + 72];

  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = sub_1DA93F9A4();
    v7 = v6;

    *(v0 + 96) = v5;
    *(v0 + 104) = v7;
    *(v0 + 16) = v5;
    *(v0 + 24) = v7;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 3;
    sub_1DA841874(v5, v7);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1DA88A69C;

    return sub_1DA889B24(v0 + 16);
  }

  else
  {
    v10 = v4;
    sub_1DA93F8C4();

    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1DA88A69C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_1DA88A894;
  }

  else
  {
    v8 = v6[12];
    v9 = v6[13];
    v6[16] = a2;
    v6[17] = a1;
    sub_1DA828324(v8, v9);
    v7 = sub_1DA88A800;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA88A800()
{
  v1.n128_f64[0] = sub_1DA828324(v0[12], v0[13]);
  v2 = v0[1];
  v4 = v0[16];
  v3 = v0[17];

  return v2(v3, v4, v1);
}

uint64_t sub_1DA88A894()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1DA828324(v1, v2);
  v3.n128_f64[0] = sub_1DA828324(v1, v2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t ToolServiceClient.deinit()
{
  if (*(v0 + 16))
  {

    sub_1DA940634();
  }

  return v0;
}

uint64_t ToolServiceClient.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1DA940634();
  }

  return swift_deallocClassInstance();
}

double sub_1DA88AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v9 = *(a3 + 16);
  v13[1] = *a3;
  v13[2] = v9;
  v13[3] = *(a3 + 32);
  v14 = *(a3 + 48);
  (*(v6 + 16))(v13 - v7, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  sub_1DA88B824();
  sub_1DA940614();

  return result;
}

uint64_t sub_1DA88ABD0(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA9407A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E78, &qword_1DA95D938);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1DA88B878(a1, &v21 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_1DA88B8E8(&qword_1ECBD5E80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    v13 = swift_allocError();
    (*(v3 + 16))(v14, v5, v2);
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
    sub_1DA940C44();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1DA88B930();
    sub_1DA940794();
    v17 = v22;
    v16 = v23;
    if (v24 < 0)
    {
      v18 = v24 & 0x7F;
      sub_1DA88B74C();
      v19 = swift_allocError();
      *v20 = v17;
      *(v20 + 8) = v16;
      *(v20 + 16) = v18;
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
      sub_1DA940C44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
      sub_1DA940C54();
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t dispatch thunk of ToolServiceClient.summarize(groupIdentifier:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 96) + **(*v4 + 96));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DA88B988;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToolServiceClient.summarize(notificationIdentifier:bundleIdentifier:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DA88B988;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ToolServiceClient.set(isHighlight:for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DA88B988;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ToolServiceClient.stateCapture()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA88B520;

  return v4();
}

uint64_t sub_1DA88B520(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of ToolServiceClient.simulateNotificationPushResponse(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA88B988;

  return v6(a1);
}

unint64_t sub_1DA88B74C()
{
  result = qword_1ECBD5E60;
  if (!qword_1ECBD5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E60);
  }

  return result;
}

uint64_t sub_1DA88B7A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);

  return sub_1DA88ABD0(a1);
}

unint64_t sub_1DA88B824()
{
  result = qword_1ECBD5E70;
  if (!qword_1ECBD5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E70);
  }

  return result;
}

uint64_t sub_1DA88B878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E78, &qword_1DA95D938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA88B8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA88B930()
{
  result = qword_1ECBD5E88;
  if (!qword_1ECBD5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5E88);
  }

  return result;
}

uint64_t sub_1DA88B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7660;

  return v9(a1, a2, a3);
}

uint64_t sub_1DA88BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7660;

  return v9(a1, a2, a3);
}

void sub_1DA88BBDC(void *result, uint64_t a2, uint64_t *a3)
{
  v12 = MEMORY[0x1E69E7CC0];
  v4 = result[2];
  if (v4)
  {
    v8 = 0;
    do
    {
      for (i = v8; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECBD5EA0, &unk_1DA95DA18) - 8);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        sub_1DA88C6D0(result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a2, a3, &v11);
        if (v3)
        {

          return;
        }

        if (v11)
        {
          break;
        }

        if (v8 == v4)
        {
          return;
        }
      }

      MEMORY[0x1E1271CA0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA940C04();
      }

      sub_1DA940C14();
    }

    while (v8 != v4);
  }
}

uint64_t sub_1DA88BD58(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1DA93FAF4();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v2[20] = *(v4 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA88BE2C, 0, 0);
}

uint64_t sub_1DA88BE2C()
{
  v44 = v0;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AFA0);
  v42 = *(v3 + 16);
  v42(v1, v4, v2);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[19];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136446210;
    sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v14 = sub_1DA941614();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1DA7AE6E8(v14, v16, &v43);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Removing items older than: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[21];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[17];
  v22 = v0[18];
  v0[14] = 0;
  v39 = v19;
  v40 = v21;
  v23 = v0[16];
  v0[15] = 0xE000000000000000;
  v24 = sub_1DA940A14();
  MEMORY[0x1E1271BD0](v24);

  MEMORY[0x1E1271BD0](2112544, 0xE300000000000000);
  v38 = v23;
  sub_1DA93F9D4();
  sub_1DA940E74();
  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  v25 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v26 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v41 = v25;
  v27 = sub_1DA940A04();

  v28 = [v26 initWithQueryString:v27 queryContext:v41];

  v29 = sub_1DA940BD4();
  [v28 setBundleIDs_];

  v42(v18, v23, v22);
  v30 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v31 = swift_allocObject();
  v32 = *(v20 + 32);
  v32(v31 + v30, v18, v22);
  *(v31 + ((v30 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v0[6] = sub_1DA8917C8;
  v0[7] = v31;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7B8FEC;
  v0[5] = &block_descriptor_22_0;
  v33 = _Block_copy(v0 + 2);

  [v28 setFoundItemsHandler_];
  _Block_release(v33);
  v42(v18, v38, v22);
  v34 = swift_allocObject();
  v32(v34 + v30, v18, v22);
  v0[12] = sub_1DA891864;
  v0[13] = v34;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1DA7B1BFC;
  v0[11] = &block_descriptor_28_0;
  v35 = _Block_copy(v0 + 8);

  [v28 setCompletionHandler_];
  _Block_release(v35);
  [v28 start];

  v36 = v0[1];

  return v36();
}

unint64_t sub_1DA88C3BC(unint64_t result, void *a2, uint64_t a3)
{
  v20[3] = a3;
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E1272460](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = [v7 uniqueIdentifier];
        v11 = sub_1DA940A14();
        v13 = v12;

        v14 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20[0] = *a2;
        *a2 = 0x8000000000000000;
        sub_1DA90B8B0(v14, v11, v13, isUniquelyReferenced_nonNull_native);

        *a2 = v20[0];
        v16 = [v14 uniqueIdentifier];
        v17 = sub_1DA940A14();
        v19 = v18;

        sub_1DA8A9058(v20, v17, v19);

        if (v9 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1DA941264();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1DA88C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DA941764();
  sub_1DA940AB4();
  v6 = sub_1DA941794();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1DA88C660()
{
  v0 = sub_1DA940A04();
  v1 = [objc_opt_self() serviceForClientIdentifier_];

  qword_1EE113178 = v1;
}

void sub_1DA88C6D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v141 = a4;
  v137 = a2;
  v138 = a3;
  v5 = sub_1DA93FAF4();
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v126 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v129 = v117 - v8;
  v9 = sub_1DA93FE74();
  v131 = *(v9 - 8);
  v132 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v130 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B80, &unk_1DA95CCE0);
  v139 = *(v11 - 8);
  v140 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v136 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v142 = v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v135 = v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v134 = v117 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v117 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v117 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECBD5EA0, &unk_1DA95DA18);
  v27 = a1;
  sub_1DA9402F4();
  v28 = sub_1DA940394();
  v31 = *(v16 + 8);
  v29 = v16 + 8;
  v30 = v31;
  v133 = v25;
  v31(v25, v15);
  v32 = *(v28 + 16);

  if (v32 >= 2)
  {
    v125 = v27;
    sub_1DA9402F4();
    v33 = v142;
    sub_1DA9403B4();
    v124 = v15;
    v123 = v29;
    v30(v23, v15);
    v34 = v139;
    v35 = v140;
    v36 = v139 + 88;
    v120 = *(v139 + 88);
    v37 = v120(v33, v140);
    v38 = *MEMORY[0x1E69DF250];
    v41 = *(v34 + 8);
    v39 = v34 + 8;
    v40 = v41;
    v41(v33, v35);
    if (v37 != v38)
    {
      v119 = v36;
      v118 = v38;
      v117[0] = v40;
      v117[1] = v39;
      v121 = v30;
      v122 = v26;
      v44 = v131;
      v43 = v132;
      (*(v131 + 56))(v129, 1, 1, v132);
      v45 = v130;
      sub_1DA93FE34();
      v46 = objc_allocWithZone(MEMORY[0x1E6964E90]);
      v47 = sub_1DA93FE54();
      v48 = [v46 initWithContentType_];

      (*(v44 + 8))(v45, v43);
      v49 = objc_allocWithZone(MEMORY[0x1E6964E00]);
      v50 = sub_1DA940A04();
      v51 = [v49 initWithKeyName_];

      if (v51)
      {
        sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
        v52 = v126;
        sub_1DA93FAC4();
        sub_1DA93F9D4();
        (*(v127 + 8))(v52, v128);
        v53 = sub_1DA9410D4();
        [v48 setValue:v53 forCustomKey:v51];

        v54 = v124;
      }

      else
      {
        v54 = v124;
        if (qword_1EE114E00 != -1)
        {
          swift_once();
        }

        v55 = sub_1DA9405A4();
        __swift_project_value_buffer(v55, qword_1EE11AFA0);
        v53 = sub_1DA940584();
        v56 = sub_1DA940F24();
        if (os_log_type_enabled(v53, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          MEMORY[0x1E12739F0](v57, -1, -1);
        }
      }

      v58 = v121;

      v59 = sub_1DA940A04();
      v132 = v48;
      [v48 setDomainIdentifier_];

      v60 = v133;
      sub_1DA9402F4();
      v61 = sub_1DA940394();
      v58(v60, v54);
      v62 = v134;
      sub_1DA9402F4();
      v142 = sub_1DA9403C4();
      v64 = v63;
      v65 = v54;
      v58(v62, v54);
      if (v64)
      {
        v134 = "com.apple.usernotifications";
        v66 = *(v61 + 16);
        v67 = v61;
        if (v66)
        {
          v143 = MEMORY[0x1E69E7CC0];
          sub_1DA82A778(0, v66, 0);
          v68 = v143;
          v133 = v67;
          v69 = (v67 + 40);
          do
          {
            v70 = *(v69 - 1);
            v71 = *v69;
            v144 = v142;
            v145 = v64;

            MEMORY[0x1E1271BD0](58, 0xE100000000000000);
            MEMORY[0x1E1271BD0](v70, v71);

            v73 = v144;
            v72 = v145;
            v143 = v68;
            v75 = *(v68 + 16);
            v74 = *(v68 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_1DA82A778((v74 > 1), v75 + 1, 1);
              v68 = v143;
            }

            *(v68 + 16) = v75 + 1;
            v76 = v68 + 16 * v75;
            *(v76 + 32) = v73;
            *(v76 + 40) = v72;
            v69 += 2;
            --v66;
          }

          while (v66);

          v77 = v132;
          v65 = v124;
        }

        else
        {

          v77 = v132;
        }

        v78 = sub_1DA88E254(v142, v64);

        if (!v78)
        {
          [v77 setSummarizationStatus_];
        }
      }

      else
      {
        v77 = v132;
      }

      v79 = sub_1DA940BD4();

      [v77 setProviderDataTypeIdentifiers_];

      sub_1DA940304();
      v80 = sub_1DA940A04();

      [v77 setContainerIdentifier_];

      v81 = v135;
      sub_1DA9402F4();
      v82 = v136;
      sub_1DA9403B4();
      v121(v81, v65);
      v83 = v140;
      v84 = v120(v82, v140);
      if (v84 == *MEMORY[0x1E69DF260])
      {
        (*(v139 + 96))(v82, v83);
        v85 = sub_1DA940A04();

        [v77 setThreadIdentifier_];

        v86 = sub_1DA940A04();

        [v77 setCreator_];
      }

      else
      {
        if (v84 != *MEMORY[0x1E69DF258])
        {
          v88 = v138;
          if (v84 != v118)
          {
            (v117[0])(v82, v83);
          }

LABEL_26:
          v89 = sub_1DA940314();
          v91 = v90;

          sub_1DA8A9058(&v144, v89, v91);

          v92 = *v88;
          if (!*(*v88 + 16) || (v93 = sub_1DA85A4B4(v89, v91), (v94 & 1) == 0))
          {
            v100 = objc_allocWithZone(MEMORY[0x1E6964E80]);
            v96 = sub_1DA940A04();

            v101 = sub_1DA940A04();
            v42 = [v100 initWithUniqueIdentifier:v96 domainIdentifier:v101 attributeSet:v77];
LABEL_44:

            goto LABEL_45;
          }

          v95 = v77;
          v96 = *(*(v92 + 56) + 8 * v93);
          v97 = [v96 attributeSet];
          v98 = [v97 providerDataTypeIdentifiers];

          if (v98)
          {
            v99 = sub_1DA940BE4();
          }

          else
          {
            v99 = 0;
          }

          v102 = [v95 providerDataTypeIdentifiers];
          if (v102)
          {
            v103 = v102;
            v104 = sub_1DA940BE4();

            if (v99)
            {
              if (v104)
              {
                v105 = sub_1DA82A1FC(v99, v104);

                if (v105)
                {
                  goto LABEL_46;
                }

                goto LABEL_43;
              }

LABEL_42:

LABEL_43:
              v106 = objc_allocWithZone(MEMORY[0x1E6964E80]);
              v107 = v95;
              v108 = sub_1DA940A04();

              v109 = sub_1DA940A04();
              v110 = [v106 initWithUniqueIdentifier:v108 domainIdentifier:v109 attributeSet:v107];

              v42 = v110;
              [v42 setIsUpdate_];
              v111 = [v42 attributeSet];
              v112 = [v96 attributeSet];
              v113 = [v112 summarizedIdentifiers];

              [v111 setSummarizedIdentifiers_];
              v101 = [v42 attributeSet];

              v114 = [v96 attributeSet];
              v115 = [v114 summarizationStatus];

              v116 = v115;
              v77 = v95;
              [v101 setSummarizationStatus_];
              goto LABEL_44;
            }

            if (v104)
            {
              goto LABEL_42;
            }
          }

          else if (v99)
          {
            goto LABEL_42;
          }

LABEL_46:

          v42 = 0;
          goto LABEL_45;
        }

        (*(v139 + 96))(v82, v83);
        v87 = sub_1DA940A04();

        [v77 setCreator_];
      }

      v88 = v138;
      goto LABEL_26;
    }
  }

  v42 = 0;
LABEL_45:
  *v141 = v42;
}

id sub_1DA88D4FC()
{
  [v0 handleType];
  v1 = [v0 displayName];
  if (v1)
  {
    v2 = v1;
    sub_1DA940A14();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DA9596E0;
  v6 = [v0 handle];
  v7 = sub_1DA940A14();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  if (v4)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E6964E50]);
  v12 = sub_1DA940BD4();

  v13 = sub_1DA940A04();

  v14 = [v11 initWithDisplayName:v10 handles:v12 handleIdentifier:v13];

  v15 = [v0 cnContactIdentifier];
  [v14 setContactIdentifier_];

  return v14;
}

void sub_1DA88D714(unint64_t a1, void *a2, uint64_t a3)
{
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1DA93FAF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_1DA941264();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v42 = v11;
    v43 = v9;
    v44 = v8;
    v45 = v7;
    v46 = a3;
    v14 = 0;
    v13 = v48;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E1272460](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 uniqueIdentifier];
      v18 = sub_1DA940A14();
      v20 = v19;

      v48 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DA82A778((v21 > 1), v22 + 1, 1);
        v13 = v48;
      }

      ++v14;
      *(v13 + 16) = v22 + 1;
      v23 = v13 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }

    while (v12 != v14);
    v7 = v45;
    a3 = v46;
    v9 = v43;
    v8 = v44;
    v11 = v42;
  }

  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v24 = sub_1DA9405A4();
  __swift_project_value_buffer(v24, qword_1EE11AFA0);
  (*(v9 + 16))(v11, v47, v8);
  swift_bridgeObjectRetain_n();
  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v27 = 136446466;
    sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v28 = sub_1DA941614();
    v29 = v11;
    v30 = v7;
    v31 = a3;
    v32 = v28;
    v34 = v33;
    (*(v9 + 8))(v29, v8);
    v35 = v32;
    a3 = v31;
    v7 = v30;
    v36 = sub_1DA7AE6E8(v35, v34, &v48);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2050;
    v37 = *(v13 + 16);

    *(v27 + 14) = v37;

    _os_log_impl(&dword_1DA7A9000, v25, v26, "Remove items older than: %{public}s found items: %{public}ld", v27, 0x16u);
    v38 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1E12739F0](v38, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v9 + 8))(v11, v8);
  }

  v39 = sub_1DA940D34();
  (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v13;
  v40[5] = a3;
  sub_1DA84FB24(0, 0, v7, &unk_1DA95DA38, v40);
}

uint64_t sub_1DA88DBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DA7B7470;

  return sub_1DA8919DC(a4);
}

void sub_1DA88DC68(void *a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE11AFA0);
    (*(v5 + 16))(v7, a2, v4);
    v10 = a1;
    v11 = sub_1DA940584();
    v12 = sub_1DA940F14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 136446466;
      sub_1DA8918D4(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v15 = sub_1DA941614();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1DA7AE6E8(v15, v17, &v23);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2114;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_1DA7A9000, v11, v12, "Remove items older than: %{public}s query error of %{public}@", v13, 0x16u);
      sub_1DA7BA120(v14, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v14, -1, -1);
      v21 = v22;
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

unint64_t *sub_1DA88DF60(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1DA88F568(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1DA88DFFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  result = sub_1DA9414E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1DA862D8C(*(v4 + 48) + 40 * v16, v33);
    sub_1DA7AD270(*(v4 + 56) + 32 * v16, v32);
    v29 = v33[0];
    v30 = v33[1];
    v31 = v34;
    sub_1DA848FE8(v32, v28);
    result = sub_1DA9412C4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    v26 = v30;
    *v25 = v29;
    *(v25 + 16) = v26;
    *(v25 + 32) = v31;
    result = sub_1DA848FE8(v28, (*(v9 + 56) + 32 * v20));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1DA88E254(uint64_t a1, unint64_t a2)
{
  if ((sub_1DA9402C4() & 1) == 0)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE11AFA0);

    v17 = sub_1DA940584();
    v18 = sub_1DA940F34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DA7AE6E8(a1, a2, v33);
      _os_log_impl(&dword_1DA7A9000, v17, v18, "%s, privacy: .public) Not indexing to spotlight because categorizer doesn't allow.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    return 0;
  }

  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  v4 = v34;
  v5 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v6 = (*(v5 + 8))(a1, a2, v4, v5);
  if (!v6)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1EE11AFA0);

    v22 = sub_1DA940584();
    v23 = sub_1DA940F14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1DA7AE6E8(a1, a2, v32);
      _os_log_impl(&dword_1DA7A9000, v22, v23, "[%{public}s] Could not determine source summarization setting.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12739F0](v25, -1, -1);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    goto LABEL_23;
  }

  v7 = v6;
  v8 = v34;
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v10 = (*(v9 + 16))(v8, v9);
  if (!v10)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v26 = sub_1DA9405A4();
    __swift_project_value_buffer(v26, qword_1EE11AFA0);

    v27 = sub_1DA940584();
    v28 = sub_1DA940F14();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1DA7AE6E8(a1, a2, v32);
      _os_log_impl(&dword_1DA7A9000, v27, v28, "[%{public}s] Could not determine system summarization setting.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12739F0](v30, -1, -1);
      MEMORY[0x1E12739F0](v29, -1, -1);
    }

LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v33);
    return 0;
  }

  v11 = v10;
  if ([v10 summarizationSetting] == 2)
  {
    v12 = [v7 sourceSettings];
    v13 = [v12 notificationSettings];

    v14 = [v13 summarizationSetting];
    v15 = v14 == 2;
  }

  else
  {

    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v15;
}

uint64_t sub_1DA88E75C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA88E7E8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v1 = swift_allocObject();
    v0[8] = v1;
    *(v1 + 16) = xmmword_1DA95C300;
    if (qword_1EE115570 != -1)
    {
      swift_once();
    }

    v2 = unk_1EE11B040;
    *(v1 + 32) = qword_1EE11B038;
    *(v1 + 40) = v2;
    v3 = qword_1EE115560;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = unk_1EE11B020;
    *(v1 + 48) = qword_1EE11B018;
    *(v1 + 56) = v4;
    v5 = qword_1EE112AA0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = unk_1EE11AEC0;
    *(v1 + 64) = qword_1EE11AEB8;
    *(v1 + 72) = v6;

    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1DA88E9D8;

    return sub_1DA835894(1, v1);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1DA88E9D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1DA88EF5C;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_1DA88EB08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA88EB08()
{
  v27 = v0;
  v0[2] = MEMORY[0x1E69E7CC8];
  v1 = MEMORY[0x1E69E7CD0];
  v0[3] = MEMORY[0x1E69E7CD0];
  sub_1DA88C3BC(v0[11], v0 + 2, (v0 + 3));

  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = sub_1DA940324();
  sub_1DA88BBDC(v2, (v0 + 4), v0 + 2);
  v4 = v3;
  v0[12] = v3;

  v5 = v0[3];
  v6 = v0[4];
  v0[13] = v5;
  v0[14] = v6;
  if (*(v6 + 16) <= *(v5 + 16) >> 3)
  {
    goto LABEL_5;
  }

  v7 = sub_1DA8C4DDC(v6, v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    while (1)
    {
      v9 = sub_1DA8BF688(v8, 0);
      v10 = sub_1DA8BF88C(&v26, v9 + 4, v8, v7);
      sub_1DA830720(v26);
      if (v10 == v8)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v26 = v5;

      sub_1DA8C4AE4(v6);
      v7 = v26;
      v8 = *(v26 + 16);
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v9 = MEMORY[0x1E69E7CC0];
  }

  v0[15] = v9;
  if (v4 >> 62)
  {
    if (sub_1DA941264())
    {
      goto LABEL_10;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE11AFA0);

    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315394;
      v16 = sub_1DA7B673C(v4);
      v18 = sub_1DA7AE6E8(v16, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = v9[2];
      if (v19 < 6)
      {
        v0[5] = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        sub_1DA7B6A38();
        v20 = sub_1DA9409C4();
      }

      else
      {
        v0[6] = v19;
        v20 = sub_1DA941614();
      }

      v22 = sub_1DA7AE6E8(v20, v21, &v26);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Adding stack index: added=[%s], deleted=[%s]", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v15, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_1DA7B6FA8;

    return sub_1DA7BEF8C(v4, v9, 0);
  }

  if (v9[2])
  {
    goto LABEL_10;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DA88EF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA88EFC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA88F050(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  v4 = v38;
  v5 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v6 = (*(v5 + 16))(v4, v5);
  if (!v6)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v24 = sub_1DA9405A4();
    __swift_project_value_buffer(v24, qword_1EE11AFA0);

    v7 = sub_1DA940584();
    v25 = sub_1DA940F14();

    if (os_log_type_enabled(v7, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1DA7AE6E8(a1, a2, &v36);
      _os_log_impl(&dword_1DA7A9000, v7, v25, "[%{public}s] Could not determine system prioritization setting.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12739F0](v27, -1, -1);
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = [v6 prioritizationSetting];
  v9 = v38;
  v10 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v11 = (*(v10 + 8))(a1, a2, v9, v10);
  if (!v11)
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v28 = sub_1DA9405A4();
    __swift_project_value_buffer(v28, qword_1EE11AFA0);

    v29 = sub_1DA940584();
    v30 = sub_1DA940F14();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_1DA7AE6E8(a1, a2, &v36);
      _os_log_impl(&dword_1DA7A9000, v29, v30, "[%{public}s] Could not determine source prioritization setting.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12739F0](v32, -1, -1);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

LABEL_20:
    v23 = 0;
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v11 sourceSettings];
  v14 = [v13 notificationSettings];

  v15 = [v14 prioritizationSetting];
  if (qword_1EE113170 != -1)
  {
    swift_once();
  }

  v36 = 0;
  v16 = [qword_1EE113178 queryCurrentStateWithError_];
  if (v16)
  {
    v17 = v16;
    v18 = v36;
    v19 = [v17 activeModeConfiguration];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 configuration];

      v22 = [v21 allowIntelligentManagement];
      v23 = v22 == 2;
      if (v8 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v33 = v36;
    v34 = sub_1DA93F8C4();

    swift_willThrow();
  }

  v23 = 0;
  if (v8 == 2)
  {
LABEL_24:
    v23 |= v15 == 2;
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v23 & 1;
}

unint64_t *sub_1DA88F568(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4;
  v27 = a4 + 7;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    sub_1DA862D8C(*(v4 + 48) + 40 * v14, v35);
    sub_1DA7AD270(*(v4 + 56) + 32 * v14, v34);
    sub_1DA862D8C(v35, v32);
    sub_1DA7AD270(v34, &v33);
    sub_1DA891758(v32, v30);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v36[2] && (v15 = v36, sub_1DA941764(), sub_1DA940AB4(), v16 = sub_1DA941794(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v27 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (v36[6] + 16 * v18);
          v21 = *v20 == v28 && v20[1] == v29;
          if (v21 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v27 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        sub_1DA7BA120(v32, &qword_1ECBD5E98, &qword_1DA95DA00);
        __swift_destroy_boxed_opaque_existential_1(v34);
        result = sub_1DA862DE8(v35);
        *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        v4 = a3;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_1DA88DFFC(v24, a2, v25, v4);
        }
      }

      else
      {
LABEL_23:

        sub_1DA7BA120(v32, &qword_1ECBD5E98, &qword_1DA95DA00);
        __swift_destroy_boxed_opaque_existential_1(v34);
        result = sub_1DA862DE8(v35);
        v4 = a3;
      }
    }

    else
    {
      sub_1DA7BA120(v32, &qword_1ECBD5E98, &qword_1DA95DA00);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = sub_1DA862DE8(v35);
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
      return sub_1DA88DFFC(v24, a2, v25, v4);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DA88F888(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1DA88DF60(v12, v7, a1, a2);
      MEMORY[0x1E12739F0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1DA88F568((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1DA88FA48(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_1DA93F964();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1DA93FAF4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_1DA93FE74();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_1DA9401F4();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA88FC48, 0, 0);
}

uint64_t sub_1DA88FC48()
{
  v195 = v0;
  v194[1] = *MEMORY[0x1E69E9840];
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    v4 = v0[8];
    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AFA0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v194[0] = v13;
      *v12 = 136446210;
      sub_1DA8918D4(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v14 = sub_1DA941614();
      v16 = v15;
      v18 = *(v10 + 8);
      v17 = (v10 + 8);
      v18(v9, v11);
      v19 = sub_1DA7AE6E8(v14, v16, v194);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "[%{public}s] Adding notification index", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {

      v22 = *(v10 + 8);
      v17 = (v10 + 8);
      v22(v9, v11);
    }

    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    sub_1DA93FE64();
    v26 = objc_allocWithZone(MEMORY[0x1E6964E90]);
    v27 = sub_1DA93FE54();
    v28 = [v26 initWithContentType_];
    v0[21] = v28;

    (*(v24 + 8))(v23, v25);
    v29 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v30 = sub_1DA940A04();
    v31 = [v29 initWithKeyName_];

    if (v31)
    {
      v33 = v0[13];
      v32 = v0[14];
      v34 = v0[12];
      sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
      sub_1DA93FAC4();
      sub_1DA93F9D4();
      (*(v33 + 8))(v32, v34);
      v35 = sub_1DA9410D4();
      [(SEL *)v28 setValue:v35 forCustomKey:v31];
    }

    else
    {
      v35 = sub_1DA940584();
      v36 = sub_1DA940F24();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        MEMORY[0x1E12739F0](v37, -1, -1);
      }
    }

    v38 = v0[13];
    v39 = v0[14];
    v40 = v0[12];

    v41 = sub_1DA940A04();
    [(SEL *)v28 setDomainIdentifier:v41];

    v42 = sub_1DA93FF84();
    v43 = [v42 date];

    sub_1DA93FAB4();
    v44 = sub_1DA93FA44();
    (*(v38 + 8))(v39, v40);
    [(SEL *)v28 setContentCreationDate:v44];

    sub_1DA940014();
    v45 = sub_1DA940A04();

    [(SEL *)v28 setCreator:v45];

    sub_1DA940144();
    if (v46)
    {
      v47 = sub_1DA940A04();
    }

    else
    {
      v47 = 0;
    }

    [(SEL *)v28 setTitle:v47];

    sub_1DA9401E4();
    if (v48)
    {
      v49 = sub_1DA940A04();
    }

    else
    {
      v49 = 0;
    }

    [(SEL *)v28 setSubtitle:v49];

    sub_1DA940134();
    if (v50)
    {
      v51 = sub_1DA940A04();
    }

    else
    {
      v51 = 0;
    }

    [(SEL *)v28 setTextContent:v51];

    v52 = sub_1DA93FF84();
    v53 = [v52 request];

    v54 = [v53 content];
    v55 = [v54 threadIdentifier];

    if (!v55)
    {
      sub_1DA940A14();
      v55 = sub_1DA940A04();
    }

    [(SEL *)v28 setThreadIdentifier:v55];

    v56 = sub_1DA93FF84();
    v57 = [v56 request];

    v58 = [v57 content];
    v59 = [v58 attachments];

    sub_1DA7AF3EC(0, &qword_1EE110BB0, 0x1E6983268);
    v60 = sub_1DA940BE4();

    v61 = &selRef_bulletinGroupingSetting;
    if (v60 >> 62)
    {
      v62 = sub_1DA941264();
    }

    else
    {
      v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v193 = v0;
    v190 = v28;
    if (v62)
    {
      v194[0] = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v62 & ~(v62 >> 63), 0);
      if (v62 < 0)
      {
        __break(1u);
        goto LABEL_104;
      }

      v63 = 0;
      v64 = v194[0];
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x1E1272460](v63, v60);
        }

        else
        {
          v65 = *(v60 + 8 * v63 + 32);
        }

        v66 = v65;
        v67 = [v65 type];
        v68 = sub_1DA940A14();
        v70 = v69;

        v194[0] = v64;
        v72 = *(v64 + 16);
        v71 = *(v64 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1DA82A778((v71 > 1), v72 + 1, 1);
          v64 = v194[0];
        }

        ++v63;
        *(v64 + 16) = v72 + 1;
        v73 = v64 + 16 * v72;
        *(v73 + 32) = v68;
        *(v73 + 40) = v70;
      }

      while (v62 != v63);

      v28 = v190;
      v61 = &selRef_bulletinGroupingSetting;
    }

    else
    {
    }

    v74 = sub_1DA940BD4();

    [(SEL *)v28 setAttachmentTypes:v74];

    v75 = sub_1DA93FF84();
    v76 = [v75 request];

    v77 = [v76 v61[57]];
    v78 = [v77 attachments];

    v79 = sub_1DA940BE4();
    if (v79 >> 62)
    {
      v60 = sub_1DA941264();
      if (v60)
      {
LABEL_40:
        v194[0] = MEMORY[0x1E69E7CC0];
        sub_1DA82A778(0, v60 & ~(v60 >> 63), 0);
        v17 = v0;
        if ((v60 & 0x8000000000000000) == 0)
        {
          v80 = 0;
          v81 = v194[0];
          v82 = v79;
          v191 = v79 & 0xC000000000000001;
          v83 = (v0[10] + 8);
          v84 = v79;
          do
          {
            if (v191)
            {
              v85 = MEMORY[0x1E1272460](v80);
            }

            else
            {
              v85 = *(v82 + 8 * v80 + 32);
            }

            v86 = v85;
            v87 = v17[11];
            v88 = v17[9];
            v89 = [v85 URL];
            sub_1DA93F914();

            v90 = sub_1DA93F924();
            v92 = v91;

            (*v83)(v87, v88);
            v194[0] = v81;
            v94 = *(v81 + 16);
            v93 = *(v81 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_1DA82A778((v93 > 1), v94 + 1, 1);
              v81 = v194[0];
            }

            ++v80;
            *(v81 + 16) = v94 + 1;
            v95 = v81 + 16 * v94;
            *(v95 + 32) = v90;
            *(v95 + 40) = v92;
            v17 = v193;
            v82 = v84;
          }

          while (v60 != v80);

          v61 = &selRef_bulletinGroupingSetting;
LABEL_52:
          v96 = sub_1DA940BD4();

          v28 = v190;
          [(SEL *)v190 setAttachmentPaths:v96];

          v97 = sub_1DA93FF84();
          v98 = [v97 request];

          v99 = [v98 v61[57]];
          v100 = [v99 attachments];

          v101 = sub_1DA940BE4();
          if (v101 >> 62)
          {
            v102 = sub_1DA941264();
            if (v102)
            {
LABEL_54:
              v194[0] = MEMORY[0x1E69E7CC0];
              sub_1DA82A778(0, v102 & ~(v102 >> 63), 0);
              if ((v102 & 0x8000000000000000) == 0)
              {
                v103 = 0;
                v104 = v194[0];
                v105 = v101;
                v192 = v101 & 0xC000000000000001;
                v106 = (v17[10] + 8);
                v107 = v101;
                v108 = v102;
                do
                {
                  if (v192)
                  {
                    v109 = MEMORY[0x1E1272460](v103, v105);
                  }

                  else
                  {
                    v109 = *(v105 + 8 * v103 + 32);
                  }

                  v110 = v109;
                  v111 = v193[11];
                  v112 = v193[9];
                  v113 = [v109 URL];
                  sub_1DA93F914();

                  v114 = sub_1DA93F8F4();
                  v116 = v115;

                  (*v106)(v111, v112);
                  v194[0] = v104;
                  v118 = *(v104 + 16);
                  v117 = *(v104 + 24);
                  if (v118 >= v117 >> 1)
                  {
                    sub_1DA82A778((v117 > 1), v118 + 1, 1);
                    v104 = v194[0];
                  }

                  ++v103;
                  *(v104 + 16) = v118 + 1;
                  v119 = v104 + 16 * v118;
                  *(v119 + 32) = v114;
                  *(v119 + 40) = v116;
                  v105 = v107;
                }

                while (v108 != v103);

                v17 = v193;
                v28 = v190;
                v61 = &selRef_bulletinGroupingSetting;
LABEL_65:
                v120 = sub_1DA940BD4();

                [(SEL *)v28 setAttachmentNames:v120];

                v121 = sub_1DA940014();
                LOBYTE(v120) = sub_1DA88E254(v121, v122);

                if ((v120 & 1) == 0)
                {
                  [(SEL *)v28 setSummarizationStatus:5];
                }

                v123 = sub_1DA940014();
                v125 = sub_1DA88F050(v123, v124);

                if ((v125 & 1) == 0)
                {
                  [(SEL *)v28 setUrgencyStatus:5];
                }

                v126 = sub_1DA8AD06C(&unk_1F56316B8);
                sub_1DA83ACD0(&unk_1F56316D8);
                v127 = sub_1DA93FF84();
                v128 = [v127 request];

                v129 = [v128 v61[57]];
                v130 = [v129 userInfo];

                v131 = sub_1DA940974();

                v132 = sub_1DA88F888(v131, v126);
                swift_bridgeObjectRelease_n();

                if (v132[2])
                {
                  v133 = objc_opt_self();
                  v134 = sub_1DA940964();

                  v17[7] = 0;
                  v135 = [v133 archivedDataWithRootObject:v134 requiringSecureCoding:1 error:v17 + 7];

                  v136 = v17[7];
                  if (v135)
                  {
                    v137 = sub_1DA93F9A4();
                    v139 = v138;

                    v140 = sub_1DA93F994();
                    [(SEL *)v28 setExtraData:v140];

                    sub_1DA828324(v137, v139);
                  }

                  else
                  {
                    v141 = v136;
                    v142 = sub_1DA93F8C4();

                    swift_willThrow();
                  }
                }

                else
                {
                }

                v60 = sub_1DA7AF3EC(0, &qword_1EE114D70, 0x1E696AD98);
                v143 = sub_1DA93FF84();
                v144 = [v143 request];

                v145 = [v144 content];
                [v145 interruptionLevel];

                v146 = sub_1DA9410E4();
                [(SEL *)v28 setNotificationTimeSensitive:v146];

                v147 = sub_1DA93FF84();
                v148 = [v147 request];

                v149 = [v148 content];
                [v149 interruptionLevel];

                v150 = sub_1DA9410E4();
                [(SEL *)v28 setNotificationCritical:v150];

                v151 = sub_1DA940104();
                v152 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                if (!v151)
                {
                  v170 = sub_1DA9410E4();
                  [(SEL *)v28 setIsCommunicationNotification:v170];
LABEL_98:

                  sub_1DA9400E4();
                  v171 = objc_allocWithZone(MEMORY[0x1E6964E80]);
                  v172 = v28;
                  v173 = sub_1DA940A04();

                  v174 = sub_1DA940A04();
                  v175 = [v171 initWithUniqueIdentifier:v173 domainIdentifier:v174 attributeSet:v172];
                  v17[22] = v175;

                  v176 = v175;
                  v177 = sub_1DA940584();
                  v178 = sub_1DA940F34();

                  if (os_log_type_enabled(v177, v178))
                  {
                    v179 = swift_slowAlloc();
                    v180 = swift_slowAlloc();
                    v194[0] = v180;
                    *v179 = 136315138;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                    inited = swift_initStackObject();
                    *(inited + 16) = *(v152 + 58);
                    *(inited + 32) = v176;
                    v182 = v176;
                    v183 = sub_1DA7B673C(inited);
                    v185 = v184;
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    v186 = sub_1DA7AE6E8(v183, v185, v194);
                    v17 = v193;

                    *(v179 + 4) = v186;
                    _os_log_impl(&dword_1DA7A9000, v177, v178, "Adding index: [%s]", v179, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v180);
                    MEMORY[0x1E12739F0](v180, -1, -1);
                    MEMORY[0x1E12739F0](v179, -1, -1);
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                  v187 = swift_allocObject();
                  v17[23] = v187;
                  *(v187 + 16) = *(v152 + 58);
                  *(v187 + 32) = v176;
                  v188 = v176;
                  v189 = swift_task_alloc();
                  v17[24] = v189;
                  *v189 = v17;
                  v189[1] = sub_1DA8912C0;

                  return sub_1DA7BEF8C(v187, 0, 1);
                }

                v61 = v151;
                v153 = sub_1DA9410E4();
                [(SEL *)v28 setIsCommunicationNotification:v153];

                v28 = &selRef_pushFlags;
                v154 = [(SEL *)v61 recipients];
                sub_1DA7AF3EC(0, &qword_1EE110BB8, 0x1E6983330);
                v155 = sub_1DA940BE4();

                if (!(v155 >> 62))
                {
                  v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_77;
                }

LABEL_106:
                v156 = sub_1DA941264();
LABEL_77:

                v157 = [(SEL *)v61 recipientCount];
                if (v157 > v156)
                {
                  v156 = v157;
                }

                v152 = &selRef_pushFlags;
                v158 = [(SEL *)v61 sender];
                if (v158 && (v158, __OFADD__(v156, 1)))
                {
                  __break(1u);
                }

                else
                {
                  v60 = sub_1DA9410F4();
                  [(SEL *)v190 setIsGroupThread:v60];
                  v159 = [(SEL *)v61 sender];
                  v152 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                  if (v159)
                  {
                    v160 = v159;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
                    v161 = swift_allocObject();
                    *(v161 + 16) = xmmword_1DA9593A0;
                    *(v161 + 32) = sub_1DA88D4FC();
                    sub_1DA7AF3EC(0, &qword_1EE110B78, 0x1E6964E50);
                    v162 = sub_1DA940BD4();

                    [(SEL *)v190 setAuthors:v162];

                    LODWORD(v161) = [v160 isDisplayNameSuggested];
                    v163 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
                    [(SEL *)v190 setIsMessageFromKnownSender:v163];
                  }

                  v164 = [v61 v28[16]];
                  v165 = sub_1DA940BE4();

                  if (v165 >> 62)
                  {
                    v166 = sub_1DA941264();
                  }

                  else
                  {
                    v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v166)
                  {
                    v194[0] = MEMORY[0x1E69E7CC0];
                    sub_1DA941404();
                    if (v166 < 0)
                    {
                      __break(1u);
                    }

                    v167 = 0;
                    do
                    {
                      if ((v165 & 0xC000000000000001) != 0)
                      {
                        v168 = MEMORY[0x1E1272460](v167, v165);
                      }

                      else
                      {
                        v168 = *(v165 + 8 * v167 + 32);
                      }

                      v169 = v168;
                      ++v167;
                      sub_1DA88D4FC();

                      sub_1DA9413E4();
                      sub_1DA941414();
                      sub_1DA941424();
                      sub_1DA9413F4();
                    }

                    while (v166 != v167);

                    v152 = &OBJC_IVAR____TtC21UserNotificationsCore17ReplicatorManager_replicatedSources;
                    goto LABEL_97;
                  }
                }

LABEL_97:
                sub_1DA7AF3EC(0, &qword_1EE110B78, 0x1E6964E50);
                v170 = sub_1DA940BD4();

                v28 = v190;
                [(SEL *)v190 setPrimaryRecipients:v170];

                goto LABEL_98;
              }

LABEL_105:
              __break(1u);
              goto LABEL_106;
            }
          }

          else
          {
            v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v102)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_65;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      v60 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
        goto LABEL_40;
      }
    }

    v17 = v0;
    goto LABEL_52;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DA8912C0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DA8914D8;
  }

  else
  {

    v2 = sub_1DA891410;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA891410()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DA8914D8()
{
  v1 = v0[22];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA8915B8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8916F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DA8916F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA891758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E98, &qword_1DA95DA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA8917C8(unint64_t a1)
{
  v3 = *(sub_1DA93FAF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA88D714(a1, (v1 + v4), v5);
}

void sub_1DA891864(void *a1)
{
  v3 = *(sub_1DA93FAF4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DA88DC68(a1, v4);
}

uint64_t sub_1DA8918D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA89191C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA88DBC0(a1, v4, v5, v6);
}

uint64_t sub_1DA8919FC()
{
  v14 = v0;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE11AFA0);

  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x1E1271CD0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_1DA7AE6E8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Removing index: [%{public}s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v10 = *(v0 + 16);
  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = sub_1DA854D44;

  return sub_1DA7BEF8C(0, v10, 0);
}

uint64_t sub_1DA891BF0(uint64_t a1)
{
  result = sub_1DA941134();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1DA891CBC()
{
  v1 = v0;
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  v3 = *(*v1 + 16);
  v4 = sub_1DA941134();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t sub_1DA891DC0()
{
  sub_1DA891CBC();

  return swift_deallocClassInstance();
}

id sub_1DA891E30@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t NotificationActionSelector.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationActionSelector.notificationIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NotificationActionSelector.actionIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NotificationActionSelector.userText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall NotificationActionSelector.init(bundleIdentifier:notificationIdentifier:actionIdentifier:userText:)(UserNotificationsCore::NotificationActionSelector *__return_ptr retstr, Swift::String bundleIdentifier, Swift::String notificationIdentifier, Swift::String actionIdentifier, Swift::String_optional userText)
{
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->notificationIdentifier = notificationIdentifier;
  retstr->actionIdentifier = actionIdentifier;
  retstr->userText = userText;
}

unint64_t sub_1DA891F84()
{
  v1 = 0x7478655472657375;
  v2 = 0xD000000000000010;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DA892000@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA892960(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA892028(uint64_t a1)
{
  v2 = sub_1DA89290C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA892064(uint64_t a1)
{
  v2 = sub_1DA89290C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationActionSelector.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5F28, &qword_1DA95DB40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89290C();
  sub_1DA941834();
  v16 = 0;
  v10 = v12[7];
  sub_1DA9415D4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1DA9415D4();
  v14 = 2;
  sub_1DA9415D4();
  v13 = 3;
  sub_1DA9415B4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NotificationActionSelector.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5F38, &qword_1DA95DB48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89290C();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1DA941554();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1DA941554();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1DA941554();
  v25 = v13;
  v33 = 3;
  v14 = sub_1DA941524();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1DA848A24(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1DA84A040(v32);
}

double UNCDecodeNotificationActionSelector(void *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_1DA93F9A4();
  v7 = v6;

  _Block_copy(v3);
  sub_1DA892AD4(v5, v7, v3);
  _Block_release(v3);
  _Block_release(v3);

  return sub_1DA828324(v5, v7);
}

uint64_t UNCDecodeNotificationActionSelector(data:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void, void, void, void, void))
{
  sub_1DA93F7A4();
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA865250();
  sub_1DA93F784();
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;

  a3(v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), 0);

  return sub_1DA84A040(v5);
}

uint64_t _s21UserNotificationsCore26NotificationActionSelectorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1DA941684()) && (v2 == v7 && v4 == v8 || (sub_1DA941684()) && (v3 == v9 && v5 == v10 || (sub_1DA941684()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1DA941684() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1DA89290C()
{
  result = qword_1ECBD5F30;
  if (!qword_1ECBD5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F30);
  }

  return result;
}

uint64_t sub_1DA892960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DA9533C0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA9533E0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7478655472657375 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DA941684();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DA892AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA93F7A4();
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA865250();
  sub_1DA93F784();
  v9[0] = v9[5];
  v9[1] = v9[6];
  v9[2] = v9[7];
  v9[3] = v10;

  v4 = sub_1DA940A04();
  v5 = sub_1DA940A04();
  v6 = sub_1DA940A04();
  if (*(&v10 + 1))
  {
    v7 = sub_1DA940A04();
  }

  else
  {
    v7 = 0;
  }

  (*(a3 + 16))(a3, v4, v5, v6, v7, 0);

  return sub_1DA84A040(v9);
}

unint64_t sub_1DA892CCC()
{
  result = qword_1ECBD5F40;
  if (!qword_1ECBD5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F40);
  }

  return result;
}

unint64_t sub_1DA892D24()
{
  result = qword_1ECBD5F48;
  if (!qword_1ECBD5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F48);
  }

  return result;
}

unint64_t sub_1DA892D7C()
{
  result = qword_1ECBD5F50;
  if (!qword_1ECBD5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5F50);
  }

  return result;
}

void sub_1DA892E0C()
{
  v0 = *MEMORY[0x1E6983338];
  v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v2 = v0;
  v3 = [v1 initWithDomain:v2 code:1 userInfo:0];

  qword_1EE111450 = v3;
}

double sub_1DA892E90()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940854();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) invalidate];
  v12[0] = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1DA898464;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_227;
  v10 = _Block_copy(aBlock);

  sub_1DA940824();
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1DA89846C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA8984C4();
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

void sub_1DA893138(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection;
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection) invalidate];
    v4 = *&v3[v2];
    *&v3[v2] = 0;
  }
}

void sub_1DA8931B8(uint64_t a1, const char *a2, ...)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11B068);
    v6 = v4;
    v7 = sub_1DA940584();
    v8 = sub_1DA940EF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      if (*&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
      {
        v11 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
        v12 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
      }

      else
      {
        v12 = 0xE300000000000000;
        v11 = 7104878;
      }

      v13 = sub_1DA7AE6E8(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DA7A9000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12739F0](v10, -1, -1);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA892E90();
      sub_1DA8A4828(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1DA8933A0(char a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE11B068);
    v12 = a3;

    v13 = sub_1DA940584();
    v14 = sub_1DA940F14();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446466;
      if (*&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
      {
        v17 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
        v18 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
      }

      else
      {
        v18 = 0xE300000000000000;
        v17 = 7104878;
      }

      v19 = sub_1DA7AE6E8(v17, v18, v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1DA7AE6E8(a4, a5, v21);
      _os_log_impl(&dword_1DA7A9000, v13, v14, "[%{public}s] Not allowing service extension '%{public}s' to request user notifications at this time", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v16, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }
  }

  result = swift_beginAccess();
  *(a6 + 16) = a1 & 1;
  return result;
}

id sub_1DA8935CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationServiceConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA893690(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_1DA7AEA10();
  if (v8)
  {
    v9 = v8;
    if (sub_1DA7AD2CC(a2, a3))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v10 = sub_1DA9405A4();
      __swift_project_value_buffer(v10, qword_1EE11B068);
      v11 = a1;

      v12 = sub_1DA940584();
      v13 = sub_1DA940EF4();

      if (os_log_type_enabled(v12, v13))
      {
        v29 = a4;
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v14 = 136446466;
        if (*&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
        {
          v15 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v16 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        }

        else
        {
          v15 = 7104878;
          v16 = 0xE300000000000000;
        }

        v26 = sub_1DA7AE6E8(v15, v16, &v30);

        *(v14 + 4) = v26;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1DA7AE6E8(a2, a3, &v30);
        _os_log_impl(&dword_1DA7A9000, v12, v13, "[%{public}s] Forwarding setObservingUserNotifications: %{public}s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v28, -1, -1);
        MEMORY[0x1E12739F0](v14, -1, -1);

        a4 = v29;
      }

      else
      {
      }

      v27 = sub_1DA940A04();
      [v9 setObservingUserNotifications:a4 & 1 forBundleIdentifier:v27];

      if (swift_unknownObjectWeakLoadStrong())
      {
        if (a4)
        {
          sub_1DA8A4FBC(v11, a2, a3);
        }

        else
        {
          sub_1DA8A52D0(v11, a2, a3);
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  __swift_project_value_buffer(v17, qword_1EE11B068);
  v18 = a1;

  v19 = sub_1DA940584();
  v20 = sub_1DA940F14();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136446466;
    if (*&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v23 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v24 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    v25 = sub_1DA7AE6E8(v23, v24, &v30);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1DA7AE6E8(a2, a3, &v30);
    _os_log_impl(&dword_1DA7A9000, v19, v20, "[%{public}s] setObservingUserNotifications not allowed: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }
}

void sub_1DA893C24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  sub_1DA940A94();
  v13 = os_transaction_create();

  v14 = sub_1DA7AEA10();
  if (v14)
  {
    v15 = v14;
    if (sub_1DA7AD2CC(a3, a4))
    {
      v42 = a5;
      v43 = v13;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v16 = sub_1DA9405A4();
      __swift_project_value_buffer(v16, qword_1EE11B068);
      v17 = v7;

      v18 = sub_1DA940584();
      v19 = sub_1DA940EF4();

      if (os_log_type_enabled(v18, v19))
      {
        v44 = a6;
        v41 = a7;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136446466;
        v22 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v22)
        {
          v23 = *&v17[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v24 = v22;
        }

        else
        {
          v23 = 7104878;
          v24 = 0xE300000000000000;
        }

        v34 = sub_1DA7AE6E8(v23, v24, aBlock);

        *(v20 + 4) = v34;
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
        _os_log_impl(&dword_1DA7A9000, v18, v19, "[%{public}s] Forwarding replaceContentForRequest: %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v21, -1, -1);
        MEMORY[0x1E12739F0](v20, -1, -1);

        a7 = v41;
        a6 = v44;
      }

      else
      {
      }

      v35 = sub_1DA940A04();
      v36 = sub_1DA940A04();
      v37 = swift_allocObject();
      v37[2] = a6;
      v37[3] = a7;
      v37[4] = v43;
      aBlock[4] = sub_1DA8983E0;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_166;
      v38 = _Block_copy(aBlock);
      v39 = a7;
      v40 = v38;
      sub_1DA7B3DC0(a6, v39);
      swift_unknownObjectRetain();

      [v15 replaceContentForRequestWithIdentifier:v35 bundleIdentifier:v36 replacementContent:v42 completionHandler:v40];
      _Block_release(v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE11B068);
  v26 = v7;

  v27 = sub_1DA940584();
  v28 = sub_1DA940F14();

  if (os_log_type_enabled(v27, v28))
  {
    v45 = a6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446466;
    if (*&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v31 = *&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v32 = *&v26[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v31 = 7104878;
      v32 = 0xE300000000000000;
    }

    v33 = sub_1DA7AE6E8(v31, v32, aBlock);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
    _os_log_impl(&dword_1DA7A9000, v27, v28, "[%{public}s] replaceContentForRequest not allowed: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);

    a6 = v45;
    if (v45)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a6)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a6(qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA8942A8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1DA7AEA10();
  if (v7)
  {
    v8 = v7;
    if (sub_1DA7AD2CC(a2, a3))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v9 = sub_1DA9405A4();
      __swift_project_value_buffer(v9, qword_1EE11B068);
      v10 = a1;

      v11 = sub_1DA940584();
      v12 = sub_1DA940EF4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136446466;
        if (*&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
        {
          v15 = *&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v16 = *&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        }

        else
        {
          v15 = 7104878;
          v16 = 0xE300000000000000;
        }

        v26 = sub_1DA7AE6E8(v15, v16, &v28);

        *(v13 + 4) = v26;
        *(v13 + 12) = 2082;
        *(v13 + 14) = sub_1DA7AE6E8(a2, a3, &v28);
        _os_log_impl(&dword_1DA7A9000, v11, v12, "[%{public}s] Forwarding setNotificationRequests: %{public}s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v14, -1, -1);
        MEMORY[0x1E12739F0](v13, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
      v27 = sub_1DA940BD4();
      v19 = sub_1DA940A04();
      [v8 setNotificationRequests:v27 forBundleIdentifier:v19];
      swift_unknownObjectRelease();

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  __swift_project_value_buffer(v17, qword_1EE11B068);
  v18 = a1;

  v19 = sub_1DA940584();
  v20 = sub_1DA940F14();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446466;
    if (*&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v23 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v24 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    v25 = sub_1DA7AE6E8(v23, v24, &v28);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1DA7AE6E8(a2, a3, &v28);
    _os_log_impl(&dword_1DA7A9000, v19, v20, "[%{public}s] setNotificationRequests not allowed: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

LABEL_20:
}

void sub_1DA8947CC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v10;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = v5;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v38 = a5;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v32;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removeSimilarNotificationRequests: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        a5 = v38;
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = a5;
      v35[4] = v37;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_137_0;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4, a5);
      swift_unknownObjectRetain();

      [v12 removeSimilarNotificationRequests:v33 forBundleIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = v5;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = v28;
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removeSimilarNotificationRequests not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    if (a4)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a4)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a4(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA894E50(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  sub_1DA940A94();
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      v35 = a4;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = v4;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding removeAllPendingNotificationRequests: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = v35;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_127;
      v33 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a3, v35);
      swift_unknownObjectRetain();

      [v11 removeAllPendingNotificationRequestsForBundleIdentifier:v31 completionHandler:v33];
      _Block_release(v33);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = v4;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] removeAllPendingNotificationRequests not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);

    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a3)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a3(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA895460(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  sub_1DA940A94();
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      v35 = a4;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = v4;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding removeAllDeliveredNotifications: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = v35;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_98_0;
      v33 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a3, v35);
      swift_unknownObjectRetain();

      [v11 removeAllDeliveredNotificationsForBundleIdentifier:v31 completionHandler:v33];
      _Block_release(v33);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = v4;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] removeAllDeliveredNotifications not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);

    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a3)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a3(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

void sub_1DA895B88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA940A94();
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = v4;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = a3;
        v35 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getClearedInfoForDataProviderMigration: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        a3 = v34;
        v9 = v35;
      }

      else
      {
      }

      if ([v11 respondsToSelector_])
      {
        v31 = swift_allocObject();
        v31[2] = a3;
        v31[3] = a4;
        v31[4] = v9;

        swift_unknownObjectRetain();
        v32 = sub_1DA940A04();
        aBlock[4] = sub_1DA8965EC;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA896098;
        aBlock[3] = &block_descriptor_12;
        v33 = _Block_copy(aBlock);
        [v11 getClearedInfoForDataProviderMigrationWithBundleIdentifier:v32 withCompletionHandler:v33];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v33);

        return;
      }

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = v4;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (!os_log_type_enabled(v23, v24))
  {

LABEL_23:

    swift_unknownObjectRelease();
    return;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  aBlock[0] = v26;
  *v25 = 136446466;
  if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
  {
    v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
  }

  else
  {
    v27 = 7104878;
    v28 = 0xE300000000000000;
  }

  v29 = sub_1DA7AE6E8(v27, v28, aBlock);

  *(v25 + 4) = v29;
  *(v25 + 12) = 2082;
  *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
  _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getClearedInfoForDataProviderMigration not allowed: %{public}s", v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v26, -1, -1);
  MEMORY[0x1E12739F0](v25, -1, -1);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA896098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_1DA848FE8(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_1DA896614(v7);
}

uint64_t sub_1DA8961DC(uint64_t a1, uint64_t a2)
{
  sub_1DA89667C(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1DA941674();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  (*(a2 + 16))(a2, v8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DA896318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA940A94();
  os_transaction_create();

  v5 = [*(v4 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) remoteObjectProxy];
  sub_1DA941154();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6050, qword_1DA95DDD8);
  if (swift_dynamicCast())
  {
    v6 = sub_1DA93F994();
    v7 = sub_1DA940A04();
    [v9 didReceiveDeviceToken:v6 forBundleIdentifier:v7];

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1DA896518(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA940A04();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1DA896614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA89667C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA8966EC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding addRequest: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1C6C;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_176;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 addNotificationRequest:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] addRequest not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, v38);

  swift_unknownObjectRelease();
}

void sub_1DA896C84(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getPendingNotificationRequests: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA8983B4;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B2E58;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA8947A0;
      aBlock[3] = &block_descriptor_156;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getPendingNotificationRequestsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getPendingNotificationRequests not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
  v35 = sub_1DA940BD4();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

void sub_1DA8971F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (**a6)(void, void))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  sub_1DA940A94();
  _Block_copy(a6);
  v12 = os_transaction_create();

  v13 = sub_1DA7AEA10();
  if (v13)
  {
    v14 = v13;
    if (sub_1DA7AD2CC(a3, a4))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v15 = sub_1DA9405A4();
      __swift_project_value_buffer(v15, qword_1EE11B068);
      v16 = a5;

      v17 = sub_1DA940584();
      v18 = sub_1DA940EF4();

      if (os_log_type_enabled(v17, v18))
      {
        v39 = a2;
        v40 = v12;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136446466;
        v21 = *&v16[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v21)
        {
          v22 = *&v16[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v23 = v21;
        }

        else
        {
          v22 = 7104878;
          v23 = 0xE300000000000000;
        }

        v35 = sub_1DA7AE6E8(v22, v23, aBlock);

        *(v19 + 4) = v35;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
        _os_log_impl(&dword_1DA7A9000, v17, v18, "[%{public}s] Forwarding setBadgeString: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v20, -1, -1);
        MEMORY[0x1E12739F0](v19, -1, -1);

        v12 = v40;
        if (!v39)
        {
          goto LABEL_26;
        }
      }

      else
      {

        if (!a2)
        {
LABEL_26:
          v33 = 0;
          goto LABEL_27;
        }
      }

      v33 = sub_1DA940A04();
LABEL_27:
      v36 = sub_1DA940A04();
      v37 = swift_allocObject();
      v37[2] = sub_1DA7B1C6C;
      v37[3] = v11;
      v37[4] = v12;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_59;
      v38 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v14 setBadgeString:v33 forBundleIdentifier:v36 withCompletionHandler:v38];
      _Block_release(v38);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v24 = sub_1DA9405A4();
  __swift_project_value_buffer(v24, qword_1EE11B068);
  v25 = a5;

  v26 = sub_1DA940584();
  v27 = sub_1DA940F14();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136446466;
    v30 = *&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v30)
    {
      v31 = *&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v32 = v30;
    }

    else
    {
      v31 = 7104878;
      v32 = 0xE300000000000000;
    }

    v34 = sub_1DA7AE6E8(v31, v32, aBlock);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1DA7AE6E8(a3, a4, aBlock);
    _os_log_impl(&dword_1DA7A9000, v26, v27, "[%{public}s] setBadgeString not allowed: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v41 = sub_1DA93F8B4();
  (a6)[2](a6, v41);

  swift_unknownObjectRelease();
}

void sub_1DA8977BC(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationTopics: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA898380;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA898594;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA895B3C;
      aBlock[3] = &block_descriptor_40;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationTopicsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationTopics not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DD50(MEMORY[0x1E69E7CC0]);
  }

  sub_1DA7AF3EC(0, &qword_1ECBD56D8, 0x1E69832C0);
  sub_1DA7B0D88(&unk_1ECBD6060, &qword_1ECBD56D8, 0x1E69832C0);
  v35 = sub_1DA940E84();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

void sub_1DA897D94(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding requestRemoveAuthorization: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      if ([v11 respondsToSelector_])
      {
        v31 = swift_allocObject();
        v31[2] = sub_1DA7B43A8;
        v31[3] = v8;
        v31[4] = v9;

        swift_unknownObjectRetain();
        v32 = sub_1DA940A04();
        aBlock[4] = sub_1DA898554;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA7B43C0;
        aBlock[3] = &block_descriptor_22_1;
        v33 = _Block_copy(aBlock);
        [v11 requestRemoveAuthorizationForBundleIdentifier:v32 completionHandler:v33];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v33);
      }

      else
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] requestRemoveAuthorization not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA93F8B4();
  (a4)[2](a4, 0, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA8983E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1DA89846C()
{
  result = qword_1EE115A90;
  if (!qword_1EE115A90)
  {
    sub_1DA9407F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A90);
  }

  return result;
}

unint64_t sub_1DA8984C4()
{
  result = qword_1EE115A80;
  if (!qword_1EE115A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A80);
  }

  return result;
}

uint64_t sub_1DA8985B0()
{
  v0 = objc_opt_self();
  v1 = sub_1DA93F904();
  v2 = [v0 imageDataForContentURL_];

  v3 = sub_1DA93F9A4();
  return v3;
}

uint64_t sub_1DA8986BC()
{
  v1 = *v0;
  sub_1DA940A14();
  *(&v9 + 1) = v2;
  sub_1DA9412F4();
  v10 = sub_1DA898804();
  *&v9 = sub_1DA9410D4();
  sub_1DA848FE8(&v9, v8);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA90AFBC(v8, v11, isUniquelyReferenced_nonNull_native);
  sub_1DA862DE8(v11);
  if ((v1 & 1) == 0)
  {
    *&v9 = sub_1DA940A14();
    *(&v9 + 1) = v5;
    sub_1DA9412F4();
    v10 = MEMORY[0x1E69E6530];
    *&v9 = 5;
    sub_1DA848FE8(&v9, v8);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90AFBC(v8, v11, v6);
    sub_1DA862DE8(v11);
  }

  return v3;
}

unint64_t sub_1DA898804()
{
  result = qword_1EE114D70;
  if (!qword_1EE114D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114D70);
  }

  return result;
}

unint64_t sub_1DA898850(uint64_t a1)
{
  v3 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1DA898B50(a1, v5);
  v7 = 0x1010201uLL >> (8 * swift_getEnumCaseMultiPayload());
  sub_1DA898BB4(v5);
  result = sub_1DA898990(v7);
  if ((v6 & 1) == 0)
  {
    v9 = result;
    *&v14 = sub_1DA940A14();
    *(&v14 + 1) = v10;
    sub_1DA9412F4();
    v15 = MEMORY[0x1E69E6530];
    *&v14 = 5;
    sub_1DA848FE8(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v9;
    sub_1DA90AFBC(v13, v16, isUniquelyReferenced_nonNull_native);
    sub_1DA862DE8(v16);
    return v12;
  }

  return result;
}

unint64_t sub_1DA898990(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1DA848EAC(MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    *&v12 = sub_1DA940A14();
    *(&v12 + 1) = v3;
    sub_1DA9412F4();
    if (v1 == 2)
    {
      v4 = 259200.0;
    }

    else
    {
      v4 = 1800.0;
    }
  }

  else
  {
    sub_1DA940A14();
    *(&v12 + 1) = v5;
    sub_1DA9412F4();
    v13 = sub_1DA898804();
    *&v12 = sub_1DA9410E4();
    sub_1DA848FE8(&v12, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA90AFBC(v11, v14, isUniquelyReferenced_nonNull_native);
    sub_1DA862DE8(v14);
    *&v12 = sub_1DA940A14();
    *(&v12 + 1) = v7;
    sub_1DA9412F4();
    v4 = 0.5;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v13 = sub_1DA898804();
  *&v12 = v8;
  sub_1DA848FE8(&v12, v11);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA90AFBC(v11, v14, v9);
  sub_1DA862DE8(v14);
  return v2;
}

uint64_t sub_1DA898B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA898BB4(uint64_t a1)
{
  v2 = type metadata accessor for CloudAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA898C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, CFTimeInterval a5)
{
  v6 = v5;
  v23[1] = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  v10 = sub_1DA940A04();
  v11 = sub_1DA940A04();
  v12 = sub_1DA940A04();

  v13 = sub_1DA940A04();
  v14 = IOPMAssertionCreateWithDescription(v10, v11, v12, 0, 0, a5, v13, &AssertionID);

  if (v14)
  {
    *(v6 + 16) = 0;
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v15 = sub_1DA9405A4();
    __swift_project_value_buffer(v15, qword_1EE11AD60);

    v16 = sub_1DA940584();
    v17 = sub_1DA940F14();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v18 = 136446210;
      v20 = sub_1DA7AE6E8(a1, a2, v23);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v16, v17, "Failed to create power assertion for %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12739F0](v19, -1, -1);
      MEMORY[0x1E12739F0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    *(v6 + 16) = AssertionID;
  }

  return v6;
}

uint64_t sub_1DA898E84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    IOPMAssertionRelease(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1DA898EE4()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_id;
  v2 = sub_1DA93FEC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  v4 = sub_1DA9401F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA898FE0()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_1DA941764();
  v6 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180], MEMORY[0x1E69DF190]);
  sub_1DA9409B4();
  (*(v2 + 8))(v4, v1);
  return sub_1DA941794();
}

uint64_t sub_1DA899140(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180], MEMORY[0x1E69DF190]);
  sub_1DA9409B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DA899290(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  sub_1DA941764();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_1DA899A14(&qword_1ECBD6090, MEMORY[0x1E69DF180], MEMORY[0x1E69DF190]);
  sub_1DA9409B4();
  (*(v3 + 8))(v5, v2);
  return sub_1DA941794();
}

uint64_t sub_1DA8993F4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v10, v11 + v13, v4);
  v15 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
  swift_beginAccess();
  v14(v8, v12 + v15, v4);
  LOBYTE(v12) = MEMORY[0x1E12711F0](v10, v8);
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  return v12 & 1;
}

uint64_t sub_1DA89958C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_id;
  v5 = sub_1DA93FEC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1DA899608()
{
  if (UNIsInternalInstall() && (v0 = objc_allocWithZone(MEMORY[0x1E695E000]), v1 = sub_1DA940A04(), v2 = [v0 initWithSuiteName_], v1, v2))
  {
    v3 = sub_1DA940A04();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_1EE112408 = v4;
}

uint64_t isTimeoutDebugUIEnabled.getter()
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EE112408;
}

uint64_t isTimeoutDebugUIEnabled.setter(char a1)
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_1EE112408 = a1 & 1;
  return result;
}

uint64_t (*isTimeoutDebugUIEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE112400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t type metadata accessor for NotificationPipeline(uint64_t a1)
{
  result = qword_1EE115528;
  if (!qword_1EE115528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8998A4(uint64_t a1)
{
  result = sub_1DA93FEC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DA9401F4();
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

uint64_t sub_1DA899A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA899A5C(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DA7BD988(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1DA899B2C(uint64_t a1)
{
  v2 = type metadata accessor for StepFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotificationSource.teamIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationSource.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NotificationSource.displayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NotificationSource.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1DA8304A0(v2);
}

uint64_t sub_1DA899C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  v2 = *(v0 + 24);
  *(inited + 32) = *(v0 + 16);
  *(inited + 40) = v2;
  if (*(v0 + 48))
  {
    v3 = *MEMORY[0x1E6993B70];
  }

  else
  {
    v3 = *MEMORY[0x1E6993B68];
  }

  v4 = *MEMORY[0x1E6993B68];
  v5 = v3;
  v6 = objc_opt_self();

  v7 = [v6 sharedCategories];
  v8 = sub_1DA940A04();
  v9 = [v7 bundleIDForPlatform:v4 fromBundleID:v8 platform:v5];

  if (v9)
  {
    v10 = sub_1DA940A14();
    v12 = v11;

    inited = sub_1DA7B6928(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
  }

  v13 = *(v0 + *(type metadata accessor for NotificationSource(0) + 40));

  v14 = sub_1DA89DA08(inited, v13);

  return v14;
}

uint64_t NotificationSource.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  return sub_1DA941784();
}

uint64_t NotificationSource.init(teamIdentifier:bundleIdentifier:displayName:isRemote:state:bundleURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a8;
  v19 = type metadata accessor for NotificationSource(0);
  *(a9 + *(v19 + 40)) = MEMORY[0x1E69E7CD0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v18;
  v20 = *(v19 + 36);
  v21 = sub_1DA93F964();
  v22 = *(*(v21 - 8) + 32);

  return v22(a9 + v20, a10, v21);
}

unint64_t sub_1DA899F3C()
{
  v1 = *v0;
  v2 = 0x6E6564496D616574;
  v3 = 0x5255656C646E7562;
  if (v1 != 5)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x65746F6D65527369;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
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

uint64_t sub_1DA89A038@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA89F040(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA89A06C(uint64_t a1)
{
  v2 = sub_1DA89DD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89A0A8(uint64_t a1)
{
  v2 = sub_1DA89DD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60E0, &qword_1DA95DFE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DD34();
  sub_1DA941834();
  LOBYTE(v12) = 0;
  sub_1DA9415B4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1DA9415D4();
    LOBYTE(v12) = 2;
    sub_1DA9415D4();
    LOBYTE(v12) = 3;
    sub_1DA9415E4();
    v12 = *(v3 + 56);
    HIBYTE(v11) = 4;
    sub_1DA8304A0(v12);
    sub_1DA8304D0();
    sub_1DA941604();
    sub_1DA830524(v12);
    v9 = type metadata accessor for NotificationSource(0);
    LOBYTE(v12) = 5;
    sub_1DA93F964();
    sub_1DA89E1E8(&qword_1ECBD60F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DA941604();
    v12 = *(v3 + *(v9 + 40));
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    sub_1DA89DD88(&qword_1ECBD6100, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1DA941604();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NotificationSource.hashValue.getter()
{
  sub_1DA941764();
  if (*(v0 + 8))
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  sub_1DA941784();
  return sub_1DA941794();
}

void NotificationSource.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1DA93F964();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6108, &qword_1DA95DFF0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v24 - v6;
  v8 = type metadata accessor for NotificationSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DD34();
  v31 = v7;
  v11 = v32;
  sub_1DA941804();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v5;
    v26 = v3;
    v12 = v28;
    v13 = v29;
    v32 = a1;
    LOBYTE(v34) = 0;
    v14 = v30;
    v15 = v10;
    *v10 = sub_1DA941524();
    v10[1] = v16;
    v24[2] = v16;
    LOBYTE(v34) = 1;
    v10[2] = sub_1DA941554();
    v10[3] = v17;
    LOBYTE(v34) = 2;
    v24[1] = 0;
    v18 = v13;
    v19 = v12;
    *(v15 + 32) = sub_1DA941554();
    *(v15 + 40) = v20;
    LOBYTE(v34) = 3;
    *(v15 + 48) = sub_1DA941564() & 1;
    v33 = 4;
    sub_1DA83044C();
    sub_1DA941584();
    *(v15 + 56) = v34;
    LOBYTE(v34) = 5;
    sub_1DA89E1E8(&qword_1ECBD6110, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v21 = v25;
    v22 = v26;
    sub_1DA941584();
    (*(v18 + 32))(v15 + *(v8 + 36), v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    v33 = 6;
    sub_1DA89DD88(&qword_1ECBD6118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1DA941584();
    v23 = *(v8 + 40);
    (*(v19 + 8))(v31, v14);
    *(v15 + v23) = v34;
    sub_1DA82A798(v15, v27);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1DA82A7FC(v15);
  }
}

uint64_t sub_1DA89AA3C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  return sub_1DA941784();
}

uint64_t sub_1DA89AAAC(uint64_t a1)
{
  sub_1DA941764();
  if (*(v1 + 8))
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  sub_1DA941784();
  return sub_1DA941794();
}

uint64_t NotificationSource.id.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1E1271BD0](v2, v3);

  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  MEMORY[0x1E1271BD0](v0[2], v0[3]);
  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v4, v5);

  return 0;
}

uint64_t sub_1DA89AC44@<X0>(uint64_t *a1@<X8>)
{
  result = NotificationSource.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NotificationSource.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA953A40);
  if (*(v0 + 8))
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
    v1 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  MEMORY[0x1E1271BD0](0xD000000000000014, 0x80000001DA953A70);
  MEMORY[0x1E1271BD0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1271BD0](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x1E1271BD0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E1271BD0](0x6F6D65527369202CLL, 0xEC000000203A6574);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  v5 = MEMORY[0x1E1271BD0](0x3A6574617473202CLL, 0xE900000000000020);
  v6 = *(v0 + 56);
  if (v6 == 4)
  {
    v7 = 0xE700000000000000;
    v8 = 0x64656C62616E65;
  }

  else
  {
    if (v6 == 3)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v9 = NotificationSource.State.OverrideReason.description.getter(v5);
      v10 = v11;
    }

    MEMORY[0x1E1271BD0](v9, v10);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v8 = 0x64656C6261736964;
    v7 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v8, v7);

  MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA953A90);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA89DDF4();
  sub_1DA8282D0();
  v12 = sub_1DA940B64();
  v14 = v13;

  MEMORY[0x1E1271BD0](v12, v14);

  MEMORY[0x1E1271BD0](10589, 0xE200000000000000);
  return 0;
}

uint64_t NotificationSource.debugDescription.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA953A40);
  if (*(v0 + 8))
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
    v1 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  MEMORY[0x1E1271BD0](0xD000000000000014, 0x80000001DA953A70);
  MEMORY[0x1E1271BD0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1271BD0](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x1E1271BD0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E1271BD0](0x6F6D65527369202CLL, 0xEC000000203A6574);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  v5 = MEMORY[0x1E1271BD0](0x3A6574617473202CLL, 0xE900000000000020);
  v6 = *(v0 + 56);
  if (v6 == 4)
  {
    v7 = 0xE700000000000000;
    v8 = 0x64656C62616E65;
  }

  else
  {
    if (v6 == 3)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v9 = NotificationSource.State.OverrideReason.description.getter(v5);
      v10 = v11;
    }

    MEMORY[0x1E1271BD0](v9, v10);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v8 = 0x64656C6261736964;
    v7 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v8, v7);

  MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA953A90);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA89DDF4();
  sub_1DA8282D0();
  v12 = sub_1DA940B64();
  v14 = v13;

  MEMORY[0x1E1271BD0](v12, v14);

  MEMORY[0x1E1271BD0](0x6C646E7562202C5DLL, 0xEE00203A4C525565);
  type metadata accessor for NotificationSource(0);
  sub_1DA93F964();
  sub_1DA89E1E8(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v15 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v15);

  return 0;
}

BOOL static NotificationSource.State.OverrideReason.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      sub_1DA830544(0);
      v4 = 0;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_1DA830544(2uLL);
        v4 = 2;
LABEL_17:
        sub_1DA830544(v4);
        return 1;
      }
    }

    else if (v3 >= 3)
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      if (v5 == 3)
      {
        sub_1DA8304C0(*a2);
        sub_1DA8304C0(v2);
        sub_1DA8304B0(3);
        if (v6 == 3)
        {
          sub_1DA8304B0(3);
          sub_1DA830534(3uLL);
          sub_1DA830544(v2);
          v4 = v3;
          goto LABEL_17;
        }

        sub_1DA8304B0(v6);
      }

      else
      {
        v10 = *(v2 + 16);
        if (v6 != 3)
        {
          v9 = v6;
          sub_1DA8304C0(v3);
          sub_1DA8304C0(v2);
          sub_1DA8304B0(v5);
          sub_1DA8304B0(v6);
          sub_1DA8304B0(v5);
          v8 = static NotificationSource.State.OverrideReason.== infix(_:_:)(&v10, &v9);
          sub_1DA830544(v6);
          sub_1DA830544(v5);
          sub_1DA830534(v5);
          sub_1DA830544(v2);
          sub_1DA830544(v3);
          return v8;
        }

        sub_1DA8304C0(v3);
        sub_1DA8304C0(v2);
        sub_1DA8304B0(v5);
        sub_1DA8304B0(3);
        sub_1DA8304B0(v5);
        sub_1DA830544(v5);
      }

      sub_1DA830534(v5);
      sub_1DA830534(v6);
LABEL_12:
      sub_1DA830544(v2);
      sub_1DA830544(v3);
      return 0;
    }

LABEL_11:
    sub_1DA8304C0(*a2);
    sub_1DA8304C0(v2);
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    goto LABEL_11;
  }

  sub_1DA830544(1uLL);
  sub_1DA830544(1uLL);
  return v3;
}

uint64_t sub_1DA89B4B4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65746F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x746163696C707564;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
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

uint64_t sub_1DA89B52C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA89F2A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA89B554(uint64_t a1)
{
  v2 = sub_1DA89DE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B590(uint64_t a1)
{
  v2 = sub_1DA89DE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B5CC(uint64_t a1)
{
  v2 = sub_1DA89DEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B608(uint64_t a1)
{
  v2 = sub_1DA89DEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B644(uint64_t a1)
{
  v2 = sub_1DA89DFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B680(uint64_t a1)
{
  v2 = sub_1DA89DFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x764F65746F6D6572 && a2 == 0xEE00656469727265)
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

uint64_t sub_1DA89B770(uint64_t a1)
{
  v2 = sub_1DA89DF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B7AC(uint64_t a1)
{
  v2 = sub_1DA89DF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89B7E8(uint64_t a1)
{
  v2 = sub_1DA89DFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89B824(uint64_t a1)
{
  v2 = sub_1DA89DFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.State.OverrideReason.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6120, &qword_1DA95DFF8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v22 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6128, &qword_1DA95E000);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6130, &qword_1DA95E008);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6138, &qword_1DA95E010);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6140, &qword_1DA95E018);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89DE58();
  sub_1DA941834();
  switch(v14)
  {
    case 0:
      v35 = 0;
      sub_1DA89DFFC();
      v16 = v33;
      sub_1DA9415A4();
      (*(v23 + 8))(v10, v8);
      return (*(v32 + 8))(v13, v16);
    case 1:
      v36 = 1;
      sub_1DA89DFA8();
      v16 = v33;
      sub_1DA9415A4();
      (*(v24 + 8))(v7, v25);
      return (*(v32 + 8))(v13, v16);
    case 2:
      v38 = 3;
      sub_1DA89DEAC();
      v15 = v27;
      v16 = v33;
      sub_1DA9415A4();
      (*(v29 + 8))(v15, v31);
      return (*(v32 + 8))(v13, v16);
  }

  v18 = *(v14 + 16);
  v37 = 2;
  sub_1DA89DF00();
  v19 = v26;
  v20 = v33;
  sub_1DA9415A4();
  v34 = v18;
  sub_1DA89DF54();
  v21 = v30;
  sub_1DA9415C4();
  (*(v28 + 8))(v19, v21);
  return (*(v32 + 8))(v13, v20);
}

double NotificationSource.State.OverrideReason.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = 1;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 3;
LABEL_7:
    MEMORY[0x1E1272850](v3);
    return result;
  }

  v5 = *(v2 + 16);
  MEMORY[0x1E1272850](2);
  if (v5 == 3)
  {
    sub_1DA941784();
  }

  else
  {
    sub_1DA941784();
    sub_1DA8304C0(v5);
    NotificationSource.State.OverrideReason.hash(into:)(a1);

    return sub_1DA830544(v5);
  }

  return result;
}

uint64_t NotificationSource.State.OverrideReason.hashValue.getter()
{
  v2[9] = *v0;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v2);
  return sub_1DA941794();
}

uint64_t NotificationSource.State.OverrideReason.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6160, &qword_1DA95E020);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v37 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6168, &qword_1DA95E028);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6170, &qword_1DA95E030);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6178, &qword_1DA95E038);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6180, &unk_1DA95E040);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DA89DE58();
  v16 = v51;
  sub_1DA941804();
  if (!v16)
  {
    v38 = v8;
    v39 = v10;
    v17 = v46;
    v18 = v47;
    v40 = 0;
    v19 = v48;
    v20 = v49;
    v51 = v12;
    v21 = v50;
    v22 = sub_1DA941594();
    v23 = (2 * *(v22 + 16)) | 1;
    v53 = v22;
    v54 = v22 + 32;
    v55 = 0;
    v56 = v23;
    v24 = sub_1DA8675E8();
    if (v24 == 4 || v55 != v56 >> 1)
    {
      v27 = sub_1DA9413B4();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v29 = &type metadata for NotificationSource.State.OverrideReason;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v51 + 8))(v14, v11);
      goto LABEL_9;
    }

    if (v24 <= 1u)
    {
      if (v24)
      {
        v57 = 1;
        sub_1DA89DFA8();
        v34 = v40;
        sub_1DA941504();
        if (!v34)
        {
          (*(v42 + 8))(v7, v17);
          (*(v51 + 8))(v14, v11);
          swift_unknownObjectRelease();
          *v21 = 1;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }
      }

      else
      {
        v57 = 0;
        sub_1DA89DFFC();
        v26 = v39;
        v25 = v40;
        sub_1DA941504();
        if (!v25)
        {
          (*(v41 + 8))(v26, v38);
          (*(v51 + 8))(v14, v11);
          swift_unknownObjectRelease();
          *v21 = 0;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }
      }

      (*(v51 + 8))(v14, v11);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v31 = v51;
    if (v24 != 2)
    {
      v57 = 3;
      sub_1DA89DEAC();
      v35 = v40;
      sub_1DA941504();
      if (!v35)
      {
        (*(v43 + 8))(v20, v44);
        (*(v31 + 8))(v14, v11);
        swift_unknownObjectRelease();
        *v21 = 2;
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      (*(v31 + 8))(v14, v11);
      goto LABEL_9;
    }

    v57 = 2;
    sub_1DA89DF00();
    v32 = v18;
    v33 = v40;
    sub_1DA941504();
    if (v33)
    {
      (*(v31 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = swift_allocObject();
      sub_1DA89E050();
      sub_1DA941544();
      (*(v45 + 8))(v32, v19);
      (*(v31 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v50 = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1DA89C5E4()
{
  v2[9] = *v0;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v2);
  return sub_1DA941794();
}

uint64_t sub_1DA89C634(uint64_t a1)
{
  v3[9] = *v1;
  sub_1DA941764();
  NotificationSource.State.OverrideReason.hash(into:)(v3);
  return sub_1DA941794();
}

uint64_t sub_1DA89C6B4()
{
  if (*v0)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_1DA89C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA89C7CC(uint64_t a1)
{
  v2 = sub_1DA89E0A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C808(uint64_t a1)
{
  v2 = sub_1DA89E0A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
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

uint64_t sub_1DA89C8E4(uint64_t a1)
{
  v2 = sub_1DA89E14C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C920(uint64_t a1)
{
  v2 = sub_1DA89E14C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA89C95C(uint64_t a1)
{
  v2 = sub_1DA89E0F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA89C998(uint64_t a1)
{
  v2 = sub_1DA89E0F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationSource.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6188, &qword_1DA95E050);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6190, &qword_1DA95E058);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6198, &qword_1DA95E060);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA89E0A4();
  sub_1DA941834();
  if (v12 == 4)
  {
    v24 = 1;
    sub_1DA89E0F8();
    v13 = v17;
    sub_1DA9415A4();
    (*(v20 + 8))(v13, v21);
  }

  else
  {
    v23 = 0;
    sub_1DA89E14C();
    sub_1DA9415A4();
    v22 = v12;
    sub_1DA89DF54();
    v15 = v19;
    sub_1DA9415C4();
    (*(v18 + 8))(v7, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

double NotificationSource.State.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    if (v3 == 3)
    {
      sub_1DA941784();
    }

    else
    {
      sub_1DA941784();
      sub_1DA8304B0(v3);
      NotificationSource.State.OverrideReason.hash(into:)(a1);

      return sub_1DA830544(v3);
    }
  }

  return result;
}

uint64_t NotificationSource.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DA941764();
  if (v1 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    sub_1DA941784();
    if (v1 != 3)
    {
      sub_1DA8304B0(v1);
      NotificationSource.State.OverrideReason.hash(into:)(v3);
      sub_1DA830544(v1);
    }
  }

  return sub_1DA941794();
}

uint64_t NotificationSource.State.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61A0, &qword_1DA95E068);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61A8, &qword_1DA95E070);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD61B0, &unk_1DA95E078);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DA89E0A4();
  v13 = v33;
  sub_1DA941804();
  if (!v13)
  {
    v14 = v7;
    v28 = v5;
    v33 = v9;
    v15 = v31;
    v16 = v32;
    v17 = sub_1DA941594();
    v18 = (2 * *(v17 + 16)) | 1;
    v35 = v17;
    v36 = v17 + 32;
    v37 = 0;
    v38 = v18;
    v19 = sub_1DA8675E4();
    if (v19 == 2 || v37 != v38 >> 1)
    {
      v21 = sub_1DA9413B4();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v23 = &type metadata for NotificationSource.State;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v33 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      LOBYTE(v39) = 1;
      sub_1DA89E0F8();
      sub_1DA941504();
      v20 = v33;
      (*(v15 + 8))(v4, v29);
      (*(v20 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v16 = 4;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_1DA89E14C();
      sub_1DA941504();
      v25 = v33;
      sub_1DA89E050();
      v26 = v28;
      sub_1DA941544();
      (*(v30 + 8))(v14, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v16 = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

double sub_1DA89D31C(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    if (v3 == 3)
    {
      sub_1DA941784();
    }

    else
    {
      sub_1DA941784();
      sub_1DA8304B0(v3);
      NotificationSource.State.OverrideReason.hash(into:)(a1);

      return sub_1DA830544(v3);
    }
  }

  return result;
}

uint64_t sub_1DA89D3D4(uint64_t a1)
{
  v2 = *v1;
  sub_1DA941764();
  if (v2 == 4)
  {
    MEMORY[0x1E1272850](1);
  }

  else
  {
    MEMORY[0x1E1272850](0);
    sub_1DA941784();
    if (v2 != 3)
    {
      sub_1DA8304B0(v2);
      NotificationSource.State.OverrideReason.hash(into:)(v4);
      sub_1DA830544(v2);
    }
  }

  return sub_1DA941794();
}

id NotificationSource.icon.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  if (*(v0 + 48))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v10 = sub_1DA93F904();
  v11 = [v9 initWithURL:v10 options:v8];

  if (qword_1ECBD4758 != -1)
  {
    swift_once();
  }

  v12 = sub_1DA9405A4();
  __swift_project_value_buffer(v12, qword_1ECBD60C8);
  sub_1DA82A798(v1, v7);
  sub_1DA82A798(v1, v5);
  v13 = v11;
  v14 = sub_1DA940584();
  v15 = sub_1DA940F04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315650;
    v18 = *(v7 + 2);
    v19 = *(v7 + 3);

    sub_1DA82A7FC(v7);
    v20 = sub_1DA7AE6E8(v18, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_1DA93F964();
    sub_1DA89E1E8(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v21 = sub_1DA941614();
    v23 = v22;
    sub_1DA82A7FC(v5);
    v24 = sub_1DA7AE6E8(v21, v23, &v29);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    *v17 = v13;
    v25 = v13;
    _os_log_impl(&dword_1DA7A9000, v14, v15, "%s - returning icon for bundle at %s: %@", v16, 0x20u);
    sub_1DA828378(v17);
    MEMORY[0x1E12739F0](v17, -1, -1);
    v26 = v28;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  else
  {

    sub_1DA82A7FC(v5);
    sub_1DA82A7FC(v7);
  }

  return v13;
}

uint64_t NotificationSource.State.description.getter(uint64_t a1)
{
  if (*v1 == 4)
  {
    return 0x64656C62616E65;
  }

  if (*v1 == 3)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = NotificationSource.State.OverrideReason.description.getter(a1);
    v4 = v5;
  }

  MEMORY[0x1E1271BD0](v3, v4);

  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  return 0x64656C6261736964;
}

uint64_t NotificationSource.State.OverrideReason.description.getter(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (v2 == 1)
  {
    return 0x7963696C6F70;
  }

  if (v2 == 2)
  {
    return 0x746163696C707564;
  }

  if (*(v2 + 16) == 3)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = NotificationSource.State.OverrideReason.description.getter(a1);
    v5 = v6;
  }

  MEMORY[0x1E1271BD0](v4, v5);

  MEMORY[0x1E1271BD0](41, 0xE100000000000000);
  return 0x2865746F6D6572;
}

uint64_t sub_1DA89D984()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD60C8);
  __swift_project_value_buffer(v0, qword_1ECBD60C8);
  return sub_1DA940594();
}

uint64_t sub_1DA89DA08(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1DA8A9058(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

BOOL _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 4)
  {
    if (v3 == 4)
    {
      sub_1DA830524(4uLL);
      sub_1DA830524(4uLL);
      return 1;
    }

    goto LABEL_5;
  }

  if (v3 == 4)
  {
LABEL_5:
    sub_1DA8304A0(*a2);
    sub_1DA8304A0(v2);
    sub_1DA830524(v2);
    sub_1DA830524(v3);
    return 0;
  }

  if (v2 == 3)
  {
    sub_1DA8304A0(3);
    sub_1DA8304A0(v3);
    sub_1DA8304A0(v3);
    sub_1DA8304A0(3);
    sub_1DA830524(3uLL);
    sub_1DA830524(v3);
    if (v3 == 3)
    {
      sub_1DA830534(3uLL);
      return 1;
    }

LABEL_12:
    sub_1DA830534(v2);
    sub_1DA830534(v3);
    return 0;
  }

  v7 = *a1;
  if (v3 == 3)
  {
    sub_1DA8304A0(v2);
    sub_1DA8304A0(3);
    sub_1DA8304A0(3);
    sub_1DA8304A0(v2);
    sub_1DA8304B0(v2);
    sub_1DA830524(v2);
    sub_1DA830524(3uLL);
    sub_1DA830544(v2);
    goto LABEL_12;
  }

  v6 = v3;
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v2);
  sub_1DA8304A0(v2);
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v3);
  sub_1DA8304A0(v2);
  sub_1DA8304B0(v2);
  v5 = static NotificationSource.State.OverrideReason.== infix(_:_:)(&v7, &v6);
  sub_1DA830524(v2);
  sub_1DA830524(v3);
  sub_1DA830524(v3);
  sub_1DA830524(v2);
  sub_1DA830544(v3);
  sub_1DA830544(v2);
  sub_1DA830534(v2);
  return v5;
}

uint64_t _s21UserNotificationsCore18NotificationSourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1DA941684() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v5)
  {
LABEL_16:
    v8 = 0;
    return v8 & 1;
  }

  v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v7 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v8 & 1;
}

uint64_t type metadata accessor for NotificationSource(uint64_t a1)
{
  result = qword_1EE112B48;
  if (!qword_1EE112B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA89DD34()
{
  result = qword_1ECBD60E8;
  if (!qword_1ECBD60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD60E8);
  }

  return result;
}

uint64_t sub_1DA89DD88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA89DDF4()
{
  result = qword_1EE110C70;
  if (!qword_1EE110C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110C70);
  }

  return result;
}

unint64_t sub_1DA89DE58()
{
  result = qword_1EE112C10;
  if (!qword_1EE112C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C10);
  }

  return result;
}

unint64_t sub_1DA89DEAC()
{
  result = qword_1ECBD6148;
  if (!qword_1ECBD6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6148);
  }

  return result;
}

unint64_t sub_1DA89DF00()
{
  result = qword_1EE112BE8;
  if (!qword_1EE112BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BE8);
  }

  return result;
}

unint64_t sub_1DA89DF54()
{
  result = qword_1EE112BB0;
  if (!qword_1EE112BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BB0);
  }

  return result;
}

unint64_t sub_1DA89DFA8()
{
  result = qword_1ECBD6150;
  if (!qword_1ECBD6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6150);
  }

  return result;
}

unint64_t sub_1DA89DFFC()
{
  result = qword_1ECBD6158;
  if (!qword_1ECBD6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6158);
  }

  return result;
}

unint64_t sub_1DA89E050()
{
  result = qword_1EE112BA8;
  if (!qword_1EE112BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BA8);
  }

  return result;
}

unint64_t sub_1DA89E0A4()
{
  result = qword_1EE112C28;
  if (!qword_1EE112C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C28);
  }

  return result;
}

unint64_t sub_1DA89E0F8()
{
  result = qword_1EE112BA0;
  if (!qword_1EE112BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BA0);
  }

  return result;
}

unint64_t sub_1DA89E14C()
{
  result = qword_1EE112B88;
  if (!qword_1EE112B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B88);
  }

  return result;
}

uint64_t sub_1DA89E1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA89E234()
{
  result = qword_1ECBD61C0;
  if (!qword_1ECBD61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61C0);
  }

  return result;
}

unint64_t sub_1DA89E28C()
{
  result = qword_1ECBD61C8;
  if (!qword_1ECBD61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61C8);
  }

  return result;
}

void sub_1DA89E308(uint64_t a1)
{
  sub_1DA89E3C8();
  if (v1 <= 0x3F)
  {
    sub_1DA93F964();
    if (v2 <= 0x3F)
    {
      sub_1DA89E418();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DA89E3C8()
{
  if (!qword_1EE110CE0)
  {
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110CE0);
    }
  }
}

void sub_1DA89E418()
{
  if (!qword_1EE110C78)
  {
    v0 = sub_1DA940ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110C78);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO14OverrideReasonO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO14OverrideReasonOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore18NotificationSourceV5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA89E4D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}
uint64_t sub_12D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_54748();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

__n128 sub_12DE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  v4 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id);
  v5 = sub_53918();
  __chkstk_darwin(v5 - 8);
  v29 = v4;
  sub_4AC4(v4);
  v27 = sub_541F8();
  v7 = v6;
  v25 = v8;
  v10 = v9;
  sub_54058();
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_54048(v51);
  v41[0] = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount);
  sub_54028();
  v52._countAndFlagsBits = 0x7370706120;
  v52._object = 0xE500000000000000;
  sub_54048(v52);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v11 = qword_7BBF8;
  v12 = sub_541D8();
  v30[104] = v25 & 1;
  v30[96] = v13 & 1;
  v31[0] = v4;
  v32 = v27;
  v33 = v7;
  v34 = v25 & 1;
  *&v35 = v10;
  *(&v35 + 1) = v12;
  v36 = v14;
  v37 = v13 & 1;
  v39 = 0;
  v38 = v15;
  v40 = -1;
  LOBYTE(v41[0]) = v4;
  v41[1] = v27;
  v41[2] = v7;
  v42 = v25 & 1;
  v43 = v10;
  v44 = v12;
  v45 = v14;
  v46 = v13 & 1;
  v48 = 0;
  v49 = 0;
  v47 = v15;
  v50 = -1;
  sub_13C90(v31, v30);
  sub_13CEC(v41);
  v28 = v32;
  v16 = v33;
  v17 = v36;
  v24 = v38;
  v26 = v35;
  v18 = v39;
  v19 = v40;
  v20 = v31[0] & 0x3F;
  v21 = v34 & 1;
  v22 = v37 | 0x8000000000000000;
  sub_130D4(v1);
  *a1 = v29;
  *(a1 + 8) = v20;
  *(a1 + 16) = v28;
  *(a1 + 24) = v16;
  *(a1 + 32) = v21;
  result = v24;
  *(a1 + 40) = v26;
  *(a1 + 56) = v17;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  return result;
}

uint64_t sub_130D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_54A18();

    if (v5)
    {
      return result;
    }
  }

  else if (*(v4 + 16))
  {
    return result;
  }

  v6 = sub_548B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() defaultCenter];
  if (qword_76F90 != -1)
  {
    swift_once();
  }

  sub_548C8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_11EB8();
  sub_53D98();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();
}

__n128 sub_13354@<Q0>(uint64_t a1@<X8>)
{
  sub_12DE8(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_133B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_547A8();
  v5[10] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1344C, v7, v6);
}

id sub_1344C()
{
  v34 = v0;
  v1 = v0[8];

  if (!v1 || (v2 = sub_1733C(v0[8])) == 0)
  {
LABEL_22:
    v28 = v0[1];

    return v28();
  }

  v3 = v2;
  aBlock = v0 + 2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_27:
    v5 = sub_54B58();
  }

  else
  {
    v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = v0[9];
  v30 = v5;
  if (!v5)
  {
LABEL_21:

    v24 = *&v6[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
    v25 = swift_allocObject();
    *(v25 + 16) = v6;
    v0[6] = sub_14A04;
    v0[7] = v25;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_12D50;
    v0[5] = &unk_6EFE0;
    v26 = _Block_copy(aBlock);
    v27 = v6;

    [v24 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v26];
    _Block_release(v26);
    goto LABEL_22;
  }

  v29 = v0;
  v7 = 0;
  v0 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
  v32 = v3 & 0xC000000000000001;
  v8 = v5;
  while (1)
  {
    if (v32)
    {
      v9 = sub_54AB8();
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = [v9 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = sub_54668();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = v3;
      v19 = v4;
      result = [v10 bundleIdentifier];
      if (!result)
      {
        goto LABEL_29;
      }

      v20 = result;
      sub_54668();

      v21 = sub_546A8();
      v23 = v22;

      swift_beginAccess();
      sub_1F8F4(v33, v21, v23);
      swift_endAccess();

      v4 = v19;
      v3 = v18;
      v8 = v30;
    }

    else
    {
    }

    ++v7;
    if (v11 == v8)
    {
      v0 = v29;
      v6 = v29[9];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_13768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_547A8();
  v5[10] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_13800, v7, v6);
}

id sub_13800()
{
  v1 = v0[8];

  if (!v1 || (v2 = sub_1733C(v0[8])) == 0)
  {
LABEL_22:
    v28 = v0[1];

    return v28();
  }

  v3 = v2;
  aBlock = v0 + 2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_27:
    v5 = sub_54B58();
  }

  else
  {
    v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = v0[9];
  v30 = v5;
  if (!v5)
  {
LABEL_21:

    v24 = *&v6[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
    v25 = swift_allocObject();
    *(v25 + 16) = v6;
    v0[6] = sub_14A04;
    v0[7] = v25;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_12D50;
    v0[5] = &unk_6EF68;
    v26 = _Block_copy(aBlock);
    v27 = v6;

    [v24 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v26];
    _Block_release(v26);
    goto LABEL_22;
  }

  v29 = v0;
  v7 = 0;
  v0 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
  v32 = v3 & 0xC000000000000001;
  v8 = v5;
  while (1)
  {
    if (v32)
    {
      v9 = sub_54AB8();
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = [v9 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = sub_54668();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = v3;
      v19 = v4;
      result = [v10 bundleIdentifier];
      if (!result)
      {
        goto LABEL_29;
      }

      v20 = result;
      sub_54668();

      v21 = sub_546A8();
      v23 = v22;

      swift_beginAccess();
      sub_145D4(v21, v23);
      swift_endAccess();

      v4 = v19;
      v3 = v18;
      v8 = v30;
    }

    else
    {
    }

    ++v7;
    if (v11 == v8)
    {
      v0 = v29;
      v6 = v29[9];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_13B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    a3 = sub_54748();
  }

  v11 = sub_547D8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_547A8();
  v12 = a1;
  v13 = sub_54798();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = a3;
  v14[5] = v12;
  sub_12270(0, 0, v10, a5, v14);
}

uint64_t sub_13D40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_13D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager);
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    aBlock[4] = sub_13E94;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12D50;
    aBlock[3] = &unk_6EE28;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [v3 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t sub_13E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_12938(a1, v4, v5, v7, v6);
}

uint64_t sub_13F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14068(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_140D8(uint64_t a1)
{
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14140(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_14238;

  return v6(a1);
}

uint64_t sub_14238()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14330()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14A00;

  return sub_14140(a1, v4);
}

uint64_t sub_14420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13F74;

  return sub_14140(a1, v4);
}

uint64_t sub_144D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_14514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_13768(a1, v4, v5, v7, v6);
}

uint64_t sub_145D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_54C28();
  sub_546C8();
  v6 = sub_54C58();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_54BD8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1FE24();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_14710(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_14710(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_549F8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_54C28();

        sub_546C8();
        v10 = sub_54C58();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_148D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1491C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_133B4(a1, v4, v5, v7, v6);
}

id sub_14A2C()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    [result removeObserver:v0];

    [*&v0[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource] unregisterObserver:v0];
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_14BA0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_547A8();
  v2[21] = sub_54798();
  v4 = sub_54788();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_14C38, v4, v3);
}

uint64_t sub_14C38()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    v2 = sub_54B58();
    v0[24] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[19];
      v4 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthAuthorizationStore;
      v0[26] = 0;
      v0[27] = 0;
      v0[25] = v4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = sub_54AB8();
        v4 = v0[25];
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return _swift_continuation_await(v2);
        }

        v5 = *(v3 + 32);
      }

      v0[28] = v5;
      v0[29] = 1;
      v6 = *(v0[20] + v4);
      v0[30] = v6;
      v7 = v6;
      v8 = [v5 source];
      v9 = [v8 bundleIdentifier];

      if (!v9)
      {
        sub_54668();
        v9 = sub_54638();
      }

      v0[31] = v9;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_14E94;
      v10 = swift_continuation_init();
      v0[17] = sub_44BC(&qword_778B8, &qword_57780);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_158A8;
      v0[13] = &unk_6F078;
      v0[14] = v10;
      [v7 fetchAuthorizationRecordsForBundleIdentifier:v9 completion:v0 + 10];
      v2 = (v0 + 2);

      return _swift_continuation_await(v2);
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v0[24] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_14E94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_15434;
  }

  else
  {
    v5 = sub_14FC4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14FC4()
{
  v1 = *(v0 + 144);
  v36 = (v0 + 144);
  v37 = (v0 + 80);
  v2 = *(v0 + 248);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_54B28();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v1 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  while ((v1 & 0x8000000000000000) == 0)
  {
    v12 = v10;
    v13 = v6;
    if (!v6)
    {
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v13 = *(v4 + 8 * v10);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = (v10 << 9) | (8 * __clz(__rbit64(v13)));
    v15 = *(*(v1 + 56) + v14);
    v16 = *(*(v1 + 48) + v14);
    v17 = v15;
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_17:

    v21 = [v17 status];
    if (v21 != &stru_68)
    {
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_11288(v1);

      if (!__OFADD__(v23, 1))
      {
        v24 = vdupq_n_s64(v23 + 1);
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

  v18 = sub_54B38();
  if (v18)
  {
    v20 = v19;
    *v36 = v18;
    sub_E444(0, &qword_778C8, HKObjectType_ptr);
    swift_dynamicCast();
    v16 = *v37;
    *v36 = v20;
    sub_E444(0, &qword_778D0, _HKAuthorizationRecord_ptr);
    swift_dynamicCast();
    v17 = *v37;
    if (v16)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v25 = *(v0 + 224);
  sub_11288(v1);

  v24 = *(v0 + 208);
LABEL_21:
  v26 = *(v0 + 232);
  if (v26 != *(v0 + 192))
  {
    *(v0 + 208) = v24;
    v29 = *(v0 + 152);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v3 = sub_54AB8();
    }

    else
    {
      if (v26 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return _swift_continuation_await(v3);
      }

      v3 = *(v29 + 8 * v26 + 32);
    }

    v30 = v3;
    *(v0 + 224) = v3;
    *(v0 + 232) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v31 = *(*(v0 + 160) + *(v0 + 200));
      *(v0 + 240) = v31;
      v32 = v31;
      v33 = [v30 source];
      v34 = [v33 bundleIdentifier];

      if (!v34)
      {
        sub_54668();
        v34 = sub_54638();
      }

      *(v0 + 248) = v34;
      *(v0 + 16) = v0;
      *(v0 + 56) = v36;
      *(v0 + 24) = sub_14E94;
      v35 = swift_continuation_init();
      *(v0 + 136) = sub_44BC(&qword_778B8, &qword_57780);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_158A8;
      *(v0 + 104) = &unk_6F078;
      *(v0 + 112) = v35;
      [v32 fetchAuthorizationRecordsForBundleIdentifier:v34 completion:?];
      v3 = v0 + 16;

      return _swift_continuation_await(v3);
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v24.i64[0];

  v27 = *(v0 + 8);

  return v27(v38);
}

uint64_t sub_15434()
{
  v36 = v0;
  v1 = v0 + 10;
  v2 = v0[31];
  v3 = v0[30];
  swift_willThrow();

  if (qword_76FF8 != -1)
  {
    swift_once();
  }

  v4 = v0[28];
  v5 = sub_53C38();
  sub_7700(v5, qword_7BC48);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_53C18();
  v8 = sub_54808();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[28];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v11 source];
    v14 = [v13 bundleIdentifier];

    v15 = sub_54668();
    v34 = v11;
    v17 = v16;

    v1 = v0 + 10;
    v18 = sub_18710(v15, v17, v35);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v0[10] = v10;
    swift_errorRetain();
    sub_44BC(&qword_778C0, &unk_57900);
    v19 = sub_54698();
    v21 = sub_18710(v19, v20, v35);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_0, v7, v8, "Could not get authorization records for %s with error: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = v0[29];
  if (v23 != v0[24])
  {
    v27 = v0[19];
    if ((v27 & 0xC000000000000001) != 0)
    {
      v22 = sub_54AB8();
    }

    else
    {
      if (v23 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v22 = *(v27 + 8 * v23 + 32);
    }

    v28 = v22;
    v0[28] = v22;
    v0[29] = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      v29 = *(v0[20] + v0[25]);
      v0[30] = v29;
      v30 = v29;
      v31 = [v28 source];
      v32 = [v31 bundleIdentifier];

      if (!v32)
      {
        sub_54668();
        v32 = sub_54638();
      }

      v0[31] = v32;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_14E94;
      v33 = swift_continuation_init();
      v0[17] = sub_44BC(&qword_778B8, &qword_57780);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_158A8;
      v0[13] = &unk_6F078;
      v0[14] = v33;
      [v30 fetchAuthorizationRecordsForBundleIdentifier:v32 completion:v1];
      v22 = v0 + 2;

      return _swift_continuation_await(v22);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_continuation_await(v22);
  }

  v24 = v0[26];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_158A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_E444(0, &qword_778C8, HKObjectType_ptr);
    sub_E444(0, &qword_778D0, _HKAuthorizationRecord_ptr);
    sub_172CC();
    **(*(v4 + 64) + 40) = sub_545C8();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_159C4(void *a1)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [a1 sources];
  if (v6)
  {
    v7 = v6;
    sub_547B8();
    v8 = sub_547D8();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = v7;
    v10 = v1;
    v11 = v7;
    sub_18D0C(0, 0, v5, &unk_57760, v9);

    sub_140D8(v5);
  }

  else
  {
    if (qword_76FF8 != -1)
    {
      swift_once();
    }

    v12 = sub_53C38();
    sub_7700(v12, qword_7BC48);
    v17 = sub_53C18();
    v13 = sub_54808();
    if (os_log_type_enabled(v17, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v17, v13, "App data sources did not get fetched.", v14, 2u);
    }

    v15 = v17;
  }
}

uint64_t sub_15BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_44BC(&qword_777B8, &qword_57750);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_15C88, 0, 0);
}

uint64_t sub_15C88()
{
  v1 = [*(v0 + 24) orderedAppSources];
  *(v0 + 40) = sub_E444(0, &qword_778B0, HKSourceDataModel_ptr);
  v2 = sub_54748();
  *(v0 + 48) = v2;

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_15D6C;

  return sub_14BA0(v2);
}

uint64_t sub_15D6C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_15E8C, 0, 0);
}

uint64_t sub_15E8C()
{
  v1 = [*(v0 + 24) orderedResearchStudySources];
  v2 = sub_54748();
  *(v0 + 72) = v2;

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_15F5C;

  return sub_14BA0(v2);
}

uint64_t sub_15F5C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1607C, 0, 0);
}

uint64_t sub_1607C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_547D8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_547A8();
  v6 = v4;
  v7 = sub_54798();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v6;
  sub_12270(0, 0, v3, &unk_57778, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_161AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_54068();
  v6[15] = swift_task_alloc();
  sub_547A8();
  v6[16] = sub_54798();
  v8 = sub_54788();

  return _swift_task_switch(sub_16274, v8, v7);
}

uint64_t sub_16274()
{
  v1 = v0[12];
  v2 = v0[13];

  if (!v1)
  {
    if (v2)
    {
      v5 = v0[13];
      sub_54058();
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      sub_54048(v39);
      v0[10] = v5;
      sub_54028();
      v40._countAndFlagsBits = 0x7365696475747320;
      v40._object = 0xE800000000000000;
      sub_54048(v40);
      sub_54088();
      if (qword_76FD8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_54078();
      if (qword_76FD8 == -1)
      {
LABEL_15:
        v8 = v0[14];
        v9 = qword_7BBF8;
        v10 = sub_541D8();
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = v8 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString;
        goto LABEL_21;
      }
    }

LABEL_27:
    swift_once();
    goto LABEL_15;
  }

  if (!v2)
  {
    v6 = v0[12];
    sub_54058();
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    sub_54048(v41);
    v0[11] = v6;
    sub_54028();
    v42._countAndFlagsBits = 0x7370706120;
    v42._object = 0xE500000000000000;
    sub_54048(v42);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  v3 = v0[12];
  v4 = v0[13];
  if (v3 == 1)
  {
    if (v4 == 1)
    {
      sub_54058();
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      sub_54048(v36);
      v0[8] = 1;
      sub_54028();
      v37._countAndFlagsBits = 0x202C70706120;
      v37._object = 0xE600000000000000;
      sub_54048(v37);
      v0[9] = 1;
      sub_54028();
      v38._countAndFlagsBits = 0x796475747320;
      v38._object = 0xE600000000000000;
      sub_54048(v38);
      sub_54088();
      if (qword_76FD8 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    sub_54058();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_54048(v45);
    v0[6] = 1;
    sub_54028();
    v46._countAndFlagsBits = 0x202C70706120;
    v46._object = 0xE600000000000000;
    sub_54048(v46);
    v0[7] = v4;
  }

  else
  {
    if (v4 == 1)
    {
      sub_54058();
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      sub_54048(v43);
      v0[4] = v3;
      sub_54028();
      v44._countAndFlagsBits = 0x202C7370706120;
      v44._object = 0xE700000000000000;
      sub_54048(v44);
      v0[5] = 1;
      sub_54028();
      v7._countAndFlagsBits = 0x796475747320;
      v7._object = 0xE600000000000000;
      goto LABEL_19;
    }

    sub_54058();
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_54048(v47);
    v0[2] = v3;
    sub_54028();
    v48._countAndFlagsBits = 0x202C7370706120;
    v48._object = 0xE700000000000000;
    sub_54048(v48);
    v0[3] = v4;
  }

  sub_54028();
  v7._countAndFlagsBits = 0x7365696475747320;
  v7._object = 0xE800000000000000;
LABEL_19:
  sub_54048(v7);
  sub_54088();
  if (qword_76FD8 != -1)
  {
LABEL_26:
    swift_once();
  }

LABEL_20:
  v18 = v0[14];
  v19 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v20;
  v14 = v21;
  v16 = v22;
  v17 = v18 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString;
LABEL_21:
  v23 = *v17;
  v24 = *(v17 + 8);
  v25 = *(v17 + 16);
  sub_4088(*v17, v24, v25);

  v34 = v10;
  v26 = v12;
  v27 = v14 & 1;
  v28 = sub_541B8();
  sub_84F8(v23, v24, v25);

  if ((v28 & 1) == 0)
  {
    sub_7738((v0[14] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator), *(v0[14] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000018, 0x800000000005C7F0);
  }

  v29 = *v17;
  v30 = *(v17 + 8);
  v31 = *(v17 + 16);
  *v17 = v34;
  *(v17 + 8) = v26;
  *(v17 + 16) = v27;
  *(v17 + 24) = v16;
  sub_84F8(v29, v30, v31);

  v32 = v0[1];

  return v32();
}

id sub_16A40@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    v5 = sub_54638();
    v6 = [v4 applicationIsInstalled:v5];

    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id);
      v8 = sub_53918();
      __chkstk_darwin(v8 - 8);
      sub_4AC4(v7);
      v9 = sub_541F8();
      v13 = -1;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v16 = qword_7BBF8;
      v13 = 2;
      v9 = sub_541D8();
      v15 = 0x800000000005C7C0;
      v14 = 0xD000000000000022;
    }

    v17 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id);
    v18 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString);
    v19 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 8);
    v20 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 16);
    v21 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 24);
    v28[104] = v11 & 1;
    v28[96] = v20;
    v29[0] = v17;
    *&v30 = v9;
    *(&v30 + 1) = v10;
    v31 = v11 & 1;
    *&v32 = v12;
    *(&v32 + 1) = v18;
    v33 = v19;
    v34 = v20;
    *&v35 = v21;
    *(&v35 + 1) = v14;
    v36 = v15;
    v37 = v13;
    v38[0] = v17;
    v39 = v9;
    v40 = v10;
    v41 = v11 & 1;
    v42 = v12;
    v43 = v18;
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = v14;
    v48 = v15;
    v49 = v13;
    sub_4088(v18, v19, v20);

    sub_13C90(v29, v28);
    result = sub_13CEC(v38);
    v22 = v33;
    v23 = v36;
    v24 = v37;
    v25 = v29[0] & 0x3F;
    v26 = v31 & 1;
    v27 = v34 | 0x8000000000000000;
    *a1 = v17;
    *(a1 + 8) = v25;
    *(a1 + 16) = v30;
    *(a1 + 32) = v26;
    *(a1 + 40) = v32;
    *(a1 + 56) = v22;
    *(a1 + 64) = v27;
    *(a1 + 72) = v35;
    *(a1 + 88) = v23;
    *(a1 + 96) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_16D88@<Q0>(uint64_t a1@<X8>)
{
  sub_16A40(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_16DEC(unint64_t result)
{
  if (result)
  {
    result = sub_1733C(result);
    if (result)
    {
      v2 = result;
      v3 = result & 0xFFFFFFFFFFFFFF8;
      v17 = v1;
      if (result >> 62)
      {
        goto LABEL_25;
      }

      for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_54B58())
      {
        v5 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = sub_54AB8();
          }

          else
          {
            if (v5 >= *(v3 + 16))
            {
              goto LABEL_24;
            }

            v6 = *(v2 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v9 = [v6 bundleIdentifier];
          if (v9)
          {
            v10 = v3;
            v11 = v9;
            v12 = sub_54668();
            v14 = v13;

            if (v12 == 0xD000000000000010 && 0x800000000005B720 == v14)
            {

              goto LABEL_21;
            }

            v16 = sub_54BD8();

            v3 = v10;
            if (v16)
            {

LABEL_21:
              sub_7738((v17 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator), *(v17 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator + 24));
              type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
              return sub_4B228(0xD000000000000018, 0x800000000005C7F0);
            }
          }

          else
          {
          }

          ++v5;
          if (v8 == i)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

LABEL_26:
    }
  }

  return result;
}

uint64_t sub_1701C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_54748();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_16DEC(v4);
}

uint64_t sub_17090()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_170D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_15BEC(a1, v4, v5, v7, v6);
}

uint64_t sub_17198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_171D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14A00;

  return sub_161AC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_172CC()
{
  result = qword_778D8;
  if (!qword_778D8)
  {
    sub_E444(255, &qword_778C8, HKObjectType_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_778D8);
  }

  return result;
}

void *sub_17350(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  sub_54AF8();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_CAF4(i, v9);
    sub_E444(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_54AD8();
    sub_54B08();
    sub_54B18();
    sub_54AE8();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_17454(uint64_t result)
{
  v2 = result;
  if (*(v1 + 24) != result)
  {
    sub_7738((v1 + 48), *(v1 + 72));
    sub_54AA8(16);

    strcpy(v3, "Reload due to ");
    HIBYTE(v3[1]) = -18;
    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v3[0], v3[1]);
  }

  *(v1 + 24) = v2;
  return result;
}

void sub_17558()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = v2;
    sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
    v5 = sub_54878();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    v8[4] = sub_18D00;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_18408;
    v8[3] = &unk_6F188;
    v7 = _Block_copy(v8);

    [v3 loadConfigurationsWithCompletionQueue:v5 handler:v7];
    _Block_release(v7);
  }

  else
  {
  }
}

void *sub_176C4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_11288(v2);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 48));
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_178CC()
{
  sub_176C4();

  return swift_deallocClassInstance();
}

__n128 sub_17924@<Q0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_54048(v59);
  v38 = *(v1 + 24);
  v4 = sub_44BC(&qword_775C0, &qword_574F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_539F8();
  __chkstk_darwin(v8 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v5 + 8))(v7, v4);
  sub_54038(v48);

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_54048(v60);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v2 + 16);
  v18 = sub_53918();
  __chkstk_darwin(v18 - 8);
  sub_4AC4(v17);
  v19 = sub_541F8();
  v37[104] = v20 & 1;
  v37[96] = v14 & 1;
  LOBYTE(v38) = v17;
  v39 = v19;
  v40 = v21;
  v41 = v20 & 1;
  *&v42 = v22;
  *(&v42 + 1) = v10;
  v43 = v12;
  v44 = v14 & 1;
  v46 = 0;
  v45 = v16;
  v47 = 511;
  LOBYTE(v48._countAndFlagsBits) = v17;
  v48._object = v19;
  v49 = v21;
  v50 = v20 & 1;
  v51 = v22;
  v52 = v10;
  v53 = v12;
  v54 = v14 & 1;
  v55 = v16;
  v56 = 0;
  v57 = 0;
  v58 = 511;
  sub_F828(&v38, v37);
  sub_F884(&v48);
  LOBYTE(v10) = *(v2 + 16);
  v23 = v39;
  v24 = v40;
  v25 = v43;
  v34 = v45;
  v35 = v42;
  v26 = v46;
  v27 = v38 & 0x3F;
  v28 = v41 & 1;
  v29 = v44 | 0x4000000000000000;
  v30 = v2;
  v31 = v47;
  sub_17D0C(v30);
  v32 = v36;
  *v36 = v10;
  *(v32 + 1) = v27;
  *(v32 + 2) = v23;
  *(v32 + 3) = v24;
  *(v32 + 4) = v28;
  result = v34;
  *(v32 + 40) = v35;
  *(v32 + 7) = v25;
  *(v32 + 8) = v29;
  *(v32 + 72) = result;
  *(v32 + 11) = v26;
  *(v32 + 48) = v31;
  return result;
}

uint64_t sub_17D0C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_54A18();

    if (v4)
    {
      return result;
    }
  }

  else if (*(v3 + 16))
  {
    return result;
  }

  v5 = sub_548B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_opt_self() defaultCenter];
  if (qword_76F98 != -1)
  {
    swift_once();
  }

  sub_548C8();

  swift_allocObject();
  swift_weakInit();
  sub_11EB8();
  sub_53D98();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();
}

void sub_17F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_44;
  }

  v5 = sub_17350(a1, &qword_779B0, NEConfiguration_ptr);
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  v41 = a4;
  if (v5 >> 62)
  {
LABEL_42:
    v8 = sub_54B58();
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
LABEL_43:

LABEL_44:
    if (qword_76FF8 != -1)
    {
      swift_once();
    }

    v34 = sub_53C38();
    sub_7700(v34, qword_7BC48);
    swift_errorRetain();
    oslog = sub_53C18();
    v35 = sub_54808();

    if (os_log_type_enabled(oslog, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315138;
      swift_errorRetain();
      sub_44BC(&qword_779A0, &qword_57800);
      v38 = sub_54698();
      v40 = sub_18710(v38, v39, v44);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, oslog, v35, "Failed to load network configurations %s.", v36, 0xCu);
      sub_777C(v37);
    }

    else
    {
    }

    return;
  }

LABEL_5:
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_54AB8();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_40;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = [v10 name];
    if (!v13)
    {
      sub_54668();
LABEL_7:

      goto LABEL_8;
    }

    v14 = v7;
    v15 = v13;
    v16 = sub_54668();
    v7 = v17;

    v18 = sub_54668();
    if (!v7)
    {
      v7 = v14;
      goto LABEL_7;
    }

    if (v16 == v18 && v7 == v19)
    {
      break;
    }

    v21 = sub_54BD8();

    v7 = v14;
    if (v21)
    {
      goto LABEL_24;
    }

LABEL_8:

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_43;
    }
  }

LABEL_24:
  v22 = [v11 pathController];
  if (v22)
  {
    v23 = v22;

    v24 = [v23 pathRules];

    if (!v24 || (v25 = sub_54748(), v24, v6 = sub_17350(v25, &qword_779A8, NEPathRule_ptr), , !v6))
    {

      goto LABEL_44;
    }

    if (!(v6 >> 62))
    {
      v26 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v26)
      {
        goto LABEL_29;
      }

LABEL_52:

      swift_beginAccess();
      sub_17454(*(a3 + 16));

      return;
    }

    v26 = sub_54B58();
    if (!v26)
    {
      goto LABEL_52;
    }

LABEL_29:
    if (v26 >= 1)
    {
      swift_beginAccess();
      v27 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v28 = sub_54AB8();
        }

        else
        {
          v28 = *(v6 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = [v28 denyMulticast];

        if ((v30 & 1) == 0)
        {
          v31 = *(a3 + 16);
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_41;
          }

          *(a3 + 16) = v33;
        }

        if (v26 == ++v27)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18408(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_54748();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

__n128 sub_184A4@<Q0>(uint64_t a1@<X8>)
{
  sub_17924(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1851C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_18554(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v5 = *(v3 + 40);
    if (v5)
    {
      sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
      v6 = sub_54878();
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v3;
      aBlock[4] = sub_186F0;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18408;
      aBlock[3] = &unk_6F138;
      v8 = _Block_copy(aBlock);

      [v5 loadConfigurationsWithCompletionQueue:v6 handler:v8];
      _Block_release(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_186F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_187DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_CAF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_777C(v11);
  return v7;
}

unint64_t sub_187DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_188E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_54AC8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_188E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_18934(a1, a2);
  sub_18A64(&off_6E538);
  return v3;
}

void *sub_18934(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_18B50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_54AC8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_546F8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_18B50(v10, 0);
        result = sub_54A98();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18A64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18BC4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18B50(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_779B8, &qword_57808);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_779B8, &qword_57808);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18CBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14068(a3, v25 - v10);
  v12 = sub_547D8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_140D8(v11);
  }

  else
  {
    sub_547C8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_54788();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_546B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_18FAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_1C500(&qword_777C0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_547E8();
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_11288(v3);
      *&v1[v2] = &_swiftEmptySetSingleton;

      v20.receiver = v1;
      v20.super_class = ObjectType;
      return objc_msgSendSuper2(&v20, "dealloc");
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_192B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_44BC(&qword_777B8, &qword_57750);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1934C, 0, 0);
}

uint64_t sub_1934C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_opt_self();
  v4 = [v3 locationServicesEnabled];
  v5 = [v3 isStatusBarIconEnabledForLocationEntityClass:4];
  v6 = sub_547D8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_547A8();
  v7 = v2;
  v8 = sub_54798();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = v4;
  *(v9 + 41) = v5;
  sub_12270(0, 0, v1, &unk_57870, v9);

  sub_1973C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_194B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  sub_547A8();
  *(v6 + 24) = sub_54798();
  v8 = sub_54788();

  return _swift_task_switch(sub_19554, v8, v7);
}

uint64_t sub_19554()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled;
  if (v1 != *(v2 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled))
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000024, 0x800000000005CE60);
  }

  v4 = *(v0 + 33);
  v5 = *(v0 + 16);
  *(v2 + v3) = *(v0 + 32);
  v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled;
  if (v4 != *(v5 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled))
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000033, 0x800000000005CE90);
  }

  v7 = *(v0 + 16);
  *(v5 + v6) = *(v0 + 33);
  v8 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState;
  if ((*(v7 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) & 1) == 0)
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000002ALL, 0x800000000005CED0);
  }

  *(v7 + v8) = 1;
  v9 = *(v0 + 8);

  return v9();
}

void sub_1973C()
{
  v1 = v0;
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = objc_opt_self();
  v6 = [v5 activeLocationClientsWithInfo];
  if (!v6)
  {
    return;
  }

  v74 = v4;
  v7 = v6;
  v8 = sub_545C8();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v72 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundlePath];
  v70 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundleId];
  v69 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_findMy];
  v12 = (v9 + 63) >> 6;

  v75 = 0;
  v76 = 0;
  v77 = 0;
  v13 = 0;
  v14 = 0;
  v68 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              while (1)
              {
                if (!v11)
                {
                  while (1)
                  {
                    v15 = v14 + 1;
                    if (__OFADD__(v14, 1))
                    {
                      break;
                    }

                    if (v15 >= v12)
                    {
                      goto LABEL_78;
                    }

                    v11 = *(v8 + 64 + 8 * v15);
                    ++v14;
                    if (v11)
                    {
                      v14 = v15;
                      goto LABEL_13;
                    }
                  }

                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
LABEL_85:
                  __break(1u);
                }

LABEL_13:
                v16 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                sub_CA98(*(v8 + 48) + 40 * (v16 | (v14 << 6)), v83);
                v81 = v84;
                v80[0] = v83[0];
                v80[1] = v83[1];
                if (*(v8 + 16))
                {
                  v17 = sub_1BE7C(v80);
                  if (v18)
                  {
                    break;
                  }
                }

LABEL_7:
                sub_1C37C(v80);
              }

              sub_CAF4(*(v8 + 56) + 32 * v17, v82);
              sub_1C37C(v80);
              sub_44BC(&qword_77A58, &qword_57878);
            }

            while ((swift_dynamicCast() & 1) == 0);
            v73 = v13;
            v19 = v78;
            v20 = sub_545B8();
            v71 = v5;
            v21 = [v5 primaryEntityClassForLocationDictionary:v20];

            if (v21 <= 3)
            {
              break;
            }

            v13 = v73;
            if (v21 != &dword_4 && v21 != &dword_10 && v21 != &dword_8)
            {
LABEL_42:

              goto LABEL_50;
            }

            v22 = *(v72 + 1);
            v78 = *v72;
            v79 = v22;

            sub_54A58();
            if (!*(v19 + 16) || (v23 = sub_1BE7C(v80), (v24 & 1) == 0))
            {
              sub_1C37C(v80);
              goto LABEL_38;
            }

            sub_CAF4(*(v19 + 56) + 32 * v23, v82);
            sub_1C37C(v80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_38;
            }

            if (v78 == *v69 && v79 == *(v69 + 1))
            {

LABEL_52:
              v47 = [objc_opt_self() currentDevice];
              v48 = [v47 sf_inRetailKioskMode];

              if (!v48 && !PSIsInEDUMode())
              {
                goto LABEL_38;
              }

LABEL_66:

              v5 = v71;
              v13 = v73;
            }

            else
            {
              v46 = sub_54BD8();

              if (v46)
              {
                goto LABEL_52;
              }

LABEL_38:
              v33 = sub_545B8();

              v34 = v71;
              v35 = [v71 entityAuthorizationForLocationDictionary:v33];

              v5 = v34;
              v13 = v73;
              if (v35 == &dword_4)
              {
                v13 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  goto LABEL_81;
                }
              }
            }
          }

          if (v21 == (&dword_0 + 1))
          {
            break;
          }

          v13 = v73;
          if (v21 != (&dword_0 + 2))
          {
            goto LABEL_42;
          }

          v25 = *(v72 + 1);
          v78 = *v72;
          v79 = v25;

          sub_54A58();
          if (*(v19 + 16) && (v26 = sub_1BE7C(v80), (v27 & 1) != 0))
          {
            sub_CAF4(*(v19 + 56) + 32 * v26, v82);
            sub_1C37C(v80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_42;
            }

            v67 = objc_allocWithZone(NSBundle);
            v28 = sub_54638();

            v29 = [v67 initWithPath:v28];

            if (!v29)
            {
              goto LABEL_66;
            }

            v30 = sub_545B8();

            v31 = [v71 entityAuthorizationForLocationDictionary:v30];

            if (v31 == (&dword_0 + 2))
            {
              v32 = __OFADD__(v77++, 1);
              v5 = v71;
              v13 = v73;
              if (v32)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v5 = v71;
              v13 = v73;
              if (v31 == &dword_4)
              {
                v32 = __OFADD__(v76++, 1);
                if (v32)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else
          {

            sub_1C37C(v80);
LABEL_50:
            v5 = v71;
          }
        }

        v36 = *(v70 + 1);
        v78 = *v70;
        v79 = v36;

        sub_54A58();
        v5 = v71;
        v13 = v73;
        if (!*(v19 + 16) || (v37 = sub_1BE7C(v80), (v38 & 1) == 0))
        {

          goto LABEL_7;
        }

        sub_CAF4(*(v19 + 56) + 32 * v37, v82);
        sub_1C37C(v80);
        if (swift_dynamicCast())
        {
          break;
        }
      }

      v39 = v78;
      v40 = v79;
      v66 = objc_allocWithZone(LSApplicationRecord);
      v65 = v39;
      v67 = v40;
      v41 = sub_54638();
      *&v80[0] = 0;
      v42 = [v66 initWithBundleIdentifier:v41 allowPlaceholder:0 error:v80];

      v66 = v42;
      if (v42)
      {
        v43 = *&v80[0];
        v44 = v66;
        v45 = [v66 applicationState];
        v64 = [v45 isInstalled];

        if (v64)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v49 = *&v80[0];
        sub_538F8();

        swift_willThrow();

        v68 = 0;
      }

      if (!PUILocationIsActivePairedDevice() || (v50 = sub_54638(), IsDisplayNameForWatchApp = PUILocationIsDisplayNameForWatchApp(), v50, (IsDisplayNameForWatchApp & 1) == 0) && (v52 = sub_54638(), IsWatchBundleIDForBundleID = PUILocationIsWatchBundleIDForBundleID(), v52, (IsWatchBundleIDForBundleID & 1) == 0))
      {

        goto LABEL_66;
      }

LABEL_60:
      v54 = sub_545B8();

      v55 = [v71 entityAuthorizationForLocationDictionary:v54];

      if (v55 == (&dword_0 + 2))
      {
        break;
      }

      v13 = v73;
      if (v55 != &dword_4)
      {
        goto LABEL_42;
      }

      v32 = __OFADD__(v76++, 1);
      v5 = v71;
      if (v32)
      {
        goto LABEL_84;
      }
    }

    v32 = __OFADD__(v77++, 1);
    v13 = v73;
    if (v32)
    {
      goto LABEL_85;
    }

    LODWORD(v80[0]) = 0;
    v82[0] = 0;
    v66 = sub_54638();
    v5 = v71;
    [v71 getLearnedRoutesAccess:v80 forBundleIdentifier:v66];

    v66 = sub_54638();

    v56 = v66;
    [v5 getVisitHistoryAccess:v82 forBundleIdentifier:v66];

    if (LODWORD(v80[0]) == 3)
    {
      if (__OFADD__(v75, 1))
      {
        __break(1u);
        return;
      }

      ++v75;
    }

    if (v82[0] == 3)
    {
      v32 = __OFADD__(v75++, 1);
      if (v32)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_78:

  v57 = sub_547D8();
  v58 = v74;
  (*(*(v57 - 8) + 56))(v74, 1, 1, v57);
  sub_547A8();
  v59 = v1;
  v60 = sub_54798();
  v61 = swift_allocObject();
  v61[2] = v60;
  v61[3] = &protocol witness table for MainActor;
  v61[4] = v59;
  v61[5] = v13;
  v62 = v77;
  v61[6] = v76;
  v61[7] = v62;
  v61[8] = v75;
  sub_12270(0, 0, v58, &unk_57888, v61);
}

uint64_t sub_1A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_547A8();
  v8[7] = sub_54798();
  v10 = sub_54788();

  return _swift_task_switch(sub_1A2C8, v10, v9);
}

uint64_t sub_1A2C8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount;
  if (*(v2 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount) != v1)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000002CLL, 0x800000000005CE30);
  }

  v4 = v0[4];
  v5 = v0[2];
  *(v2 + v3) = v0[3];
  v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount;
  if (*(v5 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount) != v4)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000002CLL, 0x800000000005CE30);
  }

  v7 = v0[5];
  v8 = v0[2];
  *(v5 + v6) = v0[4];
  v9 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount;
  if (*(v8 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount) != v7)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000002CLL, 0x800000000005CE30);
  }

  v10 = v0[6];
  v11 = v0[2];
  *(v8 + v9) = v0[5];
  v12 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount;
  if (*(v11 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount) != v10)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000002CLL, 0x800000000005CE30);
  }

  *(v11 + v12) = v0[6];
  v13 = v0[1];

  return v13();
}

uint64_t sub_1A50C()
{
  v1 = sub_54068();
  __chkstk_darwin(v1 - 8);
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled) == 1)
  {
    v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount;
    v3 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount);
    v4 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount;
    v5 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount);
    if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled) == 1)
    {
      v6 = __OFADD__(v3, v5);
      v7 = v3 + v5;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        v8 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount);
        v9 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
          __break(1u);
        }

        else
        {
          sub_54058();
          v55._countAndFlagsBits = 0;
          v55._object = 0xE000000000000000;
          sub_54048(v55);
          v54._countAndFlagsBits = v9;
          sub_54028();
          v56._countAndFlagsBits = 0;
          v56._object = 0xE000000000000000;
          sub_54048(v56);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_16;
          }
        }
      }

      goto LABEL_34;
    }

    v10 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount);
    if (v3)
    {
      if (v5)
      {
        v52 = v0;
        if (v10)
        {
          sub_54058();
          v57._countAndFlagsBits = 0;
          v57._object = 0xE000000000000000;
          sub_54048(v57);
          v53 = *(v0 + v2);
          v11 = sub_44BC(&qword_775C0, &qword_574F0);
          v50 = &v47;
          v47 = *(v11 - 8);
          v12 = *(v47 + 64);
          __chkstk_darwin(v11);
          v51 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
          v13 = &v47 - v51;
          v14 = sub_539F8();
          v15 = *(*(v14 - 8) + 64);
          __chkstk_darwin(v14 - 8);
          v49 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_539D8();
          sub_F6A0();
          sub_538E8();
          v48 = sub_F6F4();
          sub_549D8();
          v16 = *(v47 + 8);
          v16(v13, v11);
          sub_54038(v54);

          v58._countAndFlagsBits = 0x2C737961776C6120;
          v58._object = 0xE900000000000020;
          sub_54048(v58);
          v53 = *(v52 + v4);
          v18 = __chkstk_darwin(v17);
          v19 = &v47 - v51;
          __chkstk_darwin(v18);
          sub_539D8();
          sub_538E8();
          sub_549D8();
          v16(v19, v11);
          sub_54038(v54);

          v59._countAndFlagsBits = 0xD000000000000014;
          v59._object = 0x800000000005CC20;
          sub_54048(v59);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_54058();
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_54048(v64);
          v53 = *(v0 + v2);
          v32 = sub_44BC(&qword_775C0, &qword_574F0);
          v50 = &v47;
          v47 = *(v32 - 8);
          v33 = *(v47 + 64);
          __chkstk_darwin(v32);
          v51 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
          v34 = &v47 - v51;
          v35 = sub_539F8();
          v36 = *(*(v35 - 8) + 64);
          __chkstk_darwin(v35 - 8);
          v49 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_539D8();
          sub_F6A0();
          sub_538E8();
          v48 = sub_F6F4();
          sub_549D8();
          v37 = *(v47 + 8);
          v37(v34, v32);
          sub_54038(v54);

          v65._countAndFlagsBits = 0x2C737961776C6120;
          v65._object = 0xE900000000000020;
          sub_54048(v65);
          v53 = *(v52 + v4);
          v39 = __chkstk_darwin(v38);
          v40 = &v47 - v51;
          __chkstk_darwin(v39);
          sub_539D8();
          sub_538E8();
          sub_549D8();
          v37(v40, v32);
          sub_54038(v54);

          v66._countAndFlagsBits = 0x7520656C69687720;
          v66._object = 0xEC000000676E6973;
          sub_54048(v66);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_54058();
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        sub_54048(v62);
        v53 = *(v0 + v2);
        v27 = sub_44BC(&qword_775C0, &qword_574F0);
        v28 = *(v27 - 8);
        __chkstk_darwin(v27);
        v30 = &v47 - v29;
        v31 = sub_539F8();
        __chkstk_darwin(v31 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v28 + 8))(v30, v27);
        sub_54038(v54);

        v63._countAndFlagsBits = 0x737961776C6120;
        v63._object = 0xE700000000000000;
        sub_54048(v63);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_35;
    }

    if (v5)
    {
      if (v10)
      {
        sub_54058();
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        sub_54048(v60);
        v53 = *(v0 + v4);
        v22 = sub_44BC(&qword_775C0, &qword_574F0);
        v23 = *(v22 - 8);
        __chkstk_darwin(v22);
        v25 = &v47 - v24;
        v26 = sub_539F8();
        __chkstk_darwin(v26 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v23 + 8))(v25, v22);
        sub_54038(v54);

        v61._object = 0x800000000005CC90;
        v61._countAndFlagsBits = 0xD000000000000013;
        sub_54048(v61);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_54058();
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        sub_54048(v67);
        v53 = *(v0 + v4);
        v41 = sub_44BC(&qword_775C0, &qword_574F0);
        v42 = *(v41 - 8);
        __chkstk_darwin(v41);
        v44 = &v47 - v43;
        v45 = sub_539F8();
        __chkstk_darwin(v45 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v42 + 8))(v44, v41);
        sub_54038(v54);

        v68._countAndFlagsBits = 0x7520656C69687720;
        v68._object = 0xEC000000676E6973;
        sub_54048(v68);
        sub_54088();
        if (qword_76FD8 == -1)
        {
LABEL_29:
          v46 = qword_7BBF8;
          return sub_541D8();
        }
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) == 1)
  {
    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_34:
    swift_once();
  }

LABEL_16:
  v20 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_1B4EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) == 1)
  {
    v51 = v1;
    if ((*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled) & 1) == 0)
    {
      v32 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id);
      v33 = sub_53918();
      __chkstk_darwin(v33 - 8);
      sub_4AC4(v32);
      v34 = sub_541F8();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = sub_1A50C();
      v54 = v38 & 1;
      v53 = v42 & 1;
      v50 = v32;
      v55[0] = v32;
      v56 = v34;
      v57 = v36;
      v58 = v38 & 1;
      v59 = v40;
      v60 = v41;
      v61 = v43;
      v62 = v42 & 1;
      v64 = 0;
      v65 = 0;
      v63 = v44;
      v66 = 511;
      v67[0] = v32;
      v68 = v34;
      v69 = v36;
      v70 = v38 & 1;
      v71 = v40;
      v72 = v41;
      v73 = v43;
      v74 = v42 & 1;
      v76 = 0;
      v77 = 0;
      v75 = v44;
      v78 = 511;
      sub_F828(v55, v52);
      sub_F884(v67);
      v48 = v57;
      v49 = v56;
      v46 = v60;
      v47 = v59;
      v26 = v61;
      v18 = v63;
      v17 = v64;
      v45 = v65;
      v20 = v55[0] & 0x3F;
      v21 = v58 & 1;
      v22 = v62 | 0x4000000000000000;
      v23 = v66;
      result = sub_1B854(v51);
      v25 = v45;
    }

    else
    {
      v3 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id);
      v4 = sub_53918();
      __chkstk_darwin(v4 - 8);
      sub_4AC4(v3);
      v5 = sub_541F8();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = sub_1A50C();
      v54 = v9 & 1;
      v53 = v13 & 1;
      v50 = v3;
      v55[0] = v3;
      v56 = v5;
      v57 = v7;
      v58 = v9 & 1;
      v59 = v11;
      v60 = v12;
      v61 = v14;
      v62 = v13 & 1;
      v64 = 0;
      v65 = 0;
      v63 = v15;
      LOBYTE(v66) = -1;
      v67[0] = v3;
      v68 = v5;
      v69 = v7;
      v70 = v9 & 1;
      v71 = v11;
      v72 = v12;
      v73 = v14;
      v74 = v13 & 1;
      v76 = 0;
      v77 = 0;
      v75 = v15;
      LOBYTE(v78) = -1;
      sub_13C90(v55, v52);
      sub_13CEC(v67);
      v48 = v57;
      v49 = v56;
      v46 = v60;
      v47 = v59;
      v16 = v61;
      v18 = v63;
      v17 = v64;
      v19 = v65;
      v20 = v55[0] & 0x3F;
      v21 = v58 & 1;
      v22 = v62 | 0x8000000000000000;
      v23 = v66;
      result = sub_1B854(v51);
      v25 = v19;
      v26 = v16;
    }

    v30 = v46;
    v29 = v47;
    v28 = v48;
    v27 = v49;
    v31 = v50;
  }

  else
  {
    result = sub_1B854(v1);
    v27 = 0;
    v28 = 0;
    v21 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    v22 = 0;
    v18 = 0;
    v17 = 0;
    v25 = 0;
    v23 = 0;
    v31 = 0;
    v20 = 0x3FFFFFFFC0;
  }

  *a1 = v31;
  *(a1 + 8) = v20;
  *(a1 + 16) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v21;
  *(a1 + 40) = v29;
  *(a1 + 48) = v30;
  *(a1 + 56) = v26;
  *(a1 + 64) = v22;
  *(a1 + 72) = v18;
  *(a1 + 80) = v17;
  *(a1 + 88) = v25;
  *(a1 + 96) = v23;
  return result;
}

uint64_t sub_1B854(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_54A18();

    if (v5)
    {
      return result;
    }
  }

  else if (*(v4 + 16))
  {
    return result;
  }

  v6 = sub_548B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() defaultCenter];
  if (qword_76FA0 != -1)
  {
    swift_once();
  }

  sub_548C8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_11EB8();
  sub_53D98();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();
}

__n128 sub_1BAD4@<Q0>(uint64_t a1@<X8>)
{
  sub_1B4EC(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BB4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1BB84(uint64_t a1, uint64_t a2)
{
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_547B8();
    v7 = sub_547D8();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = v6;
    sub_18D0C(0, 0, v4, &unk_57850, v8);

    return sub_140D8(v4);
  }

  return result;
}

uint64_t sub_1BCE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_192B0(a1, v4, v5, v6);
}

unint64_t sub_1BD9C(uint64_t a1)
{
  v1 = a1;
  sub_54C28();
  sub_54C38(v1);
  v2 = sub_54C58();
  return sub_1BF74(v1, v2);
}

unint64_t sub_1BE04(uint64_t a1, uint64_t a2)
{
  sub_54C28();
  sub_546C8();
  v4 = sub_54C58();

  return sub_1BFE4(a1, a2, v4);
}

unint64_t sub_1BE7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_54A38(*(v2 + 40));

  return sub_1C09C(a1, v4);
}

unint64_t sub_1BEC0(uint64_t a1)
{
  sub_54C28();
  type metadata accessor for CFString(0);
  sub_1C500(&qword_772E8, type metadata accessor for CFString, &unk_55DFC);
  sub_53AA8();
  v2 = sub_54C58();

  return sub_1C164(a1, v2);
}

unint64_t sub_1BF74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_54BD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C09C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_CA98(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_54A48();
      sub_1C37C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C164(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1C500(&qword_772E8, type metadata accessor for CFString, &unk_55DFC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_53A98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C270()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C2B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14A00;

  return sub_194B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C3D8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1C424(uint64_t a1)
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
  v11[1] = sub_14A00;

  return sub_1A228(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C570()
{
  v1 = *(v0[19] + 32);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C694;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_77B18, &qword_578F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1CBB4;
  v0[13] = &unk_6F2E0;
  v0[14] = v2;
  [v1 getDevicesWithFlags:1024 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1C694()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1C91C;
  }

  else
  {
    v2 = sub_1C7A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1C7A4()
{
  v7 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    v2 = sub_54B58();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = v0[19];
  if (v2 != *(v3 + 24))
  {
    sub_7738((v3 + 40), *(v3 + 64));
    sub_54AA8(16);

    strcpy(v6, "Reload due to ");
    HIBYTE(v6[1]) = -18;
    v9._countAndFlagsBits = sub_6E88(*(v3 + 16));
    sub_546D8(v9);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v6[0], v6[1]);
  }

  *(v3 + 24) = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C91C()
{
  v17 = v0;
  swift_willThrow();
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v1 = sub_53C38();
  sub_7700(v1, qword_7BC18);
  swift_errorRetain();
  v2 = sub_53C18();
  v3 = sub_54808();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v0[10] = v5;
    swift_errorRetain();
    sub_44BC(&qword_778C0, &unk_57900);
    v8 = sub_54698();
    v10 = sub_18710(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch devices with error: %s.", v6, 0xCu);
    sub_777C(v7);
  }

  else
  {
  }

  v11 = v0[19];
  if (*(v11 + 24))
  {
    sub_7738((v11 + 40), *(v11 + 64));
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_54AA8(16);

    strcpy(v16, "Reload due to ");
    HIBYTE(v16[1]) = -18;
    v19._countAndFlagsBits = sub_6E88(*(v11 + 16));
    sub_546D8(v19);

    v12 = v16[0];
    v13 = v16[1];
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v12, v13);
  }

  *(v11 + 24) = 0;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1CBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1D15C();
    **(*(v4 + 64) + 40) = sub_54748();

    return _swift_continuation_throwingResume(v4);
  }
}

double sub_1CC94@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_54048(v52);
  v32 = *(v1 + 24);
  v4 = sub_44BC(&qword_775C0, &qword_574F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-v6 - 8];
  v8 = sub_539F8();
  __chkstk_darwin(v8 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v5 + 8))(v7, v4);
  sub_54038(v41);

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_54048(v53);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v1 + 16);
  v18 = sub_53918();
  __chkstk_darwin(v18 - 8);
  sub_4AC4(v17);
  v19 = sub_541F8();
  v31[104] = v20 & 1;
  v31[96] = v14 & 1;
  LOBYTE(v32) = v17;
  *&v33 = v19;
  *(&v33 + 1) = v21;
  v34 = v20 & 1;
  *&v35 = v22;
  *(&v35 + 1) = v10;
  v36 = v12;
  v37 = v14 & 1;
  v39 = 0;
  v38 = v16;
  v40 = 511;
  LOBYTE(v41._countAndFlagsBits) = v17;
  v41._object = v19;
  v42 = v21;
  v43 = v20 & 1;
  v44 = v22;
  v45 = v10;
  v46 = v12;
  v47 = v14 & 1;
  v48 = v16;
  v49 = 0;
  v50 = 0;
  v51 = 511;
  sub_F828(&v32, v31);
  sub_F884(&v41);
  v23 = v36;
  v24 = v39;
  v25 = v40;
  v26 = v32 & 0x3F;
  v27 = v34 & 1;
  v28 = v37 | 0x4000000000000000;
  *a1 = v17;
  *(a1 + 8) = v26;
  *(a1 + 16) = v33;
  *(a1 + 32) = v27;
  *(a1 + 40) = v35;
  *(a1 + 56) = v23;
  *(a1 + 64) = v28;
  result = *&v38;
  *(a1 + 72) = v38;
  *(a1 + 88) = v24;
  *(a1 + 96) = v25;
  return result;
}

uint64_t sub_1D06C()
{
  sub_777C((v0 + 40));

  return swift_deallocClassInstance();
}

__n128 sub_1D0D0@<Q0>(uint64_t a1@<X8>)
{
  sub_1CC94(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D15C()
{
  result = qword_775D8;
  if (!qword_775D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_775D8);
  }

  return result;
}

void sub_1D1A8(uint64_t a1, uint64_t a2)
{
  if (&_SRIsDataCollectionEnabled)
  {
    v3 = sub_44BC(&qword_777B8, &qword_57750);
    __chkstk_darwin(v3 - 8);
    v5 = &v8 - v4;
    sub_547B8();
    v6 = sub_547D8();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = a2;

    sub_18D0C(0, 0, v5, &unk_579D8, v7);

    sub_140D8(v5);
  }
}

uint64_t sub_1D2DC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_54458();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_54498();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_544B8();
  v20 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v15 = sub_54878();
  sub_544A8();
  sub_544C8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  aBlock[4] = sub_1E8BC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  aBlock[3] = &unk_6F3F0;
  v17 = _Block_copy(aBlock);

  sub_54478();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_111CC();
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_11224();
  sub_549E8();
  sub_54848();
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v16)(v14, v20);
}

uint64_t sub_1D640(uint64_t result)
{
  if (&_SRIsDataCollectionEnabled)
  {
    v1 = result;
    v2 = sub_44BC(&qword_777B8, &qword_57750);
    __chkstk_darwin(v2 - 8);
    v4 = &v7 - v3;
    sub_547B8();
    v5 = sub_547D8();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;

    sub_18D0C(0, 0, v4, &unk_579D0, v6);

    return sub_140D8(v4);
  }

  return result;
}

double sub_1D774@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_54048(v52);
  v32 = *(v1 + 24);
  v4 = sub_44BC(&qword_775C0, &qword_574F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-v6 - 8];
  v8 = sub_539F8();
  __chkstk_darwin(v8 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v5 + 8))(v7, v4);
  sub_54038(v41);

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_54048(v53);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  v10 = sub_541D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v1 + 16);
  v18 = sub_53918();
  __chkstk_darwin(v18 - 8);
  sub_4AC4(v17);
  v19 = sub_541F8();
  v31[104] = v20 & 1;
  v31[96] = v14 & 1;
  LOBYTE(v32) = v17;
  *&v33 = v19;
  *(&v33 + 1) = v21;
  v34 = v20 & 1;
  *&v35 = v22;
  *(&v35 + 1) = v10;
  v36 = v12;
  v37 = v14 & 1;
  v39 = 0;
  v38 = v16;
  v40 = 511;
  LOBYTE(v41._countAndFlagsBits) = v17;
  v41._object = v19;
  v42 = v21;
  v43 = v20 & 1;
  v44 = v22;
  v45 = v10;
  v46 = v12;
  v47 = v14 & 1;
  v48 = v16;
  v49 = 0;
  v50 = 0;
  v51 = 511;
  sub_F828(&v32, v31);
  sub_F884(&v41);
  v23 = v36;
  v24 = v39;
  v25 = v40;
  v26 = v32 & 0x3F;
  v27 = v34 & 1;
  v28 = v37 | 0x4000000000000000;
  *a1 = v17;
  *(a1 + 8) = v26;
  *(a1 + 16) = v33;
  *(a1 + 32) = v27;
  *(a1 + 40) = v35;
  *(a1 + 56) = v23;
  *(a1 + 64) = v28;
  result = *&v38;
  *(a1 + 72) = v38;
  *(a1 + 88) = v24;
  *(a1 + 96) = v25;
  return result;
}

uint64_t sub_1DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_44BC(&qword_777B8, &qword_57750);
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1DBE8, 0, 0);
}

uint64_t sub_1DBE8()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  if (SRIsDataCollectionEnabled())
  {
    v2 = v0[8];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v0[6] = sub_1E7D4;
    v0[7] = v3;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1E534;
    v0[5] = &unk_6F3A0;
    v4 = _Block_copy(v0 + 2);

    SRAuthorizationFetchSnapshot();
    _Block_release(v4);
  }

  else
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = sub_547D8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = *(v1 + 16);
    sub_547A8();

    v9 = sub_54798();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v6;
    v10[5] = v8;
    sub_12270(0, 0, v5, &unk_579B0, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1EA90, v7, v6);
}

void sub_1DE80(NSObject *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  if (a2)
  {
    if (qword_76FF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v48 = v10;
    v49 = a4;
    v18 = a1 + 8;
    v19 = 1 << LOBYTE(a1[4].isa);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    isa = v20 & a1[8].isa;

    v50 = a3;
    swift_beginAccess();
    v22 = 0;
    v23 = (v19 + 63) >> 6;
    v51 = v23;
    v52 = a1 + 8;
    v53 = a1;
    if (isa)
    {
LABEL_9:
      a2 = v22;
LABEL_13:
      v24 = *(a1[7].isa + ((a2 << 9) | (8 * __clz(__rbit64(isa)))));
      isa &= isa - 1;
      v25 = 1 << *(v24 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(v24 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      while (v27)
      {
        v30 = v29;
LABEL_23:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = *(*(v24 + 56) + ((v30 << 9) | (8 * v31)));
        sub_E444(0, &qword_77C00, NSObject_ptr);
        v33 = objc_allocWithZone(NSNumber);
        v34 = v32;
        v35 = [v33 initWithInteger:1];
        v36 = sub_54948();

        if (v36)
        {

          v37 = *(v50 + 16);
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            __break(1u);
            return;
          }

          *(v50 + 16) = v39;
LABEL_27:
          v22 = a2;
          v18 = v52;
          a1 = v53;
          v23 = v51;
          if (!isa)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          goto LABEL_27;
        }

        v27 = *(v24 + 64 + 8 * v30);
        ++v29;
        if (v27)
        {
          v29 = v30;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      while (1)
      {
        a2 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (a2 >= v23)
        {

          v40 = sub_547D8();
          v41 = v48;
          (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
          v42 = v50;
          swift_beginAccess();
          v43 = *(v42 + 16);
          sub_547A8();
          v44 = v49;

          v45 = sub_54798();
          v46 = swift_allocObject();
          v46[2] = v45;
          v46[3] = &protocol witness table for MainActor;
          v46[4] = v44;
          v46[5] = v43;
          sub_12270(0, 0, v41, &unk_579C8, v46);

          return;
        }

        isa = v18[a2].isa;
        ++v22;
        if (isa)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_53C38();
  sub_7700(v11, qword_7BC48);
  swift_errorRetain();
  v53 = sub_53C18();
  v12 = sub_54808();

  if (os_log_type_enabled(v53, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v55[0] = v14;
    *v13 = 136315138;
    v54 = a2;
    swift_errorRetain();
    sub_44BC(&qword_779A0, &qword_57800);
    v15 = sub_54698();
    v17 = sub_18710(v15, v16, v55);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v53, v12, "Failed to fetch SR authorization snapshot with error: %s.", v13, 0xCu);
    sub_777C(v14);
  }

  else
  {
    v47 = v53;
  }
}

uint64_t sub_1E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1E3F0, v7, v6);
}

uint64_t sub_1E3F0()
{
  v7 = v0;
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + 24) != v1)
  {
    v3 = v0[2];
    sub_7738((v3 + 48), *(v3 + 72));
    sub_54AA8(16);

    strcpy(v6, "Reload due to ");
    HIBYTE(v6[1]) = -18;
    v9._countAndFlagsBits = sub_6E88(*(v3 + 16));
    sub_546D8(v9);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v6[0], v6[1]);
  }

  *(v2 + 24) = v0[3];
  v4 = v0[1];

  return v4();
}

void sub_1E534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_44BC(&qword_77BF8, &qword_579B8);
  v5 = sub_545C8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E5F0()
{

  sub_777C((v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1E664@<Q0>(uint64_t a1@<X8>)
{
  sub_1D774(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_1DDE8(a1, v4, v5, v7, v6);
}

uint64_t sub_1E794()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E7FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_1E358(a1, v4, v5, v7, v6);
}

uint64_t sub_1E8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_1DB4C(a1, v4, v5, v6);
}

uint64_t sub_1E980(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1E9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_1DB4C(a1, v4, v5, v6);
}

uint64_t sub_1EA94(uint64_t result)
{
  v2 = result;
  if (*(v1 + 32) != result)
  {
    sub_7738((v1 + 56), *(v1 + 80));
    sub_54AA8(16);

    strcpy(v3, "Reload due to ");
    HIBYTE(v3[1]) = -18;
    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v3[0], v3[1]);
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1EB98(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_7400(*(result + 16));
    if (v4)
    {
      v6 = 0;
      v7 = &_swiftEmptySetSingleton;
      v5 = v4;
      sub_1F598(v4, v2, &v7, &v6);

      swift_beginAccess();
      sub_1EA94(v6);
    }
  }

  return result;
}

uint64_t sub_1EC4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + 16) != 1)
    {
    }

    v4 = [objc_allocWithZone(ADTrackingTransparency) init];
    if ([v4 crossAppTrackingAllowedSwitchEnabled])
    {
      v5 = [v4 crossAppTrackingAllowed];
      v6 = (v3 + 52);
      v7 = v5;
      if (v5 == *(v3 + 52))
      {
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
      v7 = 0;
      v6 = (v3 + 52);
      if ((*(v3 + 52) & 1) == 0)
      {
LABEL_8:

        *v6 = v7;
      }
    }

    sub_7738((v3 + 56), *(v3 + 80));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000022, 0x800000000005D1C0);
    v7 = v5;
    goto LABEL_8;
  }

  return result;
}

void sub_1ED98()
{
  if (*(v0 + 16) == 1)
  {
    v1 = [objc_allocWithZone(ADTrackingTransparency) init];
    if ([v1 crossAppTrackingAllowedSwitchEnabled])
    {
      v2 = [v1 crossAppTrackingAllowed];
      v3 = (v0 + 52);
      v4 = v2;
      if (v2 == *(v0 + 52))
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v4 = 0;
      v3 = (v0 + 52);
      if ((*(v0 + 52) & 1) == 0)
      {
LABEL_7:

        *v3 = v4;
        return;
      }
    }

    sub_7738((v0 + 56), *(v0 + 80));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000022, 0x800000000005D1C0);
    v4 = v2;
    goto LABEL_7;
  }
}

void *sub_1EEA4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_11288(v2);
      *(v1 + 40) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 56));

      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1F0BC()
{
  sub_1EEA4();

  return swift_deallocClassInstance();
}

double sub_1F114@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_54068();
  __chkstk_darwin(v4 - 8);
  sub_54078();
  v5 = sub_541D8();
  v9 = v5;
  v10 = v6;
  v11 = v8;
  if (*(v1 + 16) == 1 && *(v1 + 52) != 1)
  {
    v22 = 1;
    v20 = v7;
  }

  else
  {
    v37 = v7;
    v38 = v6;
    v39 = v5;
    v40 = v8;
    sub_54058();
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    sub_54048(v62);
    v42 = *(v1 + 32);
    v12 = sub_44BC(&qword_775C0, &qword_574F0);
    v35[1] = v35;
    v36 = v1;
    v13 = *(v12 - 8);
    __chkstk_darwin(v12);
    v15 = v35 - v14;
    v16 = sub_539F8();
    __chkstk_darwin(v16 - 8);
    sub_539D8();
    sub_F6A0();
    sub_538E8();
    sub_F6F4();
    sub_549D8();
    (*(v13 + 8))(v15, v12);
    sub_54038(v51);

    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    sub_54048(v63);
    sub_54088();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v17 = qword_7BBF8;
    v9 = sub_541D8();
    v10 = v18;
    v20 = v19;
    v11 = v21;
    sub_84F8(v39, v38, v37 & 1);

    v2 = v36;
    v22 = *(v36 + 16);
  }

  v23 = sub_53918();
  __chkstk_darwin(v23 - 8);
  sub_4AC4(v22);
  v24 = sub_541F8();
  v41[104] = v25 & 1;
  v41[96] = v20 & 1;
  LOBYTE(v42) = v22;
  *&v43 = v24;
  *(&v43 + 1) = v26;
  v44 = v25 & 1;
  *&v45 = v27;
  *(&v45 + 1) = v9;
  v46 = v10;
  v47 = v20 & 1;
  v49 = 0;
  v48 = v11;
  v50 = 511;
  LOBYTE(v51._countAndFlagsBits) = v22;
  v51._object = v24;
  v52 = v26;
  v53 = v25 & 1;
  v54 = v27;
  v55 = v9;
  v56 = v10;
  v57 = v20 & 1;
  v58 = v11;
  v59 = 0;
  v60 = 0;
  v61 = 511;
  sub_F828(&v42, v41);
  sub_F884(&v51);
  v28 = v46;
  v29 = v49;
  v30 = v50;
  v31 = v42 & 0x3F;
  v32 = v44 & 1;
  v33 = v47 | 0x4000000000000000;
  *a1 = *(v2 + 16);
  *(a1 + 8) = v31;
  *(a1 + 16) = v43;
  *(a1 + 32) = v32;
  *(a1 + 40) = v45;
  *(a1 + 56) = v28;
  *(a1 + 64) = v33;
  result = *&v48;
  *(a1 + 72) = v48;
  *(a1 + 88) = v29;
  *(a1 + 96) = v30;
  return result;
}

uint64_t sub_1F598(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  result = sub_1BEC0(result);
  if ((v7 & 1) == 0)
  {
    return result;
  }

  result = *(*(a2 + 56) + 8 * result);
  v32 = *(result + 16);
  if (!v32)
  {
    return result;
  }

  v31 = result + 32;

  v8 = 0;
  v34 = a3;
  v35 = a4;
  v30 = result;
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      goto LABEL_37;
    }

    v9 = *(v31 + 8 * v8);
    v33 = v8 + 1;
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v36 = v9;

    swift_beginAccess();
    result = swift_beginAccess();
    v14 = 0;
    v15 = (v11 + 63) >> 6;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_14:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 < v15)
    {
      v13 = *(v10 + 8 * v16);
      ++v14;
      if (!v13)
      {
        goto LABEL_14;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = v17 | (v16 << 6);
        v19 = (*(v36 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v36 + 56) + 8 * v18);
        v23 = *a3;
        if (*(*a3 + 16))
        {
          sub_54C28();

          sub_546C8();
          v24 = sub_54C58();
          v25 = -1 << *(v23 + 32);
          v26 = v24 & ~v25;
          if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v27 = ~v25;
            while (1)
            {
              v28 = (*(v23 + 48) + 16 * v26);
              v29 = *v28 == v21 && v28[1] == v20;
              if (v29 || (sub_54BD8() & 1) != 0)
              {
                break;
              }

              v26 = (v26 + 1) & v27;
              if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v14 = v16;
            a3 = v34;
            a4 = v35;
            if (v13)
            {
              goto LABEL_13;
            }

            goto LABEL_14;
          }

LABEL_26:

          a3 = v34;
          a4 = v35;
        }

        else
        {
        }

        if ((v22 - 2) < 3)
        {
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_36;
          }

          ++*a4;
          swift_beginAccess();
          sub_1F8F4(v37, v21, v20);
          swift_endAccess();
        }

        v14 = v16;
        if (!v13)
        {
          goto LABEL_14;
        }

LABEL_13:
        v16 = v14;
      }
    }

    v8 = v33;
    result = v30;
    if (v33 == v32)
    {
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

__n128 sub_1F87C@<Q0>(uint64_t a1@<X8>)
{
  sub_1F114(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1F8F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_54C28();
  sub_546C8();
  v8 = sub_54C58();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_54BD8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1FCA4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1FA44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_44BC(&qword_77CE0, &unk_57A60);
  result = sub_54A78();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_54C28();
      sub_546C8();
      result = sub_54C58();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1FCA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1FA44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1FE24();
      goto LABEL_16;
    }

    sub_1FF80(v8 + 1);
  }

  v10 = *v4;
  sub_54C28();
  sub_546C8();
  result = sub_54C58();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_54BD8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_54BF8();
  __break(1u);
  return result;
}

void *sub_1FE24()
{
  v1 = v0;
  sub_44BC(&qword_77CE0, &unk_57A60);
  v2 = *v0;
  v3 = sub_54A68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1FF80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_44BC(&qword_77CE0, &unk_57A60);
  result = sub_54A78();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_54C28();

      sub_546C8();
      result = sub_54C58();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_201B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  return v1;
}

uint64_t sub_2022C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  *a2 = v4;
  return result;
}

uint64_t sub_202AC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  v3 = sub_4DA00(a1, v5[0]);

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 72))
    {
      sub_89B8(v1 + 48, v5);
      sub_7738(v5, v5[3]);
      type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
      sub_4B228(0xD00000000000001ALL, 0x800000000005D2A0);
      sub_777C(v5);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = a1;

  return sub_53D48();
}

uint64_t sub_20418()
{
  v1 = v0;
  v2 = sub_44BC(&qword_77DE8, &qword_57BB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  *(v1 + 16) = 0xD00000000000001CLL;
  *(v1 + 24) = 0x800000000005D2C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings24TCCAuthorizationProvider__authorizationDictionary;
  aBlock[0] = sub_5130C(_swiftEmptyArrayStorage);
  sub_44BC(&unk_77D30, qword_57B08);
  sub_53D18();
  (*(v3 + 32))(v1 + v6, v5, v2);
  sub_215B4();
  v7 = sub_54878();
  aBlock[4] = sub_21600;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF90;
  aBlock[3] = &unk_6F528;
  v8 = _Block_copy(aBlock);

  v9 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (v1 + 32), v7, v8);
  swift_endAccess();

  _Block_release(v8);

  sub_21608();
  v10 = *(v1 + 40);
  *(v1 + 40) = v11;

  return v1;
}

uint64_t sub_2065C(uint64_t a1, uint64_t a2)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_547B8();
  v6 = sub_547D8();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_18D0C(0, 0, v5, &unk_57BC8, v7);

  return sub_47F8(v5, &qword_777B8, &qword_57750);
}

uint64_t sub_207B0()
{
  sub_20810();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20810()
{
  result = tcc_server_create();
  if (result)
  {
    if (tcc_message_options_create())
    {
      v2 = swift_allocObject();
      *(v2 + 16) = sub_5130C(_swiftEmptyArrayStorage);
      tcc_message_options_set_reply_handler_policy();
      v3 = *(v0 + 40);
      if (v3)
      {
        v4 = *(v0 + 40);
      }

      else
      {
        v4 = sub_54738();
      }

      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v0;
      v8[4] = sub_21410;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_21078;
      v8[3] = &unk_6F4D8;
      v6 = _Block_copy(v8);
      v7 = v3;
      swift_unknownObjectRetain();

      tcc_server_message_get_authorization_records_by_services();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v6);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_209DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  if (a2)
  {
    v11 = qword_76FF8;
    v12 = a2;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_53C38();
    sub_7700(v13, qword_7BC48);
    v14 = v12;
    v47 = sub_53C18();
    v15 = sub_54808();

    if (os_log_type_enabled(v47, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v49[0] = v17;
      *v16 = 136315138;
      v48 = v14;
      type metadata accessor for CFError(0);
      sub_21538();
      v18 = sub_54C18();
      v20 = sub_18710(v18, v19, v49);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v47, v15, "Failed tcc request with error %s", v16, 0xCu);
      sub_777C(v17);
    }

    else
    {

      v38 = v47;
    }

    return;
  }

  if (!a1)
  {
    v39 = sub_547D8();
    (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
    swift_beginAccess();
    v40 = *(a3 + 16);
    sub_547A8();

    v41 = sub_54798();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = &protocol witness table for MainActor;
    v42[4] = a4;
    v42[5] = v40;
    sub_12270(0, 0, v10, &unk_57B58, v42);

    return;
  }

  swift_unknownObjectRetain();
  if (tcc_authorization_record_get_subject_identity())
  {
    if (tcc_authorization_record_get_service())
    {
      authorization_right = tcc_authorization_record_get_authorization_right();
      tcc_service_get_name();
      sub_546E8();
      v22 = sub_54638();

      tcc_identity_get_identifier();
      v23 = sub_546E8();
      v25 = v24;
      sub_44BC(&qword_77DD0, &qword_57B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_57A70;
      *(inited + 32) = v23;
      *(inited + 40) = v25;
      *(inited + 48) = authorization_right;
      v27 = sub_51404(inited);
      swift_setDeallocating();
      sub_47F8(inited + 32, &qword_77DD8, &qword_57B68);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a3 + 16);
      v29 = v48;
      *(a3 + 16) = 0x8000000000000000;
      v31 = sub_1BEC0(v22);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
        goto LABEL_30;
      }

      v35 = v30;
      if (v29[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *(a3 + 16) = v29;
          if (v30)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_BF10();
          v29 = v48;
          *(a3 + 16) = v48;
          if (v35)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_B1F8(v34, isUniquelyReferenced_nonNull_native);
        v29 = v48;
        v36 = sub_1BEC0(v22);
        if ((v35 & 1) != (v37 & 1))
        {
          type metadata accessor for CFString(0);
          sub_54C08();
          __break(1u);
          return;
        }

        v31 = v36;
        *(a3 + 16) = v29;
        if (v35)
        {
LABEL_25:
          inited = v29[7];
          v29 = *(inited + 8 * v31);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(inited + 8 * v31) = v29;
          if (v44)
          {
LABEL_26:
            v46 = v29[2];
            v45 = v29[3];
            if (v46 >= v45 >> 1)
            {
              v29 = sub_239EC((v45 > 1), v46 + 1, 1, v29);
              *(inited + 8 * v31) = v29;
            }

            v29[2] = v46 + 1;
            v29[v46 + 4] = v27;
            swift_endAccess();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

LABEL_30:
          v29 = sub_239EC(0, v29[2] + 1, 1, v29);
          *(inited + 8 * v31) = v29;
          goto LABEL_26;
        }
      }

      sub_10A7C(v31, v22, _swiftEmptyArrayStorage, v29);
      v43 = v22;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_21008, v7, v6);
}

uint64_t sub_21008()
{

  sub_202AC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21078(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_210F8()
{

  sub_47F8(v0 + 48, &qword_77DF0, &unk_57BD0);
  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings24TCCAuthorizationProvider__authorizationDictionary;
  v2 = sub_44BC(&qword_77DE8, &qword_57BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TCCAuthorizationProvider(uint64_t a1)
{
  result = qword_77D18;
  if (!qword_77D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2121C(uint64_t a1)
{
  sub_212D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_212D8(uint64_t a1)
{
  if (!qword_77D28)
  {
    sub_4590(&unk_77D30, qword_57B08);
    v1 = sub_53D58();
    if (!v2)
    {
      atomic_store(v1, &qword_77D28);
    }
  }
}

uint64_t sub_21348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_53CE8();
  *a1 = result;
  return result;
}

uint64_t sub_21398()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_213D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21430()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_21478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_20F70(a1, v4, v5, v7, v6);
}

unint64_t sub_21538()
{
  result = qword_77DE0;
  if (!qword_77DE0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77DE0);
  }

  return result;
}

unint64_t sub_215B4()
{
  result = qword_775E0;
  if (!qword_775E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_775E0);
  }

  return result;
}

void sub_21608()
{
  for (i = 0; i != 45; ++i)
  {
    v1 = sub_7400(*(&off_6E0F0 + i + 32));
    if (v1)
    {
      v2 = v1;
      sub_54728();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_54758();
      }

      sub_54778();
    }
  }

  if (!kTCCServicePhotosAdd)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v3 = kTCCServicePhotosAdd;
  sub_54728();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_54758();
  }

  sub_54778();
  if (!kTCCServiceEnergyKitGuidance)
  {
    goto LABEL_15;
  }

  v4 = kTCCServiceEnergyKitGuidance;
  sub_54728();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_54758();
  }

  sub_54778();
  type metadata accessor for CFString(0);
  sub_54738();
}

uint64_t sub_217D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_21810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_20790(a1, v4, v5, v6);
}

id sub_218CC()
{
  result = kTCCServicePhotosAdd;
  if (kTCCServicePhotosAdd)
  {
    qword_77DF8 = kTCCServicePhotosAdd;
    return kTCCServicePhotosAdd;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EC(uint64_t result)
{
  v2 = result;
  if (*(v1 + 32) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    strcpy(v3, "Reload due to ");
    HIBYTE(v3[1]) = -18;
    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v3[0], v3[1]);
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_219F0(uint64_t result)
{
  v2 = result;
  if (*(v1 + 40) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    strcpy(v3, "Reload due to ");
    HIBYTE(v3[1]) = -18;
    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v3[0], v3[1]);
  }

  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_21AF4(uint64_t result)
{
  v2 = result;
  if (*(v1 + 48) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    strcpy(v3, "Reload due to ");
    HIBYTE(v3[1]) = -18;
    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(v3[0], v3[1]);
  }

  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_21BF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C58(v2);
  }

  return result;
}

void sub_21C58(uint64_t a1)
{
  v3 = sub_7400(*(v1 + 16));
  if (v3)
  {
    v4 = v3;
    v9 = 0;
    v10 = &_swiftEmptySetSingleton;
    v7 = 0;
    v8 = 0;
    sub_22B64(v3, a1, &v10, &v8, &v9, &v7);
    v5 = *(v1 + 16);
    if (v5 == 16)
    {
      if (!kTCCServiceEnergyKitGuidance)
      {
        __break(1u);
        return;
      }

      v6 = kTCCServiceEnergyKitGuidance;
      sub_22B64(v6, a1, &v10, &v8, &v9, &v7);

      v5 = *(v1 + 16);
    }

    if (v5 == 8)
    {
      if (qword_76FB0 != -1)
      {
        swift_once();
      }

      sub_22B64(qword_77DF8, a1, &v10, &v8, &v9, &v7);
    }

    swift_beginAccess();
    sub_218EC(v9);
    swift_beginAccess();
    sub_219F0(v8);
    swift_beginAccess();
    sub_21AF4(v7);
  }
}

uint64_t sub_21DC0()
{
  if (*(v0 + 56))
  {

    sub_53CC8();
  }

  sub_777C((v0 + 72));

  return swift_deallocClassInstance();
}

double sub_21E5C@<D0>(_BYTE *a1@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54078();
  v4 = sub_541D8();
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 32);
  v68 = v5;
  v69 = a1;
  if (v10)
  {
    if (!(v9 | v8))
    {
      v67 = v4;
      v11 = *(v1 + 16);
      if (v11 <= 0x16 && ((1 << v11) & 0x418240) != 0)
      {
        v12 = v6;
        sub_54058();
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        sub_54048(v90);
        v80[0] = *(v1 + 32);
        sub_54028();
        v91._countAndFlagsBits = 0x7370706120;
        v91._object = 0xE500000000000000;
        sub_54048(v91);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      v43 = v6;
      v66 = v7;
      sub_54058();
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      sub_54048(v109);
      v80[0] = *(v1 + 32);
      sub_54028();
      v110._countAndFlagsBits = 0x6361206C6C756620;
      v110._object = 0xEC00000073736563;
      sub_54048(v110);
      sub_54088();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v44 = qword_7BBF8;
      v18 = sub_541D8();
      v20 = v45;
      v22 = v46;
      v24 = v47;
      v25 = v43 & 1;
      v26 = v67;
      goto LABEL_30;
    }

    v66 = v7;
    if (v9)
    {
      v13 = v6;
      v14 = v4;
      if (v8)
      {
        sub_54058();
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        sub_54048(v95);
        v80[0] = *(v1 + 32);
        sub_54028();
        v96._countAndFlagsBits = 0x6361206C6C756620;
        v96._object = 0xEE00202C73736563;
        sub_54048(v96);
        v80[0] = *(v1 + 48);
        sub_54028();
        v97._countAndFlagsBits = 0x646574696D696C20;
        v97._object = 0xEA0000000000202CLL;
        sub_54048(v97);
        v80[0] = *(v1 + 40);
        sub_54028();
        v98._countAndFlagsBits = 0x6C6E6F2064646120;
        v98._object = 0xE900000000000079;
        sub_54048(v98);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_54058();
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        sub_54048(v106);
        v80[0] = *(v1 + 32);
        sub_54028();
        v107._countAndFlagsBits = 0x6361206C6C756620;
        v107._object = 0xEE00202C73736563;
        sub_54048(v107);
        v80[0] = *(v1 + 48);
        sub_54028();
        v108._countAndFlagsBits = 0x646574696D696C20;
        v108._object = 0xE800000000000000;
        sub_54048(v108);
        sub_54088();
        if (qword_76FD8 == -1)
        {
LABEL_23:
          v31 = qword_7BBF8;
          v18 = sub_541D8();
          v20 = v32;
          v22 = v33;
          v24 = v34;
          v25 = v13 & 1;
          v26 = v14;
          goto LABEL_30;
        }
      }

      swift_once();
      goto LABEL_23;
    }

    v15 = v6;
    v16 = v4;
    sub_54058();
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    sub_54048(v101);
    v80[0] = *(v1 + 32);
    sub_54028();
    v102._countAndFlagsBits = 0x6361206C6C756620;
    v102._object = 0xEE00202C73736563;
    sub_54048(v102);
    v80[0] = *(v1 + 40);
    sub_54028();
    v103._countAndFlagsBits = 0x6C6E6F2064646120;
    v103._object = 0xE900000000000079;
    sub_54048(v103);
    sub_54088();
    if (qword_76FD8 == -1)
    {
LABEL_19:
      v17 = qword_7BBF8;
      v18 = sub_541D8();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = v15 & 1;
      v26 = v16;
LABEL_30:
      v42 = v68;
LABEL_31:
      sub_84F8(v26, v42, v25);
      goto LABEL_32;
    }

LABEL_36:
    swift_once();
    goto LABEL_19;
  }

  if (!v9)
  {
    v66 = v7;
    if (!v8)
    {
      v35 = v6;
      v36 = v4;
      v37 = v5;
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v38 = qword_7BBF8;
      v18 = sub_541D8();
      v20 = v39;
      v22 = v40;
      v24 = v41;
      v25 = v35 & 1;
      v26 = v36;
      v42 = v37;
      goto LABEL_31;
    }

    v15 = v6;
    v16 = v4;
    sub_54058();
    v99._countAndFlagsBits = 0;
    v99._object = 0xE000000000000000;
    sub_54048(v99);
    v80[0] = *(v1 + 40);
    sub_54028();
    v100._countAndFlagsBits = 0x6C6E6F2064646120;
    v100._object = 0xE900000000000079;
    sub_54048(v100);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  v67 = v4;
  v12 = v6;
  if (v8)
  {
    sub_54058();
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    sub_54048(v92);
    v80[0] = *(v1 + 48);
    sub_54028();
    v93._countAndFlagsBits = 0x646574696D696C20;
    v93._object = 0xEA0000000000202CLL;
    sub_54048(v93);
    v80[0] = *(v1 + 40);
    sub_54028();
    v94._countAndFlagsBits = 0x6C6E6F2064646120;
    v94._object = 0xE900000000000079;
    sub_54048(v94);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  sub_54058();
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  sub_54048(v104);
  v80[0] = *(v1 + 48);
  sub_54028();
  v105._countAndFlagsBits = 0x646574696D696C20;
  v105._object = 0xE800000000000000;
  sub_54048(v105);
  sub_54088();
  if (qword_76FD8 != -1)
  {
LABEL_38:
    swift_once();
  }

LABEL_21:
  v27 = qword_7BBF8;
  v18 = sub_541D8();
  v20 = v28;
  v22 = v29;
  v24 = v30;
  sub_84F8(v67, v68, v12 & 1);
LABEL_32:

  v48 = *(v1 + 16);
  v49 = sub_53918();
  v67 = &v66;
  __chkstk_darwin(v49 - 8);
  v50 = v22 & 1;
  sub_4088(v18, v20, v50);

  sub_4AC4(v48);
  v51 = sub_541F8();
  v53 = v52;
  v68 = v1;
  v55 = v54;
  v57 = v56;
  sub_84F8(v18, v20, v50);

  v70[104] = v55 & 1;
  v70[96] = v50;
  v71[0] = v48;
  *&v72 = v51;
  *(&v72 + 1) = v53;
  v73 = v55 & 1;
  *&v74 = v57;
  *(&v74 + 1) = v18;
  v75 = v20;
  v76 = v50;
  v78 = 0;
  v77 = v24;
  v79 = -1;
  LOBYTE(v80[0]) = v48;
  v80[1] = v51;
  v80[2] = v53;
  v81 = v55 & 1;
  v82 = v57;
  v83 = v18;
  v84 = v20;
  v85 = v50;
  v87 = 0;
  v88 = 0;
  v86 = v24;
  v89 = -1;
  sub_13C90(v71, v70);
  sub_13CEC(v80);
  v58 = v69;
  v59 = v75;
  v60 = v78;
  v61 = v79;
  v62 = v71[0] & 0x3F;
  v63 = v73 & 1;
  v64 = v76 | 0x8000000000000000;
  *v69 = *(v68 + 16);
  *(v58 + 1) = v62;
  *(v58 + 1) = v72;
  *(v58 + 4) = v63;
  *(v58 + 40) = v74;
  *(v58 + 7) = v59;
  *(v58 + 8) = v64;
  result = *&v77;
  *(v58 + 72) = v77;
  *(v58 + 11) = v60;
  *(v58 + 48) = v61;
  return result;
}

__n128 sub_22B04@<Q0>(uint64_t a1@<X8>)
{
  sub_21E5C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22B64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  result = sub_1BEC0(result);
  if ((v10 & 1) == 0)
  {
    return result;
  }

  result = *(*(a2 + 56) + 8 * result);
  v37 = *(result + 16);
  if (!v37)
  {
    return result;
  }

  v36 = result + 32;

  v11 = 0;
  v39 = a5;
  v40 = a6;
  v41 = a4;
  v35 = result;
LABEL_6:
  if (v11 < *(result + 16))
  {
    v12 = *(v36 + 8 * v11);
    v38 = v11 + 1;
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v12 + 64);
    v43 = v12;

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v17 = 0;
    v42 = v13;
    if (!v16)
    {
      goto LABEL_13;
    }

    while (1)
    {
LABEL_17:
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = v19 | (v17 << 6);
        v21 = (*(v43 + 48) + 16 * v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(*(v43 + 56) + 8 * v20);
        v25 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }

        if (v24 == 4)
        {
LABEL_27:
          v32 = v41;
          v33 = *v41 + 1;
          if (__OFADD__(*v41, 1))
          {
            goto LABEL_55;
          }

          goto LABEL_41;
        }

LABEL_31:
        if (v24 == 3)
        {
          v33 = *a6 + 1;
          if (__OFADD__(*a6, 1))
          {
            goto LABEL_54;
          }

          v32 = a6;
LABEL_41:
          *v32 = v33;
          if (*a5 <= 0)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (v24 != 2)
        {
          goto LABEL_48;
        }

        type metadata accessor for CFString(0);
        if (qword_76FB0 != -1)
        {
          swift_once();
        }

        sub_CA40();
        result = sub_53A98();
        if (result)
        {
          v32 = v41;
          v33 = *v41 + 1;
          if (__OFADD__(*v41, 1))
          {
            goto LABEL_56;
          }

          goto LABEL_41;
        }

        v34 = *a5 + 1;
        if (__OFADD__(*a5, 1))
        {
          goto LABEL_57;
        }

        *a5 = v34;
        if (v34 <= 0)
        {
LABEL_42:
          if (*v41 <= 0 && *a6 < 1)
          {
            goto LABEL_48;
          }
        }

LABEL_47:
        swift_beginAccess();
        sub_1F8F4(&v45, v22, v23);
        swift_endAccess();
LABEL_48:

        v13 = v42;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      sub_54C28();

      sub_546C8();
      v26 = sub_54C58();
      v27 = -1 << *(v25 + 32);
      v28 = v26 & ~v27;
      if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_26:

        a5 = v39;
        a6 = v40;
        if (v24 == 4)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = (*(v25 + 48) + 16 * v28);
        v31 = *v30 == v22 && v30[1] == v23;
        if (v31 || (sub_54BD8() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      a5 = v39;
      a6 = v40;
      v13 = v42;
      if (!v16)
      {
        while (1)
        {
LABEL_13:
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v18 >= ((v14 + 63) >> 6))
          {
            break;
          }

          v16 = *(v13 + 8 * v18);
          ++v17;
          if (v16)
          {
            v17 = v18;
            goto LABEL_17;
          }
        }

        v11 = v38;
        result = v35;
        if (v38 != v37)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

id sub_22FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = _swiftEmptyArrayStorage;
  v55[3] = &type metadata for TelephonyUtilities;
  v55[4] = sub_23874();
  v4 = sub_53A58();
  sub_777C(v55);
  if (v4)
  {
    v5 = sub_53918();
    __chkstk_darwin(v5 - 8);
    v6 = sub_54628();
    __chkstk_darwin(v6 - 8);
    sub_54618();
    if (qword_76FE0 != -1)
    {
      swift_once();
    }

    v7 = sub_53908();
    v8 = sub_7700(v7, qword_7BC00);
    __chkstk_darwin(v8);
    (*(v10 + 16))(&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = sub_539F8();
    __chkstk_darwin(v11 - 8);
    sub_539E8();
    sub_53928();
    v12 = sub_541F8();
    v14 = v13;
    v16 = v15;
    v18 = v17 & 1;
    v53 = v17 & 1;
    sub_44BC(&qword_77618, &unk_57510);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_57A70;
    v20 = v53 & 1;
    *(v19 + 32) = 31;
    *(v19 + 33) = *v54;
    *(v19 + 36) = *&v54[3];
    *(v19 + 40) = 31;
    *(v19 + 48) = v12;
    *(v19 + 56) = v14;
    *(v19 + 64) = v20;
    *(v19 + 72) = v16;
    *(v19 + 80) = 0;
    *(v19 + 88) = 0;
    *(v19 + 96) = 255;
    swift_beginAccess();
    sub_4088(v12, v14, v18);

    sub_23F94(v19);
    swift_endAccess();
    sub_84F8(v12, v14, v18);
  }

  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 sf_isiPhone];

  if (!v22)
  {
    goto LABEL_8;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result isPhoneMirroringActive];

  if ((v25 & 1) == 0)
  {
    v30 = sub_53918();
    __chkstk_darwin(v30 - 8);
    v31 = sub_54628();
    __chkstk_darwin(v31 - 8);
    sub_54618();
    if (qword_76FE0 != -1)
    {
      swift_once();
    }

    v32 = sub_53908();
    v33 = sub_7700(v32, qword_7BC00);
    __chkstk_darwin(v33);
    (*(v35 + 16))(&v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = sub_539F8();
    __chkstk_darwin(v36 - 8);
    sub_539E8();
    sub_53928();
    v37 = sub_541F8();
    v39 = v38;
    v41 = v40;
    v43 = v42 & 1;
    v53 = v42 & 1;
    sub_44BC(&qword_77618, &unk_57510);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_57A70;
    v45 = v53 & 1;
    *(v44 + 32) = 32;
    *(v44 + 33) = *v54;
    *(v44 + 36) = *&v54[3];
    *(v44 + 40) = 32;
    *(v44 + 48) = v37;
    *(v44 + 56) = v39;
    *(v44 + 64) = v45;
    *(v44 + 72) = v41;
    *(v44 + 80) = 0;
    *(v44 + 88) = 0;
    *(v44 + 96) = 255;
    swift_beginAccess();
    sub_4088(v37, v39, v43);

    sub_23F94(v44);
    swift_endAccess();
    sub_84F8(v37, v39, v43);

    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v46 = qword_7BBF8;
    v26 = sub_541D8();
    v27 = v47;
    v29 = v48;
    v28 = v49 & 1;
  }

  else
  {
LABEL_8:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  result = swift_beginAccess();
  v50 = v56;
  if (v56[2])
  {
    v51 = *(v2 + 16);
  }

  else
  {
    sub_A754(v26, v27, v28, v29);

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v50 = 0;
    v51 = 0;
  }

  *a1 = v51;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v26;
  *(a1 + 48) = v27;
  *(a1 + 56) = v28;
  *(a1 + 64) = v29;
  *(a1 + 72) = v50;
  return result;
}

__n128 sub_23828@<Q0>(uint64_t a1@<X8>)
{
  sub_22FE0(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23874()
{
  result = qword_77F80;
  if (!qword_77F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77F80);
  }

  return result;
}

char *sub_238C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77618, &unk_57510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_239EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_44BC(&qword_77FA0, &qword_57CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_44BC(&qword_77FA8, &unk_57CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23B20(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77628, &unk_575D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_23C20(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77F88, &qword_57CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D40(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77610, &qword_57508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E4C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_44BC(&qword_77F90, &qword_57CD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_44BC(&qword_77F98, &qword_5A7C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23F94(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_238C8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_240A0()
{
  result = qword_77FB0;
  if (!qword_77FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77FB0);
  }

  return result;
}

uint64_t sub_24118@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = sub_53918();
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  result = sub_541F8();
  *a1 = v3;
  *(a1 + 8) = v3 & 0x3F;
  *(a1 + 16) = result;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 255;
  return result;
}

uint64_t sub_241D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_547A8();
  *(v4 + 24) = sub_54798();
  v6 = sub_54788();

  return _swift_task_switch(sub_2426C, v6, v5);
}

uint64_t sub_2426C()
{
  v1 = *(v0 + 16);

  if ((*(v1 + 72) & 1) == 0)
  {
    *(v1 + 72) = AMFIShouldShowDeveloperModeSettings();
  }

  sub_7738((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  sub_4B228(0xD000000000000017, 0x800000000005D8D0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24344(uint64_t a1, uint64_t a2)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  if (a2)
  {
    v7 = sub_547D8();
    v8 = *(*(v7 - 8) + 56);

    v8(v6, 1, 1, v7);
    sub_547A8();

    v9 = sub_54798();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = a2;
    sub_12270(0, 0, v6, &unk_57E50, v10);
  }

  return result;
}

uint64_t sub_24488()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v1, v0, *(v0 + 64), 0);

  sub_777C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_24518(uint64_t a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    [v3 sf_isDeveloperModeEnabled];

    v4 = *(v1 + 16);
    v5 = sub_53918();
    __chkstk_darwin(v5 - 8);
    sub_4AC4(v4);
    v6 = sub_541F8();
    v26 = v7;
    v27 = v6;
    v25 = v8;
    v10 = v9;
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v20 = qword_7BBF8;
    v21 = sub_541D8();
    v28[104] = v25 & 1;
    v28[96] = v22 & 1;
    v29[0] = v4;
    *&v30 = v27;
    *(&v30 + 1) = v26;
    v31 = v25 & 1;
    *&v32 = v10;
    *(&v32 + 1) = v21;
    v33 = v23;
    v34 = v22 & 1;
    v36 = 0;
    v35 = v24;
    v37 = 511;
    v38[0] = v4;
    v39 = v27;
    v40 = v26;
    v41 = v25 & 1;
    v42 = v10;
    v43 = v21;
    v44 = v23;
    v45 = v22 & 1;
    v47 = 0;
    v48 = 0;
    v46 = v24;
    v49 = 511;
    sub_F828(v29, v28);
    sub_F884(v38);
    v16 = v30;
    v17 = v32;
    v12 = v33;
    v18 = v35;
    v14 = v36;
    v15 = v37;
    v19 = v29[0] & 0x3F;
    v11 = v31 & 1;
    v13 = v34 | 0x4000000000000000;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v4 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0x3FFFFFFFC0;
  }

  *a1 = v4;
  *(a1 + 8) = v19;
  *(a1 + 16) = v16;
  *(a1 + 32) = v11;
  *(a1 + 40) = v17;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v18;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
}

__n128 sub_247C0@<Q0>(uint64_t a1@<X8>)
{
  sub_24518(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24820()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_24860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_241D4(a1, v4, v5, v6);
}

uint64_t sub_24914()
{
  sub_53BF8();
  sub_53BC8();
  sub_53BE8();

  sub_53BC8();
  sub_53BD8();
}

uint64_t (*sub_24984(uint64_t a1))()
{
  swift_allocObject();
  swift_weakInit();
  return sub_25018;
}

uint64_t sub_249E0(uint64_t a1)
{
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_547D8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_547A8();

  v6 = sub_54798();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_12270(0, 0, v4, &unk_57EB8, v7);
}

uint64_t sub_24B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a4;
  sub_547A8();
  *(v4 + 112) = sub_54798();
  v6 = sub_54788();

  return _swift_task_switch(sub_24B9C, v6, v5);
}

uint64_t sub_24B9C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_2850())
    {
      sub_53A08();
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_89B8(Strong + 24, (v0 + 2));

    sub_7738(v0 + 2, v0[5]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000021, 0x800000000005D940);
    sub_777C(v0 + 2);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_24D18@<X0>(uint64_t a1@<X8>)
{
  result = sub_2850();
  if (result && (sub_53BF8(), sub_53BC8(), v4 = sub_53BE8(), result = , (v4 & 1) != 0))
  {
    v5 = *(v1 + 16);
    v6 = sub_53918();
    __chkstk_darwin(v6 - 8);
    sub_4AC4(v5);
    v7 = sub_541F8();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_53BC8();
    v14 = sub_53BD8();
    v16 = v15;

    v26[104] = v11 & 1;
    v26[96] = 0;
    v27[0] = v5;
    *&v28 = v7;
    *(&v28 + 1) = v9;
    v29 = v11 & 1;
    *&v30 = v13;
    *(&v30 + 1) = v14;
    v31 = v16;
    v32 = 0;
    *(&v33 + 1) = 0;
    v34 = 0;
    *&v33 = _swiftEmptyArrayStorage;
    v35 = 511;
    v36[0] = v5;
    v37 = v7;
    v38 = v9;
    v39 = v11 & 1;
    v40 = v13;
    v41 = v14;
    v42 = v16;
    v43 = 0;
    v44 = _swiftEmptyArrayStorage;
    v45 = 0;
    v46 = 0;
    v47 = 511;
    sub_F828(v27, v26);
    result = sub_F884(v36);
    v17 = v28;
    v18 = v30;
    v19 = v31;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v27[0] & 0x3F;
    v24 = v29 & 1;
    v25 = v32 | 0x4000000000000000;
  }

  else
  {
    v24 = 0;
    v19 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
    v5 = 0;
    v18 = 0uLL;
    v20 = 0uLL;
    v23 = 0x3FFFFFFFC0;
    v17 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 8) = v23;
  *(a1 + 16) = v17;
  *(a1 + 32) = v24;
  *(a1 + 40) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v25;
  *(a1 + 72) = v20;
  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
  return result;
}

uint64_t sub_24F24()
{
  sub_777C((v0 + 24));

  return swift_deallocClassInstance();
}

__n128 sub_24F80@<Q0>(uint64_t a1@<X8>)
{
  sub_24D18(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25020()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_25060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_24B04(a1, v4, v5, v6);
}

uint64_t (*sub_25114())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_25018;
}

void sub_2516C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedManager];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isSharedIPad];

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0x3FFFFFFFC0;
    }

    else
    {
      sub_53A88();
      v17 = sub_53A68();
      sub_53A78();

      v12 = *(v2 + 16);
      v18 = sub_53918();
      __chkstk_darwin(v18 - 8);
      sub_4AC4(v12);
      v19 = sub_541F8();
      v30 = v20;
      v31 = v19;
      v29 = v21;
      v23 = v22;
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v24 = qword_7BBF8;
      v25 = sub_541D8();
      v32[104] = v29 & 1;
      v32[96] = v26 & 1;
      v33[0] = v12;
      *&v34 = v31;
      *(&v34 + 1) = v30;
      v35 = v29 & 1;
      *&v36 = v23;
      *(&v36 + 1) = v25;
      v37 = v27;
      v38 = v26 & 1;
      v40 = 0;
      v39 = v28;
      v41 = 511;
      v42[0] = v12;
      v43 = v31;
      v44 = v30;
      v45 = v29 & 1;
      v46 = v23;
      v47 = v25;
      v48 = v27;
      v49 = v26 & 1;
      v51 = 0;
      v52 = 0;
      v50 = v28;
      v53 = 511;
      sub_F828(v33, v32);
      sub_F884(v42);
      v13 = v34;
      v14 = v36;
      v8 = v37;
      v15 = v39;
      v10 = v40;
      v11 = v41;
      v16 = v33[0] & 0x3F;
      v7 = v35 & 1;
      v9 = v38 | 0x4000000000000000;
    }

    *a1 = v12;
    *(a1 + 8) = v16;
    *(a1 + 16) = v13;
    *(a1 + 32) = v7;
    *(a1 + 40) = v14;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a1 + 72) = v15;
    *(a1 + 88) = v10;
    *(a1 + 96) = v11;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_2545C@<Q0>(uint64_t a1@<X8>)
{
  sub_2516C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

void sub_254BC(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 sf_isiPhone];

  if (v4)
  {
    v5 = [objc_opt_self() sharedInstance];
    [v5 isFeatureEnabled];

    v6 = v1[16];
    v7 = sub_53918();
    __chkstk_darwin(v7 - 8);
    v43 = v6;
    sub_4AC4(v6);
    v8 = sub_541F8();
    v39 = v9;
    v41 = v8;
    v37 = v10;
    v12 = v11;
    v44 = v1;
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v26 = qword_7BBF8;
    v27 = sub_541D8();
    v45[104] = v37 & 1;
    v45[96] = v28 & 1;
    v24 = v43;
    v46[0] = v43;
    v47 = v41;
    v48 = v39;
    v49 = v37 & 1;
    v50 = v12;
    v51 = v27;
    v52 = v29;
    v53 = v28 & 1;
    v55 = 0;
    v56 = 0;
    v54 = v30;
    v57 = 511;
    v58[0] = v43;
    v59 = v41;
    v60 = v39;
    v61 = v37 & 1;
    v62 = v12;
    v63 = v27;
    v64 = v29;
    v65 = v28 & 1;
    v67 = 0;
    v68 = 0;
    v66 = v30;
    v69 = 511;
    sub_F828(v46, v45);
    sub_F884(v58);
    v40 = v48;
    v42 = v47;
    v36 = v51;
    v38 = v50;
    v35 = v52;
    v34 = v54;
    v22 = v56;
    v33 = v55;
    v25 = v46[0] & 0x3F;
    v15 = v49 & 1;
    v19 = v53 | 0x4000000000000000;
    v23 = v57;
    v31 = CFNotificationCenterGetDarwinNotifyCenter();
    v32 = sub_54638();
    CFNotificationCenterAddObserver(v31, v44, sub_258AC, v32, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v21 = v33;
    v20 = v34;
    v18 = v35;
    v17 = v36;
    v16 = v38;
    v14 = v40;
    v13 = v42;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0x3FFFFFFFC0;
  }

  *a1 = v24;
  *(a1 + 8) = v25;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
}

__n128 sub_2584C@<Q0>(uint64_t a1@<X8>)
{
  sub_254BC(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

void sub_258AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);

    sub_7738((a2 + 24), v3);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000018, 0x800000000005B290);
  }
}

uint64_t sub_25958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v3);

    sub_7738(v3, v3[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000019, 0x800000000005B3A0);
    return sub_777C(v3);
  }

  return result;
}

void *sub_25A24()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_11288(v2);
      *(v1 + 64) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 24));

      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C2C()
{
  sub_25A24();

  return swift_deallocClassInstance();
}

double sub_25C84@<D0>(_BYTE *a1@<X8>)
{
  v83 = a1;
  v1 = sub_538C8();
  v84 = *(v1 - 8);
  v2 = *(v84 + 64);
  __chkstk_darwin(v1);
  v79 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v69 - v79;
  v4 = sub_44BC(&qword_783B0, &unk_57FB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - v5;
  v74 = objc_opt_self();
  v7 = [v74 mainNudityDetectionFooterText];
  sub_54668();
  v78 = v8;

  v9 = sub_44BC(&qword_783B8, &unk_5A4D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_539A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_538A8();
  __chkstk_darwin(v13 - 8);
  v14 = sub_53888();
  __chkstk_darwin(v14);
  (*(v16 + 104))(&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:));
  v17 = sub_53878();
  __chkstk_darwin(v17);
  (*(v19 + 104))(&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:));
  sub_53898();
  sub_538B8();
  v20 = v84;
  (*(v84 + 56))(v6, 0, 1, v1);
  v21 = (*(v20 + 32))(v3, v6, v1);
  __chkstk_darwin(v21);
  (*(v20 + 16))(&v69 - v79, v3, v1);
  v22 = sub_541E8();
  v78 = v23;
  v79 = v22;
  LODWORD(v76) = v24;
  v77 = v25;
  sub_54078();
  v26 = sub_541D8();
  v28 = v27;
  v30 = v29;
  v31 = v74;
  LODWORD(v75) = [v74 nudityDetectionRowEnabled];
  v81 = v3;
  v82 = v1;
  if (v75)
  {
    v32 = [v31 nudityDetectionOnOffLabel];
    v33 = sub_54668();
    v35 = v34;

    v96 = v33;
    v97 = v35;
    sub_A700();
    v36 = sub_54208();
  }

  else
  {
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v40 = qword_7BBF8;
    v36 = sub_541D8();
  }

  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = v39;
  sub_84F8(v26, v28, v30 & 1);

  v45 = sub_53918();
  v73 = &v69;
  __chkstk_darwin(v45 - 8);
  v46 = sub_54628();
  v72 = &v69;
  __chkstk_darwin(v46 - 8);
  LODWORD(v74) = v43 & 1;
  sub_4088(v41, v42, v43 & 1);

  sub_54618();
  v47 = v42;
  if (qword_76FE0 != -1)
  {
    swift_once();
  }

  v48 = sub_53908();
  v49 = sub_7700(v48, qword_7BC00);
  __chkstk_darwin(v49);
  (*(v51 + 16))(&v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_539F8();
  __chkstk_darwin(v52 - 8);
  sub_539E8();
  sub_53928();
  v53 = sub_541F8();
  LOBYTE(v109[0]) = v54 & 1;
  v55 = v74;
  v85[96] = v74;
  v86[0] = 33;
  v87 = v53;
  v88 = v56;
  v89 = v54 & 1;
  *&v90 = v57;
  *(&v90 + 1) = v41;
  v91 = v47;
  v92 = v74;
  v94 = 0;
  v93 = v44;
  LOBYTE(v95) = -1;
  HIBYTE(v95) = v75;
  LOBYTE(v96) = 33;
  v97 = v53;
  v98 = v56;
  v99 = v54 & 1;
  v100 = v57;
  v101 = v41;
  v102 = v47;
  v103 = v74;
  v105 = 0;
  v106 = 0;
  v104 = v44;
  v107 = -1;
  v108 = v75;
  sub_F828(v86, v85);
  sub_F884(&v96);
  v72 = v87;
  v73 = v41;
  v58 = v88;
  v71 = v90;
  v70 = v91;
  v69 = v93;
  v75 = v44;
  v59 = v94;
  LOWORD(v48) = v95;
  v60 = v86[0] & 0x3F;
  v61 = v89 & 1;
  v62 = v92 | 0x4000000000000000;
  v76 &= 1u;
  LODWORD(v80) = *(v80 + 16);
  sub_44BC(&qword_77618, &unk_57510);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_57A70;
  *(v63 + 32) = 33;
  *(v63 + 33) = v109[0];
  *(v63 + 36) = *(v109 + 3);
  v64 = v72;
  *(v63 + 40) = v60;
  *(v63 + 48) = v64;
  *(v63 + 56) = v58;
  *(v63 + 64) = v61;
  *(v63 + 72) = v71;
  *(v63 + 88) = v70;
  *(v63 + 96) = v62;
  *(v63 + 104) = v69;
  *(v63 + 120) = v59;
  *(v63 + 128) = v48;
  sub_F828(v86, v85);
  sub_84F8(v73, v47, v55);

  sub_F884(v86);
  (*(v84 + 8))(v81, v82);
  v65 = v83;
  *v83 = v80;
  result = 0.0;
  *(v65 + 8) = 0u;
  *(v65 + 24) = 0u;
  v67 = v78;
  *(v65 + 5) = v79;
  *(v65 + 6) = v67;
  v68 = v77;
  *(v65 + 7) = v76;
  *(v65 + 8) = v68;
  *(v65 + 9) = v63;
  return result;
}

__n128 sub_266C8@<Q0>(uint64_t a1@<X8>)
{
  sub_25C84(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26714(uint64_t a1)
{
  v2 = sub_44BC(&qword_783B0, &unk_57FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2677C()
{
  result = sub_54638();
  qword_7BBC8 = result;
  return result;
}

uint64_t sub_267B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_44BC(&qword_777B8, &qword_57750);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_2687C, 0, 0);
}

uint64_t sub_2687C()
{
  v1 = v0[7];
  v0[5] = 0;
  if (os_eligibility_get_domain_answer())
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[5] == 4;
  }

  v3 = v2;
  v4 = sub_547D8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_547A8();

  v6 = sub_54798();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v5;
  *(v7 + 40) = v3;

  sub_12270(0, 0, v1, &unk_58030, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_547A8();
  *(v5 + 48) = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_26AF0, v7, v6);
}

uint64_t sub_26AF0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = *(v0 + 56);
    sub_7738((Strong + 24), *(Strong + 48));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000026, 0x800000000005DC90);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v3);

    sub_7738(v3, v3[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000024, 0x800000000005DC30);
    return sub_777C(v3);
  }

  return result;
}

uint64_t sub_26CB4()
{
  sub_25A24();

  return swift_deallocClassInstance();
}

void sub_26D0C(uint64_t a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 16);
    v4 = sub_53918();
    __chkstk_darwin(v4 - 8);
    sub_4AC4(v3);
    v5 = sub_541F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = sub_26F64();
    v25[104] = v9 & 1;
    v25[96] = v13 & 1;
    v26[0] = v3;
    *&v27 = v5;
    *(&v27 + 1) = v7;
    v28 = v9 & 1;
    *&v29 = v11;
    *(&v29 + 1) = v12;
    v30 = v14;
    v31 = v13 & 1;
    v33 = 0;
    v32 = v15;
    v34 = 511;
    v35[0] = v3;
    v36 = v5;
    v37 = v7;
    v38 = v9 & 1;
    v39 = v11;
    v40 = v12;
    v41 = v14;
    v42 = v13 & 1;
    v44 = 0;
    v45 = 0;
    v43 = v15;
    v46 = 511;
    sub_F828(v26, v25);
    sub_F884(v35);
    v16 = v27;
    v17 = v29;
    v18 = v30;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = v26[0] & 0x3F;
    v23 = v28 & 1;
    v24 = v31 | 0x4000000000000000;
  }

  else
  {
    v23 = 0;
    v18 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v3 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
    v22 = 0x3FFFFFFFC0;
  }

  *a1 = v3;
  *(a1 + 8) = v22;
  *(a1 + 16) = v16;
  *(a1 + 32) = v23;
  *(a1 + 40) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v24;
  *(a1 + 72) = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
}

__n128 sub_26ECC@<Q0>(uint64_t a1@<X8>)
{
  sub_26D0C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F2C()
{
  result = sub_54638();
  qword_7BBD0 = result;
  return result;
}

uint64_t sub_26F64()
{
  sub_53CA8();
  swift_allocObject();
  sub_53C98();
  sub_53C68();

  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v0 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27070()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_270A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_270E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_26A54(a1, v4, v5, v6, v7);
}

uint64_t sub_271AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v3);

    sub_7738(v3, v3[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD00000000000001DLL, 0x800000000005DD10);
    return sub_777C(v3);
  }

  return result;
}

double sub_2729C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_53918();
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  v5 = sub_541F8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_27478();
  v23[104] = v9 & 1;
  v23[96] = v13 & 1;
  v24[0] = v3;
  *&v25 = v5;
  *(&v25 + 1) = v7;
  v26 = v9 & 1;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  v28 = v14;
  v29 = v13 & 1;
  v31 = 0;
  v30 = v15;
  v32 = 511;
  v33[0] = v3;
  v34 = v5;
  v35 = v7;
  v36 = v9 & 1;
  v37 = v11;
  v38 = v12;
  v39 = v14;
  v40 = v13 & 1;
  v42 = 0;
  v43 = 0;
  v41 = v15;
  v44 = 511;
  sub_F828(v24, v23);
  sub_F884(v33);
  v16 = v28;
  v17 = v31;
  v18 = v32;
  v19 = v24[0] & 0x3F;
  v20 = v26 & 1;
  v21 = v29 | 0x4000000000000000;
  *a1 = v3;
  *(a1 + 8) = v19;
  *(a1 + 16) = v25;
  *(a1 + 32) = v20;
  *(a1 + 40) = v27;
  *(a1 + 56) = v16;
  *(a1 + 64) = v21;
  result = *&v30;
  *(a1 + 72) = v30;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  return result;
}

__n128 sub_27418@<Q0>(uint64_t a1@<X8>)
{
  sub_2729C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27478()
{
  [objc_opt_self() isRecordActivityEnabled];
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v0 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_2756C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v3);

    sub_7738(v3, v3[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    sub_4B228(0xD000000000000021, 0x800000000005DD80);
    return sub_777C(v3);
  }

  return result;
}

double sub_2765C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_53918();
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  v5 = sub_541F8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_27870();
  v23[104] = v9 & 1;
  v23[96] = v13 & 1;
  v24[0] = v3;
  *&v25 = v5;
  *(&v25 + 1) = v7;
  v26 = v9 & 1;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  v28 = v14;
  v29 = v13 & 1;
  v31 = 0;
  v30 = v15;
  v32 = 511;
  v33[0] = v3;
  v34 = v5;
  v35 = v7;
  v36 = v9 & 1;
  v37 = v11;
  v38 = v12;
  v39 = v14;
  v40 = v13 & 1;
  v42 = 0;
  v43 = 0;
  v41 = v15;
  v44 = 511;
  sub_F828(v24, v23);
  sub_F884(v33);
  v16 = v28;
  v17 = v31;
  v18 = v32;
  v19 = v24[0] & 0x3F;
  v20 = v26 & 1;
  v21 = v29 | 0x4000000000000000;
  *a1 = v3;
  *(a1 + 8) = v19;
  *(a1 + 16) = v25;
  *(a1 + 32) = v20;
  *(a1 + 40) = v27;
  *(a1 + 56) = v16;
  *(a1 + 64) = v21;
  result = *&v30;
  *(a1 + 72) = v30;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  return result;
}
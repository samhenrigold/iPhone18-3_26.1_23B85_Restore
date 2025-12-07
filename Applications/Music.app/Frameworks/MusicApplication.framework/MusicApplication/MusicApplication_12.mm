void sub_10C858(void *a1)
{
  v10 = 0;
  v2 = [a1 results];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = &v10 + 1;
    v4[4] = &v10;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_112A1C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_5794C;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_48D4FC;
    aBlock[3] = &block_descriptor_151;
    v6 = _Block_copy(aBlock);
    v7 = v1;

    [v3 enumerateItemsUsingBlock:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10C9F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, BOOL *a5, BOOL *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 innermostModelObject];
    swift_unknownObjectRelease();
    v15 = v10;
    sub_10AC20(v10);
    v12 = v11;

    *a5 = v12 == 0;
    v13 = *a6;
    if (v13)
    {
      *a6 = 1;
    }

    else
    {
      sub_10E28C();
      *a6 = v14 == 2;
      LOBYTE(v13) = v14 == 2 || *a5;
    }

    *a3 = v13;
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_10CB1C(void *a1, void *a2, id (*a3)())
{
  v4 = v3;
  if (!a1)
  {
    v9 = 0;
    v36 = 0;
    if (!a2)
    {
LABEL_22:
      v14 = 0;
      v13 = 0;
      goto LABEL_23;
    }

LABEL_10:
    v15 = a2;
    sub_10C858(v15);
    if (v16 > 0xFFu || a1 && (v17 = v16, sub_10E28C(), v18 = v16, LOBYTE(v16) = v17, v18 == 2))
    {
      v9 = 1;
    }

    LOBYTE(v36) = v9 & 1;
    HIBYTE(v36) = (v9 | v16) & 1;

    v14 = 0;
    v13 = 0;
    v12 = 0;
    a3 = 0;
    if (HIBYTE(v36))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  sub_10CFD4();
  v9 = v8;
  if (a2)
  {
    goto LABEL_10;
  }

  v10 = a1;
  sub_10E28C();
  LOBYTE(v36) = (v11 == 2) | v9 & 1;
  if (v36 || ((objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())) && a3 - 3 >= 2)
  {
    HIBYTE(v36) = 1;

    v12 = 0;
    a3 = 0;
LABEL_8:
    v13 = 0;
    v14 = 0;
LABEL_26:
    sub_17654(v13, v14);
    sub_17654(a3, v12);
    return;
  }

  HIBYTE(v36) = a3 == 0;

  if (!a3)
  {
    v12 = 0;
    goto LABEL_8;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_22;
    }
  }

  v19 = objc_opt_self();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v4;
  v14[4] = &v36 + 1;
  v14[5] = &v36;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1129C4;
  *(v20 + 24) = v14;
  v34 = sub_36C08;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1822E0;
  v33 = &block_descriptor_122;
  v21 = _Block_copy(&aBlock);
  v22 = v10;
  v23 = v4;

  [v19 performWithoutEnforcement:v21];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v13 = sub_1129C4;
  if ((v36 & 0x100) != 0)
  {
    v12 = 0;
    a3 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v25 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = &v36 + 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_11296C;
  *(v26 + 24) = v12;
  v34 = sub_36C08;
  v35 = v26;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1822E0;
  v33 = &block_descriptor_112;
  v27 = _Block_copy(&aBlock);
  v28 = a1;

  [v25 performWithoutEnforcement:v27];
  _Block_release(v27);
  v29 = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIBYTE(v36) == 1)
  {
    a3 = sub_11296C;
    goto LABEL_26;
  }

  sub_17654(v13, v14);
  sub_17654(sub_11296C, v12);
}

void sub_10CFD4()
{
  v1 = [v0 identifiers];
  v2 = [v1 personalizedStore];
  if (v2)
  {
    v3 = [v2 cloudID];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v11 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v1;
  v5[4] = &v11;
  v5[5] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1129D0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_36C08;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_132;
  v7 = _Block_copy(aBlock);
  v8 = v0;
  v9 = v1;

  [v4 performWithoutEnforcement:v7];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_10D1B4(uint64_t a1, uint64_t a2, BOOL *a3, unsigned __int8 *a4)
{
  if (a1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 representativeSong];
      if (v7)
      {
        v8 = v7;
        v9 = v7;
        sub_10AC20(v8);
        v11 = v10;

        *a3 = v11 == 0;
      }

      if ((*a4 & 1) == 0)
      {
        v12 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
        MPModelObject.bestIdentifier(for:)(*v12, 1u);
        v14 = v13 != 0;

LABEL_10:
        *a4 = v14;
        return;
      }
    }

    else
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
        return;
      }

      if ((*a4 & 1) == 0)
      {
        v16 = v15;
        v17 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
        MPModelObject.bestIdentifier(for:)(*v17, 1u);
        if (v18)
        {

          v14 = 1;
        }

        else
        {
          v14 = [v16 isOwner];
        }

        goto LABEL_10;
      }
    }

    v14 = 1;
    goto LABEL_10;
  }
}

id sub_10D2F8(id result, _BYTE *a2)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result isArtistUploadedContent];
      *a2 = result;
    }
  }

  return result;
}

void sub_10D350(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      if (qword_DE69F0 != -1)
      {
        swift_once();
      }

      v15 = sub_AB4BC0();
      __swift_project_value_buffer(v15, qword_E71320);
      v16 = sub_AB4BA0();
      v17 = sub_AB9F50();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "ModelPlayabilityController - handleDeterminedStatus - Fetching subscription status", v18, 2u);
      }

      v19 = [objc_opt_self() sharedStatusController];
      sub_15F28(a4, v30);
      v20 = swift_allocObject();
      v20[2] = v14;
      v20[3] = a3;
      sub_17704(v30, (v20 + 4));
      v20[16] = a5;
      v20[17] = a6;
      aBlock[4] = sub_11150C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_35;
      v21 = _Block_copy(aBlock);
      v22 = a3;
      v23 = v14;
      sub_307CC(a5, a6);

      [v19 getSubscriptionStatusWithCompletionHandler:v21];
      _Block_release(v21);
    }

    else
    {
      v24 = sub_AB9990();
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      sub_15F28(a4, v30);
      sub_AB9940();
      v25 = a3;
      v19 = v14;
      sub_307CC(a5, a6);
      v26 = sub_AB9930();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = &protocol witness table for MainActor;
      v27[4] = v19;
      v27[5] = a3;
      sub_17704(v30, (v27 + 6));
      v27[18] = a5;
      v27[19] = a6;
      sub_DBDC8(0, 0, v12, &unk_AFE838, v27);
    }
  }
}

uint64_t sub_10D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_AB9940();
  v8[7] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_10D75C, v10, v9);
}

uint64_t sub_10D75C()
{
  sub_10AC20(*(v0 + 24));
  if (v1)
  {
    if (v1 == 7)
    {
      v2.n128_f64[0] = sub_1101F4(*(v0 + 24), *(v0 + 32));
    }

    v3 = 0;
    v4 = *(v0 + 40);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(v0 + 40);
    if (v4)
    {
LABEL_5:
      v4(v3, v2);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_10D800(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  v15 = sub_AB9990();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_15F28(a5, &v35);
  sub_AB9940();
  v16 = a4;
  v17 = a3;
  sub_307CC(a6, a7);
  v18 = sub_AB9930();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = a4;
  sub_17704(&v35, (v19 + 6));
  v19[18] = a6;
  v19[19] = a7;
  sub_DBDC8(0, 0, v14, &unk_AFE840, v19);

  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v20 = sub_AB4BC0();
  __swift_project_value_buffer(v20, qword_E71320);
  v21 = a1;
  v22 = v17;
  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v25 = 136446466;
    static ApplicationCapabilities.shared.getter(&v35);
    sub_70C54(&v35);
    if (v36)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v36)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_425E68(v26, v27, &v34);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    v33 = a1;
    v29 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF05E8, &unk_AFE848);
    v30 = sub_AB9350();
    v32 = sub_425E68(v30, v31, &v34);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_0, v23, v24, "ModelPlayabilityController - handleDeterminedStatus - Subscription status fetched - hasSubscriptionFullCatalogPlaybackCapability=%{public}s - status=%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }
}

double sub_10DB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E71320);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "ModelPlayabilityController - handleAccountRequiredStatus - Requesting", v9, 2u);
  }

  v3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 1;
  if (qword_DE6D60 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = v3;

  sub_49FDA4(3, sub_112928, v10);

  return result;
}

uint64_t sub_10DCC8(unsigned __int8 a1, uint64_t a2, _BYTE *a3, uint64_t (*a4)(uint64_t))
{
  v7 = (a2 == 0) & a1;
  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v8 = static ICUserIdentityStore.activeAccountDSID.getter();
  v9 = v7;
  if (v8)
  {

    v9 = 1;
  }

  a3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = v9;
  a3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 0;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E71320);
  v11 = a3;
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 67109378;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608, &qword_AFE860);
    v16 = sub_AB9350();
    v18 = sub_425E68(v16, v17, &v20);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_0, v12, v13, "ModelPlayabilityController - handleAccountRequiredStatus - Requested - success=%{BOOL}d - hasActiveAccount=%{public}s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return a4(v7);
}

uint64_t sub_10DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_10DF60, v6, v5);
}

uint64_t sub_10DF60()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_DE6830 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_E70E40 object:*(v0 + 16) userInfo:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10E194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = [objc_opt_self() standardUserDefaults];
  [v3 setPrefersSpatialDownloads:1];

  return a2();
}

unint64_t sub_10E234()
{
  result = qword_DF05E0;
  if (!qword_DF05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF05E0);
  }

  return result;
}

void sub_10E28C()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1129DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_142;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

id sub_10E3FC(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    result = [v3 keepLocalManagedStatus];
LABEL_7:
    *a2 = result;
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result anyObject];
    if (result)
    {
      v5 = result;
      sub_10E28C();
      v7 = v6;

      result = v7;
    }

    goto LABEL_7;
  }

  return result;
}

void sub_10E540(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v7 = [a2 universalStore];
    if (v7)
    {
      v8 = [v7 purchasedAdamID];
      swift_unknownObjectRelease();
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      v8 = 0;
LABEL_10:
      LOBYTE(v9) = v8 != 0;
      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v9) = 1;
LABEL_11:
    *a3 = v9;
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v11 = [v10 representativeSong];
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    if (!a4)
    {
      v9 = [v13 type] == &dword_0 + 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v12 = [v14 innermostModelObject];
    goto LABEL_22;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v11 = [v16 anyObject];
    if (v11)
    {
LABEL_16:
      v12 = v11;
LABEL_22:
      sub_10CFD4();
      LOBYTE(v9) = v15;

      goto LABEL_11;
    }

LABEL_25:
    LOBYTE(v9) = 0;
    goto LABEL_11;
  }
}

void sub_10E728(unsigned __int8 *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 innermostModelObject];
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_13;
      }

      v8 = [v12 anyObject];
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v5 = v10;
      goto LABEL_7;
    }

LABEL_13:
    v11 = 2;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = a2;
LABEL_7:
  v11 = [v5 isExplicitSong];

LABEL_8:
  *a1 = v11;
}

uint64_t sub_10E82C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DF04F8);
  __swift_project_value_buffer(v0, qword_DF04F8);
  return static Logger.music(_:)(0xD000000000000015, 0x8000000000B51AB0);
}

void *sub_10E890(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_10E928(uint64_t a1, uint64_t a2)
{

  return sub_10EA08(a1, a2, sub_10EBE4, sub_10EBE4);
}

void *sub_10E998(uint64_t a1, uint64_t a2)
{

  return sub_10EA08(a1, a2, sub_10F038, sub_10F038);
}

void *sub_10EA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    __chkstk_darwin();
    bzero(&v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v12 = a3(&v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v14 = swift_slowAlloc();

    v12 = sub_10E890(v14, v10, a2, a1, a4);
  }

  return v12;
}

Swift::Int sub_10EBE4(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = result;
  v42 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v41 = 0;
    do
    {
LABEL_44:
      if (v26)
      {
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
      }

      else
      {
        v30 = v23;
        do
        {
          v23 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v23 >= v27)
          {
LABEL_78:

            return sub_1CA530(v40, a2, v41, a3);
          }

          v31 = *(a3 + 56 + 8 * v23);
          ++v30;
        }

        while (!v31);
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
      }

      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + v32);
      sub_ABB5C0();
      v34 = v33 - 3;
      if ((v33 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v34 = v33;
      }

      sub_ABB5D0(v34);
      result = sub_ABB610();
      v35 = -1 << *(v42 + 32);
      v36 = result & ~v35;
    }

    while (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0);
    v37 = ~v35;
    while (1)
    {
      v38 = *(*(v42 + 48) + v36);
      if (v38 > 5)
      {
        switch(v38)
        {
          case 6u:
            if (v33 == 6)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 7u:
            if (v33 == 7)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 8u:
            if (v33 == 8)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
        }
      }

      else
      {
        switch(v38)
        {
          case 3u:
            if (v33 == 3)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 4u:
            if (v33 == 4)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          case 5u:
            if (v33 == 5)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
        }
      }

      if ((v33 - 9) <= 0xF9u && v38 == v33)
      {
LABEL_76:
        *(v40 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (!__OFADD__(v41, 1))
        {
          ++v41;
          goto LABEL_44;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_56:
      v36 = (v36 + 1) & v37;
      if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  v5 = 0;
  v6 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a3 + 56;
  v41 = 0;
  do
  {
LABEL_6:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
    }

    else
    {
      v13 = v5;
      do
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_80;
        }

        if (v5 >= v10)
        {
          goto LABEL_78;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
    }

    v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
    sub_ABB5C0();
    v16 = v15 - 3;
    if ((v15 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v16 = v15;
    }

    sub_ABB5D0(v16);
    result = sub_ABB610();
    v17 = -1 << *(a3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    a4 = v42;
  }

  while (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0);
  v21 = ~v17;
  while (1)
  {
    v22 = *(*(a3 + 48) + v18);
    if (v22 > 5)
    {
      break;
    }

    switch(v22)
    {
      case 3u:
        if (v15 == 3)
        {
          goto LABEL_38;
        }

        break;
      case 4u:
        if (v15 == 4)
        {
          goto LABEL_38;
        }

        break;
      case 5u:
        if (v15 == 5)
        {
          goto LABEL_38;
        }

        break;
      default:
        goto LABEL_32;
    }

LABEL_18:
    v18 = (v18 + 1) & v21;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if ((*(v11 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_6;
    }
  }

  switch(v22)
  {
    case 6u:
      if (v15 == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    case 7u:
      if (v15 == 7)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    case 8u:
      if (v15 == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
  }

LABEL_32:
  if ((v15 - 9) > 0xF9u || v22 != v15)
  {
    goto LABEL_18;
  }

LABEL_38:
  v40[v19] |= v20;
  if (!__OFADD__(v41, 1))
  {
    ++v41;
    goto LABEL_6;
  }

LABEL_82:
  __break(1u);
  return result;
}

void sub_10F038(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_ABB5C0();

      sub_AB93F0();
      v26 = sub_ABB610();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_ABB3C0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1CB5FC(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_ABB5C0();

      sub_AB93F0();
      v39 = sub_ABB610();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_ABB3C0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

id sub_10F414(uint64_t a1)
{
  sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF4EC0;
    *(v1 + 32) = sub_AB92A0();
    *(v1 + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v4;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v5 = qword_DF04E0;
    *(inited + 48) = qword_DF04E0;
    *(inited + 56) = sub_AB92A0();
    *(inited + 64) = v6;
    v7 = qword_DE6850;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_DF04F0;
    *(inited + 72) = qword_DF04F0;
    *(inited + 80) = sub_AB92A0();
    *(inited + 88) = v10;
    v11 = qword_DE6848;
    v12 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_DF04E8;
    *(inited + 96) = qword_DF04E8;
    v14 = v13;
    sub_96EA4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
LABEL_20:
    swift_arrayDestroy();
    v28 = objc_allocWithZone(MPPropertySet);
    isa = sub_AB9740().super.isa;

    sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
    v30 = sub_AB8FD0().super.isa;

    v31 = [v28 initWithProperties:isa relationships:v30];

    return v31;
  }

  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF4EC0;
    *(v15 + 32) = sub_AB92A0();
    *(v15 + 40) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_AF85F0;
    *(v17 + 32) = sub_AB92A0();
    *(v17 + 40) = v18;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v19 = qword_DF04E0;
    *(v17 + 48) = qword_DF04E0;
LABEL_17:
    *(v17 + 56) = sub_AB92A0();
    *(v17 + 64) = v23;
    v24 = qword_DE6850;
    v25 = v19;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_DF04F0;
    *(v17 + 72) = qword_DF04F0;
    v27 = v26;
    sub_96EA4(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
    goto LABEL_20;
  }

  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_AF4EC0;
    *(v20 + 32) = sub_AB92A0();
    *(v20 + 40) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_AF85F0;
    *(v17 + 32) = sub_AB92A0();
    *(v17 + 40) = v22;
    if (qword_DE6840 != -1)
    {
      swift_once();
    }

    v19 = qword_DF04E0;
    *(v17 + 48) = qword_DF04E0;
    goto LABEL_17;
  }

  v33 = [objc_opt_self() emptyPropertySet];

  return v33;
}

void sub_10F978()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.playbackController.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000039, 0x8000000000B515C0, &v10);
    _os_log_impl(&dword_0, v5, v6, "Unexpected call to %s in legacy Music.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

id sub_10FB2C(uint64_t a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }
    }

    goto LABEL_19;
  }

  v5 = v4;
  if (!a2 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_16:
    [v5 hasVideo];
LABEL_19:
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    goto LABEL_20;
  }

  v7 = v6;
  v8 = MPModelPropertyAlbumPreorder;
  v9 = a2;
  if (![v7 hasLoadedValueForKey:v8] || !objc_msgSend(v7, "isPreorder"))
  {

    goto LABEL_16;
  }

  [v5 hasVideo];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();

LABEL_20:
  v10 = sub_AB9260();

  v11 = [objc_opt_self() alertControllerWithTitle:0 message:v10 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v12 = sub_AB9260();

  v13 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  [v11 addAction:v13];
  return v11;
}

void sub_10FFD8()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v0 = sub_AB9260();

  v1 = [objc_opt_self() alertControllerWithTitle:v0 message:0 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  v3 = [objc_opt_self() actionWithTitle:v2 style:0 handler:0];

  [v1 addAction:v3];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v1, 1, 1, 0, 0);
  UIViewController.dismiss(after:)(480.0);
}

double sub_1101F4(void *a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 isSubscriptionAvailable];

  if (v5)
  {
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_E71320);
    v7 = a1;
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31[0] = v11;
      *v10 = 136446210;
      if (a1)
      {
        v12 = sub_27ECD0(&off_CEFD20);
        MPModelObject.humanDescription(including:)(v12);
        v14 = v13;
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v32[0] = v14;
      v32[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
      v23 = sub_AB9350();
      v25 = sub_425E68(v23, v24, v31);

      *(v10 + 4) = v25;
      _os_log_impl(&dword_0, v8, v9, "ModelPlayabilityController will display upsell- handleSubscriptionRequiredStatus received - model=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    sub_15F28(a2, v32);
    v26 = *JSBridge.shared.unsafeMutableAddressor();
    sub_1116A8(v32, v31);
    v27 = swift_allocObject();
    *(v27 + 16) = 5;
    *(v27 + 24) = a1;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 1;
    sub_111814(v31, v27 + 64);
    *(v27 + 160) = 0;
    *(v27 + 168) = 0;
    v28 = *&stru_B8.segname[(swift_isaMask & *v26) + 16];
    v29 = v7;
    v30 = v26;
    v28(sub_111884, v27);
    sub_111898(v32);
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v17 = sub_AB9260();

    v18 = sub_AB9260();

    v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v20 = sub_AB9260();

    v21 = [objc_opt_self() actionWithTitle:v20 style:0 handler:0];

    [v19 addAction:v21];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v19, 1, 1, 0, 0);
  }

  return result;
}

id sub_110714(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  result = [a1 results];
  if (result)
  {
    v2 = result;
    v3 = [result itemsInSectionAtIndex:0];

    v4 = sub_AB9760();
    v6 = sub_12DAB0(v4, v5);

    if (v6)
    {
      if (v6 >> 62)
      {
LABEL_23:
        v18 = sub_ABB060();
      }

      else
      {
        v18 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      }

      v7 = 0;
      v17 = v20;
      while (1)
      {
        v8 = v18 == v7;
        if (v18 == v7)
        {
          break;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_3602FC(v7, v6);
        }

        else
        {
          if (v7 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v9 = *(v6 + 8 * v7 + 32);
        }

        v10 = v9;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v21 = 2;
        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = &v21;
        *(v12 + 24) = v10;
        v13 = swift_allocObject();
        *(v13 + 16) = sub_111AF0;
        *(v13 + 24) = v12;
        v20[2] = sub_2D4D0;
        v20[3] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v20[0] = sub_1822E0;
        v20[1] = &block_descriptor_86;
        v14 = _Block_copy(aBlock);
        v15 = v10;

        [v11 performWithoutEnforcement:{v14, v17}];

        _Block_release(v14);
        LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

        if (v11)
        {
          goto LABEL_22;
        }

        v16 = v21;

        if (v16 != 2)
        {
          ++v7;
          if (v16)
          {
            continue;
          }
        }

        break;
      }

      return v8;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1109D4(id a1, void *a2, id (*a3)(), char a4, uint64_t a5, void (*a6)(uint64_t, void *), uint64_t a7)
{
  v56 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v14 = &v55 - v13;
  if (!a1)
  {
    v15 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass() != 0;
        if ((a4 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }
  }

  v15 = 1;
  if (a4)
  {
LABEL_6:
    sub_10AC20(a1);
    a3 = v16;
  }

LABEL_7:
  if (!a2)
  {
    goto LABEL_16;
  }

  v17 = [a2 results];
  if (!v17)
  {
    __break(1u);
    goto LABEL_104;
  }

  v18 = v17;
  v19 = [v17 firstSection];

  if (!v19)
  {
LABEL_16:
    v57 = 0;
    if (!a1)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (v15)
    {
      goto LABEL_18;
    }

    if (a3 == (&dword_4 + 3))
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      v29 = a1;
      if (v28)
      {
        v30 = v29;
        if (([v28 hasVideo] & 1) == 0 && v57)
        {
          v55 = v57;
          if (![v28 isExplicitSong] || (ExplicitRestrictionsController.shared.unsafeMutableAddressor(), , v31 = ExplicitRestrictionsController.explicitContentIsAllowed.getter(), , v31))
          {
            sub_10AC20(v28);
            v33 = v32;
            sub_10CB1C(v28, 0, v32);
            v35 = v34;
            static ApplicationCapabilities.shared.getter(v58);
            v36 = v59;
            if (sub_472A84(5, v59))
            {
              v37 = sub_472A84(0, v36);
              sub_70C54(v58);
              if (v33 == 7)
              {
                v33 = (v37 & 1) != 0 ? 1 : 7;
                if (v35)
                {
LABEL_97:

                  goto LABEL_98;
                }
              }
            }

            else
            {
              sub_70C54(v58);
            }

            if (v33 == 1 && a6)
            {
              (a6)(2);
            }

            goto LABEL_97;
          }

LABEL_102:
          sub_10F978();

          v25 = v55;
          goto LABEL_26;
        }
      }

LABEL_98:
      sub_1101F4(a1, v56);
      goto LABEL_99;
    }

    v41 = a1;
    if (a3 <= 3)
    {
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 != (&dword_0 + 1))
          {
            goto LABEL_104;
          }

          goto LABEL_98;
        }

        if (a6)
        {
          (a6)(1);

          goto LABEL_25;
        }

        goto LABEL_88;
      }

      if (a3 == (&dword_0 + 2))
      {
        v55 = v57;
        goto LABEL_102;
      }

      v46 = static Alert.cellularRestrictedAlert(model:)(v58, a1);
    }

    else
    {
      if (a3 > 5)
      {
        if (a3 == (&dword_4 + 2))
        {
          v51 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_15F28(v56, v58);
          v52 = swift_allocObject();
          v52[2] = v51;
          v52[3] = a1;
          sub_17704(v58, (v52 + 4));
          v52[16] = a6;
          v52[17] = a7;
          a1 = v41;

          sub_307CC(a6, a7);
          sub_10DB34(sub_112C18, v52);

LABEL_99:

          goto LABEL_100;
        }

        if (a3 == &dword_8)
        {
          v42 = sub_AB9990();
          (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
          sub_15F28(v56, v58);
          sub_AB9940();
          v43 = sub_AB9930();
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          *(v44 + 24) = &protocol witness table for MainActor;
          sub_17704(v58, v44 + 32);
          sub_DBDC8(0, 0, v14, &unk_AFE858, v44);

LABEL_85:

          goto LABEL_100;
        }

        if (a3 != (&dword_8 + 1))
        {
          goto LABEL_104;
        }

        sub_10FFD8();
LABEL_88:

        goto LABEL_25;
      }

      if (a3 != &dword_4)
      {
        v54 = sub_10FB2C(a1, v57);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v54, 1, 1, 0, 0);
        UIViewController.dismiss(after:)(480.0);

        goto LABEL_25;
      }

      v46 = static Alert.networkUnavailableAlert(model:traitCollection:)(v58, a1, 0);
    }

    v53 = Alert.uiAlertController.getter(v46);
    sub_111904(v58);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v53, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_85;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v57 = v20;
  if (a1)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_10CB1C(a1, a2, a3);
  v22 = v21;
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  v23 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (!v23)
  {
    v24 = sub_110714(a2);
    if (v24)
    {
      a3 = (&dword_0 + 2);
    }

    v22 &= v24 ^ 1;
  }

  if (a6)
  {
    (a6)(v22 & 1);
  }

  if (v22)
  {
    goto LABEL_25;
  }

  v26 = v57;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == (&dword_4 + 1))
      {
        v45 = sub_10FB2C(a1, v57);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v45, 1, 1, 0, 0);
        UIViewController.dismiss(after:)(480.0);

        goto LABEL_25;
      }

      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_15F28(v56, v58);
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = a1;
      sub_17704(v58, (v49 + 4));
      v49[16] = a6;
      v49[17] = a7;
      v50 = a1;
      sub_307CC(a6, a7);

      sub_10DB34(sub_111994, v49);
    }

    else
    {
      if (a3 == (&dword_4 + 3))
      {
LABEL_76:
        sub_1101F4(a1, v56);
        goto LABEL_25;
      }

      if (a3 != &dword_8)
      {
        if (a3 == (&dword_8 + 1))
        {
          sub_10FFD8();
          goto LABEL_25;
        }

        goto LABEL_104;
      }

      v38 = sub_AB9990();
      (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
      sub_15F28(v56, v58);
      sub_AB9940();
      v39 = sub_AB9930();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = &protocol witness table for MainActor;
      sub_17704(v58, v40 + 32);
      sub_DBDC8(0, 0, v14, &unk_AF79B0, v40);
    }

LABEL_100:

    return;
  }

  if (a3 > 1)
  {
    if (a3 != (&dword_0 + 2))
    {
      if (a3 == (&dword_0 + 3))
      {
        v27 = static Alert.cellularRestrictedAlert(model:)(v58, a1);
      }

      else
      {
        v27 = static Alert.networkUnavailableAlert(model:traitCollection:)(v58, a1, 0);
      }

      v47 = Alert.uiAlertController.getter(v27);
      sub_111904(v58);
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v47, 1, 1, 0, 0);
      UIViewController.dismiss(after:)(480.0);

      goto LABEL_100;
    }

    sub_10F978();
LABEL_25:
    v25 = v57;
LABEL_26:

    return;
  }

  if (a3)
  {
    if (a3 == (&dword_0 + 1))
    {
      goto LABEL_76;
    }

LABEL_104:
    v58[0] = a3;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (a6)
  {
    a6(1, v57);
    goto LABEL_25;
  }
}

unint64_t sub_11138C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1113A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[18];
  v9 = v1[19];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_10D6BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_111478()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1115D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[18];
  v9 = v1[19];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_10D6BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1116A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520, &unk_AFDBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_111718()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

double sub_1117C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_111814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520, &unk_AFDBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_111898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520, &unk_AFDBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_111958()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_66Tm()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_111AB8()
{

  return swift_deallocObject();
}

void sub_111AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  v6 = sub_AB9260();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_AB9260();

  v22 = sub_1128E0;
  v23 = v8;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1546C;
  v21 = &block_descriptor_93;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  [v7 addAction:v12];
  [v7 setPreferredAction:v12];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_AB9260();

  v22 = sub_70638;
  v23 = v13;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1546C;
  v21 = &block_descriptor_99;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 actionWithTitle:v14 style:1 handler:v15];
  _Block_release(v15);

  [v7 addAction:v16];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, 1, 1, 0, 0);
  v17 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter(1);
}

void sub_111FD0(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v76[0] = 1;
  v10 = sub_80D7C();
  v11 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v10);
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter();

  if (v13)
  {
    goto LABEL_17;
  }

  sub_1116A8(a3, v76);
  if (v77 == 1)
  {
    v11 = sub_111898(v76);
LABEL_17:
    a4(v11);
    return;
  }

  sub_17704(v76, v75);
  static ApplicationCapabilities.shared.getter(v76);
  sub_70C54(v76);
  if (v76[1] & 1) == 0 || (v14 = objc_opt_self(), v15 = [v14 standardUserDefaults], v16 = objc_msgSend(v15, "prefersSpatialDownloads"), v15, (v16) || (v17 = objc_msgSend(v14, "standardUserDefaults"), v18 = objc_msgSend(v17, "spatialAudioPreference"), v17, v18 != &dword_0 + 1) && v18 != &dword_0 + 2 || (v20 = a1[3], v19 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v20), !sub_161E74(v20, *(v19 + 8))))
  {
    v11 = sub_1611C(v75);
    goto LABEL_17;
  }

  v21 = [a2 results];
  if (!v21)
  {
LABEL_104:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 allItems];

  v24 = sub_AB9760();
  v26 = sub_12DAC8(v24, v25);
  if (!v26)
  {
    sub_1611C(v75);

    goto LABEL_17;
  }

  v27 = v26;

  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  v68 = a4;
  v69 = v27 & 0xFFFFFFFFFFFFFF8;
  v73 = a5;
  if (v27 >> 62)
  {
    goto LABEL_94;
  }

  v29 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!v29)
  {
LABEL_85:
    sub_1611C(v75);

    goto LABEL_17;
  }

  v65 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v30 = 0;
    v66 = v27;
    v70 = v27 + 32;
    v71 = v27 & 0xC000000000000001;
    v72 = v29;
    while (v71)
    {
      v31 = sub_3603D0(v30, v66);
      v32 = __OFADD__(v30++, 1);
      if (v32)
      {
        goto LABEL_90;
      }

LABEL_23:
      v74 = v31;
      v33 = sub_162538();
      sub_112854();
      v34 = sub_AB9B70();
      v35 = v33;
      v36 = *(v33 + 2);
      if (v36)
      {
        v37 = 0;
        v38 = v35 + 32;
        while (1)
        {
          v40 = v34 + 56;
          while (1)
          {
            v41 = v38[v37];
            sub_ABB5C0();
            v42 = v41 - 3;
            if ((v41 - 3) >= 6)
            {
              sub_ABB5D0(6uLL);
              v42 = v41;
            }

            sub_ABB5D0(v42);
            ++v37;
            v43 = sub_ABB610();
            v44 = -1 << *(v34 + 32);
            v45 = v43 & ~v44;
            if (((*(v40 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              break;
            }

            v46 = ~v44;
            while (1)
            {
              v47 = *(*(v34 + 48) + v45);
              if (v47 > 5)
              {
                break;
              }

              switch(v47)
              {
                case 3u:
                  if (v41 == 3)
                  {
                    goto LABEL_52;
                  }

                  break;
                case 4u:
                  if (v41 == 4)
                  {
                    goto LABEL_52;
                  }

                  break;
                case 5u:
                  if (v41 == 5)
                  {
                    goto LABEL_52;
                  }

                  break;
                default:
                  goto LABEL_46;
              }

LABEL_32:
              v45 = (v45 + 1) & v46;
              if (((*(v40 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            switch(v47)
            {
              case 6u:
                if (v41 == 6)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
              case 7u:
                if (v41 == 7)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
              case 8u:
                if (v41 == 8)
                {
                  goto LABEL_52;
                }

                goto LABEL_32;
            }

LABEL_46:
            if ((v41 - 9) > 0xF9u || v47 != v41)
            {
              goto LABEL_32;
            }

LABEL_52:
            if (v37 == v36)
            {
LABEL_53:

              a4 = v68;
              v28 = v69;
              goto LABEL_55;
            }
          }

LABEL_25:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_218B8(v41, v45, isUniquelyReferenced_nonNull_native);
          if (v37 == v36)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_55:
      v48 = v73;
      if (qword_DE68D0 != -1)
      {
        swift_once();
      }

      v27 = *(sub_10EA08(qword_E71068, v34, sub_10EBE4, sub_10EBE4) + 2);

      if (v27)
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
      }

      else
      {
      }

      v29 = v72;
      if (v30 == v72)
      {
        v27 = 0;
        v49 = v66;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_102;
        }

LABEL_63:
        if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
        {
          v50 = _swiftEmptyArrayStorage[2];
          goto LABEL_65;
        }

        goto LABEL_102;
      }
    }

    if (v30 >= *(v28 + 16))
    {
      goto LABEL_91;
    }

    v31 = *(v70 + 8 * v30);
    v32 = __OFADD__(v30++, 1);
    if (!v32)
    {
      goto LABEL_23;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v65 = sub_ABB060();
    if (v65 <= 0)
    {
      goto LABEL_85;
    }

    v67 = v27;
    v29 = sub_ABB060();
    if (v29)
    {
      a4 = v68;
      v28 = v69;
      continue;
    }

    break;
  }

  v27 = 1;
  a4 = v68;
  v48 = v73;
  v49 = v67;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_102:
  v50 = sub_ABB060();
LABEL_65:

  if (v50 != v65)
  {
    goto LABEL_85;
  }

  if ((v27 & 1) == 0)
  {
    v51 = 0;
    v52 = v49;
    v53 = v49 & 0xC000000000000001;
    while (1)
    {
      if (v53)
      {
        v54 = sub_3603D0(v51, v52);
      }

      else
      {
        if (v51 >= *(v69 + 16))
        {
          goto LABEL_93;
        }

        v54 = *(v52 + 8 * v51 + 32);
      }

      v55 = v54;
      v56 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_92;
      }

      type metadata accessor for LibraryAddKeepLocalStatusObserver();
      swift_allocObject();
      v57 = v55;
      v58 = sub_259C34();
      v59 = v58[9];
      v58[9] = v55;
      v60 = v57;

      sub_25A2AC(0);

      v27 = v58[15];

      if ((v27 & 0xFE) == 0xF8)
      {
        __break(1u);
        goto LABEL_104;
      }

      if ((v27 & 0xFE) == 0x7A)
      {
        goto LABEL_74;
      }

      if (v27 >> 1 != 62)
      {
        goto LABEL_74;
      }

      v61 = [v60 localFileAsset];
      if (!v61)
      {
        goto LABEL_74;
      }

      v62 = v61;
      v63 = sub_16286C();
      v64 = sub_2F34EC(v63);

      if (qword_DE68D0 != -1)
      {
        swift_once();
      }

      v27 = *(sub_10EA08(qword_E71068, v64, sub_10EBE4, sub_10EBE4) + 2);

      if (v27)
      {
LABEL_74:
      }

      else
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
      }

      ++v51;
      if (v56 == v29)
      {
        v48 = v73;
        break;
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (sub_ABB060() <= 0)
    {
      goto LABEL_99;
    }

LABEL_89:
    sub_111AF8(v75, a4, v48);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2] > 0)
    {
      goto LABEL_89;
    }

LABEL_99:
    (a4)();
  }

  sub_1611C(v75);
}

unint64_t sub_112854()
{
  result = qword_DFDE60;
  if (!qword_DFDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFDE60);
  }

  return result;
}

uint64_t sub_1128A8()
{

  return swift_deallocObject();
}

uint64_t sub_1128E8()
{

  return swift_deallocObject();
}

uint64_t sub_112934()
{

  return swift_deallocObject();
}

uint64_t sub_112984()
{

  return swift_deallocObject();
}

uint64_t sub_1129E4()
{

  return swift_deallocObject();
}

uint64_t sub_112A28()
{

  return swift_deallocObject();
}

uint64_t sub_112A78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_112AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_10DEC8(a1, v4, v5, v6);
}

void sub_112C24(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (!v4)
  {
    return;
  }

  v23 = v4;
  v5 = (*(a2 + 8))(a1, a2);
  if (v5)
  {
    v22 = v5;
    if ([v5 enableSetNeedsDisplay])
    {
      v6 = (*(a2 + 24))(a1, a2);
      if (v6)
      {
        v7 = *(a2 + 32);
        v8 = v6;
        v9 = v6;
        LOBYTE(v7) = v7(a1, a2);
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = a1;
        *(v11 + 24) = a2;
        v12 = v7 & 1;
        *(v11 + 32) = v7 & 1;
        *(v11 + 40) = v10;
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = a1;
        *(v14 + 24) = a2;
        *(v14 + 32) = v8;
        *(v14 + 40) = 1;
        *(v14 + 48) = v22;
        *(v14 + 56) = v12;
        *(v14 + 64) = v13;
        v15 = v9;
        v16 = v22;

        sub_379490(v8, 1, sub_114FE0, v11, sub_115038, v14);

        return;
      }

      v18 = v23;
      v19 = &v23[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
      v20 = v23[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
      if (v20 != 255)
      {
        v21 = *v19;
        *v19 = 0;
        v19[8] = -1;
        v22 = v22;
        sub_3EB30(v21, v20);
        [v22 setNeedsDisplay];

        v18 = v22;
      }
    }

    else
    {
      v18 = v23;
    }

    v17 = v22;
  }

  else
  {
    v17 = v23;
  }
}

uint64_t sub_112F24(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 1) != 0 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      (*(a5 + 56))(a4, a5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_112FB0(char a1, uint64_t a2, void *a3, uint64_t a4, id a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E71608);
    v11 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v12 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_37B8E0(a3);
      v16 = sub_425E68(v14, v15, aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_ABB520();
      v19 = sub_425E68(v17, v18, aBlock);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_0, oslog, v12, "Error loading %s: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        (*(a9 + 40))(1, a8, a9);
        swift_unknownObjectRelease();
      }

      v23 = [objc_opt_self() sharedApplication];
      v24 = swift_allocObject();
      v24[2] = a8;
      v24[3] = a9;
      v24[4] = a7;
      aBlock[4] = sub_1150AC;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_36;
      v25 = _Block_copy(aBlock);

      [v23 _performBlockAfterCATransactionCommits:v25];
      _Block_release(v25);
    }
  }
}

uint64_t sub_113300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 64))(a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_113380()
{
  if (qword_DE67C0 != -1)
  {
    swift_once();
  }

  v0 = xmmword_E70D50;
  if (!xmmword_E70D50)
  {
    return 0;
  }

  v1 = *(&xmmword_E70D70 + 1);
  v2 = xmmword_E70D70;
  v4 = qword_E70D60;
  v3 = unk_E70D68;
  v5 = *(&xmmword_E70D50 + 1);
  v15 = xmmword_E70D50;
  v16 = qword_E70D60;
  v17 = unk_E70D68;
  v18 = xmmword_E70D70;
  v6 = objc_allocWithZone(MTKView);
  sub_1152CC(v0, v5, v4, v3, v2, v1);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = v1;
  v9 = [v6 init];
  [v9 setDevice:v0];
  [v9 setColorPixelFormat:v2];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  [v9 setPaused:1];
  [v9 setEnableSetNeedsDisplay:1];
  [v9 setPresentsWithTransaction:1];
  v10 = objc_allocWithZone(type metadata accessor for MaterialRenderer());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  v12 = v8;
  v13 = sub_378F04(&v15);
  [v9 setDelegate:v13];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_1135A8(uint64_t a1)
{
  v14 = a1;
  v12 = sub_ABA140();
  v1 = *(v12 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  v11 = OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue;
  v10 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_AB7C30();
  v16 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270, &unk_B0BF10);
  sub_809E0(&qword_DED7A0, &qword_E01270, &unk_B0BF10);
  sub_ABABB0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v4 = sub_ABA180();
  v5 = v13;
  v6 = v14;
  *&v13[v11] = v4;
  *&v5[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView] = v6;
  v7 = v5;
  v8 = type metadata accessor for CollectionViewMaterialRendererVideoCoordinator();
  v15.receiver = v7;
  v15.super_class = v8;
  return objc_msgSendSuper2(&v15, "init");
}

void sub_113844(void *a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor() == 1)
  {
    swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      if (a1)
      {
        v12 = v11;
        v29 = v8;
        v30 = v4;
        v31 = v1;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        v32 = a1;
        v15 = v14(ObjectType, v12);
        if (v15)
        {
          v16 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_AF85F0;
          *(inited + 32) = sub_AB92A0();
          *(inited + 40) = v18;
          *(inited + 72) = &type metadata for UInt32;
          *(inited + 48) = 1111970369;
          *(inited + 80) = sub_AB92A0();
          *(inited + 88) = v19;
          *(inited + 120) = &type metadata for Bool;
          *(inited + 96) = 1;
          v20 = sub_97420(inited);
          v28[1] = v20;
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
          swift_arrayDestroy();
          sub_3E8DA4(v20);
          v21 = objc_allocWithZone(AVPlayerItemVideoOutput);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F8, &unk_AFE920);
          isa = sub_AB8FD0().super.isa;

          v23 = [v21 initWithPixelBufferAttributes:isa];

          [v23 requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
          v28[0] = *&v31[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue];
          [v23 setDelegate:v28[0] queue:?];
          v24 = swift_allocObject();
          *(v24 + 16) = v16;
          *(v24 + 24) = v23;
          aBlock[4] = sub_1152C4;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B5EB4;
          aBlock[3] = &block_descriptor_41;
          v25 = _Block_copy(aBlock);
          v31 = v16;
          v26 = v23;
          sub_AB7C30();
          v33 = _swiftEmptyArrayStorage;
          sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
          sub_809E0(&qword_DF06D0, &unk_DE9C30, &qword_AF8920);
          sub_ABABB0();
          sub_ABA160();

          (*(v30 + 8))(v6, v3);
          (*(v29 + 8))(v10, v7);
          _Block_release(v25);
        }

        else
        {
          v27 = v32;
        }
      }
    }
  }
}

void sub_113D94(void *a1, uint64_t a2)
{
  v3 = [a1 currentItem];
  if (v3)
  {
    v4 = v3;
    [v3 addOutput:a2];
  }
}

void sub_113E0C(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_outputAccessQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_AB7CF0();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v20 = a1;
      v27 = sub_ABA150();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v19;
      aBlock[4] = sub_1151EC;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_35;
      v22 = _Block_copy(aBlock);
      v23 = v20;
      v24 = v2;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_809E0(&qword_DF06D0, &unk_DE9C30, &qword_AF8920);
      sub_ABABB0();
      v25 = v27;
      sub_ABA160();

      (*(v5 + 8))(v7, v4);
      (*(v28 + 8))(v10, v29);
      _Block_release(v22);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_114200(uint64_t a1, void *a2)
{
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = &v28 - v3;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v28 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView);
  v13 = [v12 indexPathsForVisibleItems];
  result = sub_AB9760();
  v15 = result;
  v37 = *(result + 16);
  if (v37)
  {
    v29 = v13;
    v30 = v11;
    v31 = v4;
    v32 = a1;
    v16 = 0;
    v36 = v6 + 16;
    v33 = v5;
    while (v16 < *(v15 + 16))
    {
      (*(v6 + 16))(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v5);
      isa = sub_AB3770().super.isa;
      v18 = [v12 cellForItemAtIndexPath:isa];

      if (v18)
      {
        ObjectType = swift_getObjectType();
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          v21 = (*(v20 + 16))(ObjectType, v20);

          if (v21)
          {
            v22 = [v21 currentItem];

            if (v22)
            {
              v23 = v12;
              v24 = [v22 outputs];
              sub_13C80(0, &unk_DF06E0, AVPlayerItemOutput_ptr);
              v25 = sub_AB9760();

              v35 = &v28;
              v38 = v34;
              __chkstk_darwin();
              *(&v28 - 2) = &v38;
              v26 = sub_1B3BF4(sub_1151F4, (&v28 - 4), v25);

              if (v26)
              {
                v4 = v31;
                v5 = v33;
                (*(v6 + 32))(v31, v8, v33);
                v27 = 0;
                goto LABEL_13;
              }

              v12 = v23;
              v5 = v33;
            }
          }
        }

        else
        {
        }
      }

      ++v16;
      result = (*(v6 + 8))(v8, v5);
      if (v37 == v16)
      {
        v27 = 1;
        v4 = v31;
LABEL_13:
        v13 = v29;
        v11 = v30;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 1;
LABEL_15:
    (*(v6 + 56))(v4, v27, 1, v5);

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_11525C(v4);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_1146C8(v34);
      return (*(v6 + 8))(v11, v5);
    }
  }

  return result;
}

void sub_1146C8(void *a1)
{
  [a1 itemTimeForHostTime:CACurrentMediaTime()];
  if ([a1 hasNewPixelBufferForItemTime:v13])
  {
    v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator_collectionView);
    isa = sub_AB3770().super.isa;
    v5 = [v3 cellForItemAtIndexPath:isa];

    if (v5)
    {
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() sharedApplication];
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = v5;
        v9[4] = v7;
        v13[4] = sub_115110;
        v13[5] = v9;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_1B5EB4;
        v13[3] = &block_descriptor_20;
        v10 = _Block_copy(v13);
        v11 = a1;
        v12 = v5;

        [v8 _performBlockAfterCATransactionCommits:v10];
        _Block_release(v10);

        v5 = v8;
      }
    }
  }
}

double sub_114898(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = (*(*(a3 + 8) + 16))(ObjectType);
  if (v6)
  {
    v8 = v6;
    v9 = swift_allocObject();
    *(v9 + 24) = a3;
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    v11 = a1;

    sub_379490(a1, 0, 0, 0, sub_115194, v10);
  }

  return result;
}

void sub_1149B4(char a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71608);
    swift_errorRetain();
    v9 = a3;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F30();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_37B8E0(a3);
      v15 = sub_425E68(v13, v14, aBlock);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_ABB520();
      v18 = sub_425E68(v16, v17, aBlock);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_0, v10, v11, "Error loading %s: %s", v12, 0x16u);
      swift_arrayDestroy();
    }
  }

  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a5 + 24);
      ObjectType = swift_getObjectType();
      v21 = (*(*(v19 + 8) + 8))(ObjectType);
      swift_unknownObjectRelease();
      if (v21)
      {
        [v21 setNeedsDisplay];
      }
    }

    v22 = [objc_opt_self() sharedApplication];
    aBlock[4] = sub_1151A4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_29_0;
    v23 = _Block_copy(aBlock);

    [v22 _performBlockAfterCATransactionCommits:v23];
    _Block_release(v23);
  }
}

uint64_t sub_114CC4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(*(v2 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    if (v4)
    {
      if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor())
      {
        v5 = 30;
      }

      else
      {
        v5 = 15;
      }

      [v4 setPreferredFramesPerSecond:v5];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a1 + 24);
    v7 = swift_getObjectType();
    v8 = (*(*(v6 + 8) + 8))(v7);
    swift_unknownObjectRelease();
    if (v8)
    {
      [v8 setPaused:0];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a1 + 24);
    v10 = swift_getObjectType();
    v11 = (*(*(v9 + 8) + 8))(v10);
    swift_unknownObjectRelease();
    if (v11)
    {
      [v11 setEnableSetNeedsDisplay:0];
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(a1 + 24);
    v14 = swift_getObjectType();
    (*(*(v13 + 8) + 64))(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_114ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewMaterialRendererVideoCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_114F70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_114FA8()
{

  return swift_deallocObject();
}

uint64_t sub_114FF0()
{

  return swift_deallocObject();
}

uint64_t sub_115074()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1150D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_11511C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_115154()
{

  return swift_deallocObject();
}

uint64_t sub_1151AC()
{

  return swift_deallocObject();
}

uint64_t sub_11525C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1152CC(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = a4;

    return a6;
  }

  return result;
}

uint64_t sub_11533C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1153A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  *v12 = 0;
  *(v12 + 1) = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch];
  *v13 = UIScreen.Dimensions.size.getter;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *&v4[v14] = sub_49F63C(1, 0, 0);
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents];
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v86[2] = xmmword_DF0720;
  v86[3] = *&qword_DF0730;
  v86[4] = xmmword_DF0740;
  v86[0] = xmmword_DF0700;
  v86[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v86);
  sub_2F118(v86, v85);
  v17 = qword_DE6868;

  if (v17 != -1)
  {
    swift_once();
  }

  v85[2] = xmmword_DF0770;
  v85[3] = *&qword_DF0780;
  v85[4] = xmmword_DF0790;
  v85[0] = xmmword_DF0750;
  v85[1] = unk_DF0760;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF7C50;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *v15 = v16;
  *(v15 + 1) = v18;
  *(v15 + 2) = v19;
  v15[24] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton] = 0;
  v20 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  sub_2F118(v85, &v82);

  *&v5[v20] = sub_117AB0();
  v81.receiver = v5;
  v81.super_class = type metadata accessor for SocialPersonVerticalCell(0);
  v21 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  sub_117330(1);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity:0];

  v23 = [v21 layer];
  [v23 setAllowsGroupBlending:0];

  v24 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v24 = 0x4030000000000000;
  type metadata accessor for UIEdgeInsets(0);
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  v25 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v26 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v82 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v83 = v26;
  if (sub_AB38D0())
  {
    v27 = *(v24 + 1);
    *v25 = *v24;
    *(v25 + 1) = v27;
    sub_35D498();
    [v21 setNeedsLayout];
  }

  v28 = vdupq_n_s64(0x4056000000000000uLL);
  *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize] = v28;
  v29 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v30 = *&v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v31 = *(v30 + 80);
  v32 = *(v30 + 88);
  *(v30 + 80) = v28;
  sub_75614(v31, v32);
  v80 = v29;
  v33 = *&v21[v29];
  v34 = (v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v35 = *(v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  *v34 = 0;
  v34[1] = 0;
  v34[2] = 0;
  if (v35)
  {
    v36 = *(v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v36)
    {
      v37 = *(v33 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v38 = sub_307CC(v36, v37);
      v36(v38);
      sub_17654(v36, v37);
    }
  }

  v39 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v43 = v39[3];
  v44 = v39[4];
  v45 = v39[5];
  v78 = v45;
  v79 = v44;
  v46 = &v21[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v76 = *(v46 + 1);
  v77 = *v46;
  v74 = *(v46 + 3);
  v75 = *(v46 + 2);
  *v46 = v40;
  *(v46 + 1) = v41;
  *(v46 + 2) = v42;
  *(v46 + 3) = v43;
  *(v46 + 4) = v44;
  *(v46 + 5) = v45;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  sub_2F1C8(v77, v76, v75, v74);
  v55 = *&v21[v80];
  v56 = *(v55 + 168);
  v82 = *(v55 + 152);
  v83 = v56;
  v84 = *(v55 + 184);
  *(v55 + 152) = v40;
  *(v55 + 160) = v41;
  *(v55 + 168) = v42;
  *(v55 + 176) = v43;
  *(v55 + 184) = v79;
  *(v55 + 192) = v78;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  sub_75948(&v82);
  sub_B2A40(&v82);

  v65 = objc_opt_self();

  sub_75F8C([v65 tertiarySystemBackgroundColor]);

  v66 = sub_117564();
  [v21 addSubview:v66];

  [v21 sendSubviewToBack:*&v21[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView]];
  sub_117824();
  v68 = v67;
  [v21 addSubview:v67];

  v69 = *&v21[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v71 = *(v69 + 72);
  v72 = *(v69 + 80);
  *(v69 + 72) = sub_118BE0;
  *(v69 + 80) = v70;

  sub_17654(v71, v72);

  return v21;
}

void sub_115AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong _isInAWindow])
    {
      [v3 setNeedsLayout];
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      aBlock[4] = sub_B2B20;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_37;
      v6 = _Block_copy(aBlock);
      v7 = v3;

      [v4 animateWithDuration:2 delay:v6 options:0 animations:0.2 completion:0.0];

      _Block_release(v6);
    }

    else
    {
    }
  }
}

double sub_115C6C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
    swift_beginAccess();
    v11 = *&v2[v10];
    swift_beginAccess();
    v11[7] = v9;

    sub_2EB704();

    [v2 setNeedsLayout];
  }

  return result;
}

double sub_115DA8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }

  return result;
}

double sub_115EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText + 8];
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = v6 == a1 && v7 == a2;
      if (v8 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v9 = sub_117274();
  if (*(v5 + 1))
  {
    v10 = *v5;
    v11 = *(v5 + 1);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v13 = *&v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v14 = *&v9[OBJC_IVAR____TtC16MusicApplication12SocialButton_title + 8];
  *v12 = v10;
  v12[1] = v11;

  sub_4EC5B8(v13, v14);

  [v3 setNeedsLayout];
LABEL_14:

  return result;
}

id sub_115FF0(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle] = result & 1;
  if (v2 != (result & 1))
  {
    sub_117330(0);

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_11604C(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] = result & 1;
  if (v2 != (result & 1))
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_11607C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle];
  v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle] = a1 & 1;
  if (v5 != (a1 & 1))
  {
    if (a1)
    {
      sub_ABA670();
      v6 = sub_ABA680();
      (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
      v7 = &selRef_systemGray3Color;
    }

    else
    {
      v8 = sub_ABA680();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v7 = &selRef_clearColor;
    }

    VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v4);
    v9 = [objc_opt_self() *v7];
    sub_74DD4(v9);
    [v1 setNeedsLayout];
  }
}

double sub_1161FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

void sub_116218(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog];
  *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog] = a1;
  if (a1)
  {
    v4 = v1;
    if (v3)
    {
      v9 = v3;
      sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
      v5 = a1;
      v6 = v9;
      v7 = sub_ABA790();

      if (v7)
      {

        v3 = v5;
        goto LABEL_7;
      }
    }

    else
    {
      v8 = a1;
      v6 = 0;
    }

    v10 = a1;
    sub_361EF0(a1, 0x4034000000000000, 0x4034000000000000, 0);

    [v4 setNeedsLayout];
    v3 = v10;
  }

LABEL_7:
}

double sub_116334()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  swift_retain_n();
  v12 = v8;
  sub_2E6210(v11);

  return result;
}

double sub_116460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_116334();

  return result;
}

uint64_t (*sub_11654C(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_1165C0;
}

void sub_1165C0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_116334();
  }

  free(v3);
}

void sub_11661C()
{
  v1 = v0;
  v70.receiver = v0;
  v70.super_class = type metadata accessor for SocialPersonVerticalCell(0);
  objc_msgSendSuper2(&v70, "layoutSubviews");
  v2 = [v0 contentView];
  v3 = &selRef__authenticateReturningError_;
  [v2 bounds];
  v5 = v4;
  v67 = v4;
  v68 = v6;
  v69 = v7;
  v66 = v8;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  v10 = UIEdgeInsetsInsetRect_2(v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v18 = *(v17 + 80);
  v19 = *(v17 + 88);
  *(v17 + 80) = vdupq_n_s64(0x4056000000000000uLL);
  sub_75614(v18, v19);
  sub_76368(0, 0, 1);
  v21 = v20;
  v71.origin.x = v10;
  v71.origin.y = v12;
  v71.size.width = v14;
  v71.size.height = v16;
  CGRectGetMinY(v71);
  v65 = v21;
  sub_ABA470();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_ABA490();
  if (sub_76B28(v30, v31, v32, v33))
  {
    v72.origin.x = v23;
    v72.origin.y = v25;
    v72.size.width = v27;
    v72.size.height = v29;
    MaxY = CGRectGetMaxY(v72);
    v73.origin.x = v10;
    v73.origin.y = v12;
    v73.size.width = v14;
    v73.size.height = v16;
    v16 = v16 - (MaxY - CGRectGetMinY(v73) + 0.0);
  }

  v35 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView] sizeThatFits:{v14, v16, v65}];
  v36 = *&v1[v35];
  sub_ABA490();
  v37 = &selRef__authenticateReturningError_;
  [v36 setFrame:?];

  v38 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView];
  v40 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v41 = *&v39[v40];
  if (*(v41 + 16))
  {
    v42 = v39;

    v43 = sub_2EBF88(0x742D676E697A6973, 0xEB00000000747865);
    if (v44)
    {
      v45 = *(*(v41 + 56) + 8 * v43);

      v47 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title];
      v46 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title + 8];
      swift_beginAccess();
      *(v45 + 112) = v47;
      *(v45 + 120) = v46;
      v3 = &selRef__authenticateReturningError_;

      sub_2EB704();
      v37 = &selRef__authenticateReturningError_;
    }

    else
    {
    }
  }

  [*&v1[v38] sizeThatFits:{v14, v16}];
  v48 = *&v1[v38];
  sub_ABA490();
  [v48 v37[262]];

  sub_117330(0);
  [*&v1[v35] frame];
  CGRectGetHeight(v74);
  [*&v1[v35] frame];
  v49 = v16 - CGRectGetHeight(v75);
  if (v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle] == 1)
  {
    v50 = sub_117274();
    [v50 removeFromSuperview];

    v51 = *(*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController] + 160);
    if (([v51 isDescendantOfView:v2] & 1) == 0)
    {
      [v2 addSubview:v51];
    }

    [v51 sizeThatFits:{v14, v49}];
    v53 = v52;
    v76.origin.x = v67;
    v76.origin.y = v69;
    v76.size.width = v68;
    v76.size.height = v66;
    CGRectGetMaxY(v76);
    sub_ABA470();
    sub_ABA490();
    [v51 v37[262]];
  }

  else
  {
    if (!*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText + 8])
    {
      goto LABEL_16;
    }

    v54 = *(*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController] + 160);
    [v54 removeFromSuperview];
    v55 = sub_117274();
    v56 = [v55 isDescendantOfView:v2];

    if ((v56 & 1) == 0)
    {
      [v2 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button]];
    }

    v57 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button;
    v58 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button];
    [v58 sizeThatFits:{v14, v49}];
    v60 = v59;
    v77.origin.x = v67;
    v77.origin.y = v69;
    v77.size.width = v68;
    v77.size.height = v66;
    CGRectGetMaxY(v77);
    sub_ABA470();

    v51 = *&v1[v57];
    sub_ABA490();
    v37 = &selRef__authenticateReturningError_;
    [v51 setFrame:v60];
  }

LABEL_16:
  sub_117824();
  v62 = v61;
  [v61 sizeThatFits:{v14, v49}];

  v63 = *&v1[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton];
  sub_ABA490();
  [v63 v37[262]];

  v64 = sub_117564();
  [v1 v3[56]];
  [v64 v37[262]];
}

id sub_116E7C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SocialPersonVerticalCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_116F4C(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for SocialPersonVerticalCell(0);
  v25.receiver = v9;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, *a1);
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
  type metadata accessor for CGRect(0);
  [v9 *a1];
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  if (sub_AB38D0())
  {
    sub_117330(0);
    v19 = sub_117564();
    [v9 *a1];
    [v19 *a2];
  }
}

id sub_117074(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SocialPersonVerticalCell(0);
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_AB92A0();
    v8 = v7;
    if (v6 == sub_AB92A0() && v8 == v9)
    {

      goto LABEL_11;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  sub_117330(0);
LABEL_11:
  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (!a1)
  {
    return [v1 setNeedsLayout];
  }

  result = [a1 horizontalSizeClass];
  if (v13 != result)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

_BYTE *sub_117274()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button);
  }

  else
  {
    type metadata accessor for SocialButton();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize];
    v4[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize] = 1;
    if ((v5 & 1) == 0)
    {
      sub_4ED6EC();
    }

    [v4 setEnabled:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_117330(char a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle) != 1)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

LABEL_9:
    v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
    v18 = v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
    swift_beginAccess();
    v19 = *(v18 + 16);
    v20 = v17;

    TextStackView.removeAll()();
    if (v19 >> 62)
    {
      v22 = sub_ABB060();
      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v22)
      {
LABEL_11:
        if (v22 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v22; ++i)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = sub_36003C(i, v19, v21);
          }

          else
          {
            v24 = *(v19 + 8 * i + 32);
          }

          TextStackView.add(_:)(v24);
        }
      }
    }

    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v4 traitCollection];
  [v9 displayScale];
  v11 = v10;

  if (v8 <= 5.99231045e307)
  {
    v12 = v8;
  }

  else
  {
    v12 = 5.99231045e307;
  }

  sub_2E94A4(v25, 0.0, 0.0, v6, v12, v11);
  sub_3F250(v25);

  v13 = v25[7];
  v14 = v2 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = v13 > 1;
  swift_beginAccess();
  *(v14 + 24) = v16;
  sub_117C28(v15);
  swift_endAccess();
  if (a1 & 1) != 0 || ((v16 ^ v15))
  {
    goto LABEL_9;
  }
}

id sub_117564()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView);
  }

  else
  {
    v4 = sub_1175C4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1175C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setUserInteractionEnabled:0];
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  UIView.shadow.getter(&v10);
  sub_7FCD4(&v10);
  v28 = v4;
  v29 = v11;
  v30 = v12;
  UIView.shadow.setter(&v28);
  UIView.shadow.getter(&v13);
  v25[0] = v13;
  v25[1] = 0x3FC999999999999ALL;
  v26 = v14;
  v27 = v15;
  UIView.shadow.setter(v25);
  UIView.shadow.getter(v16);
  v23[0] = v16[0];
  v23[1] = v16[1];
  v23[2] = 0x4010000000000000;
  v24 = v17;
  UIView.shadow.setter(v23);
  UIView.shadow.getter(&v18);
  v20 = v18;
  v21 = v19;
  v22 = xmmword_AFE930;
  UIView.shadow.setter(&v20);
  UIView.shadowPathIsBounds.setter(1);
  v5 = [v3 tertiarySystemBackgroundColor];
  [v2 setBackgroundColor:v5];

  v6 = UIView.Corner.medium.unsafeMutableAddressor();
  v7 = sub_ABA680();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  (*(v8 + 56))(v1, 0, 1, v7);
  sub_ABA6A0();
  return v2;
}

void sub_117824()
{
  v1 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 buttonWithType:1];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemGrayColor];
  [v6 setTintColor:v7];

  [v3 easyTouchDefaultHitRectInsets];
  [v6 setHitRectInsets:?];
  v8 = objc_opt_self();
  v9 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v10 = [v8 imageNamed:v9 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v10)
  {
    [v6 setImage:v10 forState:0];

    v11 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v12 = sub_13C80(0, &qword_E0BC00, MPButton_ptr);
    v13 = v0;
    ControlEventHandling<>.on(_:handler:)(64, sub_118644, v11, v12);

    v14 = *(v0 + v1);
    *(v13 + v1) = v6;
    v6;

    v2 = 0;
LABEL_6:
    v15 = v2;
    return;
  }

  __break(1u);
}

double sub_117A48(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch];

  v3();

  return result;
}

id sub_117AB0()
{
  type metadata accessor for TextStackView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setUserInteractionEnabled:0];
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_DF0720;
  v12[3] = *&qword_DF0730;
  v12[4] = xmmword_DF0740;
  v12[0] = xmmword_DF0700;
  v12[1] = *algn_DF0710;
  v4 = xmmword_DF0700;
  v5 = *algn_DF0710;
  v6 = xmmword_DF0720;
  v7 = qword_DF0730;
  v3 = xmmword_DF0740;
  v8[0] = xmmword_DF0700;
  v8[1] = *algn_DF0710;
  v8[2] = xmmword_DF0720;
  v9 = qword_DF0730;
  v10 = 2;
  v11 = xmmword_DF0740;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v1 = TextStackView.Component.init(identifier:labelProperties:)(0x742D676E697A6973, 0xEB00000000747865, v8);
  sub_2F118(v12, v13);
  sub_2F118(v8, v13);
  TextStackView.add(_:)(v1);
  v13[0] = v4;
  v13[1] = v5;
  v13[2] = v6;
  v14 = v7;
  v15 = 2;
  v16 = v3;
  sub_2F174(v13);

  return v0;
}

uint64_t sub_117C28(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2 != (result & 1))
  {
    if (qword_DE6860 != -1)
    {
      swift_once();
    }

    v47[2] = xmmword_DF0720;
    v47[3] = *&qword_DF0730;
    v47[4] = xmmword_DF0740;
    v47[0] = xmmword_DF0700;
    v47[1] = *algn_DF0710;
    v43 = xmmword_DF0700;
    v44 = *algn_DF0710;
    v45 = xmmword_DF0720;
    v46 = qword_DF0730;
    v42 = xmmword_DF0740;
    sub_2F118(v47, v48);
    if (qword_DE6868 != -1)
    {
      swift_once();
    }

    v48[2] = xmmword_DF0770;
    v48[3] = *&qword_DF0780;
    v48[4] = xmmword_DF0790;
    v48[0] = xmmword_DF0750;
    v48[1] = unk_DF0760;
    v38 = xmmword_DF0750;
    v39 = unk_DF0760;
    v40 = xmmword_DF0770;
    v41 = qword_DF0780;
    v37 = xmmword_DF0790;
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = *v1;
    v17 = v43;
    v18 = v44;
    v19 = v45;
    *&v20 = v46;
    *(&v20 + 1) = v3;
    v21 = v42;
    swift_beginAccess();
    v7 = v5[3];
    v6 = v5[4];
    v8 = v5[6];
    v22[3] = v5[5];
    v22[4] = v8;
    v22[1] = v7;
    v22[2] = v6;
    v22[0] = v5[2];
    v9 = v42;
    v5[5] = v20;
    v5[6] = v9;
    v10 = v18;
    v5[2] = v17;
    v5[3] = v10;
    v5[4] = v19;
    sub_2F118(v48, v33);
    sub_2F118(&v17, v33);
    sub_2F174(v22);
    sub_2EB2A8();
    v11 = *(v1 + 8);
    v23 = v38;
    v24 = v39;
    v25 = v40;
    *&v26 = v41;
    *(&v26 + 1) = v4;
    v27 = v37;
    swift_beginAccess();
    v13 = v11[3];
    v12 = v11[4];
    v14 = v11[6];
    v28[3] = v11[5];
    v28[4] = v14;
    v28[1] = v13;
    v28[2] = v12;
    v28[0] = v11[2];
    v15 = v27;
    v11[5] = v26;
    v11[6] = v15;
    v16 = v24;
    v11[2] = v23;
    v11[3] = v16;
    v11[4] = v25;
    sub_2F118(&v23, v33);
    sub_2F174(v28);
    sub_2EB2A8();
    v29[0] = v38;
    v29[1] = v39;
    v29[2] = v40;
    v30 = v41;
    v31 = v4;
    v32 = v37;
    sub_2F174(v29);
    v33[0] = v43;
    v33[1] = v44;
    v33[2] = v45;
    v34 = v46;
    v35 = v3;
    v36 = v42;
    return sub_2F174(v33);
  }

  return result;
}

double sub_117EB4()
{
  sub_117EF8(&v1);
  xmmword_DF0720 = v3;
  *&qword_DF0730 = v4;
  xmmword_DF0740 = v5;
  result = *&v2;
  xmmword_DF0700 = v1;
  *algn_DF0710 = v2;
  return result;
}

double sub_117EF8@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C30;
  return result;
}

double sub_117FDC()
{
  sub_118020(&v1);
  xmmword_DF0770 = v3;
  *&qword_DF0780 = v4;
  xmmword_DF0790 = v5;
  result = *&v2;
  xmmword_DF0750 = v1;
  unk_DF0760 = v2;
  return result;
}

double sub_118020@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 16.0;
  *(a1 + 64) = xmmword_AFE940;
  return result;
}

void sub_118174()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView);
}

id sub_11827C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialPersonVerticalCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SocialPersonVerticalCell(uint64_t a1)
{
  result = qword_DF07F0;
  if (!qword_DF07F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1184F8()
{
  result = qword_DF0800;
  if (!qword_DF0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0800);
  }

  return result;
}

unint64_t sub_118550()
{
  result = qword_DF0808;
  if (!qword_DF0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0808);
  }

  return result;
}

unint64_t sub_1185A8()
{
  result = qword_DF0810;
  if (!qword_DF0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0810);
  }

  return result;
}

uint64_t sub_11860C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

double sub_11866C(void *a1, double a2)
{
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_DF0720;
  v14[3] = *&qword_DF0730;
  v14[4] = xmmword_DF0740;
  v14[0] = xmmword_DF0700;
  v14[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v14);
  sub_2F118(v14, v13);
  v5 = qword_DE6868;

  if (v5 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_DF0770;
  v13[3] = *&qword_DF0780;
  v13[4] = xmmword_DF0790;
  v13[0] = xmmword_DF0750;
  v13[1] = unk_DF0760;
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_2F118(v13, &v12);

  v8 = sub_2F48A4(inited, a1, 0, 0);
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  [*(sub_49F63C(1 0];
  v10 = v9;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8 + 88.0 + v10 + 16.0 + 16.0;
}

void sub_1188DC()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonText);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_buttonStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_artworkStyle) = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_onCloseButtonTouch);
  *v5 = UIScreen.Dimensions.size.getter;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_networkArtworkCatalog) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v0 + v6) = sub_49F63C(1, 0, 0);
  v7 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_textComponents;
  if (qword_DE6860 != -1)
  {
    swift_once();
  }

  v16[2] = xmmword_DF0720;
  v16[3] = *&qword_DF0730;
  v16[4] = xmmword_DF0740;
  v16[0] = xmmword_DF0700;
  v16[1] = *algn_DF0710;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v16);
  sub_2F118(v16, v15);
  v9 = qword_DE6868;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = v1 + v7;
  v15[2] = xmmword_DF0770;
  v15[3] = *&qword_DF0780;
  v15[4] = xmmword_DF0790;
  v15[0] = xmmword_DF0750;
  v15[1] = unk_DF0760;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  *v10 = v8;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  *(v10 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___button) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___platterView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell____lazy_storage___closeButton) = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_measurementStackView;
  sub_2F118(v15, v14);

  *(v1 + v13) = sub_117AB0();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_118BA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_118BE8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_118C4C()
{
  result = qword_DF0818;
  if (!qword_DF0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF0818);
  }

  return result;
}

void sub_118CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties) == 2)
  {
    v86 = a1;
    v87 = a2;
    v83 = OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties);
    v8 = [v7 properties];
    v9 = sub_AB9B40();

    v10 = sub_AB92A0();
    v12 = sub_4DFDA8(v10, v11, v9);
    v14 = v13;
    v16 = v15;

    v85 = v16;
    sub_F01A0(v12, v14, v16);
    v17 = sub_AB92A0();
    v19 = sub_4DFDA8(v17, v18, v9);
    v21 = v20;
    v23 = v22;

    v84 = v23;
    sub_F01A0(v19, v21, v23);
    v24 = sub_AB92A0();
    v26 = sub_4DFDA8(v24, v25, v9);
    v28 = v27;
    v30 = v29;

    v82 = v30;
    sub_F01A0(v26, v28, v30);
    v31 = sub_AB92A0();
    v33 = sub_4DFDA8(v31, v32, v9);
    v35 = v34;
    v37 = v36;

    v81 = v37;
    sub_F01A0(v33, v35, v37);
    v38 = sub_AB92A0();
    v40 = sub_4DFDA8(v38, v39, v9);
    v42 = v41;
    v44 = v43;

    sub_F01A0(v40, v42, v44);
    v45 = sub_AB92A0();
    v47 = sub_4DFDA8(v45, v46, v9);
    v49 = v48;
    v51 = v50;

    sub_F01A0(v47, v49, v51);
    v52 = sub_AB92A0();
    v54 = sub_4DFDA8(v52, v53, v9);
    v56 = v55;
    v58 = v57;

    sub_F01A0(v54, v56, v58);
    v59 = sub_AB92A0();
    v61 = sub_4DFDA8(v59, v60, v9);
    v63 = v62;
    v65 = v64;

    v80 = v65 != -1;
    sub_F01A0(v61, v63, v65);
    v66 = *(v3 + v83);
    v67 = [v66 relationships];
    sub_119B5C();
    v68 = sub_AB8FF0();

    v69 = sub_AB92A0();
    if (*(v68 + 16))
    {
      sub_2EBF88(v69, v70);
      v72 = v71;

      v73 = v72 & 1;
    }

    else
    {

      v73 = 0;
    }

    *v6 = ((~v85 != 0) << 8) | ((~v84 != 0) << 16) | ((~v82 != 0) << 24) | ((~v81 != 0) << 32) | ((~v44 != 0) << 40) | ((~v51 != 0) << 48) | ((v58 != -1) << 56) | v73;
    *(v6 + 8) = v80;

    v5 = v86;
    v4 = v87;
  }

  v89 = 1;
  v74 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v79[2] = v3;
  v79[3] = v5;
  v79[4] = v4;
  v79[5] = &v89;
  v75 = objc_allocWithZone(MusicModelLiveRadioCaseItem);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_119BA8;
  *(v76 + 24) = v79;
  aBlock[4] = sub_57B84;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_38;
  v77 = _Block_copy(aBlock);

  v78 = [v75 initWithIdentifiers:v74 block:v77];
  _Block_release(v77);

  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v78 personalizationStyle:v89];
  }
}

void sub_119238(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = (a2 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties);
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *v10;
  if (*v10 == 2)
  {
    goto LABEL_51;
  }

  if ((v17 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v18 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerTitleText;
  swift_beginAccess();
  if (!*(v18 + 1))
  {
    v19 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_supertitleText;
    swift_beginAccess();
    if (!*(v19 + 1))
    {
      v20 = 0;
      goto LABEL_11;
    }
  }

  v20 = sub_AB9260();

LABEL_11:
  [v12 setHeaderTitleText:v20];

  v17 = *v10;
LABEL_12:
  if (v17 == 2)
  {
LABEL_52:
    __break(1u);
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
LABEL_58:
    __break(1u);
    return;
  }

  if ((v17 & 0x10000) != 0)
  {
    v21 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerSubtitleText;
    swift_beginAccess();
    if (*(v21 + 1))
    {

      v22 = sub_AB9260();
    }

    else
    {
      v22 = 0;
    }

    [v12 setHeaderSubtitleText:v22];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_53;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v23 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_accessoryButtonTitleText;
    swift_beginAccess();
    if (*(v23 + 1))
    {

      v24 = sub_AB9260();
    }

    else
    {
      v24 = 0;
    }

    [v12 setAccessoryButtonTitleText:v24];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_54;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v25 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headlineText;
    swift_beginAccess();
    if (*(v25 + 1))
    {

      v26 = sub_AB9260();
    }

    else
    {
      v26 = 0;
    }

    [v12 setHeadlineText:v26];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_55;
  }

  if ((v17 & 0x10000000000) != 0)
  {
    v27 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_titleText;
    swift_beginAccess();
    if (*(v27 + 1))
    {

      v28 = sub_AB9260();
    }

    else
    {
      v28 = 0;
    }

    [v12 setTitleText:v28];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_56;
  }

  if ((v17 & 0x1000000000000) != 0)
  {
    v29 = a3 + OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_subtitleText;
    swift_beginAccess();
    if (*(v29 + 1))
    {

      v30 = sub_AB9260();
    }

    else
    {
      v30 = 0;
    }

    [v12 setSubtitleText:v30];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_57;
  }

  if ((v17 & 0x100000000000000) != 0)
  {
    v31 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v32 = *(a3 + v31);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v45 = sub_119C50;
    v46 = v33;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_119878;
    v44 = &block_descriptor_26_0;
    v34 = _Block_copy(&aBlock);
    v35 = v32;

    [v12 setBackgroundArtworkCatalogBlock:v34];
    _Block_release(v34);

    LOBYTE(v17) = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_58;
  }

  if (v10[1])
  {
    v36 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    swift_beginAccess();
    v37 = *(a3 + v36);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v45 = sub_119C14;
    v46 = v38;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_119878;
    v44 = &block_descriptor_20_0;
    v39 = _Block_copy(&aBlock);
    v40 = v37;

    [v12 setVideoBackgroundArtworkCatalogBlock:v39];
    _Block_release(v39);
  }
}

id sub_119878(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_119910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelLiveRadioCaseItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1199C4(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_initializedProperties];
  *v3 = 2;
  v3[8] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication31JSModelLiveRadioCaseItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelLiveRadioCaseItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_119B5C()
{
  result = qword_DEA550;
  if (!qword_DEA550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEA550);
  }

  return result;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_119BDC()
{

  return swift_deallocObject();
}

id sub_119C14()
{
  if (*(v0 + 16))
  {
    return JSVideoArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);
  }

  else
  {
    return 0;
  }
}

id sub_119C50()
{
  if (*(v0 + 16))
  {
    return JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);
  }

  else
  {
    return 0;
  }
}

char *sub_119CA0(double a1, double a2, double a3, double a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextField] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextField] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel] = 0;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for UserDetailsEditCell();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  v11 = [objc_opt_self() whiteColor];
  [v10 setBackgroundColor:v11];

  v12 = sub_11B7F4();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v13 = sub_AB9260();

  [v12 setText:v13];

  v14 = sub_11B814();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v15 = sub_AB9260();

  [v14 setText:v15];

  [v9 addSubview:*&v9[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel]];
  [v9 addSubview:*&v9[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel]];
  v16 = sub_11B408();
  [v9 addSubview:v16];

  v17 = sub_11B584();
  [v9 addSubview:v17];

  v18 = sub_11B428();
  [v9 addSubview:v18];

  v19 = sub_11B644();
  [v9 addSubview:v19];

  v20 = objc_allocWithZone(NSRegularExpression);
  v21 = sub_3ED260(0x307A2D615A2D415BLL, 0xED00002B5D5F392DLL, 0);
  v22 = *&v9[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule];
  *&v9[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule] = v21;

  v23 = sub_11B428();
  v24 = [v23 text];
  if (v24)
  {
    v25 = v24;
    v26 = sub_AB92A0();
    v28 = v27;
  }

  else
  {

    v26 = 0;
    v28 = 0xE000000000000000;
  }

  sub_11B9B4(v26, v28);

  return v9;
}

id sub_11A1E8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v6 = [v5 text];
  if (v6)
  {
    v7 = v6;
    sub_AB92A0();
  }

  else
  {
  }

  v8 = sub_AB9260();

  return v8;
}

void sub_11A460(uint64_t a1)
{
  v72.receiver = v1;
  v72.super_class = type metadata accessor for UserDetailsEditCell();
  objc_msgSendSuper2(&v72, "layoutSubviews");
  v2 = [v1 traitCollection];
  [v2 displayScale];
  v68 = v3;
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  [v1 bounds];
  v71 = v8;
  v69 = v9;
  v12 = UIEdgeInsetsInsetRect(v9, v10, v8, v11, v5, v7);
  v14 = v13;
  v70 = v13;
  v16 = v15;
  v18 = v17;
  v66 = v17;
  v19 = sub_11B7F4();
  [v19 frame];
  v65 = v20;
  v22 = v21;
  v24 = v23;

  v73.origin.x = v12;
  v73.origin.y = v14;
  v73.size.width = v16;
  v73.size.height = v18;
  MinX = CGRectGetMinX(v73);
  v26 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel;
  [*&v1[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel] sizeThatFits:{v22, v24}];
  v28 = v27;
  v30 = v29;
  v31 = *&v1[v26];
  v60 = v28;
  sub_ABA490();
  [v31 setFrame:?];

  v74.origin.x = MinX;
  v74.origin.y = v65;
  v74.size.width = v28;
  v74.size.height = v30;
  rect = v30;
  MaxX = CGRectGetMaxX(v74);
  v75.origin.x = MinX;
  v75.origin.y = v65;
  v75.size.width = v28;
  v75.size.height = v30;
  v32 = v16 - CGRectGetMaxX(v75);
  v33 = sub_11B814();
  [v33 frame];
  v59 = v34;
  v36 = v35;
  v38 = v37;

  v39 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel;
  [*&v1[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel] sizeThatFits:{v36, v38}];
  v57 = v41;
  v58 = v40;
  v42 = *&v1[v39];
  sub_ABA490();
  [v42 setFrame:?];

  v43 = *&qword_DF0868;
  v64 = *&qword_DF0868;
  v76.origin.x = MaxX;
  v76.origin.y = v70;
  v76.size.width = v32;
  *&v76.size.height = qword_DF0868;
  MaxY = CGRectGetMaxY(v76);
  v77.origin.x = MaxX;
  v77.origin.y = v70;
  v77.size.width = v32;
  v77.size.height = v43;
  v78.size.height = v66 - CGRectGetHeight(v77);
  v78.origin.x = MaxX;
  v78.origin.y = MaxY;
  v78.size.width = v32;
  MinY = CGRectGetMinY(v78);
  v46 = sub_11B584();
  sub_ABA490();
  [v46 setFrame:?];

  v79.origin.x = v69;
  v79.origin.y = MinY;
  v79.size.width = v71;
  v79.size.height = 1.0 / v68;
  v47 = CGRectGetMaxY(v79);
  v80.origin.x = v69;
  v80.origin.y = MinY;
  v80.size.width = v71;
  v80.size.height = 1.0 / v68;
  CGRectGetHeight(v80);
  v48 = *&qword_DF0868;
  v61 = *&qword_DF0868;
  v49 = sub_11B644();
  [v49 sizeThatFits:{v32, v48}];
  v51 = v50;
  v67 = v50;

  v81.origin.x = MaxX;
  v81.origin.y = v47;
  v81.size.width = v51;
  v81.size.height = v48;
  CGRectGetMaxX(v81);
  v82.origin.x = MaxX;
  v82.origin.y = v47;
  v82.size.width = v51;
  v82.size.height = v48;
  CGRectGetWidth(v82);
  v52 = *&v1[v26];
  sub_ABA470();
  [v52 setFrame:*&rect];

  v53 = *&v1[v39];
  sub_ABA470();
  [v53 setFrame:*&v57];

  v83.origin.x = MinX;
  v83.origin.y = v65;
  v83.size.width = v60;
  v83.size.height = rect;
  CGRectGetMaxX(v83);
  v84.origin.x = MinX;
  v84.origin.y = v59;
  v84.size.width = v58;
  v84.size.height = v57;
  CGRectGetMaxX(v84);
  v85.origin.x = MaxX;
  v85.origin.y = v70;
  v85.size.width = v32;
  v85.size.height = v64;
  CGRectGetMinX(v85);
  v86.origin.x = MaxX;
  v86.origin.y = v47;
  v86.size.width = v67;
  v86.size.height = v61;
  CGRectGetMinX(v86);
  v54 = sub_11B408();
  sub_ABA490();
  [v54 setFrame:?];

  v55 = sub_11B428();
  sub_ABA490();
  [v55 setFrame:?];

  v56 = *&v1[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  sub_ABA490();
  [v56 setFrame:?];
}

id sub_11AACC()
{
  result = [objc_allocWithZone(UITextField) init];
  qword_DF0860 = result;
  return result;
}

void sub_11AB00(uint64_t a1)
{
  v29.receiver = v1;
  v29.super_class = type metadata accessor for UserDetailsEditCell();
  objc_msgSendSuper2(&v29, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_ABA310();
  v6 = sub_ABA330();

  if ((v6 & 1) == 0)
  {
    v19 = sub_11B408();
    if (qword_DE6870 != -1)
    {
      swift_once();
    }

    v20 = qword_DF0860;
    v21 = [qword_DF0860 font];
    [v19 setFont:v21];

    v22 = sub_11B428();
    v23 = [v20 font];
    [v22 setFont:v23];

    v18 = sub_11B644();
    if (qword_DE6880 != -1)
    {
      swift_once();
    }

    v16 = [qword_DF0878 font];
    [v18 setFont:v16];
    goto LABEL_15;
  }

  if (qword_DE6870 != -1)
  {
    swift_once();
  }

  v7 = [qword_DF0860 font];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() defaultMetrics];
    v10 = [v9 scaledFontForFont:v8];

    v11 = sub_11B408();
    v12 = v10;
    [v11 setFont:v12];

    v13 = sub_11B428();
    [v13 setFont:v12];
  }

  if (qword_DE6880 != -1)
  {
    swift_once();
  }

  v14 = [qword_DF0878 font];
  if (v14)
  {
    v15 = v14;
    v16 = sub_11B644();
    v17 = [objc_opt_self() defaultMetrics];
    v18 = [v17 scaledFontForFont:v15];

    [v16 setFont:v18];
LABEL_15:
  }

  v24 = [objc_opt_self() defaultMetrics];
  v25 = [v1 traitCollection];
  v26 = sub_ABA310();
  sub_AB9EF0();
  v28 = v27;

  qword_DF0868 = v28;
}

uint64_t sub_11AF74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v12 = [a1 text];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_AB92A0();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
LABEL_8:
    if (a4 == 32 && a5 == 0xE100000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      return 0;
    }

    v18 = 1;
  }

  v20 = [a1 text];
  if (v20)
  {
    v21 = v20;
    v22 = sub_AB9260();
    v23 = [v21 stringByReplacingCharactersInRange:a2 withString:{a3, v22}];

    a4 = sub_AB92A0();
    a5 = v24;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v25 = sub_AB9420();

  if (v25)
  {
    sub_8A924();
    v26 = sub_11B428();
    v27 = sub_ABA790();

    if (v27)
    {
      if (sub_AB9420() >= 33)
      {
LABEL_26:

        return 0;
      }

      v28 = *(v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule);
      if (v28)
      {
        v29 = v28;
        v30 = sub_AB9420();
        v31 = sub_AB9260();
        v32 = [v29 rangeOfFirstMatchInString:v31 options:0 range:{0, v30}];
        v34 = v33;

        if (v32)
        {

          goto LABEL_26;
        }

        if (v30 != v34)
        {
          goto LABEL_26;
        }
      }
    }

    if (v18)
    {
      sub_11B9B4(a4, a5);

      v38 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 8);
        ObjectType = swift_getObjectType();
        (*(v39 + 8))(v6, 0, ObjectType, v39);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v41 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 8);
      v43 = swift_getObjectType();
      (*(v42 + 16))(v6, v43, v42);
      goto LABEL_30;
    }
  }

  else
  {

    v35 = v6 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v35 + 8);
      v37 = swift_getObjectType();
      (*(v36 + 8))(v6, 1, v37, v36);
LABEL_30:
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

id sub_11B394()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_DF0870 = result;
  return result;
}

id sub_11B3D4()
{
  result = [objc_allocWithZone(UILabel) init];
  qword_DF0878 = result;
  return result;
}

id sub_11B448()
{
  v1 = [objc_allocWithZone(UITextField) init];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_ABA310();
  v5 = sub_ABA330();

  if (v5)
  {
    v6 = [v1 font];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() defaultMetrics];
      v9 = [v8 scaledFontForFont:v7];

      [v1 setFont:v9];
    }
  }

  [v1 setDelegate:v0];
  return v1;
}

id sub_11B584()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_11B644()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel];
  }

  else
  {
    v4 = sub_11B6A8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_11B6A8(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = sub_AB9260();
  [v2 setText:v3];

  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_ABA310();
  v7 = sub_ABA330();

  if (v7)
  {
    v8 = [v2 font];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() defaultMetrics];
      v11 = [v10 scaledFontForFont:v9];

      [v2 setFont:v11];
    }
  }

  return v2;
}

id sub_11B834(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_11B894()
{
  v1 = [objc_allocWithZone(UILabel) init];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_ABA310();
  v5 = sub_ABA330();

  if (v5)
  {
    v6 = [v1 font];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() defaultMetrics];
      v9 = [v8 scaledFontForFont:v7];

      [v1 setFont:v9];
    }
  }

  return v1;
}

void sub_11B9B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_11B644();
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [objc_opt_self() labelColor];
  }

  else
  {
    v6 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v7 = v6;
  [v4 setTextColor:?];
}

id sub_11BA64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserDetailsEditCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_11BB94(void *a1)
{
  v1 = *&qword_DF0868 + *&qword_DF0868 + 1.0;
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_ABA310();
  v4 = sub_ABA330();

  if (v4)
  {
    if (qword_DE6878 != -1)
    {
      swift_once();
    }

    v5 = [qword_DF0870 titleLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 font];

      if (v7)
      {
        v8 = [objc_opt_self() defaultMetrics];
        v9 = [v8 scaledFontForFont:v7];

        [v9 pointSize];
        v11 = v10;

        return v1 + v11 + 1.0;
      }
    }
  }

  return v1;
}

void sub_11BCF4()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_editDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell_validationRule) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextField) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextField) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___divider) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknamePrefixLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nameTextFieldTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19UserDetailsEditCell____lazy_storage___nicknameTextFieldTitleLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_11BDF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_11BE38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_11BEAC()
{
  v1 = *(v0 + 128);
  if (!v1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 tokenWithImageArtworkInfo:v3];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedStoreArtworkDataSource];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(MPArtworkCatalog);
    v10 = v6;
    v11 = [v9 initWithToken:v10 dataSource:v8];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_11BFA8(uint64_t a1, uint64_t a2)
{
  isa = sub_AB8FD0().super.isa;
  v3 = sub_AB8FD0().super.isa;
  v4 = [(objc_class *)isa isEqualToDictionary:v3];

  return v4;
}

double sub_11C044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v70 = 0x6449797469746E65;
  *(&v70 + 1) = 0xE800000000000000;

  sub_ABAD10();
  if (!*(a1 + 16) || (v6 = sub_2EC004(v80), (v7 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_6;
  }

  sub_808B0(*(a1 + 56) + 32 * v6, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_7;
  }

  v9 = v69[0];
  v8 = v69[1];
LABEL_7:
  v68 = v8;
  *&v70 = 0x7954797469746E65;
  *(&v70 + 1) = 0xEA00000000006570;
  sub_ABAD10();
  if (!*(a1 + 16) || (v10 = sub_2EC004(v80), (v11 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_12;
  }

  sub_808B0(*(a1 + 56) + 32 * v10, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v67 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  v12 = v69[1];
  v67 = v69[0];
LABEL_13:
  v66 = v12;
  *&v70 = 1701667182;
  *(&v70 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v13 = sub_2EC004(v80), (v14 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_18;
  }

  sub_808B0(*(a1 + 56) + 32 * v13, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v65 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_19;
  }

  v15 = v69[1];
  v65 = v69[0];
LABEL_19:
  v64 = v15;
  *&v70 = 0x656C646E6168;
  *(&v70 + 1) = 0xE600000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v16 = sub_2EC004(v80), (v17 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_24;
  }

  sub_808B0(*(a1 + 56) + 32 * v16, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v63 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_25;
  }

  v18 = v69[1];
  v63 = v69[0];
LABEL_25:
  v62 = v18;
  *&v70 = 7301474;
  *(&v70 + 1) = 0xE300000000000000;
  sub_ABAD10();
  if (!*(a1 + 16) || (v19 = sub_2EC004(v80), (v20 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_30;
  }

  sub_808B0(*(a1 + 56) + 32 * v19, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v61 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_31;
  }

  v21 = v69[1];
  v61 = v69[0];
LABEL_31:
  v60 = v21;
  *&v70 = 0xD000000000000016;
  *(&v70 + 1) = 0x8000000000B51FF0;
  sub_ABAD10();
  if (!*(a1 + 16) || (v22 = sub_2EC004(v80), (v23 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_36;
  }

  sub_808B0(*(a1 + 56) + 32 * v22, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v59 = 0;
    goto LABEL_37;
  }

  v59 = v69[0];
LABEL_37:
  *&v70 = 0x72616F426E4F7369;
  *(&v70 + 1) = 0xEB00000000646564;
  sub_ABAD10();
  if (!*(a1 + 16) || (v24 = sub_2EC004(v80), (v25 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_42;
  }

  sub_808B0(*(a1 + 56) + 32 * v24, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v58 = 0;
    goto LABEL_43;
  }

  v58 = v69[0];
LABEL_43:
  *&v70 = 0x7461766972507369;
  *(&v70 + 1) = 0xE900000000000065;
  sub_ABAD10();
  if (!*(a1 + 16) || (v26 = sub_2EC004(v80), (v27 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_48;
  }

  sub_808B0(*(a1 + 56) + 32 * v26, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v57 = 0;
    goto LABEL_49;
  }

  v57 = v69[0];
LABEL_49:
  *&v70 = 0x6966697265567369;
  *(&v70 + 1) = 0xEA00000000006465;
  sub_ABAD10();
  if (!*(a1 + 16) || (v28 = sub_2EC004(v80), (v29 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_54;
  }

  sub_808B0(*(a1 + 56) + 32 * v28, &v70);
  sub_8085C(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v56 = 0;
    goto LABEL_55;
  }

  v56 = v69[0];
LABEL_55:
  *&v70 = 0x72506C6169636F73;
  *(&v70 + 1) = 0xEF6449656C69666FLL;
  sub_ABAD10();
  if (*(a1 + 16) && (v30 = sub_2EC004(v80), (v31 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v30, &v70);
    sub_8085C(v80);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v69[0];
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v69[1];
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    sub_8085C(v80);
    v33 = 0;
    v34 = 0;
  }

  v69[0] = 0x756F72676B636162;
  v69[1] = 0xEF6567616D49646ELL;
  sub_ABAD10();
  if (!*(a1 + 16) || (v35 = sub_2EC004(v80), (v36 & 1) == 0))
  {
    sub_8085C(v80);
    goto LABEL_69;
  }

  sub_808B0(*(a1 + 56) + 32 * v35, &v70);
  sub_8085C(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    v39 = 0;
    goto LABEL_70;
  }

  v37 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = sub_AB8FD0().super.isa;
  v39 = [v37 initWithArtworkResponseDictionary:isa];

LABEL_70:
  strcpy(v69, "profileImage");
  BYTE5(v69[1]) = 0;
  HIWORD(v69[1]) = -5120;
  sub_ABAD10();
  if (*(a1 + 16) && (v40 = sub_2EC004(v80), (v41 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v40, &v70);
    sub_8085C(v80);
  }

  else
  {
    sub_8085C(v80);
    v70 = 0u;
    v71 = 0u;
  }

  if (!*(&v71 + 1))
  {
    sub_9BC10(&v70);
    goto LABEL_80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v45 = 0;
    goto LABEL_81;
  }

  v55 = a2;
  v42 = v69[0];
  v43 = objc_allocWithZone(ICStoreArtworkInfo);
  v44 = sub_AB8FD0().super.isa;
  v45 = [v43 initWithArtworkResponseDictionary:v44];

  v69[0] = 7107189;
  v69[1] = 0xE300000000000000;
  sub_ABAD10();
  if (*(v42 + 16) && (v46 = sub_2EC004(v80), (v47 & 1) != 0))
  {
    sub_808B0(*(v42 + 56) + 32 * v46, &v70);
    sub_8085C(v80);
  }

  else
  {
    sub_8085C(v80);
    v70 = 0u;
    v71 = 0u;
  }

  a2 = v55;

  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v48 = v69[0];
      v49 = v69[1];
      goto LABEL_82;
    }
  }

  else
  {
    sub_9BC10(&v70);
  }

LABEL_81:
  v48 = 0;
  v49 = 0xE000000000000000;
LABEL_82:
  *&v70 = v39;
  *(&v70 + 1) = v61;
  *&v71 = v60;
  *(&v71 + 1) = v63;
  *&v72 = v62;
  *(&v72 + 1) = v9;
  *&v73 = v68;
  BYTE8(v73) = v59;
  BYTE9(v73) = v58;
  BYTE10(v73) = v57;
  BYTE11(v73) = v56;
  *&v74 = v65;
  *(&v74 + 1) = v64;
  *&v75 = v67;
  *(&v75 + 1) = v66;
  *&v76 = v33;
  *(&v76 + 1) = v34;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = v45;
  *(&v78 + 1) = v48;
  v79 = v49;
  v80[0] = v39;
  v80[1] = v61;
  v80[2] = v60;
  v80[3] = v63;
  v80[4] = v62;
  v80[5] = v9;
  v80[6] = v68;
  v81 = v59;
  v82 = v58;
  v83 = v57;
  v84 = v56;
  v85 = v65;
  v86 = v64;
  v87 = v67;
  v88 = v66;
  v89 = v33;
  v90 = v34;
  v91 = a1;
  v92 = a2;
  v93 = v45;
  v94 = v48;
  v95 = v49;
  sub_C343C(&v70, v69);
  sub_11CB0C(v80);
  v50 = v77;
  *(a3 + 96) = v76;
  *(a3 + 112) = v50;
  *(a3 + 128) = v78;
  *(a3 + 144) = v79;
  v51 = v73;
  *(a3 + 32) = v72;
  *(a3 + 48) = v51;
  v52 = v75;
  *(a3 + 64) = v74;
  *(a3 + 80) = v52;
  result = *&v70;
  v54 = v71;
  *a3 = v70;
  *(a3 + 16) = v54;
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id TextDrawing.View.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled] = 0;
  v9 = &v4[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  sub_11F44(v20);
  v10 = v20[5];
  v9[4] = v20[4];
  v9[5] = v10;
  v11 = v20[7];
  v9[6] = v20[6];
  v9[7] = v11;
  v12 = v20[1];
  *v9 = v20[0];
  v9[1] = v12;
  v13 = v20[3];
  v9[2] = v20[2];
  v9[3] = v13;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TextDrawing.View();
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setOpaque:0];
  [v16 setUserInteractionEnabled:0];

  return v16;
}

void TextDrawing.View.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled) = 0;
  v1 = (v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  sub_11F44(v6);
  v2 = v6[5];
  v1[4] = v6[4];
  v1[5] = v2;
  v3 = v6[7];
  v1[6] = v6[6];
  v1[7] = v3;
  v4 = v6[1];
  *v1 = v6[0];
  v1[1] = v4;
  v5 = v6[3];
  v1[2] = v6[2];
  v1[3] = v5;
  sub_ABAFD0();
  __break(1u);
}

uint64_t TextDrawing.View.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v15 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v16 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v17 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v18 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v11 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v12 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v13 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v14 = v4;
  v19[6] = v17;
  v19[7] = v2;
  v19[4] = v15;
  v19[5] = v1;
  v19[2] = v13;
  v19[3] = v4;
  v19[0] = v11;
  v19[1] = v3;
  if (sub_11D03C(v19) == 1)
  {
    return 0;
  }

  v6 = v11;
  if (BYTE8(v12))
  {
    v7 = v12;
    sub_E1F1C(v11, *(&v11 + 1), v12, 1);
    sub_15F84(&v11, &v10, &qword_DF08F8, &unk_B09110);
    v8 = [v6 string];
    v9 = sub_AB92A0();

    sub_E1E78(v6, *(&v6 + 1), v7, 1);
    sub_12E1C(&v11, &qword_DF08F8, &unk_B09110);
    return v9;
  }

  else
  {

    return v11;
  }
}

double TextDrawing.View.textDrawingContext.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v17 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v18 = v3;
  v4 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v19 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v20 = v4;
  v5 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v13 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v14 = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v15 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v16 = v6;
  sub_15F84(&v13, &v12, &qword_DF08F8, &unk_B09110);
  v7 = v18;
  a1[4] = v17;
  a1[5] = v7;
  v8 = v20;
  a1[6] = v19;
  a1[7] = v8;
  v9 = v14;
  *a1 = v13;
  a1[1] = v9;
  result = *&v15;
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  return result;
}

uint64_t sub_11D03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t TextDrawing.View.textDrawingContext.setter(__int128 *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v119 = a1[4];
  v120 = v4;
  v5 = a1[5];
  v6 = a1[7];
  v121 = a1[6];
  v122 = v6;
  v7 = a1[1];
  v115 = *a1;
  v116 = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v117 = a1[2];
  v118 = v8;
  v11 = &v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v12 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
  v125 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
  v126 = v12;
  v13 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
  v123 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v124 = v13;
  v14 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
  v129 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
  v130 = v14;
  v15 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
  v127 = *&v1[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
  v128 = v15;
  v106[3] = v3;
  v106[2] = v117;
  v106[1] = v9;
  v106[0] = v10;
  v106[7] = a1[7];
  v106[6] = v121;
  v106[5] = v5;
  v106[4] = v119;
  if (sub_11D03C(v106) != 1)
  {
    v102 = v127;
    v103 = v128;
    v104 = v129;
    v105 = v130;
    v98 = v123;
    v99 = v124;
    v100 = v125;
    v101 = v126;
    if (sub_11D03C(&v98) == 1)
    {
      v28 = v11[5];
      v69 = v11[4];
      v70 = v28;
      v29 = v11[7];
      v71 = v11[6];
      v72 = v29;
      v30 = v11[1];
      v65 = *v11;
      v66 = v30;
      v31 = v11[3];
      v67 = v11[2];
      v68 = v31;
      v32 = *a1;
      v33 = a1[1];
      v34 = a1[3];
      v11[2] = a1[2];
      v11[3] = v34;
      *v11 = v32;
      v11[1] = v33;
      v35 = a1[4];
      v36 = a1[5];
      v37 = a1[7];
      v11[6] = a1[6];
      v11[7] = v37;
      v11[4] = v35;
      v11[5] = v36;
      v83 = v117;
      v84 = v118;
      v81 = v115;
      v82 = v116;
      v87 = v121;
      v88 = v122;
      v85 = v119;
      v86 = v120;
      sub_15F84(a1, &v107, &qword_DF08F8, &unk_B09110);
      sub_109B04(&v81, &v107);
      sub_12E1C(&v65, &qword_DF08F8, &unk_B09110);
      [v1 setNeedsDisplay];
      v38 = a1;
LABEL_12:
      sub_12E1C(v38, &qword_DF08F8, &unk_B09110);
      v27 = a1;
      return sub_12E1C(v27, &qword_DF08F8, &unk_B09110);
    }

    v85 = v127;
    v86 = v128;
    v87 = v129;
    v88 = v130;
    v81 = v123;
    v82 = v124;
    v83 = v125;
    v84 = v126;
    v39 = a1[3];
    v91 = a1[2];
    v92 = v39;
    v40 = a1[1];
    v89 = *a1;
    v90 = v40;
    v41 = a1[7];
    v95 = a1[6];
    v96 = v41;
    v42 = a1[5];
    v93 = a1[4];
    v94 = v42;
    v97[3] = v126;
    v97[2] = v125;
    v97[1] = v124;
    v97[0] = v123;
    v97[7] = v130;
    v97[6] = v129;
    v97[5] = v128;
    v97[4] = v127;
    if (sub_11D03C(v97) == 1)
    {
      v69 = v93;
      v70 = v94;
      v71 = v95;
      v72 = v96;
      v65 = v89;
      v66 = v90;
      v67 = v91;
      v68 = v92;
      if (sub_11D03C(&v65) == 1)
      {
        v111 = v85;
        v112 = v86;
        v113 = v87;
        v114 = v88;
        v107 = v81;
        v108 = v82;
        v109 = v83;
        v110 = v84;
        sub_15F84(&v123, &v57, &qword_DF08F8, &unk_B09110);
        v27 = &v107;
        return sub_12E1C(v27, &qword_DF08F8, &unk_B09110);
      }
    }

    else
    {
      v61 = v93;
      v62 = v94;
      v63 = v95;
      v64 = v96;
      v57 = v89;
      v58 = v90;
      v59 = v91;
      v60 = v92;
      if (sub_11D03C(&v57) != 1)
      {
        v55[4] = v93;
        v55[5] = v94;
        v55[6] = v95;
        v55[7] = v96;
        v55[0] = v89;
        v55[1] = v90;
        v55[2] = v91;
        v55[3] = v92;
        v67 = v91;
        v68 = v92;
        v65 = v89;
        v66 = v90;
        v71 = v95;
        v72 = v96;
        v69 = v93;
        v70 = v94;
        v110 = v84;
        v109 = v83;
        v108 = v82;
        v107 = v81;
        v114 = v88;
        v113 = v87;
        v112 = v86;
        v111 = v85;
        sub_15F84(&v123, v54, &qword_DF08F8, &unk_B09110);
        sub_15F84(a1, v54, &qword_DF08F8, &unk_B09110);
        sub_15F84(&v123, v54, &qword_DF08F8, &unk_B09110);
        sub_15F84(a1, v54, &qword_DF08F8, &unk_B09110);
        v53 = _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(&v107, &v65);
        sub_12E1C(v55, &qword_DF08F8, &unk_B09110);
        v56[4] = v85;
        v56[5] = v86;
        v56[6] = v87;
        v56[7] = v88;
        v56[0] = v81;
        v56[1] = v82;
        v56[2] = v83;
        v56[3] = v84;
        sub_12E1C(v56, &qword_DF08F8, &unk_B09110);
        if (v53)
        {
          sub_12E1C(a1, &qword_DF08F8, &unk_B09110);
          sub_12E1C(&v123, &qword_DF08F8, &unk_B09110);
          v27 = a1;
          return sub_12E1C(v27, &qword_DF08F8, &unk_B09110);
        }

        goto LABEL_11;
      }
    }

    v77 = v93;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    v73 = v89;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v69 = v85;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    sub_15F84(&v123, &v107, &qword_DF08F8, &unk_B09110);
    sub_15F84(a1, &v107, &qword_DF08F8, &unk_B09110);
    sub_15F84(&v123, &v107, &qword_DF08F8, &unk_B09110);
    sub_15F84(a1, &v107, &qword_DF08F8, &unk_B09110);
    sub_12E1C(&v65, &qword_DF0900, &qword_AFED80);
LABEL_11:
    v43 = v11[5];
    v61 = v11[4];
    v62 = v43;
    v44 = v11[7];
    v63 = v11[6];
    v64 = v44;
    v45 = v11[1];
    v57 = *v11;
    v58 = v45;
    v46 = v11[3];
    v59 = v11[2];
    v60 = v46;
    v47 = *a1;
    v48 = a1[1];
    v49 = a1[3];
    v11[2] = a1[2];
    v11[3] = v49;
    *v11 = v47;
    v11[1] = v48;
    v50 = a1[4];
    v51 = a1[5];
    v52 = a1[7];
    v11[6] = a1[6];
    v11[7] = v52;
    v11[4] = v50;
    v11[5] = v51;
    v83 = v117;
    v84 = v118;
    v81 = v115;
    v82 = v116;
    v87 = v121;
    v88 = v122;
    v85 = v119;
    v86 = v120;
    sub_109B04(&v81, v56);
    sub_12E1C(&v57, &qword_DF08F8, &unk_B09110);
    [v1 setNeedsDisplay];
    sub_12E1C(a1, &qword_DF08F8, &unk_B09110);
    v38 = &v123;
    goto LABEL_12;
  }

  v85 = v127;
  v86 = v128;
  v87 = v129;
  v88 = v130;
  v81 = v123;
  v82 = v124;
  v83 = v125;
  v84 = v126;
  result = sub_11D03C(&v81);
  if (result == 1)
  {
    return result;
  }

  sub_11F44(&v98);
  v17 = v11[5];
  v111 = v11[4];
  v112 = v17;
  v18 = v11[7];
  v113 = v11[6];
  v114 = v18;
  v19 = v11[1];
  v107 = *v11;
  v108 = v19;
  v20 = v11[3];
  v109 = v11[2];
  v110 = v20;
  v21 = v98;
  v22 = v99;
  v23 = v101;
  v11[2] = v100;
  v11[3] = v23;
  *v11 = v21;
  v11[1] = v22;
  v24 = v102;
  v25 = v103;
  v26 = v105;
  v11[6] = v104;
  v11[7] = v26;
  v11[4] = v24;
  v11[5] = v25;
  v67 = v125;
  v68 = v126;
  v65 = v123;
  v66 = v124;
  v71 = v129;
  v72 = v130;
  v69 = v127;
  v70 = v128;
  sub_109B04(&v65, v97);
  sub_12E1C(&v107, &qword_DF08F8, &unk_B09110);
  [v1 setNeedsDisplay];
  v27 = &v123;
  return sub_12E1C(v27, &qword_DF08F8, &unk_B09110);
}

void (*TextDrawing.View.textDrawingContext.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x308uLL);
  }

  *a1 = v3;
  *(v3 + 768) = v1;
  v4 = (v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v5 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v7 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v6 = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  *(v3 + 32) = *(v1 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  *(v3 + 48) = v5;
  *v3 = v7;
  *(v3 + 16) = v6;
  v8 = v4[7];
  v10 = v4[4];
  v9 = v4[5];
  *(v3 + 96) = v4[6];
  *(v3 + 112) = v8;
  *(v3 + 64) = v10;
  *(v3 + 80) = v9;
  v11 = v4[3];
  v13 = *v4;
  v12 = v4[1];
  *(v3 + 416) = v4[2];
  *(v3 + 432) = v11;
  *(v3 + 384) = v13;
  *(v3 + 400) = v12;
  v14 = v4[7];
  v16 = v4[4];
  v15 = v4[5];
  *(v3 + 480) = v4[6];
  *(v3 + 496) = v14;
  *(v3 + 448) = v16;
  *(v3 + 464) = v15;
  sub_15F84(v3, v3 + 512, &qword_DF08F8, &unk_B09110);
  return sub_11D834;
}

void sub_11D834(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[29];
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_15F84((v2 + 8), (v2 + 40), &qword_DF08F8, &unk_B09110);
    TextDrawing.View.textDrawingContext.setter(v2 + 8);
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    sub_12E1C((v2 + 32), &qword_DF08F8, &unk_B09110);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v11 = v2[31];
    v2[22] = v2[30];
    v2[23] = v11;
    v12 = v2[25];
    v2[16] = v2[24];
    v2[17] = v12;
    v13 = v2[27];
    v2[18] = v2[26];
    v2[19] = v13;
    TextDrawing.View.textDrawingContext.setter(v2 + 16);
  }

  free(v2);
}

uint64_t TextDrawing.View.firstBaselineOffsetFromTop.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v13 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v14 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v15 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v16 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v9 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v10 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v11 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v12 = v4;
  v19 = v11;
  v20 = v4;
  v17 = v9;
  v18 = v3;
  v23 = v15;
  v24 = v2;
  v21 = v13;
  v22 = v1;
  result = sub_11D03C(&v17);
  if (result != 1)
  {
    v8[4] = v21;
    v8[5] = v22;
    v8[6] = v23;
    v8[7] = v24;
    v8[0] = v17;
    v8[1] = v18;
    v8[2] = v19;
    v8[3] = v20;
    v7[2] = v11;
    v7[3] = v12;
    v7[0] = v9;
    v7[1] = v10;
    v7[6] = v15;
    v7[7] = v16;
    v7[4] = v13;
    v7[5] = v14;
    sub_109B04(v7, &v6);
    sub_11DEFC(v8);
    CGRectGetMinY(v25);
    return sub_12E1C(&v9, &qword_DF08F8, &unk_B09110);
  }

  return result;
}

uint64_t TextDrawing.View.lastBaselineOffsetFromBottom.getter()
{
  v1 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
  v21 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
  v22 = v1;
  v2 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
  v23 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
  v24 = v2;
  v3 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
  v17 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
  v18 = v3;
  v4 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
  v19 = *&v0[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
  v20 = v4;
  v27 = v19;
  v28 = v4;
  v25 = v17;
  v26 = v3;
  v31 = v23;
  v32 = v2;
  v29 = v21;
  v30 = v1;
  result = sub_11D03C(&v25);
  if (result != 1)
  {
    v16[4] = v29;
    v16[5] = v30;
    v16[6] = v31;
    v16[7] = v32;
    v16[0] = v25;
    v16[1] = v26;
    v16[2] = v27;
    v16[3] = v28;
    v15[2] = v19;
    v15[3] = v20;
    v15[0] = v17;
    v15[1] = v18;
    v15[6] = v23;
    v15[7] = v24;
    v15[4] = v21;
    v15[5] = v22;
    sub_109B04(v15, &v14);
    sub_11DEFC(v16);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v0 bounds];
    CGRectGetMaxY(v33);
    v34.origin.x = v7;
    v34.origin.y = v9;
    v34.size.width = v11;
    v34.size.height = v13;
    CGRectGetMaxY(v34);
    return sub_12E1C(&v17, &qword_DF08F8, &unk_B09110);
  }

  return result;
}

uint64_t TextDrawing.View.isDisabled.getter()
{
  v1 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void TextDrawing.View.isDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = 1.0;
    if (a1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v1 setAlpha:v6];
  }
}

void (*TextDrawing.View.isDisabled.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_11DCB4;
}

void sub_11DCB4(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = 1.0;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = 1.0;
  if (v5)
  {
LABEL_7:
    UIInterfaceGetContentDisabledAlpha();
  }

LABEL_8:
  [v2[3] setAlpha:v7];
LABEL_9:

  free(v2);
}

Swift::Bool __swiftcall TextDrawing.View._shouldAnimateProperty(withKey:)(Swift::String withKey)
{
  object = withKey._object;
  countAndFlagsBits = withKey._countAndFlagsBits;
  v4 = sub_AB9260();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TextDrawing.View();
  v5 = objc_msgSendSuper2(&v8, "_shouldAnimatePropertyWithKey:", v4);

  if ((v5 & 1) != 0 || countAndFlagsBits == 0x73746E65746E6F63 && object == 0xE800000000000000)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_ABB3C0();
  }

  return v6 & 1;
}

uint64_t sub_11DEFC(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v42 = 0;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(v11 + 16))
    {

      sub_2F5AD8();
      if (v23)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (!v21)
        {
          swift_unknownObjectRelease();
        }

LABEL_11:
        v42 = v21;

        v20 = 0;
        v22 = 0;
        if (!v21)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v21 = 0;
    goto LABEL_11;
  }

  v13 = *a1;
  v14 = *a1;
  v15 = [v14 length];
  v16 = swift_allocObject();
  *(v16 + 16) = &v42;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_11E710;
  *(v17 + 24) = v16;
  v35 = v16;
  v40 = sub_109B70;
  v41 = v17;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_9B8A0;
  v39 = &block_descriptor_39;
  v18 = _Block_copy(&aBlock);

  [v14 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  v19 = sub_E1E78(v13, v12, v11, 1);
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  v20 = sub_11E710;
  v21 = v42;
  v22 = v35;
  if (!v42)
  {
    goto LABEL_16;
  }

LABEL_12:
  v24 = [v21 alignment];
  if (v24 > 2)
  {
    if ((v24 - 3) < 2)
    {
LABEL_16:
      sub_ABA470();
LABEL_17:
      sub_AB3A10();

      return sub_17654(v20, v22);
    }
  }

  else
  {
    if (v24 <= 1)
    {
      goto LABEL_16;
    }

    if (v24 == &dword_0 + 2)
    {
      sub_ABA470();
      v26 = v10;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v46.origin.x = v4;
      v46.origin.y = v6;
      v46.size.width = v8;
      v46.size.height = v26;
      CGRectGetMaxX(v46);
      v47.origin.x = v28;
      v47.origin.y = v30;
      v47.size.width = v32;
      v47.size.height = v34;
      CGRectGetWidth(v47);
      goto LABEL_17;
    }
  }

LABEL_21:
  aBlock = 0;
  v37 = 0xE000000000000000;
  sub_ABAD90(24);
  v43._object = 0x8000000000B4AB80;
  v43._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v43);
  v44._countAndFlagsBits = 0x6C4174786554534ELL;
  v44._object = 0xEF746E656D6E6769;
  sub_AB94A0(v44);
  v45._countAndFlagsBits = 32;
  v45._object = 0xE100000000000000;
  sub_AB94A0(v45);
  type metadata accessor for NSTextAlignment(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_11E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_15F84(a1, v10, &unk_DE8E40, &unk_AF8050);
  if (v11)
  {
    sub_11E740();
    v6 = swift_dynamicCast();
    v7 = v9;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);
    v7 = 0;
  }

  v8 = *a5;
  *a5 = v7;
}

id TextDrawing.View.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextDrawing.View();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s16MusicApplication11TextDrawingV4ViewC4drawyySo6CGRectVF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80);
  v28 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64);
  v29 = v1;
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112);
  v30 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96);
  v31 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16);
  v24 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  v25 = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48);
  v26 = *(v0 + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32);
  v27 = v4;
  v34 = v26;
  v35 = v4;
  v32 = v24;
  v33 = v3;
  v38 = v30;
  v39 = v2;
  v36 = v28;
  v37 = v1;
  result = sub_11D03C(&v32);
  if (result != 1)
  {
    v23[4] = v36;
    v23[5] = v37;
    v23[6] = v38;
    v23[7] = v39;
    v23[0] = v32;
    v23[1] = v33;
    v23[2] = v34;
    v23[3] = v35;
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v22[7] = v31;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_109B04(v22, &v21);
    sub_11DEFC(v23);
    v10 = *(&v34 + 1);
    v11 = v32;
    if (BYTE8(v33))
    {
      [v32 drawWithRect:*(&v34 + 1) options:v34 context:?];
    }

    else
    {
      v13 = *(&v32 + 1);
      v12 = v33;
      v14 = v9;
      v15 = v8;
      v16 = v7;
      v17 = v6;
      v18 = v34;
      sub_E1F1C(v11, v13, v12, 0);
      v19 = sub_AB9260();
      sub_3E856C(v12);
      type metadata accessor for Key(0);
      sub_3FB3C();
      isa = sub_AB8FD0().super.isa;

      [v19 drawWithRect:v10 options:isa attributes:v18 context:{v17, v16, v15, v14}];
    }

    return sub_12E1C(&v24, &qword_DF08F8, &unk_B09110);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_11E740()
{
  result = qword_DF0930;
  if (!qword_DF0930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF0930);
  }

  return result;
}

char *sub_11E78C()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController;
  sub_121E98(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0D28, &unk_AFF008);
  swift_allocObject();
  *&v1[v4] = RequestResponse.Controller.init(request:)(v45, v5, v6, v7);
  v8 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v1[v8] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] = 0;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for ArtistListViewController(0);
  v9 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v10 = sub_AB9260();

  [v9 setTitle:v10];

  v11 = *&v9[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v12 = [v9 traitCollection];
  v13 = *&v9[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
  if (v13)
  {
    if (v13[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v14 = qword_AFF018[v13[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
    }

    else
    {
      v15 = v13;
      v14 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }
  }

  else
  {
    v14 = 0;
  }

  swift_beginAccess();
  v16 = *(v11 + 128);
  v45[6] = *(v11 + 112);
  v45[7] = v16;
  v45[8] = *(v11 + 144);
  v46 = *(v11 + 160);
  v17 = *(v11 + 64);
  v45[2] = *(v11 + 48);
  v45[3] = v17;
  v18 = *(v11 + 96);
  v45[4] = *(v11 + 80);
  v45[5] = v18;
  v19 = *(v11 + 32);
  v45[0] = *(v11 + 16);
  v45[1] = v19;
  v20 = *&v45[0];
  v29 = *(v11 + 56);
  v30 = *(v11 + 72);
  v31 = *(v11 + 88);
  v27 = *(v11 + 24);
  v28 = *(v11 + 40);
  v24 = *(v11 + 105);
  v25 = *(v11 + 121);
  *v26 = *(v11 + 137);
  *&v26[15] = *(v11 + 152);
  sub_15F84(v45, &v32, &qword_DF0CE0, &qword_AFEFD0);
  v21 = UITraitCollection.mediaLibrary.getter();

  v22.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v33 = v27;
  v40 = v24;
  v43 = 0;
  v32 = v21;
  v37 = v31;
  v38 = v22.rawValue | v14;
  v39 = 0;
  v41 = v25;
  v42[0] = *v26;
  *(v42 + 15) = *&v26[15];
  RequestResponse.Controller.request.setter(&v32);

  return v9;
}

void sub_11EBE8()
{
  v1 = v0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CE8, &unk_AFEFD8);
  v2 = *(v82 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v79 - v5;
  v6 = type metadata accessor for ArtistListViewController(0);
  v83.receiver = v0;
  v83.super_class = v6;
  objc_msgSendSuper2(&v83, "viewDidLoad");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [v8 setBackgroundColor:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v88 = sub_12600C;
  v89 = v11;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_496F34;
  v87 = &block_descriptor_40;
  v13 = _Block_copy(&aBlock);

  v14 = [v12 initWithSectionProvider:v13];
  _Block_release(v13);

  v15 = [v1 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = objc_allocWithZone(UICollectionView);
  v80 = v14;
  v26 = [v25 initWithFrame:v14 collectionViewLayout:{v18, v20, v22, v24}];
  [v26 setDelegate:v1];
  v27 = v26;
  [v27 setAlwaysBounceVertical:1];
  v28 = v27;
  v29 = [v9 systemBackgroundColor];
  [v28 setBackgroundColor:v29];

  [v28 setAutoresizingMask:18];
  [v28 setAllowsFocus:1];
  [v28 setRemembersLastFocusedIndexPath:1];
  [v28 setKeyboardDismissMode:1];

  v30 = type metadata accessor for ArtistListViewController.Cell();
  v31 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v30, v31, v32);

  v33 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView] = v28;
  v34 = v28;

  v35 = [v1 view];
  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addSubview:v34];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  v37 = v81;
  sub_ABA030();
  v38 = v82;
  (*(v2 + 16))(v4, v37, v82);
  v39 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v40 = swift_allocObject();
  (*(v2 + 32))(v40 + v39, v4, v38);
  v41 = objc_allocWithZone(type metadata accessor for ArtistListViewController.DataSource(0));
  type metadata accessor for ModelResponseIndexBarController();
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v42 + 56) = _swiftEmptyArrayStorage;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 80) = 0;
  *(v42 + 88) = 1;
  *(v42 + 16) = v34;
  *&v41[qword_DF09E8] = v42;
  v43 = v34;

  v44 = sub_AB5200();
  v45 = *&v44[qword_DF09E8];
  v46 = *(v45 + 40);
  *(v45 + 40) = 50;
  if (v46 != 50)
  {

    sub_380968();
  }

  v47 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource] = v44;
  v48 = v44;

  v49 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v48;
  v52 = (v49 + *(*v49 + 128));
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  *v52 = sub_12619C;
  v52[1] = v51;
  v55 = v48;

  sub_17654(v54, v53);

  v56 = [v1 view];
  if (!v56)
  {
    goto LABEL_13;
  }

  v57 = v56;
  type metadata accessor for LibraryNoContentStateController();
  swift_allocObject();
  v58 = sub_3E2914(v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v43;
  v60 = v58[6];
  v61 = v58[7];
  v58[6] = sub_1261DC;
  v58[7] = v59;
  v62 = v43;

  sub_17654(v60, v61);

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v58[27];
  v65 = v58[28];
  v58[27] = sub_1261E4;
  v58[28] = v63;

  sub_17654(v64, v65);

  *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController] = v58;

  v66 = sub_122184();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = *(v66 + 88);
  v69 = *(v66 + 96);
  *(v66 + 88) = sub_1261EC;
  *(v66 + 96) = v67;

  sub_17654(v68, v69);

  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_70C54(&aBlock);
  if (v85)
  {
    v70 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    v71 = sub_4F4944(2);
    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = &v71[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
    v74 = *&v71[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
    v75 = *&v71[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange + 8];
    *v73 = sub_1261F4;
    v73[1] = v72;

    sub_17654(v74, v75);

    v76 = [v1 navigationItem];
    v77 = sub_4F46B0();
    [v76 setRightBarButtonItem:v77];

    (*(v2 + 8))(v81, v82);

    v78 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController] = v71;
  }

  else
  {
    (*(v2 + 8))(v81, v82);
  }
}

uint64_t sub_11F594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  sub_125604(a2);
  v7 = v6;

  return v7;
}

double sub_11F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD0, &qword_AFEFC0);
  __chkstk_darwin();
  v7 = v17 - v6 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  __chkstk_darwin();
  v9 = (v17 - v8 + 16);
  sub_15F84(a3, v17 - v8 + 16, &qword_DF09B8, "6g\r");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
  }

  else
  {
    sub_36B0C(v9, v7, &qword_DF0CD0, &qword_AFEFC0);
    v10 = SnapshotIdentifier.Lazy.object.getter(v5);
    sub_12E1C(v7, &qword_DF0CD0, &qword_AFEFC0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
  }

  swift_weakInit();
  v17[0] = 0x73747369747241;
  v17[1] = 0xE700000000000000;
  swift_weakAssign();

  v18[3] = _s17ListConfigurationVMa(0);
  v18[4] = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa, &unk_AFEECC);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  sub_11F8D4(v10, v17, boxed_opaque_existential_0);
  sub_ABA2B0();
  swift_allocObject();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_ABA2E0();

  return result;
}

uint64_t sub_11F8D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB5070();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s17ListConfigurationVMa(0);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 2) = xmmword_AFEDA0;
  *(v12 + 3) = xmmword_AFEDB0;
  *&v12[*(v13 + 32)] = 0x4028000000000000;
  v12[*(v13 + 36)] = 0;
  sub_AB5040();
  sub_AB5010();
  (*(v7 + 8))(v9, v6);
  *v12 = a1;
  sub_125340(a2, (v12 + 8));
  v14 = a1;
  v15 = [v14 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_AB92A0();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  v20 = &v12[*(v10 + 40)];
  *v20 = v17;
  v20[1] = v19;
  __chkstk_darwin();
  *(&v22 - 2) = v14;
  *(&v22 - 1) = a2;
  static Artwork.with(_:)(sub_12539C, &v12[*(v10 + 28)]);

  sub_1252D8(v12, a3, _s17ListConfigurationVMa);
  sub_1253A4(a2);
  return sub_124F38(v12);
}

void sub_11FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0D00, &qword_AFEFE8);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = _s17ListConfigurationVMa(0);
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin();
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v10 = &v56 - v9;
  v11 = sub_AB4F50();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v56 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v59 = v8;
  sub_AB4ED0();
  v19 = a2;
  v20 = sub_AB4E30();
  v66 = v20;
  v67 = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v58 = v19;
  v57 = v23;
  v56 = v22 + 16;
  v23(boxed_opaque_existential_0, v19, v20);
  sub_AB4F40();
  v60 = *(v12 + 8);
  v60(v14, v11);
  __swift_destroy_boxed_opaque_existential_0(v65);
  v24 = v18;
  v25 = [v24 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  [v25 music_inheritedLayoutInsets];
  v28 = v27;

  v29 = sub_AB4F10();
  *(v30 + 8) = *(v30 + 8) - v28;
  v29(v65, 0);
  v31 = *&v24[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (!v31)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v32 accessoryViewAtEdge:1];
  if (v33)
  {
    v34 = v33;
    [v33 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
  }

  else
  {

    v36 = 0.0;
    v38 = 0.0;
    v40 = 0.0;
    v42 = 0.0;
  }

  v68.origin.x = v36;
  v68.origin.y = v38;
  v68.size.width = v40;
  v68.size.height = v42;
  Width = CGRectGetWidth(v68);
  v44 = [v24 view];

  if (!v44)
  {
    goto LABEL_19;
  }

  [v44 music_inheritedLayoutInsets];
  v46 = v45;

  if (Width <= v46)
  {
    Width = v46;
  }

  v47 = sub_AB4F10();
  *(v48 + 24) = *(v48 + 24) - Width;
  v47(v65, 0);
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_ABA2D0();
  sub_ABA2A0();
  if (!v66)
  {

    v60(v16, v11);
    sub_12E1C(v65, &unk_DF0D10, &unk_AFEFF8);
    (*(v61 + 56))(v5, 1, 1, v62);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  v49 = v62;
  v50 = swift_dynamicCast();
  v51 = v61;
  (*(v61 + 56))(v5, v50 ^ 1u, 1, v49);
  if ((*(v51 + 48))(v5, 1, v49) == 1)
  {
    v60(v16, v11);

LABEL_14:
    sub_12E1C(v5, &unk_DF0D00, &qword_AFEFE8);
    return;
  }

  v52 = v5;
  v53 = v59;
  sub_126208(v52, v59);
  v64[3] = v20;
  v64[4] = &protocol witness table for UICellConfigurationState;
  v54 = __swift_allocate_boxed_opaque_existential_0(v64);
  v57(v54, v58, v20);
  v66 = v49;
  v67 = sub_124E50(&qword_DF0BF0, _s17ListConfigurationVMa, &unk_AFEECC);
  v55 = __swift_allocate_boxed_opaque_existential_0(v65);
  sub_1201C4(v64, v55);
  __swift_destroy_boxed_opaque_existential_0(v64);
  sub_ABA2B0();

  sub_124F38(v53);
  v60(v16, v11);
}

uint64_t sub_1201C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_AB5000();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin();
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB5070();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0C88, &qword_AFEF90);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = _s17ListConfigurationVMa(0);
  __chkstk_darwin();
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  sub_125340((v2 + 1), v37);
  sub_11F8D4(v17, v37, v16);
  sub_E8BA0(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0C90, &qword_AFEF98);
  v18 = sub_AB4E30();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  v35 = v13;
  v20(v13, v19 ^ 1u, 1, v18);
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v24 = sub_124F94(v23, v21, v22);
  v16[v14[9]] = v24 & 1;
  if (v24)
  {
    *&v16[v14[8]] = 0;
  }

  sub_AB5040();
  sub_AB5060();
  v25 = *(v7 + 8);
  v25(v9, v6);
  v26 = v32;
  sub_AB5010();
  v25(v11, v6);
  (*(v33 + 40))(&v16[v14[11]], v26, v34);
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  sub_ABA550();
  sub_AB4FE0();
  sub_AB4F90();
  sub_AB4FB0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_AB4D80();
  v28 = [v27 preferredContentSizeCategory];

  LOBYTE(v27) = sub_ABA330();
  if (v27 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), v29 = sub_AB4D80(), v30 = [v29 preferredContentSizeCategory], v29, LOBYTE(v29) = sub_ABA320(), v30, (v29))
  {
    sub_AB4FB0();
  }

  sub_1252D8(v16, v36, _s17ListConfigurationVMa);
  sub_12E1C(v35, &qword_DF0C88, &qword_AFEF90);
  return sub_124F38(v16);
}

uint64_t sub_120660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v6 = &v10 - v5;
  sub_15F84(a3, &v10 - v5, &qword_DF09B8, "6g\r");
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  v8 = sub_ABA050();
  sub_12E1C(v6, &unk_DF0CC0, &qword_AFEFB8);
  return v8;
}

void sub_1207B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v44 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  v7 = *(v47 - 8);
  __chkstk_darwin();
  v45 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CB0, &qword_AFEFB0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v46 = v7;
    v44 = v4;
    RequestResponse.Revision.content.getter(&v48);
    v17 = v48;
    sub_123130(v48);

    if (!*&v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_noContentStateController])
    {
      __break(1u);
      return;
    }

    sub_AB5250();
    v18 = sub_AB50C0();
    v19 = *(v10 + 8);
    v19(v14, v9);
    sub_3E2E84(v18 == 0);

    v20 = sub_122184();
    sub_AB5250();
    v21 = sub_AB50C0();
    v19(v14, v9);
    if (v21)
    {
      v22 = *(v20 + 64);
      *(v20 + 64) = 1;
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v27 = (*(*&v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController____lazy_storage___contentFilteringController] + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v30 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v30 = v29;
      }

      v31 = v30 != 0;
      v32 = *(v20 + 64);
      *(v20 + 64) = v31;
      if (v32 == v31)
      {
LABEL_6:

        if (v16[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection] != 1)
        {
LABEL_25:

          return;
        }

        v23 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
        swift_beginAccess();
        sub_15F84(&v16[v23], v6, &unk_DF0CC0, &qword_AFEFB8);
        v24 = v47;
        if ((*(v46 + 48))(v6, 1, v47) == 1)
        {
          v25 = &unk_DF0CC0;
          v26 = &qword_AFEFB8;
        }

        else
        {
          v33 = v6;
          v6 = v45;
          sub_36B0C(v33, v45, &qword_DF09B8, "6g\r");
          sub_AB5250();
          sub_AB50A0();
          v35 = v34;
          v19(v14, v9);
          if ((v35 & 1) == 0)
          {
            sub_122318(1);
            v41 = &qword_DF09B8;
            v42 = "6g\r";
            v43 = v6;
LABEL_24:
            sub_12E1C(v43, v41, v42);
            goto LABEL_25;
          }

          v25 = &qword_DF09B8;
          v26 = "6g\r";
        }

        sub_12E1C(v6, v25, v26);
        sub_AB5250();
        v36 = sub_AB50F0();
        v19(v12, v9);
        if (*(v36 + 16))
        {
          v37 = v46;
          v38 = v44;
          sub_15F84(v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44, &qword_DF09B8, "6g\r");
          v39 = 0;
        }

        else
        {
          v39 = 1;
          v38 = v44;
          v37 = v46;
        }

        (*(v37 + 56))(v38, v39, 1, v24);

        sub_1218CC(v38, 1, 0);
        v41 = &unk_DF0CC0;
        v42 = &qword_AFEFB8;
        v43 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v40 = *(v20 + 64);
      *(v20 + 64) = 0;
      if ((v40 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_5:
    sub_430320();
    goto LABEL_6;
  }
}

uint64_t sub_120D00(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = a2;
  v4 = a2;
  sub_118B4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

void sub_120D98(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = sub_122184();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_8:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *&v13[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    if (v15)
    {
      v16 = v15;

      sub_4F4414(v12, v33);
      if (*(&v33[0] + 1) != 1)
      {
        v18 = v35;
        v17 = v36;
        v19 = v34;
        v20 = v33[3];
        v21 = v33[2];
        v22 = v33[1];
        v23 = v33[0];
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  if (v12)
  {
    if (qword_DE6BD0 != -1)
    {
      swift_once();
    }

    v31[3] = xmmword_E717A8;
    v31[4] = xmmword_E717B8;
    v31[1] = xmmword_E71788;
    v31[2] = xmmword_E71798;
    v31[0] = xmmword_E71778;
    v17 = qword_E717C8;
    v32 = qword_E717C8;
    v18 = *(&xmmword_E717B8 + 1);
    v19 = xmmword_E717B8;
    v28 = xmmword_E71798;
    v29 = xmmword_E717A8;
    v26 = xmmword_E71778;
    v27 = xmmword_E71788;
    v24 = v31;
    v25 = &v30;
  }

  else
  {
    v18 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 64);
    v28 = *(a1 + 32);
    v29 = *(a1 + 48);
    v26 = *a1;
    v27 = *(a1 + 16);
    v25 = v31;
    v24 = a1;
  }

  sub_576EC(v24, v25);
  v23 = v26;
  v22 = v27;
  v21 = v28;
  v20 = v29;
LABEL_19:
  *a3 = v23;
  *(a3 + 16) = v22;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v19;
  *(a3 + 72) = v18;
  *(a3 + 80) = v17;
}

double sub_120F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController);
    v8 = Strong;

    swift_beginAccess();
    v9 = *(v7 + 128);
    v25 = *(v7 + 112);
    v26 = v9;
    v27 = *(v7 + 144);
    v28 = *(v7 + 160);
    v10 = *(v7 + 64);
    v21 = *(v7 + 48);
    v22 = v10;
    v11 = *(v7 + 96);
    v23 = *(v7 + 80);
    v24 = v11;
    v12 = *(v7 + 32);
    v19 = *(v7 + 16);
    v20 = v12;

    sub_15F84(&v19, v13, &qword_DF0CE0, &qword_AFEFD0);

    v13[2] = v21;
    v13[3] = v22;
    v13[4] = v23;
    v13[5] = v24;
    v13[0] = v19;
    v13[1] = v20;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v14 = a1;
    v15 = a2;
    RequestResponse.Controller.request.setter(v13);
  }

  return result;
}

void sub_1210C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
    v5 = [Strong traitCollection];
    v6 = *&v3[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
    if (v6)
    {
      if (v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
      {
        v7 = qword_AFF018[v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
      }

      else
      {
        v8 = v6;
        v7 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
      }
    }

    else
    {
      v7 = 0;
    }

    swift_beginAccess();
    v9 = *(v4 + 128);
    v36[6] = *(v4 + 112);
    v36[7] = v9;
    v36[8] = *(v4 + 144);
    v37 = *(v4 + 160);
    v10 = *(v4 + 64);
    v36[2] = *(v4 + 48);
    v36[3] = v10;
    v11 = *(v4 + 96);
    v36[4] = *(v4 + 80);
    v36[5] = v11;
    v12 = *(v4 + 32);
    v36[0] = *(v4 + 16);
    v36[1] = v12;
    v13 = *&v36[0];
    v21 = *(v4 + 56);
    v22 = *(v4 + 72);
    v23 = *(v4 + 88);
    v19 = *(v4 + 24);
    v20 = *(v4 + 40);
    v16 = *(v4 + 105);
    v17 = *(v4 + 121);
    *v18 = *(v4 + 137);
    *&v18[15] = *(v4 + 152);
    sub_15F84(v36, &v24, &qword_DF0CE0, &qword_AFEFD0);
    v14 = UITraitCollection.mediaLibrary.getter();

    v15.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v25 = v19;
    v32 = v16;
    v35 = 0;
    v24 = v14;
    v29 = v23;
    v30 = v15.rawValue | v7;
    v31 = 0;
    v33 = v17;
    *v34 = *v18;
    *&v34[15] = *&v18[15];
    RequestResponse.Controller.request.setter(&v24);
  }
}

void sub_12130C(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = type metadata accessor for ArtistListViewController(0);
  v12.receiver = v2;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_shouldPersistArtistSelection])
  {
    goto LABEL_4;
  }

  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_collectionView];
  if (v7)
  {
    v8 = v7;
    UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1 & 1);

    swift_unknownObjectRelease();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
    swift_beginAccess();
    sub_125F64(v5, &v2[v10]);
    swift_endAccess();
LABEL_4:
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    return;
  }

  __break(1u);
}

void sub_121570(uint64_t a1)
{
  v37.receiver = v1;
  v37.super_class = type metadata accessor for ArtistListViewController(0);
  objc_msgSendSuper2(&v37, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_requestResponseController];
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_filterOptionsController];
  if (v5)
  {
    if (v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v6 = qword_AFF018[v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType]];
    }

    else
    {
      v7 = v5;
      v6 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  v8 = *(v3 + 128);
  v35[6] = *(v3 + 112);
  v35[7] = v8;
  v35[8] = *(v3 + 144);
  v36 = *(v3 + 160);
  v9 = *(v3 + 64);
  v35[2] = *(v3 + 48);
  v35[3] = v9;
  v10 = *(v3 + 96);
  v35[4] = *(v3 + 80);
  v35[5] = v10;
  v11 = *(v3 + 32);
  v35[0] = *(v3 + 16);
  v35[1] = v11;
  v12 = *&v35[0];
  v20 = *(v3 + 56);
  v21 = *(v3 + 72);
  v22 = *(v3 + 88);
  v18 = *(v3 + 24);
  v19 = *(v3 + 40);
  v15 = *(v3 + 105);
  v16 = *(v3 + 121);
  *v17 = *(v3 + 137);
  *&v17[15] = *(v3 + 152);
  sub_15F84(v35, &v23, &qword_DF0CE0, &qword_AFEFD0);
  v13 = UITraitCollection.mediaLibrary.getter();

  v14.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v24 = v18;
  v31 = v15;
  v34 = 0;
  v23 = v13;
  v28 = v22;
  v29 = v14.rawValue | v6;
  v30 = 0;
  v32 = v16;
  *v33 = *v17;
  *&v33[15] = *&v17[15];
  RequestResponse.Controller.request.setter(&v23);
}

void sub_1217D0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ArtistListViewController(0);
  objc_msgSendSuper2(&v5, "music_viewInheritedLayoutInsetsDidChange");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_dataSource];
  if (v1)
  {
    v2 = v1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(&v4);

    v3 = v4;
    sub_123130(v4);

    sub_122318(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1218CC(uint64_t a1, int a2, int a3)
{
  v43 = a3;
  v48 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD0, &qword_AFEFC0);
  __chkstk_darwin();
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF09B8, "6g\r");
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v41 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v42 = &v37 - v9;
  __chkstk_darwin();
  v40 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0CC0, &qword_AFEFB8);
  __chkstk_darwin();
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v37 - v12;
  __chkstk_darwin();
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0CD8, &qword_AFEFC8) - 8;
  __chkstk_darwin();
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC16MusicApplication24ArtistListViewController_selectedArtistIdentifier;
  swift_beginAccess();
  v19 = *(v15 + 56);
  sub_15F84(v3 + v18, v17, &unk_DF0CC0, &qword_AFEFB8);
  v46 = a1;
  sub_15F84(a1, &v17[v19], &unk_DF0CC0, &qword_AFEFB8);
  v20 = *(v7 + 48);
  v21 = v20(v17, 1, v6);
  v47 = v6;
  if (v21 == 1)
  {
    if (v20(&v17[v19], 1, v6) == 1)
    {
      sub_12E1C(v17, &unk_DF0CC0, &qword_AFEFB8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_15F84(v17, v14, &unk_DF0CC0, &qword_AFEFB8);
  if (v20(&v17[v19], 1, v6) == 1)
  {
    sub_12E1C(v14, &qword_DF09B8, "6g\r");
LABEL_6:
    sub_12E1C(v17, &qword_DF0CD8, &qword_AFEFC8);
    goto LABEL_9;
  }

  v22 = v40;
  sub_36B0C(&v17[v19], v40, &qword_DF09B8, "6g\r");
  v23 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  v24 = static SnapshotIdentifier.== infix(_:_:)(v14, v22, v23);
  sub_12E1C(v22, &qword_DF09B8, "6g\r");
  sub_12E1C(v14, &qword_DF09B8, "6g\r");
  sub_12E1C(v17, &unk_DF0CC0, &qword_AFEFB8);
  if (v24)
  {
LABEL_8:
    if ((v43 & 1) == 0)
    {
      return;
    }
  }

LABEL_9:
  v25 = v46;
  v26 = v44;
  sub_15F84(v46, v44, &unk_DF0CC0, &qword_AFEFB8);
  swift_beginAccess();
  sub_125F64(v26, v3 + v18);
  swift_endAccess();
  v27 = v45;
  sub_15F84(v25, v45, &unk_DF0CC0, &qword_AFEFB8);
  if (v20(v27, 1, v47) == 1)
  {
    sub_12E1C(v27, &unk_DF0CC0, &qword_AFEFB8);
    v28 = v48;
  }

  else
  {
    v29 = v3;
    v30 = v27;
    v31 = v42;
    sub_36B0C(v30, v42, &qword_DF09B8, "6g\r");
    v32 = v41;
    sub_15F84(v31, v41, &qword_DF09B8, "6g\r");
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v32;
    }

    else
    {
      v34 = v38;
      sub_36B0C(v32, v38, &qword_DF0CD0, &qword_AFEFC0);
      v33 = SnapshotIdentifier.Lazy.object.getter(v39);
      sub_12E1C(v34, &qword_DF0CD0, &qword_AFEFC0);
    }

    v28 = v48;
    v35 = objc_allocWithZone(type metadata accessor for ArtistViewController());
    v36 = sub_1E2F78(v33);
    sub_728FC(v36, 0, v28 & 1, v29);
    sub_12E1C(v31, &qword_DF09B8, "6g\r");
  }

  sub_122318(v28 & 1);
}

id sub_121E98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  static MPModelArtist.defaultMusicKind.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF8820;
  *(v3 + 32) = sub_AB92A0();
  *(v3 + 40) = v4;
  *(v3 + 48) = sub_AB92A0();
  *(v3 + 56) = v5;
  *(v3 + 64) = sub_AB92A0();
  *(v3 + 72) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  UIScreen.Dimensions.size.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v18 = result;
    v19 = sub_13C80(0, &qword_DE8170, NSString_ptr);
    UIView.Border.init(thickness:color:)();
    *&v28 = v20;
    *(&v28 + 1) = v21;
    LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)(v18, 0, 0, 0, 0, v10, v12, v14, &v42, v16, v23, v22 & 1, v28, 0, 1, v19, v2);
    v52 = v51;
    sub_12E1C(&v52, &unk_DEE6F0, &unk_AF8970);
    v36 = v48;
    v37 = v49;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v30 = v42;
    v31 = v43;
    v39[6] = v48;
    v39[7] = v49;
    v39[2] = v44;
    v39[3] = v45;
    *v38 = v50;
    v39[4] = v46;
    v39[5] = v47;
    *&v38[8] = xmmword_AFEDC0;
    v40 = v50;
    v39[0] = v42;
    v39[1] = v43;
    v41 = xmmword_AFEDC0;
    sub_15F84(&v30, v29, &qword_DF0CE0, &qword_AFEFD0);
    result = sub_12E1C(v39, &qword_DF0CE0, &qword_AFEFD0);
    v24 = v37;
    *(a1 + 96) = v36;
    *(a1 + 112) = v24;
    *(a1 + 128) = *v38;
    *(a1 + 144) = *&v38[16];
    v25 = v33;
    *(a1 + 32) = v32;
    *(a1 + 48) = v25;
    v26 = v35;
    *(a1 + 64) = v34;
    *(a1 + 80) = v26;
    v27 = v31;
    *a1 = v30;
    *(a1 + 16) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}
void sub_1E34(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_2200(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    if (*(a1 + 72) == 1)
    {
      v12 = *(a1 + 48);
      v13 = [v7 bundleIdentifier];
      LOBYTE(v12) = [v12 containsObject:v13];

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = [v7 backgroundModes];
      v17 = [v16 containsObject:@"underwater-depth"];

      if (!v17)
      {
        goto LABEL_19;
      }
    }

    v18 = cslprf_app_library_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v7 bundleIdentifier];
      *buf = 138412802;
      v27 = v9;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[%@] adding %@; %@", buf, 0x20u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2498;
    v22[3] = &unk_35478;
    v20 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = v7;
    [v20 _withLock:v22];
  }

  else
  {
    v14 = cslprf_app_library_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "[%@] done enumerating", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

LABEL_19:
  os_activity_scope_leave(&state);

  return v11;
}

void sub_24D4(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2674;
  v8[3] = &unk_35518;
  v4 = v2;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = [v4 allValues];
  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Completed enumeration with apps: %@", buf, 0xCu);
  }

  [*(a1 + 48) _setApplications:v5];
  v7 = [*(a1 + 48) delegate];
  [v7 dataSourceDidUpdate:*(a1 + 48)];

  os_activity_scope_leave(&state);
}

void sub_2674(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_30B0(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_33F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    v12 = cslprf_app_library_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 bundleIdentifier];
      *buf = 138412802;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[%@] adding %@; %@", buf, 0x20u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_362C;
    v18[3] = &unk_35478;
    v14 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = v7;
    [v14 _withLock:v18];
  }

  else
  {
    v15 = cslprf_app_library_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "[%@] done enumerating", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  os_activity_scope_leave(&state);

  return v11;
}

void sub_3668(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3808;
  v8[3] = &unk_35518;
  v4 = v2;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = [v4 allValues];
  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Completed enumeration with apps: %@", buf, 0xCu);
  }

  [*(a1 + 48) _setApplications:v5];
  v7 = [*(a1 + 48) delegate];
  [v7 dataSourceDidUpdate:*(a1 + 48)];

  os_activity_scope_leave(&state);
}

void sub_3808(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

char *sub_3B68()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel;
  *&v0[v1] = [objc_allocWithZone(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel;
  v4 = *&v2[OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel];
  v5 = v2;
  [v4 setDelegate:v5];
  [*&v2[v3] start];

  return v5;
}

id sub_3C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_3C74@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  result = sub_26194();
  *a4 = result;
  return result;
}

uint64_t sub_3CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();

  return sub_262D4();
}

unint64_t sub_3D1C()
{
  result = qword_3C500[0];
  if (!qword_3C500[0])
  {
    type metadata accessor for BacklightSettingsSwiftModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C500);
  }

  return result;
}

id sub_3D70()
{
  v0 = objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel());

  return [v0 init];
}

uint64_t sub_3DA4(uint64_t a1, uint64_t a2)
{
  sub_4060(&qword_3B3E0, &unk_28470);
  sub_40A8(&qword_3B3E8, "NG");
  sub_40F0();
  sub_41F0();
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

uint64_t sub_3E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3B3E8, "NG");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  v13 = a1;
  v14 = a2;
  sub_4060(&qword_3B4B0, qword_296B0);
  v8 = sub_40A8(&qword_3B3F8, &qword_28480);
  v9 = sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
  v15 = v8;
  v16 = v9;
  swift_getOpaqueTypeConformance2();
  sub_26774();
  v15 = sub_133CC(0xD000000000000020, 0x800000000002C2E0);
  v16 = v10;
  sub_40F0();
  sub_41F0();
  sub_265F4();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4060(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_40A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_40F0()
{
  result = qword_3B3F0;
  if (!qword_3B3F0)
  {
    sub_40A8(&qword_3B3E8, "NG");
    sub_40A8(&qword_3B3F8, &qword_28480);
    sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B3F0);
  }

  return result;
}

unint64_t sub_41F0()
{
  result = qword_3BE10;
  if (!qword_3BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE10);
  }

  return result;
}

uint64_t sub_4244(uint64_t a1, uint64_t a2)
{
  v3 = sub_264F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4060(&qword_3B3F8, &qword_28480);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *v9 = sub_26424();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_4060(&qword_3B4B8, &unk_285B0);
  sub_4404(a1, &v9[*(v10 + 44)]);
  sub_264E4();
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
  sub_26604();
  (*(v4 + 8))(v6, v3);
  return sub_4AB4(v9);
}

uint64_t sub_4404@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = sub_4060(&qword_3B4C0, &unk_29120);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  v8 = sub_4060(&qword_3B4C8, &qword_285C0);
  v30[0] = *(v8 - 8);
  v9 = v30[0];
  v10 = __chkstk_darwin(v8);
  v37 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = v30 - v12;
  v40 = sub_133CC(0xD000000000000020, 0x800000000002C2E0);
  v41 = v13;
  sub_41F0();
  v14 = sub_26584();
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v17;
  sub_26474();
  v30[1] = v18;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();
  v19 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120, &protocol conformance descriptor for Toggle<A>);
  v20 = v35;
  v21 = v38;
  sub_265C4();
  (*(v39 + 8))(v7, v21);
  v22 = *(v9 + 16);
  v23 = v37;
  v22(v37, v20, v8);
  v24 = v31;
  v25 = v32;
  *a3 = v32;
  *(a3 + 8) = v24;
  v26 = v33 & 1;
  *(a3 + 16) = v33 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v27 = sub_4060(&qword_3B4D8, &qword_285F0);
  v22((a3 + *(v27 + 64)), v23, v8);
  sub_4B64(v25, v24, v26);
  v28 = *(v30[0] + 8);

  v28(v20, v8);
  v28(v23, v8);
  sub_4B74(v25, v24, v26);
}

id sub_4798@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel) privacyDuringAlwaysOnForLiveActivities];
  *a2 = result;
  return result;
}

id sub_47D8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();
  sub_26194();
  sub_261A4();

  v4 = *(v3 + OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel);

  return [v4 setPrivacyDuringAlwaysOnForLiveActivities:v2];
}

uint64_t sub_4858()
{
  [objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel()) init];
  sub_3D1C();

  return sub_262D4();
}

uint64_t sub_48F0()
{
  sub_4060(&qword_3B3E0, &unk_28470);
  sub_40A8(&qword_3B3E8, "NG");
  sub_40F0();
  sub_41F0();
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

__n128 sub_49BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_49C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_4A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4AB4(uint64_t a1)
{
  v2 = sub_4060(&qword_3B3F8, &qword_28480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4B1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_40A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4B74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4BA4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_4BF0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_4C3C()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_4C6C(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x800000000002C310;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x800000000002C330;
  a1[4] = 0xD000000000000018;
  a1[5] = 0x800000000002C350;
}

uint64_t sub_4D10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_4D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_4DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a2;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_4D10;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  BSDispatchMain();
  _Block_release(v10);
}

void sub_4EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_4060(&qword_3B930, &qword_28890);
  v10 = sub_26884();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_4D10;
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_4F9C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_BAD0;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_4D10;
  v4[3] = &unk_35798;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

void sub_508C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_5210;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_4D10;
  v4[3] = &unk_357E8;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

uint64_t sub_5154()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  sub_26194();
  sub_261A4();
}

uint64_t sub_51D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_4D10;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

unint64_t sub_5318(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_61;
  }

  v4 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v48 = v3 & 0xC000000000000001;
      v45 = v3 & 0xFFFFFFFFFFFFFF8;
      v47 = v2;
      v43 = v4;
      v44 = v3;
      while (1)
      {
        if (v48)
        {
          sub_26A54();
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            break;
          }

          goto LABEL_13;
        }

        if (v5 >= *(v45 + 16))
        {
          goto LABEL_58;
        }

        swift_unknownObjectRetain();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

LABEL_13:
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          if ([v8 isGlobalDefault])
          {
            type metadata accessor for LiveActivitiesAutoLaunchModel();
            sub_B4F0(&qword_3B5F0, v6, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
            sub_26194();
          }

          else
          {
            v46 = v5;
            v10 = (*(&stru_B8.size + (swift_isaMask & *v2)))();
            v11 = v10;
            if (v10 >> 62)
            {
              v12 = sub_26AF4();
              if (v12)
              {
LABEL_17:
                if (v12 < 1)
                {
                  goto LABEL_59;
                }

                v13 = 0;
                while (2)
                {
                  if ((v11 & 0xC000000000000001) != 0)
                  {
                    v2 = sub_26A54();
                  }

                  else
                  {
                    v2 = *(v11 + 8 * v13 + 32);
                  }

                  v14 = *(v2 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v15 = *(v2 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v3 = [v9 identifier];
                  v16 = sub_26844();
                  v18 = v17;

                  if (v14 == v16 && v15 == v18)
                  {
                  }

                  else
                  {
                    v20 = sub_26B34();

                    if ((v20 & 1) == 0)
                    {
LABEL_21:
                      ++v13;

                      if (v12 == v13)
                      {
                        goto LABEL_32;
                      }

                      continue;
                    }
                  }

                  break;
                }

                (*(*v2 + 144))(v9);
                type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
                sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
                sub_26194();
                sub_261A4();

                goto LABEL_21;
              }
            }

            else
            {
              v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
              if (v12)
              {
                goto LABEL_17;
              }
            }

LABEL_32:

            v22 = (*(&stru_B8.flags + (swift_isaMask & *v47)))(v21);
            v23 = v22;
            if (v22 >> 62)
            {
              v24 = sub_26AF4();
              if (v24)
              {
LABEL_34:
                if (v24 < 1)
                {
                  goto LABEL_60;
                }

                v25 = 0;
                while (2)
                {
                  if ((v23 & 0xC000000000000001) != 0)
                  {
                    v26 = sub_26A54();
                  }

                  else
                  {
                    v26 = *(v23 + 8 * v25 + 32);
                  }

                  v27 = *(v26 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v28 = *(v26 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v29 = [v9 identifier];
                  v30 = sub_26844();
                  v32 = v31;

                  if (v27 == v30 && v28 == v32)
                  {
                  }

                  else
                  {
                    v34 = sub_26B34();

                    if ((v34 & 1) == 0)
                    {
LABEL_38:
                      ++v25;

                      if (v24 == v25)
                      {
                        goto LABEL_49;
                      }

                      continue;
                    }
                  }

                  break;
                }

                (*(*v26 + 144))(v9);
                type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
                sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
                sub_26194();
                sub_261A4();

                goto LABEL_38;
              }
            }

            else
            {
              v24 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
              if (v24)
              {
                goto LABEL_34;
              }
            }

LABEL_49:

            v35 = [v9 identifier];
            v36 = sub_26844();
            v38 = v37;

            if (v36 == 0xD00000000000001ALL && 0x800000000002C310 == v38)
            {

              v5 = v46;
              v2 = v47;
              v4 = v43;
              v3 = v44;
            }

            else
            {
              v40 = sub_26B34();

              v5 = v46;
              v2 = v47;
              v4 = v43;
              v3 = v44;
              if ((v40 & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v41 = *&stru_108.segname[(swift_isaMask & *v2) - 8];
            v42 = v41(v39);
            if (v42)
            {
              (*(*v42 + 144))(v9);
            }

            if (!v41(v42))
            {
              goto LABEL_6;
            }

            type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
            sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
            sub_26194();
          }

          sub_261A4();
        }

LABEL_6:
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      result = sub_26AF4();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_5B84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_5C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_5D38()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_5D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_5E50()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_5E94(char a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_5F58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a1;
  v2 = a1;
}

uint64_t sub_5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9)
{
  v14 = swift_allocObject();
  sub_260D4();
  v15 = (v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x800000000002C330 == a2 || (sub_26B34() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x800000000002C310 == a2 || (sub_26B34() & 1) != 0)
  {

    a3 = sub_133CC(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  sub_261C4();
  swift_endAccess();
  *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v14;
}

uint64_t sub_6198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char a7, char a8, char a9)
{
  sub_260D4();
  v15 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x800000000002C330 == a2 || (sub_26B34() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x800000000002C310 == a2 || (sub_26B34() & 1) != 0)
  {

    a3 = sub_133CC(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  v20 = a5;
  sub_261C4();
  swift_endAccess();

  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v9;
}

uint64_t sub_63B8(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26214();
}

uint64_t sub_6428(uint64_t a1)
{
  sub_260E4();
  sub_B4F0(&qword_3B5D0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_267F4();
}

uint64_t sub_64B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v4 = sub_260E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_6528()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);

  return v1;
}

uint64_t sub_6564()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);

  return v1;
}

uint64_t sub_65D0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  v3 = v1 == 0xD00000000000001CLL && 0x800000000002C330 == v2;
  if (v3 || (sub_26B34() & 1) != 0)
  {
    return sub_26844();
  }

  v5 = v1 == 0xD00000000000001ALL && 0x800000000002C310 == v2;
  if (v5 || (sub_26B34() & 1) != 0)
  {
    return sub_26844();
  }

  return v1;
}

void sub_66D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_6FFC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_686C;
  v7[3] = &unk_35838;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_67CC(void *a1, char a2)
{
  [a1 setAllowLiveActivitiesForApp:a2 & 1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
  sub_26194();
  sub_261A4();
}

uint64_t sub_686C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void (*sub_68CC(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = [*(v1 + v4) allowLiveActivitiesForApp];
  return sub_6958;
}

void sub_6958(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = *(*a1 + 64);
  v5 = *((*a1)[7] + v3);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[4] = sub_BB24;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_35888;
    v7 = _Block_copy(v2);

    v8 = v5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[4] = sub_BB24;
    v2[5] = v9;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_358D8;
    v7 = _Block_copy(v2);
    v10 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

void sub_6B04(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_7008;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_686C;
  v7[3] = &unk_35928;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_6BF8(void *a1, uint64_t a2)
{
  [a1 setAutoLaunchBehaviorForApp:a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
  sub_26194();
  sub_261A4();
}

void (*sub_6C94(void *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = [*(v1 + v4) autoLaunchBehaviorForApp];
  return sub_6D20;
}

void sub_6D20(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = *((*a1)[8] + v4);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[4] = sub_BB28;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_35978;
    v7 = _Block_copy(v2);

    v8 = v5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    v2[4] = sub_BB28;
    v2[5] = v9;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_359C8;
    v7 = _Block_copy(v2);
    v10 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

uint64_t sub_6EB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26204();

  return v1;
}

uint64_t sub_6F24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_6FC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_7010(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_261F4();
  return sub_70B4;
}

void sub_70B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_711C()
{
  swift_beginAccess();
  sub_4060(&qword_3B5D8, &qword_28650);
  sub_261D4();
  return swift_endAccess();
}

uint64_t sub_7190(uint64_t a1)
{
  v2 = sub_4060(&qword_3B5E0, qword_28658);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_4060(&qword_3B5D8, &qword_28650);
  sub_261E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_72C8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_4060(&qword_3B5E0, qword_28658);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_4060(&qword_3B5D8, &qword_28650);
  sub_261D4();
  swift_endAccess();
  return sub_7438;
}

void sub_7438(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_261E4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_261E4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_75A0()
{
  v1 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_260E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4 = sub_4060(&qword_3B5D8, &qword_28650);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_7684()
{
  v1 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_260E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4 = sub_4060(&qword_3B5D8, &qword_28650);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

Swift::Int sub_77A4()
{
  sub_26B84();
  (*(*v0 + 160))(v2);
  return sub_26BA4();
}

uint64_t sub_7804@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v5 = sub_260E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_7910(uint64_t a1)
{
  sub_26B84();
  (*(**v1 + 160))(v3);
  return sub_26BA4();
}

uint64_t sub_7970@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  result = sub_26194();
  *a2 = result;
  return result;
}

uint64_t sub_79D8(char a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 globalSettings];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1 & 1;
    *(v7 + 24) = v1;
    aBlock[4] = sub_7BD0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_686C;
    aBlock[3] = &unk_35A18;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_26AE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_7B98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_7BDC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (v4)
  {
    v5 = [v4 globalAllowLiveActivities];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 8) = v5;
  return sub_7CB0;
}

id sub_7CE4(SEL *a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (!v4)
  {
    return &dword_0 + 1;
  }

  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_7D90(char a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 globalSettings];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1 & 1;
    *(v7 + 24) = v1;
    aBlock[4] = sub_7F50;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_686C;
    aBlock[3] = &unk_35A68;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_26AE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_7F5C(void *a1, SEL *a2)
{
  [a1 *a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v3, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  sub_26194();
  sub_261A4();
}

uint64_t (*sub_7FEC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (v4)
  {
    v5 = [v4 globalAutoLaunchLiveActivities];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 8) = v5;
  return sub_80C0;
}

id RemoteInstalledDepthAppsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_811C()
{
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = 0;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_filteredAppLibrary] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesWatchLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesCompanionLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp] = 0;
  v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled] = 0;
  v1 = [objc_opt_self() sharedSettingsModel];
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings] = v1;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v2 = v1;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = objc_allocWithZone(CSLPRFInstalledLiveActivityApplicationsDataSource);
  v5 = [v4 init];
  v6 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource;
  v7 = *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = v5;

  v8 = *&v3[v6];
  if (v8)
  {
    [v8 setDelegate:v3];
    v9 = *&v3[v6];
    if (v9)
    {
      [v9 start];
    }
  }

  [v2 registerObserver:v3];

  return v3;
}

id sub_82A4()
{
  v1 = *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_83EC(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v186 = a1;
  v181 = [objc_allocWithZone(CSLPRFLocalApplicationLibrary) init];
  v184 = SBSCopyDisplayIdentifiers();
  if (!v184)
  {
LABEL_206:
    __break(1u);
LABEL_207:

    __break(1u);
    goto LABEL_208;
  }

  v4 = *(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  v210 = 0;
  v206 = v1;
  if (v4)
  {
    v204 = v4;
    v5 = [v204 apps];
    sub_B8B4();
    v6 = sub_26884();

    v7 = v6;
    if (v6 >> 62)
    {
      v27 = sub_26AF4();
      v7 = v6;
      v8 = v27;
      if (v27)
      {
LABEL_5:
        if (v8 >= 1)
        {
          v9 = 0;
          v205 = (v7 & 0xC000000000000001);
          v2 = 0x800000000002C350;
          v202 = &_swiftEmptyArrayStorage;
          v10 = v7;
          while (1)
          {
            if (v205)
            {
              v11 = sub_26A54();
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            v13 = [v12 bundleIdentifier];
            v14 = sub_26844();
            v16 = v15;

            if (v14 == 0xD000000000000018 && 0x800000000002C350 == v16)
            {
            }

            else
            {
              v18 = sub_26B34();

              if ((v18 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            (*(&stru_108.flags + (swift_isaMask & *v206)))(1);
LABEL_18:
            v19 = [v12 bundleIdentifier];

            v20 = sub_26844();
            v22 = v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v202 = sub_A80C(0, *(v202 + 2) + 1, 1, v202);
            }

            v24 = *(v202 + 2);
            v23 = *(v202 + 3);
            if (v24 >= v23 >> 1)
            {
              v202 = sub_A80C((v23 > 1), v24 + 1, 1, v202);
            }

            ++v9;

            v25 = v202;
            *(v202 + 2) = v24 + 1;
            v26 = &v25[16 * v24];
            *(v26 + 4) = v20;
            *(v26 + 5) = v22;
            v7 = v10;
            if (v8 == v9)
            {
              goto LABEL_27;
            }
          }
        }

        goto LABEL_205;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
        goto LABEL_5;
      }
    }

    v202 = &_swiftEmptyArrayStorage;
LABEL_27:

    v3 = v206;
  }

  else
  {
    v202 = &_swiftEmptyArrayStorage;
  }

  v28 = [objc_opt_self() sharedLibraryForLocation:0];
  v29 = [v28 allApplications];
  v203 = sub_4060(&qword_3B938, &qword_28898);
  v30 = sub_26884();

  v208 = &_swiftEmptyArrayStorage;
  if (v30 >> 62)
  {
    goto LABEL_66;
  }

  v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
LABEL_30:
  if (v31)
  {
    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = sub_26A54();
        v3 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          v34 = v208;
          v3 = v206;
          goto LABEL_44;
        }
      }

      else
      {
        if (v32 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v31 = sub_26AF4();
          goto LABEL_30;
        }

        v33 = *(v30 + 8 * v32 + 32);
        swift_unknownObjectRetain();
        v3 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          goto LABEL_41;
        }
      }

      if ([v33 supportsSmartStack])
      {
        sub_26A84();
        v2 = v208[2];
        sub_26AB4();
        sub_26AC4();
        sub_26A94();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v32;
      if (v3 == v31)
      {
        goto LABEL_42;
      }
    }
  }

  v34 = &_swiftEmptyArrayStorage;
LABEL_44:

  v208 = &_swiftEmptyArrayStorage;
  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    v35 = sub_26AF4();
    if (v35)
    {
      goto LABEL_47;
    }

LABEL_68:
    v30 = 0;
    v47 = &_swiftEmptyArrayStorage;
    goto LABEL_69;
  }

  v35 = *(v34 + 16);
  if (!v35)
  {
    goto LABEL_68;
  }

LABEL_47:
  v2 = 0;
  v30 = 0;
  v204 = 0x800000000002C760;
  v205 = 0xD000000000000013;
  while ((v34 & 0xC000000000000001) != 0)
  {
    v3 = sub_26A54();
    v36 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_62;
    }

LABEL_53:
    v37 = [v3 SDKVersion];
    v38 = sub_26844();
    v40 = v39;

    v211 = 0.0;
    LOBYTE(v37) = sub_B7A0(v38, v40, &v211);

    if (v37)
    {
      *&v41 = v211;
      if (v211 < 19.0)
      {
        v42 = [v3 bundleIdentifier];
        v43 = sub_26844();
        v45 = v44;

        if (v43 == v205 && v204 == v45)
        {
          swift_unknownObjectRelease();

          goto LABEL_49;
        }

        v46 = sub_26B34();

        if (v46)
        {
          swift_unknownObjectRelease();
          goto LABEL_49;
        }
      }
    }

    sub_26A84();
    sub_26AB4();
    sub_26AC4();
    sub_26A94();
LABEL_49:
    ++v2;
    if (v36 == v35)
    {
      goto LABEL_63;
    }
  }

  if (v2 >= *(v34 + 16))
  {
    goto LABEL_65;
  }

  v3 = *(v34 + 8 * v2 + 32);
  swift_unknownObjectRetain();
  v36 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    goto LABEL_53;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  v47 = v208;
  v3 = v206;
LABEL_69:

  (*&stru_B8.segname[(swift_isaMask & *v3) + 8])(v47);
  v48 = [v181 allApplications];
  v49 = sub_26884();

  if (v49 >> 62)
  {
    v50 = sub_26AF4();
    if (!v50)
    {
      goto LABEL_92;
    }

LABEL_71:
    if (v50 >= 1)
    {
      v51 = 0;
      v52 = v49 & 0xC000000000000001;
      v194 = &_swiftEmptyArrayStorage;
      v205 = v49;
      do
      {
        if (v52)
        {
          v53 = sub_26A54();
        }

        else
        {
          v53 = *(v49 + 8 * v51 + 32);
          swift_unknownObjectRetain();
        }

        if ([v53 supportsSmartStack])
        {
          v54 = [v53 bundleIdentifier];
          v55 = sub_26844();
          v57 = v56;

          v208 = v55;
          v209 = v57;
          __chkstk_darwin(v58);
          v179[2] = &v208;
          LOBYTE(v54) = sub_A57C(sub_B898, v179, v202);

          if (v54)
          {
            goto LABEL_73;
          }

          v59 = [v53 bundleIdentifier];
          if (!v59)
          {
            sub_26844();
            v59 = sub_26834();
          }

          v60 = [v184 containsObject:v59];

          if ((v60 & 1) == 0)
          {
LABEL_73:
            v3 = v206;
          }

          else
          {
            v61 = [v53 bundleIdentifier];
            v62 = sub_26844();
            v64 = v63;

            v65 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v194 = sub_A80C(0, *(v194 + 2) + 1, 1, v194);
            }

            v67 = *(v194 + 2);
            v66 = *(v194 + 3);
            if (v67 >= v66 >> 1)
            {
              v194 = sub_A80C((v66 > 1), v67 + 1, 1, v194);
            }

            v68 = v194;
            *(v194 + 2) = v67 + 1;
            v69 = &v68[16 * v67];
            *(v69 + 4) = v62;
            *(v69 + 5) = v64;
            v3 = v206;
            v70 = *&stru_B8.segname[(swift_isaMask & *v206) + 16];
            swift_unknownObjectRetain();
            v71 = v70(&v208);
            v73 = v72;
            sub_26874();
            if (*(&dword_10 + (*v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_268A4();
            }

            sub_268C4();
            v71(&v208, 0);
            v30 = v65;
          }

          v49 = v205;
        }

        ++v51;
        swift_unknownObjectRelease();
      }

      while (v50 != v51);
      goto LABEL_93;
    }

    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
  if (v50)
  {
    goto LABEL_71;
  }

LABEL_92:
  v194 = &_swiftEmptyArrayStorage;
LABEL_93:
  v74 = v30;

  v180 = [objc_allocWithZone(CSLPRFReturnToAppSettingsModel) init];
  v48 = objc_opt_self();
  v204 = 0x800000000002C310;
  v75 = sub_26834();
  v35 = &off_3A000;
  v76 = [v48 fakeApplicationWithIdentifier:v75];

  v30 = *&stru_B8.segname[(swift_isaMask & *v3) + 16];
  v2 = (swift_isaMask & *v3) + 216;
  v34 = (v30)(&v208);
  v78 = v77;
  sub_26874();
  v79 = *(&dword_10 + (*v78 & 0xFFFFFFFFFFFFFF8));
  if (v79 >= *(&dword_18 + (*v78 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_182;
  }

  while (2)
  {
    sub_268C4();
    (v34)(&v208, 0);
    v195 = 0x800000000002C330;
    v80 = sub_26834();
    v81 = [v48 *(v35 + 1064)];

    v82 = (v30)(&v208);
    v84 = v83;
    sub_26874();
    v85 = v3;
    if (*(&dword_10 + (*v84 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v84 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_268A4();
    }

    sub_268C4();
    v86 = v82(&v208, 0);
    v34 = &swift_isaMask;
    v87 = (*&stru_B8.segname[swift_isaMask & *v3])(v86);
    if (v87 >> 62)
    {
      v169 = v87;
      v35 = sub_26AF4();
      v87 = v169;
    }

    else
    {
      v35 = *(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8));
    }

    v30 = v74;
    v48 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v88 = v87;
      v207 = &_swiftEmptyArrayStorage;
      v203 = v3;
      swift_unknownObjectRetain();
      v193 = v180;
      sub_26AA4();
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_202;
      }

      v79 = 0;
      v89 = v88;
      v192 = v88 & 0xC000000000000001;
      v185 = v88 & 0xFFFFFFFFFFFFFF8;
      v189 = kNanoTimerBundleIdentifier;
      v188 = "com.apple.NanoPhone";
      v183 = kNanoStopwatchBundleIdentifier;
      v74 = &SBSCopyDisplayIdentifiers_ptr;
      v187 = "ALLMUSICAPPS_APP_TITLE";
      v182 = "com.apple.NanoNowPlaying";
      v191 = v88;
      v190 = v35;
LABEL_101:
      if (__OFADD__(v79, 1))
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v205 = v79;
        sub_268A4();
        continue;
      }

      v200 = v79 + 1;
      v201 = v79;
      if (v192)
      {
        v3 = sub_26A54();
      }

      else
      {
        if (v79 >= *(v185 + 16))
        {
          goto LABEL_181;
        }

        v3 = *(v89 + 8 * v79 + 32);
        swift_unknownObjectRetain();
      }

      v90 = (*&stru_108.segname[(swift_isaMask & *v203) + 16])();
      v91 = [v90 settingsForApplication:v3];

      swift_unknownObjectRetain();
      v92 = v194;

      v93 = [v3 bundleIdentifier];
      v94 = sub_26844();
      v96 = v95;

      v208 = v94;
      v209 = v96;
      v213 = &v208;
      v97 = sub_A57C(sub_BB08, &v211, v92);

      objc_opt_self();
      v98 = swift_dynamicCastObjCClass();
      v198 = v97;
      if (v98)
      {
        [v98 setCategory:(v97 & 1) != 0];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v91 = v186;
        swift_unknownObjectRetain();
      }

      v99 = [v3 bundleIdentifier];
      if (!v99)
      {
        sub_26844();
        v99 = sub_26834();
      }

      v100 = [v193 settingsForBundleID:v99];

      if (v100)
      {
        v101 = [v100 sessionCapable];
      }

      else
      {
        v101 = 0;
      }

      v102 = [v3 bundleIdentifier];
      v103 = sub_26844();
      v105 = v104;

      if (v103 == sub_26844() && v105 == v106)
      {
LABEL_116:

        goto LABEL_118;
      }

      v107 = sub_26B34();

      if (v107)
      {
        goto LABEL_118;
      }

      v141 = [v3 bundleIdentifier];
      v142 = sub_26844();
      v144 = v143;

      if (v142 == sub_26844() && v144 == v145)
      {
        goto LABEL_116;
      }

      v146 = sub_26B34();

      if (v146)
      {
LABEL_118:
        v101 = 0;
      }

      v205 = v91;
      v199 = v30;
      v108 = [v3 unionedBackgroundModes];
      v109 = sub_26834();
      v110 = [v108 containsObject:v109];

      v111 = [v3 bundleIdentifier];
      v112 = sub_26844();
      v114 = v113;

      if (v112 == 0xD00000000000001ALL && v204 == v114)
      {
LABEL_121:

        goto LABEL_123;
      }

      v115 = sub_26B34();

      if (v115)
      {
        goto LABEL_123;
      }

      v147 = [v3 bundleIdentifier];
      v148 = sub_26844();
      v150 = v149;

      if (v148 == 0xD00000000000001CLL && v195 == v150)
      {
        goto LABEL_121;
      }

      v151 = sub_26B34();

      if (v151)
      {
LABEL_123:
        v116 = 1;
      }

      else
      {
        v116 = (v110 ^ 1) & v101;
      }

      v197 = v116;
      v117 = [v3 bundleIdentifier];
      v118 = sub_26844();
      v120 = v119;

      v121 = [v3 localizedName];
      v2 = sub_26844();
      v123 = v122;

      v196 = (*&stru_158.segname[(swift_isaMask & *v203) + 8])();
      v124 = v210;
      objc_opt_self();
      v125 = swift_dynamicCastObjCClassUnconditional();
      type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
      v126 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_260D4();
      v127 = (v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
      *v127 = v118;
      v127[1] = v120;
      v35 = 0xD000000000000028;
      if (v118 == 0xD00000000000001CLL && v195 == v120 || (sub_26B34() & 1) != 0)
      {
        v128 = &v215;
        goto LABEL_128;
      }

      v35 = 0xD000000000000026;
      if (v118 == 0xD00000000000001ALL && v204 == v120 || (sub_26B34() & 1) != 0)
      {
        v128 = &v212;
LABEL_128:
        v129 = *(v128 - 32);
        v85 = v206;

        v2 = sub_133CC(v35, (v129 | 0x8000000000000000));
        v123 = v130;
      }

      else
      {
        v85 = v206;
      }

      v131 = v198;
      v132 = v124 | v198 ^ 1;
      v133 = (v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      *v133 = v2;
      v133[1] = v123;
      *(v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = v125;
      swift_beginAccess();
      v214 = v196 & 1;
      sub_261C4();
      swift_endAccess();
      *(v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = v132 & 1;
      *(v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = v131 & 1;
      *(v126 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = v197;
      v134 = [v3 bundleIdentifier];
      v135 = sub_26844();
      v137 = v136;

      v34 = &swift_isaMask;
      if (v135 == 0xD00000000000001ALL && v204 == v137)
      {

        goto LABEL_133;
      }

      v138 = sub_26B34();

      if (v138)
      {
LABEL_133:
        v139 = *&stru_108.segname[swift_isaMask & *v203];

        v139(v140);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v30 = v199;
      if (v199)
      {
        goto LABEL_207;
      }

      sub_26A84();
      v48 = v207[2];
      sub_26AB4();
      sub_26AC4();
      sub_26A94();
      v79 = v201 + 1;
      v89 = v191;
      v74 = &SBSCopyDisplayIdentifiers_ptr;
      if (v200 == v190)
      {

        swift_unknownObjectRelease();
        break;
      }

      goto LABEL_101;
    }

    break;
  }

  v208 = sub_B578(v152);
  sub_A628(&v208);
  if (v30)
  {
LABEL_208:

    __break(1u);
    return result;
  }

  v153 = *(&stru_B8.offset + (swift_isaMask & *v85));
  v203 = ((swift_isaMask & *v85) + 232);
  v204 = v153;
  v154 = (v153)(v208);
  v155 = (*&stru_108.segname[(swift_isaMask & *v85) - 8])(v154);
  if (!v155)
  {
    goto LABEL_166;
  }

  v30 = v155;
  v79 = (*(&stru_B8.size + (swift_isaMask & *v85)))();
  v48 = v79;
  v2 = v79 & 0xFFFFFFFFFFFFFF8;
  if (v79 >> 62)
  {
LABEL_203:
    v79 = sub_26AF4();
    v156 = v79;
    goto LABEL_154;
  }

  v156 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
LABEL_154:
  v157 = 0;
  v74 = (v48 & 0xC000000000000001);
  while (1)
  {
    if (v156 == v157)
    {

      v85 = v206;
      goto LABEL_166;
    }

    if (v74)
    {
      sub_26A54();
    }

    else
    {
      if (v157 >= *(v2 + 16))
      {
        goto LABEL_179;
      }
    }

    v35 = sub_260C4();

    if (v35)
    {
      break;
    }

    v158 = __OFADD__(v157++, 1);
    v34 = &swift_isaMask;
    if (v158)
    {
      goto LABEL_180;
    }
  }

  v85 = v206;
  v159 = (*(&stru_B8.reloff + (swift_isaMask & *v206)))(&v208);
  sub_9EF8(v157);

  v159(&v208, 0);
  v34 = &swift_isaMask;

LABEL_166:
  v205 = *(&stru_B8.size + (*v34 & *v85));
  v160 = v205(v155);
  v161 = v160;
  if (v160 >> 62)
  {
    v162 = sub_26AF4();
    if (!v162)
    {
      goto LABEL_185;
    }

LABEL_168:
    if (v162 >= 1)
    {
      for (i = 0; i != v162; ++i)
      {
        if ((v161 & 0xC000000000000001) != 0)
        {
          v164 = sub_26A54();
        }

        else
        {
          v164 = *(v161 + 8 * i + 32);
        }

        if (*(v164 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
        {
          v165 = *&stru_108.sectname[swift_isaMask & *v206];

          v166 = v165(&v208);
          v168 = v167;
          sub_26874();
          if (*(&dword_10 + (*v168 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v168 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v201 = *(&dword_10 + (*v168 & 0xFFFFFFFFFFFFFF8));
            sub_268A4();
          }

          sub_268C4();
          v166(&v208, 0);
        }
      }

      goto LABEL_185;
    }

    __break(1u);
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v162 = *(&dword_10 + (v160 & 0xFFFFFFFFFFFFFF8));
  if (v162)
  {
    goto LABEL_168;
  }

LABEL_185:

  v171 = v205(v170);
  v172 = v171;
  v208 = &_swiftEmptyArrayStorage;
  if (v171 >> 62)
  {
    goto LABEL_199;
  }

  v173 = *(&dword_10 + (v171 & 0xFFFFFFFFFFFFFF8));
  if (v173)
  {
LABEL_187:
    v174 = 0;
    do
    {
      if ((v172 & 0xC000000000000001) != 0)
      {
        v175 = sub_26A54();
        v176 = v174 + 1;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (v174 >= *(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_198;
        }

        v175 = *(v172 + 8 * v174 + 32);

        v176 = v174 + 1;
        if (__OFADD__(v174, 1))
        {
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          v173 = sub_26AF4();
          if (!v173)
          {
            break;
          }

          goto LABEL_187;
        }
      }

      if (*(v175 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp))
      {
      }

      else
      {
        sub_26A84();
        sub_26AB4();
        sub_26AC4();
        sub_26A94();
      }

      ++v174;
    }

    while (v176 != v173);
  }

  (v204)(v208);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v177, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  sub_26194();
  sub_261A4();

  swift_unknownObjectRelease();
}

unint64_t sub_9EF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_A6A4(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_9F88@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  result = sub_26194();
  *a2 = result;
  return result;
}

uint64_t sub_9FC4()
{
  v1 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  v2 = [v1 globalSettings];

  sub_83EC(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_A11C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  sub_26194();
  sub_261A4();
}

uint64_t type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(uint64_t a1)
{
  result = qword_3C8C0;
  if (!qword_3C8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_A280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_A294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_A2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_A340(uint64_t a1)
{
  sub_260E4();
  if (v1 <= 0x3F)
  {
    sub_A52C(319, &unk_3B710, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_A52C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_A57C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_A628(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_B78C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_A9A0(v6);
  return sub_26A94();
}

uint64_t sub_A6A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26AF4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

char *sub_A708(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3B968, &qword_29870);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_A80C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3B948, &unk_288A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_A918(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_4060(&qword_3B960, qword_288B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

Swift::Int sub_A9A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
        v6 = sub_268B4();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_AB7C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_AAA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_AAA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = sub_26B34(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v16;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_AB7C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_104:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_B454(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        sub_B168((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_B454(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_B3C8(v88 - 1);
        v88 = *(v9 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_26B34();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
        v5 = v11 + 8 * v10 + 16;
        do
        {
          v18 = (*v5 + v17);
          result = *v18;
          v19 = v18[1];
          v20 = (*(v5 - 8) + v17);
          if (result == *v20 && v19 == v20[1])
          {
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = sub_26B34();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
          }

          ++v8;
          v5 += 8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_22:
      if (v16)
      {
LABEL_23:
        if (v8 < v10)
        {
          goto LABEL_133;
        }

        if (v10 < v8)
        {
          v22 = 8 * v8 - 8;
          v23 = 8 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_139;
              }

              v26 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v22);
              *(v27 + v22) = v26;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_132;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_134;
        }

        if (v10 + a4 >= v28)
        {
          v29 = v6[1];
        }

        else
        {
          v29 = v10 + a4;
        }

        if (v29 < v10)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v8 != v29)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_A708(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_A708((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v8;
    v46 = *v95;
    if (!*v95)
    {
      goto LABEL_141;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_73:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_87:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_94:
        v5 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v6)
        {
          goto LABEL_138;
        }

        v85 = *&v9[16 * v5 + 32];
        v86 = *&v9[16 * v47 + 40];
        sub_B168((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_B454(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_B3C8(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v92 = v10;
  v93 = v6;
  v30 = *v6;
  v31 = *v6 + 8 * v8 - 8;
  v32 = v10 - v8;
LABEL_42:
  v33 = *(v30 + 8 * v8);
  v34 = v32;
  v5 = v31;
  while (1)
  {
    v35 = (v33 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = sub_26B34(), (result & 1) == 0))
    {
LABEL_41:
      ++v8;
      v31 += 8;
      --v32;
      if (v8 != v29)
      {
        goto LABEL_42;
      }

      v8 = v29;
      v10 = v92;
      v6 = v93;
      goto LABEL_53;
    }

    if (!v30)
    {
      break;
    }

    v40 = *v5;
    v33 = *(v5 + 8);
    *v5 = v33;
    *(v5 + 8) = v40;
    v5 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_B168(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);
        v25 = (*v21 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v26 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName) == *v25 && v24 == v25[1];
        if (!v26 && (sub_26B34() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (sub_26B34() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_B3C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_B454(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t (*sub_B468(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_26A54();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_B4E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_B4F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B538()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_B578(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_26AF4();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_A918(v3, 0);
  sub_B60C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_B60C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26AF4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_26AF4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B904();
          for (i = 0; i != v6; ++i)
          {
            sub_4060(&qword_3B950, &unk_28A50);
            v9 = sub_B468(v13, i, a3);
            v11 = *v10;

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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
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

BOOL sub_B7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_26A44();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_B8B4()
{
  result = qword_3B940;
  if (!qword_3B940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3B940);
  }

  return result;
}

unint64_t sub_B904()
{
  result = qword_3B958;
  if (!qword_3B958)
  {
    sub_40A8(&qword_3B950, &unk_28A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B958);
  }

  return result;
}

uint64_t sub_B968(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B34() & 1;
  }
}

_BYTE *sub_B9C0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_BB84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);

  return sub_262E4();
}

uint64_t sub_BC10@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v60 = sub_4060(&qword_3B970, &qword_288D0);
  __chkstk_darwin(v60);
  v56 = &v55 - v5;
  v6 = sub_4060(&qword_3B978, &qword_288D8);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = __chkstk_darwin(v6);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v55 - v9;
  v10 = sub_4060(&qword_3B980, &qword_288E0);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = __chkstk_darwin(v10);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = sub_4060(&qword_3B988, &qword_288E8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = sub_4060(&qword_3B990, &qword_288F0);
  v20 = __chkstk_darwin(v19 - 8);
  v68 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v70 = &v55 - v23;
  v24 = (*&stru_108.segname[(swift_isaMask & *a2) - 8])(v22);
  if (v24)
  {
    *(&v55 - 4) = __chkstk_darwin(v24);
    *(&v55 - 3) = a1;
    *(&v55 - 2) = a2;
    sub_C5D4();
    sub_26774();

    v25 = v70;
    (*(v16 + 32))(v70, v18, v15);
    v26 = (*(v16 + 56))(v25, 0, 1, v15);
  }

  else
  {
    v26 = (*(v16 + 56))(v70, 1, 1, v15);
  }

  __chkstk_darwin(v26);
  *(&v55 - 2) = a1;
  *(&v55 - 1) = a2;
  v57 = sub_4060(&qword_3B998, &qword_288F8);
  v59 = sub_C550();
  v27 = sub_26774();
  v58 = &v55;
  __chkstk_darwin(v27);
  *(&v55 - 2) = a1;
  *(&v55 - 1) = a2;
  v71 = sub_133CC(0xD00000000000002CLL, 0x800000000002C7A0);
  v72 = v28;
  sub_41F0();
  v29 = sub_26584();
  v31 = v30;
  v33 = v32;
  v55 = v14;
  v35 = v34;
  v36 = v56;
  v37 = &v56[*(v60 + 36)];
  v38 = *(sub_4060(&qword_3B9B0, &qword_28900) + 28);
  v39 = sub_26534();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *v37 = swift_getKeyPath();
  *v36 = v29;
  *(v36 + 1) = v31;
  v36[16] = v33 & 1;
  *(v36 + 3) = v35;
  sub_C8E4();
  v40 = v69;
  sub_26754();
  v41 = v68;
  sub_CBD4(v70, v68, &qword_3B990, &qword_288F0);
  v43 = v61;
  v42 = v62;
  v60 = *(v62 + 16);
  v44 = v63;
  (v60)(v61, v14, v63);
  v46 = v64;
  v45 = v65;
  v59 = *(v65 + 16);
  v47 = v40;
  v48 = v66;
  v59(v64, v47, v66);
  v49 = v41;
  v50 = v67;
  sub_CBD4(v49, v67, &qword_3B990, &qword_288F0);
  v51 = sub_4060(&qword_3B9C8, qword_28938);
  (v60)(v50 + *(v51 + 48), v43, v44);
  v59((v50 + *(v51 + 64)), v46, v48);
  v52 = *(v45 + 8);
  v52(v69, v48);
  v53 = *(v42 + 8);
  v53(v55, v44);
  sub_C99C(v70);
  v52(v46, v48);
  v53(v43, v44);
  return sub_C99C(v68);
}

uint64_t sub_C31C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.segname[(swift_isaMask & **a1) + 8])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_C3E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.size + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_4060(&qword_3B950, &unk_28A50);
  sub_4B1C(&qword_3B9E8, &qword_3B950, &unk_28A50, &protocol conformance descriptor for [A]);
  sub_CC8C(&unk_3B9F0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_28698);
  sub_C5D4();
  return sub_26734();
}

unint64_t sub_C550()
{
  result = qword_3B9A0;
  if (!qword_3B9A0)
  {
    sub_40A8(&qword_3B998, &qword_288F8);
    sub_C5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9A0);
  }

  return result;
}

unint64_t sub_C5D4()
{
  result = qword_3B9A8;
  if (!qword_3B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9A8);
  }

  return result;
}

uint64_t sub_C628()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.flags + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_4060(&qword_3B950, &unk_28A50);
  sub_4B1C(&qword_3B9E8, &qword_3B950, &unk_28A50, &protocol conformance descriptor for [A]);
  sub_CC8C(&unk_3B9F0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_28698);
  sub_C5D4();
  return sub_26734();
}

uint64_t sub_C794(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);

  return sub_262D4();
}

uint64_t sub_C83C(uint64_t a1)
{
  v2 = sub_4060(&qword_3B9E0, &unk_28A28);
  __chkstk_darwin(v2 - 8);
  sub_CBD4(a1, &v5 - v3, &qword_3B9E0, &unk_28A28);
  return sub_26374();
}

unint64_t sub_C8E4()
{
  result = qword_3B9B8;
  if (!qword_3B9B8)
  {
    sub_40A8(&qword_3B970, &qword_288D0);
    sub_4B1C(&qword_3B9C0, &qword_3B9B0, &qword_28900, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9B8);
  }

  return result;
}

uint64_t sub_C99C(uint64_t a1)
{
  v2 = sub_4060(&qword_3B990, &qword_288F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_CA04@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(&stru_108.reloff + (swift_isaMask & **(v1 + 32)));

  v4(v5);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  v6 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_2104C(sub_CE50, v3, v9, v10, v11, v12);
  v7 = v12[1];
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v13[0];
  result = *(v13 + 9);
  *(a1 + 41) = *(v13 + 9);
  return result;
}

uint64_t sub_CBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4060(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_CC3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_CCEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = *(&stru_108.reloff + (swift_isaMask & **(v3 + 24)));

  v7(v8);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  v9 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_2104C(a2, v6, v12, v13, v14, v15);
  v10 = v15[1];
  *a3 = v15[0];
  a3[1] = v10;
  a3[2] = v16[0];
  result = *(v16 + 9);
  *(a3 + 41) = *(v16 + 9);
  return result;
}

id MediaAutoLaunchModel.mediaAutoLaunchEnabled.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting) value];
  if (result)
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8(v3, &v4);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_CEE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void MediaAutoLaunchModel.mediaAutoLaunchEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting);
  if ([v3 value])
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8(&v6, &v7);
    swift_dynamicCast();
    if (v5 != (a1 & 1))
    {
      type metadata accessor for MediaAutoLaunchModel();
      sub_D018();
      sub_26194();
      sub_261A4();

      isa = sub_268D4().super.super.isa;
      [v3 setValue:isa];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_D018()
{
  result = qword_3BA08;
  if (!qword_3BA08)
  {
    type metadata accessor for MediaAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA08);
  }

  return result;
}

void (*MediaAutoLaunchModel.mediaAutoLaunchEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  result = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting) value];
  if (result)
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8((v4 + 32), v4);
    swift_dynamicCast();
    *(v4 + 72) = *(v4 + 73);
    return sub_D150;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_D150(uint64_t a1)
{
  v1 = *a1;
  MediaAutoLaunchModel.mediaAutoLaunchEnabled.setter(*(*a1 + 72));

  free(v1);
}

char *MediaAutoLaunchModel.init()()
{
  sub_D2B8();
  v10 = &type metadata for Bool;
  v9[0] = 1;
  v1 = objc_allocWithZone(NSString);
  v2 = sub_26834();
  v3 = [v1 initWithString:v2];

  v4 = [v3 UTF8String];
  v5 = v3;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting] = sub_D304(0x747541616964656DLL, 0xEF68636E75614C6FLL, v9, v4);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MediaAutoLaunchModel();
  v6 = objc_msgSendSuper2(&v8, "init");
  [*&v6[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting] setDelegate:v6];
  return v6;
}

unint64_t sub_D2B8()
{
  result = qword_3BA10;
  if (!qword_3BA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BA10);
  }

  return result;
}

id sub_D304(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_26834();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_D5F0(a3, a3[3]);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_26B24();
    (*(v9 + 8))(v11, v7);
    sub_D634(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v6 defaultValue:v12 notification:a4];

  swift_unknownObjectRelease();
  return v13;
}

id MediaAutoLaunchModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAutoLaunchModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D4E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaAutoLaunchModel();
  result = sub_26194();
  *a2 = result;
  return result;
}

uint64_t MediaAutoLaunchModel.twoWaySyncSettingDidUpdate(_:)()
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();
  sub_26194();
  sub_261A4();
}

void *sub_D5F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_D634(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_D680(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);

  return sub_262D4();
}

uint64_t sub_D6FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);

  return sub_262E4();
}

id sub_D788()
{
  v0 = objc_allocWithZone(CSLPRFIconFetcher);

  return [v0 init];
}

uint64_t sub_D7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_4060(&qword_3BA40, &qword_28AE0);
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_4060(&qword_3BA48, &qword_28AE8);
  sub_4B1C(&qword_3BA50, &qword_3BA48, &qword_28AE8, &protocol conformance descriptor for TupleView<A>);
  sub_26524();
  sub_DB00();
  sub_DB4C(&qword_3BA58, sub_DB00, &protocol conformance descriptor for CSLPRFIconFetcher);
  v9 = sub_26184();
  v10 = &v8[*(v6 + 36)];
  *v10 = v9;
  v10[1] = a3;
  v11 = a3;
  v18 = sub_133CC(0xD000000000000015, 0x800000000002C880);
  v19 = v12;
  sub_DB94();
  sub_41F0();
  sub_265F4();

  return sub_DC78(v8);
}

void sub_D99C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_133C4();
  v6 = v5;
  if ((*&stru_158.sectname[swift_isaMask & *v3])())
  {
    v7 = sub_133C4();
    v9 = v8;
    CSLPRFDepthAutoLaunchBehavior.id.getter();
    v10 = sub_CE4C();
    v12 = v11;
    CSLPRFDepthAutoLaunchBehavior.id.getter();
    v13 = v9;
    v14 = v12;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

  v15 = v6;
  sub_DEC8(v7, v9, v10, v12);
  sub_DF08(v7, v9, v10, v12);
  *a1 = v4;
  a1[1] = v15;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v12;
  sub_DF08(v7, v9, v10, v12);
}

unint64_t sub_DB00()
{
  result = qword_3BC70;
  if (!qword_3BC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BC70);
  }

  return result;
}

uint64_t sub_DB4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_DB94()
{
  result = qword_3BA60;
  if (!qword_3BA60)
  {
    sub_40A8(&qword_3BA40, &qword_28AE0);
    sub_4B1C(&qword_3BA68, &qword_3BA70, &qword_28AF0, &protocol conformance descriptor for List<A, B>);
    sub_4B1C(&qword_3BA78, &qword_3BA80, &qword_28AF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA60);
  }

  return result;
}

uint64_t sub_DC78(uint64_t a1)
{
  v2 = sub_4060(&qword_3BA40, &qword_28AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DCE0(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_28738);
  v1 = sub_262D4();
  [objc_allocWithZone(CSLPRFIconFetcher) init];
  return v1;
}

__n128 sub_DDA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_DDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_DE00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_DE50()
{
  sub_40A8(&qword_3BA40, &qword_28AE0);
  sub_DB94();
  sub_41F0();
  return swift_getOpaqueTypeConformance2();
}

void sub_DEC8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_DF08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_DF48()
{
  sub_133CC(0xD00000000000002FLL, 0x800000000002C8A0);
  sub_41F0();
  sub_26584();
  sub_4060(&qword_3BA88, "RZ");
  sub_E084();
  return sub_26784();
}

uint64_t sub_E010()
{
  sub_4858();
  sub_E220();
  return sub_262C4();
}

unint64_t sub_E084()
{
  result = qword_3BA90;
  if (!qword_3BA90)
  {
    sub_40A8(&qword_3BA88, "RZ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA90);
  }

  return result;
}

uint64_t sub_E0E8@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD000000000000027, 0x800000000002C8D0);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_E188()
{
  result = qword_3BA98;
  if (!qword_3BA98)
  {
    sub_40A8(&qword_3BAA0, &unk_28C60);
    sub_E084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA98);
  }

  return result;
}

unint64_t sub_E220()
{
  result = qword_3BAA8;
  if (!qword_3BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAA8);
  }

  return result;
}

void sub_E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_E364(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void sub_E364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_E3C8@<D0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  if (a2)
  {
    sub_E4D8();
  }

  else
  {
    *&v8 = sub_133CC(0xD000000000000010, 0x800000000002C900);
    *(&v8 + 1) = v6;
    sub_41F0();
    sub_26584();
    sub_E4D8();
  }

  sub_264B4();
  result = *&v8;
  *a5 = v8;
  *(a5 + 16) = v9;
  *(a5 + 32) = v10;
  return result;
}

unint64_t sub_E4D8()
{
  result = qword_3CAF0[0];
  if (!qword_3CAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CAF0);
  }

  return result;
}

uint64_t sub_E52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_4060(&qword_3BAD0, &qword_28E28);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v33[-v14];

  v16 = sub_5E48();
  sub_14B50(a1, a2, v16 & 1, &v37);
  *&v43[0] = a3;
  *(&v43[0] + 1) = a4;
  sub_41F0();

  v17 = sub_26584();
  v19 = v18;
  v34 = v20;
  v22 = v21;
  v23 = v15;
  v35 = v15;
  sub_262C4();
  v24 = *(v11 + 16);
  v25 = v36;
  v24(v36, v23, v10);
  v26 = v40;
  v42[2] = v39;
  v42[3] = v40;
  v27 = v41;
  v42[4] = v41;
  v28 = v38;
  v29 = v37;
  v42[0] = v37;
  v42[1] = v38;
  *(a5 + 32) = v39;
  *(a5 + 48) = v26;
  *(a5 + 64) = v27;
  *a5 = v29;
  *(a5 + 16) = v28;
  *(a5 + 80) = v17;
  *(a5 + 88) = v19;
  LOBYTE(v23) = v34 & 1;
  *(a5 + 96) = v34 & 1;
  *(a5 + 104) = v22;
  v30 = sub_4060(&qword_3BAD8, &qword_28E30);
  v24((a5 + *(v30 + 64)), v25, v10);
  sub_EB84(v42, v43);
  sub_4B64(v17, v19, v23);
  v31 = *(v11 + 8);

  v31(v35, v10);
  v31(v25, v10);
  sub_4B74(v17, v19, v23);

  v43[2] = v39;
  v43[3] = v40;
  v43[4] = v41;
  v43[0] = v37;
  v43[1] = v38;
  return sub_EBE0(v43);
}

uint64_t sub_E82C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_26424();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_4060(&qword_3BAC0, &qword_28DE8);
  sub_E52C(v4, v5, v7, v6, a2 + *(v8 + 44));
  v9 = sub_26614();
  KeyPath = swift_getKeyPath();
  result = sub_4060(&qword_3BAC8, &qword_28E20);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_E904(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_E91C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_E928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_E984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_E9EC()
{
  result = qword_3BAB0;
  if (!qword_3BAB0)
  {
    sub_40A8(&qword_3BAB8, &qword_28D48);
    sub_E4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAB0);
  }

  return result;
}

uint64_t sub_EA78(uint64_t a1, int a2)
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

uint64_t sub_EAC0(uint64_t result, int a2, int a3)
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

uint64_t sub_EB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_263A4();
  *a1 = result;
  return result;
}

unint64_t sub_EC38()
{
  result = qword_3BAE0;
  if (!qword_3BAE0)
  {
    sub_40A8(&qword_3BAC8, &qword_28E20);
    sub_4B1C(&qword_3BAE8, &qword_3BAF0, &qword_28E38, &protocol conformance descriptor for HStack<A>);
    sub_4B1C(&qword_3BAF8, &qword_3BB00, &unk_28E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAE0);
  }

  return result;
}

uint64_t sub_ED28(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);

  return sub_262D4();
}

uint64_t sub_EDAC(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_EDD8()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);

  return sub_262E4();
}

uint64_t sub_EE9C()
{
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return v1;
}

uint64_t (*sub_EF40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_F04C(v3 + 48, v3 + 32);
  *(v5 + 8) = sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return sub_EFF0;
}

void sub_EFF0(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v1[2] = **a1;
  *(v1 + 65) = v2;
  sub_26684();
  sub_F0BC(v1);

  free(v1);
}

uint64_t sub_F04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3BB10, &qword_28E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F0BC(uint64_t a1)
{
  v2 = sub_4060(&qword_3BB08, &qword_28E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F124()
{
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26694();
  return v1;
}

uint64_t sub_F178()
{
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return v1;
}

void (*sub_F22C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 48);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_F360(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return sub_F2E8;
}

void sub_F2E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 56);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_26704();
  sub_F3BC(v1 + 48);

  free(v1);
}

uint64_t sub_F410()
{
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_26714();
  return v1;
}

uint64_t sub_F480@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);

  v10 = sub_262D4();
  v12 = v11;
  sub_26664();

  *a6 = v10;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = &off_35F20;
  return result;
}

uint64_t sub_F57C()
{
  v1 = sub_26464();
  __chkstk_darwin(v1 - 8);
  v2 = sub_4060(&qword_3BB20, &qword_28E68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = v0;
  sub_4060(&qword_3BB28, &unk_28E70);
  sub_4B1C(&qword_3BB30, &qword_3BB28, &unk_28E70, &protocol conformance descriptor for TupleView<A>);
  sub_26514();
  sub_26454();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_26444(v9);
  sub_26434(*(*(v0 + 8) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName));
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_26444(v10);
  sub_26484();
  sub_4B1C(&qword_3BB38, &qword_3BB20, &qword_28E68, &protocol conformance descriptor for Form<A>);
  sub_265E4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_F7D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_4060(&qword_3BB48, &qword_29058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - v5;
  v6 = sub_4060(&qword_3BB50, &qword_29060);
  v7 = __chkstk_darwin(v6 - 8);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v38 = sub_4060(&qword_3BB58, &qword_29068);
  v11 = *(v38 - 8);
  v12 = __chkstk_darwin(v38);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v42 = a1;
  sub_4060(&qword_3BB60, &qword_29070);
  v16 = sub_40A8(&qword_3BB68, &qword_29078);
  v17 = sub_4B1C(&qword_3BB70, &qword_3BB68, &qword_29078, &protocol conformance descriptor for HStack<A>);
  *&v44 = v16;
  *(&v44 + 1) = v17;
  v18 = v10;
  v19 = v4;
  v20 = 1;
  swift_getOpaqueTypeConformance2();
  v21 = v15;
  v22 = sub_26774();
  v23 = *(a1 + 8);
  if ((*(*v23 + 248))(v22))
  {
    v44 = *(a1 + 32);
    v45 = *(a1 + 48);
    sub_4060(&qword_3BB18, &qword_28E60);
    v24 = sub_266F4();
    if (v43 == 1 && (v25 = (*(*v23 + 176))(v24), (v25 & 1) != 0))
    {
      __chkstk_darwin(v25);
      *(&v36 - 2) = a1;
      sub_4060(&qword_3BB80, &qword_29088);
      sub_123B4();
      v26 = v37;
      sub_26524();
      (*(v19 + 32))(v18, v26, v3);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }
  }

  (*(v19 + 56))(v18, v20, 1, v3);
  v27 = v11;
  v28 = *(v11 + 16);
  v29 = v38;
  v30 = v39;
  v28(v39, v21, v38);
  v31 = v40;
  sub_CBD4(v18, v40, &qword_3BB50, &qword_29060);
  v32 = v41;
  v28(v41, v30, v29);
  v33 = sub_4060(&qword_3BB78, &qword_29080);
  sub_CBD4(v31, &v32[*(v33 + 48)], &qword_3BB50, &qword_29060);
  sub_126EC(v18, &qword_3BB50, &qword_29060);
  v34 = *(v27 + 8);
  v34(v21, v29);
  sub_126EC(v31, &qword_3BB50, &qword_29060);
  return (v34)(v30, v29);
}

uint64_t sub_FCE4(uint64_t *a1)
{
  v2 = sub_264F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4060(&qword_3BB68, &qword_29078);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  *v8 = sub_26424();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_4060(&qword_3BC20, &qword_29118);
  sub_FEA4(a1, &v8[*(v9 + 44)]);
  sub_264E4();
  sub_4B1C(&qword_3BB70, &qword_3BB68, &qword_29078, &protocol conformance descriptor for HStack<A>);
  sub_26604();
  (*(v3 + 8))(v5, v2);
  return sub_126EC(v8, &qword_3BB68, &qword_29078);
}

uint64_t sub_FEA4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = sub_4060(&qword_3B4C0, &unk_29120);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = v35 - v4;
  v5 = sub_4060(&qword_3B4C8, &qword_285C0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = __chkstk_darwin(v5);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  if (*(a1[1] + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
  {
    *&v52 = sub_133CC(0xD00000000000001ELL, 0x800000000002C9F0);
    *(&v52 + 1) = v10;
    sub_41F0();
    v47 = sub_26584();
    v48 = v11;
    v49 = v12 & 1;
    v50 = v13;
    v51 = 0;
  }

  else
  {
    *&v52 = sub_133CC(0xD000000000000017, 0x800000000002C9D0);
    *(&v52 + 1) = v14;
    sub_41F0();
    v47 = sub_26584();
    v48 = v16;
    v49 = v15 & 1;
    v50 = v17;
    v51 = 1;
  }

  sub_264B4();
  v18 = v54;
  v36 = v53;
  v37 = v52;
  v19 = *(&v52 + 1);
  v38 = *(&v53 + 1);
  v20 = v53;
  v39 = v52;
  sub_1274C(v52, *(&v52 + 1), v53, *(&v53 + 1));
  v35[1] = sub_26474();
  v35[0] = v21;
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
  sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  v22 = v40;
  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120, &protocol conformance descriptor for Toggle<A>);
  v23 = v43;
  sub_265C4();
  (*(v42 + 8))(v22, v23);
  v25 = v44;
  v24 = v45;
  v26 = *(v44 + 16);
  v27 = v41;
  v26(v41, v9, v45);
  v28 = v46;
  v29 = v36;
  *v46 = v37;
  v28[1] = v29;
  *(v28 + 32) = v18;
  *(v28 + 5) = 0;
  *(v28 + 48) = 1;
  v30 = sub_4060(&qword_3BC28, &qword_29158);
  v26(v28 + *(v30 + 64), v27, v24);
  v32 = v38;
  v31 = v39;
  sub_1274C(v39, v19, v20, v38);
  sub_12788(v31, v19, v20, v32);
  v33 = *(v25 + 8);
  v33(v9, v24);
  v33(v27, v24);
  return sub_12788(v31, v19, v20, v32);
}

uint64_t sub_10364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_103FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v52 = sub_4060(&qword_3BBB0, &qword_290A0);
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - v3;
  v53 = sub_4060(&qword_3BBC0, &qword_290A8);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v44 - v4;
  v60 = sub_4060(&qword_3BBC8, &qword_290B0);
  __chkstk_darwin(v60);
  v62 = &v44 - v5;
  v49 = sub_4060(&qword_3BBD0, &qword_290B8);
  __chkstk_darwin(v49);
  v50 = &v44 - v6;
  v61 = sub_4060(&qword_3BB98, &qword_29090);
  __chkstk_darwin(v61);
  v51 = &v44 - v7;
  v58 = sub_26414();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_4060(&qword_3BBA0, &qword_29098);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = &v44 - v10;
  v59 = sub_4060(&qword_3BBD8, &qword_290C0);
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v44 - v12;
  v14 = a1[1];
  v15 = *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v16 = *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  sub_4C6C(v71);
  v73 = v71[1];
  v74 = v71[0];
  v17 = v71[0];
  sub_12650(&v73);
  v72 = v71[2];
  sub_12650(&v72);
  if (__PAIR128__(v16, v15) == v17)
  {
    sub_12650(&v74);
  }

  else
  {
    v18 = sub_26B34();
    sub_12650(&v74);
    if ((v18 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v64 = *(a1 + 1);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  if ((v67 & 1) == 0)
  {
    v69 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v70 = v36;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBE0, &qword_290F0);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_28FAC);
    sub_4B1C(&qword_3BBF0, &qword_3BBE0, &qword_290F0, &protocol conformance descriptor for TupleView<A>);
    sub_41F0();
    sub_266C4();
    sub_26404();
    v37 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098, &protocol conformance descriptor for Picker<A, B, C>);
    v38 = v57;
    v39 = v58;
    sub_265B4();
    (*(v56 + 8))(v9, v39);
    (*(v54 + 8))(v11, v38);
    v40 = v55;
    v41 = v59;
    (*(v55 + 16))(v50, v13, v59);
    swift_storeEnumTagMultiPayload();
    *&v64 = v38;
    *(&v64 + 1) = v39;
    v65 = v37;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v42 = sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0, &protocol conformance descriptor for Picker<A, B, C>);
    *&v64 = v52;
    *(&v64 + 1) = v39;
    v65 = v42;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v43 = v51;
    sub_264B4();
    sub_CBD4(v43, v62, &qword_3BB98, &qword_29090);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    sub_264B4();
    sub_126EC(v43, &qword_3BB98, &qword_29090);
    return (*(v40 + 8))(v13, v41);
  }

LABEL_5:
  if (*(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) == 1 && *(v14 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) == 1)
  {
    v69 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v70 = v19;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBF8, &qword_290F8);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_28FAC);
    sub_4B1C(&qword_3BC00, &qword_3BBF8, &qword_290F8, &protocol conformance descriptor for TupleView<A>);
    sub_41F0();
    v20 = v45;
    sub_266C4();
    sub_26404();
    v21 = sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0, &protocol conformance descriptor for Picker<A, B, C>);
    v22 = v47;
    v23 = v52;
    v24 = v58;
    sub_265B4();
    (*(v56 + 8))(v9, v24);
    (*(v46 + 8))(v20, v23);
    v25 = v48;
    v26 = v53;
    (*(v48 + 16))(v50, v22, v53);
    swift_storeEnumTagMultiPayload();
    v27 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098, &protocol conformance descriptor for Picker<A, B, C>);
    *&v64 = v57;
    *(&v64 + 1) = v24;
    v65 = v27;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    *&v64 = v23;
    *(&v64 + 1) = v24;
    v65 = v21;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v28 = v51;
    sub_264B4();
    sub_CBD4(v28, v62, &qword_3BB98, &qword_29090);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    sub_264B4();
    sub_126EC(v28, &qword_3BB98, &qword_29090);
    return (*(v25 + 8))(v22, v26);
  }

  else
  {
    v69 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v70 = v30;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_286D8);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBE0, &qword_290F0);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_28FAC);
    sub_4B1C(&qword_3BBF0, &qword_3BBE0, &qword_290F0, &protocol conformance descriptor for TupleView<A>);
    sub_41F0();
    sub_266C4();
    sub_26404();
    v31 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098, &protocol conformance descriptor for Picker<A, B, C>);
    v32 = v57;
    v33 = v58;
    sub_265B4();
    (*(v56 + 8))(v9, v33);
    (*(v54 + 8))(v11, v32);
    v34 = v55;
    v35 = v59;
    (*(v55 + 16))(v62, v13, v59);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    *&v64 = v32;
    *(&v64 + 1) = v33;
    v65 = v31;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    sub_264B4();
    return (*(v34 + 8))(v13, v35);
  }
}

uint64_t sub_113DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_11470@<X0>(char *a1@<X8>)
{
  v2 = sub_4060(&qword_3BC08, &qword_29100);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v27 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v28 = v15;
  sub_41F0();
  *v14 = sub_26584();
  *(v14 + 1) = v16;
  v14[16] = v17 & 1;
  *(v14 + 3) = v18;
  *(v14 + 4) = 0;
  v14[40] = 1;
  v27 = sub_133CC(0xD000000000000026, 0x800000000002C970);
  v28 = v19;
  *v12 = sub_26584();
  *(v12 + 1) = v20;
  v12[16] = v21 & 1;
  *(v12 + 3) = v22;
  *(v12 + 4) = 2;
  v12[40] = 1;
  v23 = *(v3 + 16);
  v23(v9, v14, v2);
  v23(v6, v12, v2);
  v23(a1, v9, v2);
  v24 = sub_4060(&qword_3BC10, &qword_29108);
  v23(&a1[*(v24 + 48)], v6, v2);
  v25 = *(v3 + 8);
  v25(v12, v2);
  v25(v14, v2);
  v25(v6, v2);
  return (v25)(v9, v2);
}

uint64_t sub_11710(uint64_t *a1)
{
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();

    return sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    return sub_26304();
  }
}

uint64_t sub_11874(uint64_t *a1)
{
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();
    sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_11A74@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_4060(&qword_3BC08, &qword_29100);
  v39 = *(v1 - 8);
  v2 = v39;
  v3 = __chkstk_darwin(v1);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v43 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v44 = v19;
  sub_41F0();
  *v18 = sub_26584();
  *(v18 + 1) = v20;
  v18[16] = v21 & 1;
  *(v18 + 3) = v22;
  *(v18 + 4) = 0;
  v18[40] = 1;
  v43 = sub_133CC(0xD00000000000002DLL, 0x800000000002C9A0);
  v44 = v23;
  *v16 = sub_26584();
  *(v16 + 1) = v24;
  v16[16] = v25 & 1;
  *(v16 + 3) = v26;
  *(v16 + 4) = 1;
  v16[40] = 1;
  v43 = sub_133CC(0xD000000000000026, 0x800000000002C970);
  v44 = v27;
  *v13 = sub_26584();
  *(v13 + 1) = v28;
  v13[16] = v29 & 1;
  *(v13 + 3) = v30;
  *(v13 + 4) = 2;
  v13[40] = 1;
  v31 = *(v2 + 16);
  v32 = v10;
  v40 = v10;
  v31(v10, v18, v1);
  v33 = v7;
  v31(v7, v16, v1);
  v34 = v41;
  v31(v41, v13, v1);
  v35 = v42;
  v31(v42, v32, v1);
  v36 = sub_4060(&qword_3BC18, &qword_29110);
  v31(&v35[*(v36 + 48)], v33, v1);
  v31(&v35[*(v36 + 64)], v34, v1);
  v37 = *(v39 + 8);
  v37(v13, v1);
  v37(v16, v1);
  v37(v18, v1);
  v37(v34, v1);
  v37(v33, v1);
  return (v37)(v40, v1);
}

uint64_t sub_11E28@<X0>(char *a1@<X8>)
{
  v2 = sub_4060(&qword_3BC08, &qword_29100);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v27 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v28 = v15;
  sub_41F0();
  *v14 = sub_26584();
  *(v14 + 1) = v16;
  v14[16] = v17 & 1;
  *(v14 + 3) = v18;
  *(v14 + 4) = 0;
  v14[40] = 1;
  v27 = sub_133CC(0xD00000000000002DLL, 0x800000000002C9A0);
  v28 = v19;
  *v12 = sub_26584();
  *(v12 + 1) = v20;
  v12[16] = v21 & 1;
  *(v12 + 3) = v22;
  *(v12 + 4) = 1;
  v12[40] = 1;
  v23 = *(v3 + 16);
  v23(v9, v14, v2);
  v23(v6, v12, v2);
  v23(a1, v9, v2);
  v24 = sub_4060(&qword_3BC10, &qword_29108);
  v23(&a1[*(v24 + 48)], v6, v2);
  v25 = *(v3 + 8);
  v25(v12, v2);
  v25(v14, v2);
  v25(v6, v2);
  return (v25)(v9, v2);
}

Swift::Int sub_12104()
{
  v1 = *v0;
  sub_26B84();
  sub_26B94(v1);
  return sub_26BA4();
}

Swift::Int sub_12178(uint64_t a1)
{
  v2 = *v1;
  sub_26B84();
  sub_26B94(v2);
  return sub_26BA4();
}

void *sub_121D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_12208(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1221C(uint64_t a1, int a2)
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

uint64_t sub_12264(uint64_t result, int a2, int a3)
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

uint64_t sub_122C4()
{
  sub_40A8(&qword_3BB20, &qword_28E68);
  sub_4B1C(&qword_3BB38, &qword_3BB20, &qword_28E68, &protocol conformance descriptor for Form<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_123B4()
{
  result = qword_3BB88;
  if (!qword_3BB88)
  {
    sub_40A8(&qword_3BB80, &qword_29088);
    sub_124D0();
    sub_40A8(&qword_3BBA0, &qword_29098);
    sub_26414();
    sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BB88);
  }

  return result;
}

unint64_t sub_124D0()
{
  result = qword_3BB90;
  if (!qword_3BB90)
  {
    sub_40A8(&qword_3BB98, &qword_29090);
    sub_40A8(&qword_3BBA0, &qword_29098);
    sub_26414();
    sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    sub_40A8(&qword_3BBB0, &qword_290A0);
    sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BB90);
  }

  return result;
}

uint64_t sub_126A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_126EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4060(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1274C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_4B64(a1, a2, a3 & 1);
}

uint64_t sub_12788(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_4B74(a1, a2, a3 & 1);
}

unint64_t sub_127C8()
{
  result = qword_3B5F0;
  if (!qword_3B5F0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B5F0);
  }

  return result;
}

uint64_t sub_12820(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();

  return sub_262E4();
}

uint64_t sub_1287C(uint64_t a1, uint64_t a2)
{
  sub_133CC(0xD000000000000029, 0x800000000002CA10);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD00000000000002ALL, 0x800000000002CA40);
  sub_26584();
  sub_4060(&qword_3BC30, &qword_29160);
  sub_40A8(&qword_3BC38, qword_29168);
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_26764();
}

uint64_t sub_12A14(uint64_t a1, void *a2)
{
  v4 = sub_264F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4060(&qword_3BC38, qword_29168);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *v10 = sub_26424();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_4060(&qword_3BC58, &unk_29228);
  sub_12BE4(a1, a2, &v10[*(v11 + 44)]);
  sub_264E4();
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168, &protocol conformance descriptor for HStack<A>);
  sub_26604();
  (*(v5 + 8))(v7, v4);
  return sub_126EC(v10, &qword_3BC38, qword_29168);
}

uint64_t sub_12BE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v4 = sub_4060(&qword_3B4C0, &unk_29120);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v37 = sub_4060(&qword_3BC60, &qword_29238) - 8;
  v8 = __chkstk_darwin(v37);
  v38 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v39 = sub_133CC(0xD000000000000021, 0x800000000002CA70);
  v40 = v12;
  sub_41F0();
  v13 = sub_26584();
  v31 = v14;
  v32 = v13;
  v33 = v15;
  v34 = v16;
  sub_26474();
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  v17 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120, &protocol conformance descriptor for Toggle<A>);
  v18 = v35;
  sub_265C4();
  v19 = (*(v36 + 8))(v7, v18);
  LOBYTE(v7) = (*&stru_158.sectname[swift_isaMask & *v29])(v19);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = (v7 & 1) == 0;
  v22 = &v11[*(v37 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_1333C;
  v22[2] = v21;
  v23 = v38;
  sub_13354(v11, v38);
  v25 = v31;
  v24 = v32;
  *a3 = v32;
  *(a3 + 8) = v25;
  LOBYTE(v7) = v33 & 1;
  *(a3 + 16) = v33 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v26 = sub_4060(&qword_3BC68, &qword_29298);
  sub_13354(v23, a3 + *(v26 + 64));
  sub_4B64(v24, v25, v7);

  sub_126EC(v11, &qword_3BC60, &qword_29238);
  sub_126EC(v23, &qword_3BC60, &qword_29238);
  sub_4B74(v24, v25, v7);
}

uint64_t sub_12FBC(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();

  return sub_262D4();
}

uint64_t sub_13024()
{
  sub_133CC(0xD000000000000029, 0x800000000002CA10);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD00000000000002ALL, 0x800000000002CA40);
  sub_26584();
  sub_4060(&qword_3BC30, &qword_29160);
  sub_40A8(&qword_3BC38, qword_29168);
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_26764();
}

unint64_t sub_131D4()
{
  result = qword_3BC48;
  if (!qword_3BC48)
  {
    sub_40A8(&qword_3BC50, "n^");
    sub_40A8(&qword_3BC38, qword_29168);
    sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC48);
  }

  return result;
}

uint64_t sub_132D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26384();
  *a1 = result & 1;
  return result;
}

uint64_t sub_13354(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3BC60, &qword_29238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133CC(uint64_t a1, void *a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x800000000002CAA0;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD00000000000001BLL;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_26004(v10, v11, v6, v12, 0, v9);

  return v7;
}

id sub_134A4()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t sub_1350C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_13574@<D0>(uint64_t a5@<X8>)
{
  sub_26664();
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  *(a5 + 32) = v9;
  return result;
}

uint64_t sub_135DC()
{
  sub_DB00();
  sub_13620();

  return sub_26334();
}

unint64_t sub_13620()
{
  result = qword_3BA58;
  if (!qword_3BA58)
  {
    sub_DB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA58);
  }

  return result;
}

uint64_t sub_13678(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 24);
  v44 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v47 = v44;
  v48[0] = v5;
  v45 = v7;
  v46 = v6;
  v29 = v5;
  v31 = v5;
  v32 = *(v2 + 32);
  v33 = v6;
  v34 = v7;
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v48, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v47, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v46, &aBlock);
  sub_CBD4(&v45, &aBlock, &qword_3BD38, &qword_295D0);
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();
  swift_unknownObjectRelease();
  v8 = v36;
  sub_148D8(v37);
  if (*(&v8 + 1))
  {
    if (a2)
    {
      if (v8 == __PAIR128__(a2, a1))
      {

LABEL_9:
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        sub_126EC(&v45, &qword_3BD38, &qword_295D0);
        sub_126EC(v48, &qword_3BD28, &qword_295C0);
        sub_126EC(&v47, &qword_3BD30, &qword_295C8);
        sub_1531C(&v46);
        return sub_126EC(&v45, &qword_3BD38, &qword_295D0);
      }

      v9 = sub_26B34();

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v31 = v29;
  v32 = v44;
  v33 = v6;
  v34 = v7;
  sub_26674();
  v10 = aBlock;

  sub_148D8(v37);
  if (v10)
  {
    [v10 invalidate];
    swift_unknownObjectRelease();
  }

  if (!a2)
  {
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_26674();
    swift_unknownObjectRelease();
    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *&v40[8] = *&v42[8];
    *v40 = 0;
    v41 = v43;
    sub_26684();
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_26674();

    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *v40 = *v42;
    *&v40[8] = a1;
    *&v40[16] = 0;
    v41 = v43;
    sub_26684();
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    v31 = v29;
    v32 = v44;
    v33 = v6;
    v34 = v7;
    sub_26674();
    sub_148D8(v43);
    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *v40 = *v42;
    *&v40[16] = *&v42[16];
    v41 = 0x8000000000000000;
    sub_26684();
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    return sub_126EC(&v45, &qword_3BD38, &qword_295D0);
  }

  v26 = v6;
  v27 = v7;

  sub_126EC(v48, &qword_3BD28, &qword_295C0);
  v28 = a2;
  sub_126EC(&v47, &qword_3BD30, &qword_295C8);
  sub_1531C(&v46);
  sub_126EC(&v45, &qword_3BD38, &qword_295D0);
  sub_126EC(v48, &qword_3BD28, &qword_295C0);
  sub_126EC(&v47, &qword_3BD30, &qword_295C8);
  sub_1531C(&v46);
  sub_126EC(&v45, &qword_3BD38, &qword_295D0);
  sub_126EC(v48, &qword_3BD28, &qword_295C0);
  sub_126EC(&v47, &qword_3BD30, &qword_295C8);
  sub_1531C(&v46);
  sub_126EC(&v45, &qword_3BD38, &qword_295D0);
  v11 = *(v3 + 64);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 iconCache];
    v14 = sub_26834();
    v15 = [v13 iconForName:v14 fallBackToPersistentStoreIfNecessary:0];

    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    sub_126EC(v48, &qword_3BD28, &qword_295C0);
    sub_126EC(&v47, &qword_3BD30, &qword_295C8);
    sub_1531C(&v46);
    sub_126EC(&v45, &qword_3BD38, &qword_295D0);
    if (v15)
    {

      sub_26674();

      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v7;
      *v40 = *v42;
      *&v40[8] = a1;
      *&v40[16] = v28;
      v41 = v43;
      sub_26684();
      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
      sub_126EC(&v45, &qword_3BD38, &qword_295D0);
      sub_26674();
      swift_unknownObjectRelease();
      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v7;
      *&v40[8] = *&v42[8];
      *v40 = 0;
      v41 = v43;
      sub_26684();
      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
      sub_126EC(&v45, &qword_3BD38, &qword_295D0);
      v16 = v15;
      v17 = sub_26624();
      v31 = v29;
      v32 = v44;
      v33 = v6;
      v34 = v27;
      sub_26674();
      sub_148D8(v43);
      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v27;
      *v40 = *v42;
      *&v40[16] = *&v42[16];
      v41 = v17;
      sub_26684();

      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
    }

    else
    {
      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
      sub_126EC(&v45, &qword_3BD38, &qword_295D0);
      v18 = sub_26834();
      v19 = *(v3 + 16);
      v20 = swift_allocObject();
      v21 = *(v3 + 48);
      v20[3] = *(v3 + 32);
      v20[4] = v21;
      v20[5] = *(v3 + 64);
      v22 = *(v3 + 16);
      v20[1] = *v3;
      v20[2] = v22;
      v38 = sub_153AC;
      v39 = v20;
      aBlock = _NSConcreteStackBlock;
      *&v36 = 1107296256;
      *(&v36 + 1) = sub_14654;
      v37 = &unk_36348;
      v23 = _Block_copy(&aBlock);
      sub_EB84(v3, &v31);

      v24 = [v12 iconFetchTaskForBundleIdentifier:v18 isPhoneApp:v19 completion:v23];
      _Block_release(v23);

      v31 = v29;
      v32 = v44;
      v33 = v26;
      v34 = v7;
      swift_unknownObjectRetain();
      sub_26674();
      swift_unknownObjectRelease();
      aBlock = v29;
      v36 = v44;
      v37 = v26;
      v38 = v7;
      *&v40[8] = *&v42[8];
      *v40 = v24;
      v41 = v43;
      sub_26684();
      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
      sub_126EC(&v45, &qword_3BD38, &qword_295D0);
      v31 = v29;
      v32 = v44;
      v33 = v26;
      v34 = v7;
      sub_26674();

      aBlock = v29;
      v36 = v44;
      v37 = v26;
      v38 = v7;
      *v40 = *v42;
      *&v40[8] = a1;
      *&v40[16] = v28;
      v41 = v43;
      sub_26684();
      swift_unknownObjectRelease();
      sub_126EC(v48, &qword_3BD28, &qword_295C0);
      sub_126EC(&v47, &qword_3BD30, &qword_295C8);
      sub_1531C(&v46);
    }

    return sub_126EC(&v45, &qword_3BD38, &qword_295D0);
  }

  sub_DB00();
  sub_13620();
  result = sub_26324();
  __break(1u);
  return result;
}

void sub_14654(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_146E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v22[0] = *(v1 + 24);
  v22[1] = v4;
  v23 = *(v1 + 56);
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();
  v5 = v24;
  sub_148B8(v24);
  swift_unknownObjectRelease();

  sub_148D8(v24);
  sub_DB00();
  sub_13620();
  v6 = sub_26334();
  v8 = v7;
  v9 = swift_allocObject();
  v10 = *(v2 + 48);
  v9[3] = *(v2 + 32);
  v9[4] = v10;
  v9[5] = *(v2 + 64);
  v11 = *(v2 + 16);
  v9[1] = *v2;
  v9[2] = v11;
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  v12[3] = *(v2 + 32);
  v12[4] = v14;
  v12[5] = v15;
  v12[1] = *v2;
  v12[2] = v13;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  v18[3] = *(v2 + 32);
  v18[4] = v19;
  v18[5] = *(v2 + 64);
  v20 = *(v2 + 16);
  v18[1] = *v2;
  v18[2] = v20;
  *a1 = v6;
  a1[1] = v8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v5;
  a1[5] = sub_148FC;
  a1[6] = v9;
  a1[7] = sub_14984;
  a1[8] = v12;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v17;
  a1[12] = v16;
  a1[13] = sub_149A8;
  a1[14] = v18;
  sub_EB84(v2, v22);
  sub_EB84(v2, v22);
  sub_EB84(v2, v22);
}

unint64_t sub_148B8(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_148D8(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_148FC()
{
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();

  result = sub_148D8(v2);
  if (v1)
  {
    [v1 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_149D4@<X0>(void *a1@<X0>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!(a3 >> 62))
  {

LABEL_5:
    result = sub_264B4();
    *a4 = v7;
    *(a4 + 8) = v8;
    return result;
  }

  if (a1)
  {
    v5 = [a1 genericIcon];
    sub_26624();
    goto LABEL_5;
  }

  sub_DB00();
  sub_13620();
  result = sub_26324();
  __break(1u);
  return result;
}

__n128 sub_14AB8@<Q0>(uint64_t a1@<X8>)
{
  sub_26664();
  sub_DB00();
  sub_13620();
  v2 = sub_26334();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = v5;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v2;
  *(a1 + 72) = v4;
  return result;
}

__n128 sub_14B50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_26664();
  sub_DB00();
  sub_13620();
  v8 = sub_26334();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 17) = v11.n128_u32[0];
  *(a4 + 20) = *(v11.n128_u32 + 3);
  result = v11;
  *(a4 + 40) = v12;
  *(a4 + 24) = v11;
  *(a4 + 56) = v13;
  *(a4 + 64) = v8;
  *(a4 + 72) = v10;
  return result;
}

uint64_t sub_14C50(unint64_t a1)
{
  if (a1 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

unint64_t sub_14C7C(unint64_t a1)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

unint64_t sub_14CD8(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_14CF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_14D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_14D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_14DF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_14E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_14EAC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_14EEC()
{
  result = qword_3BC88;
  if (!qword_3BC88)
  {
    sub_40A8(&qword_3BC90, "p]");
    sub_14F78();
    sub_150E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC88);
  }

  return result;
}

unint64_t sub_14F78()
{
  result = qword_3BC98;
  if (!qword_3BC98)
  {
    sub_40A8(&qword_3BCA0, &qword_29440);
    sub_15004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC98);
  }

  return result;
}

unint64_t sub_15004()
{
  result = qword_3BCA8;
  if (!qword_3BCA8)
  {
    sub_40A8(&qword_3BCB0, &qword_29448);
    sub_15090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA8);
  }

  return result;
}

unint64_t sub_15090()
{
  result = qword_3CF30[0];
  if (!qword_3CF30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CF30);
  }

  return result;
}

unint64_t sub_150E4()
{
  result = qword_3BCB8;
  if (!qword_3BCB8)
  {
    sub_40A8(&qword_3BCC0, &qword_29450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB8);
  }

  return result;
}

uint64_t sub_15148(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_151A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15208(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_15264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1534C()
{

  swift_unknownObjectRelease();

  sub_148D8(*(v0 + 64));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_153AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_26624();
    v4 = *(v2 + 40);
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v22 = *(v2 + 48);
    v23[0] = v4;
    v20 = v6;
    v21 = v5;
    v15 = v4;
    v16 = *(v2 + 48);
    v17 = v5;
    v18 = v6;
    sub_CBD4(v23, &v11, &qword_3BD28, &qword_295C0);
    sub_CBD4(&v22, &v11, &qword_3BD30, &qword_295C8);
    sub_152E4(&v21, &v11);
    sub_CBD4(&v20, &v11, &qword_3BD38, &qword_295D0);
    sub_4060(&qword_3BC80, &qword_292A0);
    sub_26674();
    sub_148D8(v19);
    v11 = v4;
    v12 = *(v2 + 48);
    v13 = v5;
    v14 = v6;
    sub_26684();

    sub_126EC(v23, &qword_3BD28, &qword_295C0);
    sub_126EC(&v22, &qword_3BD30, &qword_295C8);
    sub_1531C(&v21);
  }

  else
  {
    if (!a2)
    {
      sub_156C8();
      swift_allocError();
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v22 = *(v2 + 48);
    v23[0] = v7;
    v20 = v9;
    v21 = v8;
    v15 = v7;
    v16 = *(v2 + 48);
    v17 = v8;
    v18 = v9;
    swift_errorRetain();
    sub_CBD4(v23, &v11, &qword_3BD28, &qword_295C0);
    sub_CBD4(&v22, &v11, &qword_3BD30, &qword_295C8);
    sub_152E4(&v21, &v11);
    sub_CBD4(&v20, &v11, &qword_3BD38, &qword_295D0);
    sub_4060(&qword_3BC80, &qword_292A0);
    sub_26674();
    sub_148D8(v19);
    v11 = v7;
    v12 = *(v2 + 48);
    v13 = v8;
    v14 = v9;
    sub_26684();
    sub_126EC(v23, &qword_3BD28, &qword_295C0);
    sub_126EC(&v22, &qword_3BD30, &qword_295C8);
    sub_1531C(&v21);
  }

  return sub_126EC(&v20, &qword_3BD38, &qword_295D0);
}

uint64_t sub_156B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_156C8()
{
  result = qword_3CFC0[0];
  if (!qword_3CFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CFC0);
  }

  return result;
}

unint64_t sub_15730()
{
  result = qword_3BD40;
  if (!qword_3BD40)
  {
    sub_40A8(&qword_3BD48, &qword_295E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD40);
  }

  return result;
}

uint64_t sub_157B8@<X0>(uint64_t *a2@<X8>)
{
  sub_DB00();
  result = sub_26194();
  *a2 = result;
  return result;
}

uint64_t sub_157F8(uint64_t a1, uint64_t a2)
{
  sub_4060(&qword_3B4B0, qword_296B0);
  sub_40A8(&qword_3B3F8, &qword_28480);
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_26774();
}

uint64_t sub_158E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_264F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4060(&qword_3B3F8, &qword_28480);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *v9 = sub_26424();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_4060(&qword_3B4B8, &unk_285B0);
  sub_15AA8(a1, &v9[*(v10 + 44)]);
  sub_264E4();
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
  sub_26604();
  (*(v4 + 8))(v6, v3);
  return sub_4AB4(v9);
}

uint64_t sub_15AA8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = sub_4060(&qword_3B4C0, &unk_29120);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = sub_4060(&qword_3B4C8, &qword_285C0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v37 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v31 - v12;
  v40 = sub_133CC(0xD000000000000017, 0x800000000002C9D0);
  v41 = v14;
  sub_41F0();
  v15 = sub_26584();
  v32 = v16;
  v33 = v15;
  v34 = v17;
  v35 = v18;
  v19 = sub_26474();
  v31[1] = v20;
  v31[2] = v19;
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  v21 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120, &protocol conformance descriptor for Toggle<A>);
  v31[0] = v13;
  v22 = v38;
  sub_265C4();
  (*(v39 + 8))(v7, v22);
  v23 = *(v9 + 16);
  v24 = v37;
  v23(v37, v13, v8);
  v25 = v32;
  v26 = v33;
  *a3 = v33;
  *(a3 + 8) = v25;
  v27 = v34 & 1;
  *(a3 + 16) = v34 & 1;
  *(a3 + 24) = v35;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v28 = sub_4060(&qword_3B4D8, &qword_285F0);
  v23((a3 + *(v28 + 64)), v24, v8);
  sub_4B64(v26, v25, v27);
  v29 = *(v9 + 8);

  v29(v31[0], v8);
  v29(v24, v8);
  sub_4B74(v26, v25, v27);
}

uint64_t sub_15E2C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **a1])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_15F10()
{
  sub_4060(&qword_3B4B0, qword_296B0);
  sub_40A8(&qword_3B3F8, &qword_28480);
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_26774();
}

uint64_t sub_16064()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26204();

  return v1;
}

uint64_t sub_160D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_68.segname[(swift_isaMask & **a1) - 8])();
  *a2 = result;
  return result;
}

uint64_t sub_16134(void *a1, void **a2)
{
  v2 = *&stru_68.segname[swift_isaMask & **a2];

  return v2(v3);
}

uint64_t sub_16198(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_26214();
}

void (*sub_16204(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_261F4();
  return sub_70B4;
}

uint64_t sub_162A8()
{
  swift_beginAccess();
  sub_4060(&qword_3BD58, &qword_29800);
  sub_261D4();
  return swift_endAccess();
}

uint64_t sub_1631C(uint64_t a1)
{
  v2 = sub_4060(&qword_3BD60, &qword_29808);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_4060(&qword_3BD58, &qword_29800);
  sub_261E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_16454(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_4060(&qword_3BD60, &qword_29808);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource__installedDepthApps;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_4060(&qword_3BD58, &qword_29800);
  sub_261D4();
  swift_endAccess();
  return sub_7438;
}

id variable initialization expression of RemoteInstalledDepthAppsDataSource.logger()
{
  result = cslprf_app_library_log();
  if (result)
  {

    return sub_26164();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1660C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 16];
  a1[3] = sub_4060(&qword_3BD60, &qword_29808);
  a1[4] = sub_16694();
  sub_166F8(a1);
  return v3();
}

unint64_t sub_16694()
{
  result = qword_3BD68;
  if (!qword_3BD68)
  {
    sub_40A8(&qword_3BD60, &qword_29808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD68);
  }

  return result;
}

uint64_t *sub_166F8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id variable initialization expression of RemoteInstalledDepthAppsDataSource.stingSettingsModel()
{
  v0 = objc_allocWithZone(CSLPRFStingSettingsModel);

  return [v0 init];
}

char *RemoteInstalledDepthAppsDataSource.init()()
{
  v1 = sub_4060(&qword_3BD58, &qword_29800);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource__installedDepthApps;
  v18 = &_swiftEmptyArrayStorage;
  sub_4060(&qword_3BD50, &qword_297B0);
  sub_261C4();
  (*(v2 + 32))(&v0[v5], v4, v1);
  result = cslprf_app_library_log();
  if (result)
  {
    sub_26164();
    v7 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel;
    v8 = [objc_allocWithZone(CSLPRFStingSettingsModel) init];
    *&v0[v7] = v8;
    v9 = [objc_allocWithZone(CSLPRFInstalledDepthApplicationsDataSource) initWithStingModel:v8];
    *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource] = v9;
    v10 = type metadata accessor for RemoteInstalledDepthAppsDataSource(0);
    v17.receiver = v0;
    v17.super_class = v10;
    v11 = objc_msgSendSuper2(&v17, "init");
    v12 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource;
    v13 = *&v11[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource];
    v14 = v11;
    [v13 setDelegate:v14];
    v15 = [objc_opt_self() defaultCenter];
    [v15 addObserver:v14 selector:"updateInstalledDepthApps" name:CSLPRFStingSettingsModelDidChangeNotification object:*&v14[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel]];

    [*&v11[v12] start];
    _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RemoteInstalledDepthAppsDataSource(uint64_t a1)
{
  result = qword_3D178;
  if (!qword_3D178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RemoteInstalledDepthAppsDataSource.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteInstalledDepthAppsDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel) bundleIDsForActionType:20];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26884();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = sub_26934();

  v6 = sub_26134();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48 = v8;
    *v7 = 136315138;
    v9 = sub_26894();
    v11 = v1;
    v12 = sub_17368(v9, v10, &v48);

    *(v7 + 4) = v12;
    v1 = v11;
    _os_log_impl(&dword_0, v6, v5, "updateInstalledDepthApps with %s", v7, 0xCu);
    sub_D634(v8);
  }

  v13 = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource) apps];
  sub_B8B4();
  v14 = sub_26884();

  if (v14 >> 62)
  {
    v15 = sub_26AF4();
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:

    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v48 = &_swiftEmptyArrayStorage;
  sub_184AC(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v44 = v4;
  v45 = v1;
  v16 = 0;
  v17 = v48;
  v18 = v14;
  oslog = (v14 & 0xC000000000000001);
  v19 = v14;
  v20 = v15;
  do
  {
    if (oslog)
    {
      v21 = sub_26A54();
    }

    else
    {
      v21 = *(v18 + 8 * v16 + 32);
    }

    v22 = v21;
    v23 = [v21 bundleIdentifier];
    sub_26844();

    v24 = [v22 cslprf_displayName];
    sub_26844();

    CSLPRFDepthAutoLaunchBehavior.id.getter();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v48 = v17;
    v34 = *(v17 + 2);
    v33 = *(v17 + 3);
    if (v34 >= v33 >> 1)
    {
      sub_184AC((v33 > 1), v34 + 1, 1);
      v17 = v48;
    }

    ++v16;
    *(v17 + 2) = v34 + 1;
    v35 = &v17[32 * v34];
    *(v35 + 4) = v26;
    *(v35 + 5) = v28;
    *(v35 + 6) = v30;
    *(v35 + 7) = v32;
    v18 = v19;
  }

  while (v20 != v16);

  v1 = v45;
LABEL_19:
  v48 = v17;

  sub_17910(&v48);

  (*&stru_68.segname[swift_isaMask & *v1])(v48);
  v36 = sub_26934();
  v37 = v1;
  osloga = sub_26134();

  if (os_log_type_enabled(osloga, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = 136315138;
    (*&stru_68.segname[(swift_isaMask & *v37) - 8])();
    v40 = sub_26894();
    v42 = v41;

    v43 = sub_17368(v40, v42, &v48);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, osloga, v36, "installedDepthApps = %s", v38, 0xCu);
    sub_D634(v39);
  }
}

void sub_17228(uint64_t a1)
{
  sub_17304(319);
  if (v1 <= 0x3F)
  {
    sub_26154();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_17304(uint64_t a1)
{
  if (!qword_3BDF8)
  {
    sub_40A8(&qword_3BD50, &qword_297B0);
    v1 = sub_26224();
    if (!v2)
    {
      atomic_store(v1, &qword_3BDF8);
    }
  }
}

unint64_t sub_17368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17434(v11, 0, 0, 1, a1, a2);
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
    sub_184CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_D634(v11);
  return v7;
}

unint64_t sub_17434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_17540(a5, a6);
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
    result = sub_26A74();
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

char *sub_17540(uint64_t a1, unint64_t a2)
{
  v3 = sub_1758C(a1, a2);
  sub_176BC(&off_36410);
  return v3;
}

char *sub_1758C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_177A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26A74();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26864();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_177A8(v10, 0);
        result = sub_26A34();
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

uint64_t sub_176BC(uint64_t result)
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

  result = sub_1781C(result, v11, 1, v3);
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

void *sub_177A8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_4060(&qword_3BE08, &qword_29868);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1781C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3BE08, &qword_29868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

Swift::Int sub_17910(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18634(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1797C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1797C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_268B4();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_17B7C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_17A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_17A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_41F0();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_269F4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      v15 = *(v10 + 16);
      *(v10 + 32) = *v10;
      *(v10 + 48) = v15;
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      v10 -= 32;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_17B7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = &_swiftEmptyArrayStorage;
    v92 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v93 = v6;
        v13 = 32 * v11;
        v14 = *a3 + 32 * v11 + 72;
        sub_41F0();
        result = sub_269F4();
        v15 = v11;
        v16 = result;
        v95 = v15;
        v4 = v15 + 2;
        while (v8 != v4)
        {
          result = sub_269F4();
          ++v4;
          v14 += 32;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v16 == -1)
        {
          v11 = v95;
          v7 = v92;
          if (v8 < v95)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v95 < v8)
          {
            v64 = 32 * v8 - 16;
            v65 = v13 + 24;
            v66 = v8;
            v67 = v95;
            v6 = v93;
            while (1)
            {
              if (v67 != --v66)
              {
                v74 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v68 = (v74 + v65);
                v69 = v74 + v64;
                v70 = *(v68 - 3);
                v71 = *(v68 - 1);
                v72 = *v68;
                v73 = *v69;
                *(v68 - 3) = *(v69 - 16);
                *(v68 - 1) = v73;
                *(v69 - 16) = v70;
                *v69 = v71;
                *(v69 + 8) = v72;
              }

              ++v67;
              v64 -= 32;
              v65 += 32;
              if (v67 >= v66)
              {
                goto LABEL_12;
              }
            }
          }

          v6 = v93;
        }

        else
        {
          v7 = v92;
          v6 = v93;
          v11 = v95;
        }
      }

LABEL_12:
      v17 = a3[1];
      if (v8 >= v17)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v17)
      {
        v17 = v11 + a4;
      }

      if (v17 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v17)
      {
LABEL_20:
        v18 = v8;
      }

      else
      {
        v98 = v17;
        v94 = v6;
        v75 = v11;
        v76 = *a3;
        sub_41F0();
        v77 = v76 + 32 * v8 - 32;
        v96 = v75;
        v4 = v75 - v8;
        do
        {
          v78 = v4;
          v79 = v77;
          do
          {
            result = sub_269F4();
            if (result != -1)
            {
              break;
            }

            if (!v76)
            {
              goto LABEL_124;
            }

            v80 = *(v79 + 32);
            v81 = *(v79 + 40);
            v82 = *(v79 + 48);
            v83 = *(v79 + 56);
            v84 = *(v79 + 16);
            *(v79 + 32) = *v79;
            *(v79 + 48) = v84;
            *v79 = v80;
            *(v79 + 8) = v81;
            *(v79 + 16) = v82;
            *(v79 + 24) = v83;
            v79 -= 32;
          }

          while (!__CFADD__(v78++, 1));
          ++v8;
          v77 += 32;
          --v4;
        }

        while (v8 != v98);
        v7 = v92;
        v6 = v94;
        v11 = v96;
        v18 = v98;
      }

      if (v18 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_A708(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v19 = *(v10 + 3);
      v20 = v4 + 1;
      if (v4 >= v19 >> 1)
      {
        result = sub_A708((v19 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v20;
      v21 = &v10[16 * v4];
      *(v21 + 4) = v11;
      *(v21 + 5) = v18;
      v22 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v97 = v18;
      if (v4)
      {
        while (1)
        {
          v23 = v20 - 1;
          if (v20 >= 4)
          {
            break;
          }

          if (v20 == 3)
          {
            v24 = *(v10 + 4);
            v25 = *(v10 + 5);
            v34 = __OFSUB__(v25, v24);
            v26 = v25 - v24;
            v27 = v34;
LABEL_41:
            if (v27)
            {
              goto LABEL_107;
            }

            v40 = &v10[16 * v20];
            v42 = *v40;
            v41 = *(v40 + 1);
            v43 = __OFSUB__(v41, v42);
            v44 = v41 - v42;
            v45 = v43;
            if (v43)
            {
              goto LABEL_110;
            }

            v46 = &v10[16 * v23 + 32];
            v48 = *v46;
            v47 = *(v46 + 1);
            v34 = __OFSUB__(v47, v48);
            v49 = v47 - v48;
            if (v34)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v44, v49))
            {
              goto LABEL_114;
            }

            if (v44 + v49 >= v26)
            {
              if (v26 < v49)
              {
                v23 = v20 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v50 = &v10[16 * v20];
          v52 = *v50;
          v51 = *(v50 + 1);
          v34 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          v45 = v34;
LABEL_55:
          if (v45)
          {
            goto LABEL_109;
          }

          v53 = &v10[16 * v23];
          v55 = *(v53 + 4);
          v54 = *(v53 + 5);
          v34 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v34)
          {
            goto LABEL_112;
          }

          if (v56 < v44)
          {
            goto LABEL_3;
          }

LABEL_62:
          v4 = v23 - 1;
          if (v23 - 1 >= v20)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v61 = *&v10[16 * v4 + 32];
          v62 = *&v10[16 * v23 + 40];
          sub_1821C((*a3 + 32 * v61), (*a3 + 32 * *&v10[16 * v23 + 32]), (*a3 + 32 * v62), v22);
          if (v6)
          {
          }

          if (v62 < v61)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_B454(v10);
          }

          if (v4 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v63 = &v10[16 * v4];
          *(v63 + 4) = v61;
          *(v63 + 5) = v62;
          result = sub_B3C8(v23);
          v20 = *(v10 + 2);
          if (v20 <= 1)
          {
            goto LABEL_3;
          }
        }

        v28 = &v10[16 * v20 + 32];
        v29 = *(v28 - 64);
        v30 = *(v28 - 56);
        v34 = __OFSUB__(v30, v29);
        v31 = v30 - v29;
        if (v34)
        {
          goto LABEL_105;
        }

        v33 = *(v28 - 48);
        v32 = *(v28 - 40);
        v34 = __OFSUB__(v32, v33);
        v26 = v32 - v33;
        v27 = v34;
        if (v34)
        {
          goto LABEL_106;
        }

        v35 = &v10[16 * v20];
        v37 = *v35;
        v36 = *(v35 + 1);
        v34 = __OFSUB__(v36, v37);
        v38 = v36 - v37;
        if (v34)
        {
          goto LABEL_108;
        }

        v34 = __OFADD__(v26, v38);
        v39 = v26 + v38;
        if (v34)
        {
          goto LABEL_111;
        }

        if (v39 >= v31)
        {
          v57 = &v10[16 * v23 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v34 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v34)
          {
            goto LABEL_115;
          }

          if (v26 < v60)
          {
            v23 = v20 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v97;
      if (v97 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_90:
  v86 = v7;
  v7 = v6;
  v6 = *v86;
  if (!*v86)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_B454(v10);
    v10 = result;
  }

  v87 = *(v10 + 2);
  if (v87 >= 2)
  {
    while (1)
    {
      v88 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v87];
      v89 = *&v10[16 * v87 + 24];
      sub_1821C((v88 + 32 * v4), (v88 + 32 * *&v10[16 * v87 + 16]), (v88 + 32 * v89), v6);
      if (v7)
      {
      }

      if (v89 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_B454(v10);
      }

      if (v87 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v90 = &v10[16 * v87];
      *v90 = v4;
      *(v90 + 1) = v89;
      result = sub_B3C8(v87 - 1);
      v87 = *(v10 + 2);
      v4 = a3;
      if (v87 <= 1)
      {
      }
    }
  }
}

uint64_t sub_1821C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_41F0();
LABEL_27:
      v23 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v18 -= 32;
        if (sub_269F4() == -1)
        {
          if (v19 != v6)
          {
            v21 = *(v6 - 1);
            *v5 = *v23;
            *(v5 + 1) = v21;
          }

          if (v14 <= v4 || (v6 -= 32, v23 <= v7))
          {
            v6 = v23;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v20 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v20;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_41F0();
      while (sub_269F4() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

char *sub_184AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_184CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_18528(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&unk_3BE20, &qword_29878);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_18680(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, unint64_t))
{
  v7 = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v8 = sub_127C8();

  return a4(a1, a2, a3 & 1, v7, v8);
}

uint64_t sub_186F8(uint64_t a1, uint64_t a2, char a3)
{
  sub_4060(&qword_3BE30, &qword_29880);
  sub_4B1C(&qword_3BE38, &qword_3BE30, &qword_29880, &protocol conformance descriptor for NavigationLink<A, B>);
  return sub_26524();
}

uint64_t sub_187A4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  v3 = sub_26264();
  sub_DCE0(v3);
  sub_18AA8();
  return sub_262C4();
}

uint64_t sub_1886C@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD00000000000003ALL, 0x800000000002CB70);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_188F8()
{
  sub_4060(&qword_3BE30, &qword_29880);
  sub_4B1C(&qword_3BE38, &qword_3BE30, &qword_29880, &protocol conformance descriptor for NavigationLink<A, B>);
  return sub_26524();
}

__n128 sub_189B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_189C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_18AA8()
{
  result = qword_3BE50;
  if (!qword_3BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE50);
  }

  return result;
}

uint64_t sub_18B08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();

  return sub_262E4();
}

uint64_t sub_18B64(uint64_t a1, uint64_t a2)
{
  sub_133CC(0xD00000000000001FLL, 0x800000000002CBB0);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD000000000000020, 0x800000000002CBD0);
  sub_26584();
  sub_4060(&qword_3B4C0, &unk_29120);
  sub_18D64();
  return sub_26764();
}

uint64_t sub_18C8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();
  v2 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  return sub_266D4();
}

unint64_t sub_18D64()
{
  result = qword_3B4D0;
  if (!qword_3B4D0)
  {
    sub_40A8(&qword_3B4C0, &unk_29120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B4D0);
  }

  return result;
}

uint64_t sub_18DC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(&stru_20.maxprot + (swift_isaMask & **a1)))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18E80@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD000000000000017, 0x800000000002CC00);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18EF0(uint64_t a1)
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();

  return sub_262D4();
}

uint64_t sub_18F58()
{
  sub_133CC(0xD00000000000001FLL, 0x800000000002CBB0);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD000000000000020, 0x800000000002CBD0);
  sub_26584();
  sub_4060(&qword_3B4C0, &unk_29120);
  sub_18D64();
  return sub_26764();
}

unint64_t sub_19098()
{
  result = qword_3BE58;
  if (!qword_3BE58)
  {
    sub_40A8(&qword_3BE60, &qword_29A58);
    sub_18D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE58);
  }

  return result;
}

void *sub_191B8(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  return a1;
}

void sub_19200(void *a1, void *a2, void *a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

uint64_t sub_19250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4060(&qword_3BE68, "BY");
  sub_4B1C(&qword_3BE70, &qword_3BE68, "BY", &protocol conformance descriptor for TupleView<A>);
  return sub_26514();
}

void sub_192F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if ([objc_opt_self() activePairedWatchSupportsLiveActivities])
  {
    if (a3)
    {
      *(swift_allocObject() + 16) = a3;
      v8 = a3;
      sub_18B00();
      a3 = v9;
      v11 = v10;
      v13 = v12 & 1;
      sub_198A4(v9, v10, v12 & 1);
    }

    else
    {
      v11 = 0;
      v13 = -1;
    }

    sub_4060(&qword_3BE88, &qword_29BD8);
    sub_4060(&qword_3BE90, qword_29BE0);
    sub_197B0(&qword_3BE98, &qword_3BE88, &qword_29BD8, sub_1975C);
    sub_197B0(&qword_3BEA8, &qword_3BE90, qword_29BE0, sub_1982C);
    sub_264B4();
    sub_198C0(a3, v11, v13);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
  }

  else
  {
    if (a1)
    {
      v14 = a1;
      sub_19128();
      v16 = v15;
      v17 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_4060(&qword_3BE88, &qword_29BD8);
    sub_4060(&qword_3BE90, qword_29BE0);
    sub_197B0(&qword_3BE98, &qword_3BE88, &qword_29BD8, sub_1975C);
    sub_197B0(&qword_3BEA8, &qword_3BE90, qword_29BE0, sub_1982C);
    sub_264B4();

    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
  }

  sub_19880(v18, v19, v20, v21);
  if (a2)
  {
    v22 = a2;
    v23 = sub_1D50C();
    v25 = v24;
    v26 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_19880(v18, v19, v20, v21);
  v27 = v25;
  sub_198B4(v18, v19, v20, v21);

  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 17) = v21;
  *(a4 + 24) = v23;
  *(a4 + 32) = v25;

  sub_198B4(v18, v19, v20, v21);
}

uint64_t sub_19658()
{
  sub_4060(&qword_3BE68, "BY");
  sub_4B1C(&qword_3BE70, &qword_3BE68, "BY", &protocol conformance descriptor for TupleView<A>);
  return sub_26514();
}
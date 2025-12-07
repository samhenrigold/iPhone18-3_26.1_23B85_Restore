void sub_2194(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_24DC(uint64_t a1, void *a2, void *a3, void *a4)
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
    v18[2] = sub_2710;
    v18[3] = &unk_20D28;
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

void sub_274C(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_28EC;
  v8[3] = &unk_20DC8;
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

void sub_28EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

uint64_t sub_2BA0(uint64_t a1, void *a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x8000000000019CA0;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD00000000000001BLL;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_1619C(v10, v11, v6, v12, 0, v9);

  return v7;
}

id sub_2C78()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

char *sub_2D80()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel;
  *&v0[v1] = [objc_allocWithZone(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel;
  v4 = *&v2[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel];
  v5 = v2;
  [v4 setDelegate:v5];
  [*&v2[v3] start];

  return v5;
}

id sub_2E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_2E8C@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  result = sub_1628C();
  *a4 = result;
  return result;
}

uint64_t sub_2EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();

  return sub_1634C();
}

unint64_t sub_2F34()
{
  result = qword_26710[0];
  if (!qword_26710[0])
  {
    type metadata accessor for BacklightSettingsSwiftModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_26710);
  }

  return result;
}

id sub_2F88()
{
  v0 = objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel());

  return [v0 init];
}

uint64_t sub_2FBC(uint64_t a1, uint64_t a2)
{
  sub_3278(&qword_25D80, &unk_17A80);
  sub_32C0(&qword_25D88, &unk_18E40);
  sub_3308();
  sub_3408();
  swift_getOpaqueTypeConformance2();
  return sub_1650C();
}

uint64_t sub_3084(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_25D88, &unk_18E40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  v13 = a1;
  v14 = a2;
  sub_3278(&qword_25E50, qword_18D70);
  v8 = sub_32C0(&qword_25D98, &qword_17A90);
  v9 = sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
  v15 = v8;
  v16 = v9;
  swift_getOpaqueTypeConformance2();
  sub_166BC();
  v15 = sub_2BA0(0xD000000000000020, 0x8000000000019D60);
  v16 = v10;
  sub_3308();
  sub_3408();
  sub_1659C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3278(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_32C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_3308()
{
  result = qword_25D90;
  if (!qword_25D90)
  {
    sub_32C0(&qword_25D88, &unk_18E40);
    sub_32C0(&qword_25D98, &qword_17A90);
    sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25D90);
  }

  return result;
}

unint64_t sub_3408()
{
  result = qword_25DA8;
  if (!qword_25DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25DA8);
  }

  return result;
}

uint64_t sub_345C(uint64_t a1, uint64_t a2)
{
  v3 = sub_164EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3278(&qword_25D98, &qword_17A90);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *v9 = sub_1641C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_3278(&qword_25E58, &unk_17BD0);
  sub_361C(a1, &v9[*(v10 + 44)]);
  sub_164DC();
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
  sub_165AC();
  (*(v4 + 8))(v6, v3);
  return sub_3CCC(v9);
}

uint64_t sub_361C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = sub_3278(&qword_25E60, &unk_182A0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  v8 = sub_3278(&qword_25E68, &qword_17BE0);
  v30[0] = *(v8 - 8);
  v9 = v30[0];
  v10 = __chkstk_darwin(v8);
  v37 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = v30 - v12;
  v40 = sub_2BA0(0xD000000000000020, 0x8000000000019D60);
  v41 = v13;
  sub_3408();
  v14 = sub_1652C();
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v17;
  sub_1646C();
  v30[1] = v18;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();
  v19 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0, &protocol conformance descriptor for Toggle<A>);
  v20 = v35;
  v21 = v38;
  sub_1656C();
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
  v27 = sub_3278(&qword_25E78, &qword_17C10);
  v22((a3 + *(v27 + 64)), v23, v8);
  sub_3D7C(v25, v24, v26);
  v28 = *(v30[0] + 8);

  v28(v20, v8);
  v28(v23, v8);
  sub_3D8C(v25, v24, v26);
}

id sub_39B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel) privacyDuringAlwaysOnForLiveActivities];
  *a2 = result;
  return result;
}

id sub_39F0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();
  sub_1628C();
  sub_1629C();

  v4 = *(v3 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel);

  return [v4 setPrivacyDuringAlwaysOnForLiveActivities:v2];
}

uint64_t sub_3A70()
{
  [objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel()) init];
  sub_2F34();

  return sub_1634C();
}

uint64_t sub_3B08()
{
  sub_3278(&qword_25D80, &unk_17A80);
  sub_32C0(&qword_25D88, &unk_18E40);
  sub_3308();
  sub_3408();
  swift_getOpaqueTypeConformance2();
  return sub_1650C();
}

__n128 sub_3BD4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3BE0(uint64_t a1, int a2)
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

uint64_t sub_3C28(uint64_t result, int a2, int a3)
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

uint64_t sub_3CCC(uint64_t a1)
{
  v2 = sub_3278(&qword_25D98, &qword_17A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_32C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3D7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3D8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3DAC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_3DDC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_3E70@<D0>(uint64_t a5@<X8>)
{
  sub_165FC();
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  *(a5 + 32) = v9;
  return result;
}

uint64_t sub_3ED8()
{
  sub_3F1C();
  sub_3F68();

  return sub_163AC();
}

unint64_t sub_3F1C()
{
  result = qword_25EE0;
  if (!qword_25EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25EE0);
  }

  return result;
}

unint64_t sub_3F68()
{
  result = qword_25EE8;
  if (!qword_25EE8)
  {
    sub_3F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25EE8);
  }

  return result;
}

uint64_t sub_3FC0(unint64_t a1, unint64_t a2)
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
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v48, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v47, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v46, &aBlock);
  sub_5CBC(&v45, &aBlock, &qword_25FA8, &qword_17F58);
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();
  swift_unknownObjectRelease();
  v8 = v36;
  sub_5220(v37);
  if (*(&v8 + 1))
  {
    if (a2)
    {
      if (v8 == __PAIR128__(a2, a1))
      {

LABEL_9:
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        sub_5D54(&v45, &qword_25FA8, &qword_17F58);
        sub_5D54(v48, &qword_25F98, &qword_17F48);
        sub_5D54(&v47, &qword_25FA0, &qword_17F50);
        sub_5D24(&v46);
        return sub_5D54(&v45, &qword_25FA8, &qword_17F58);
      }

      v9 = sub_1685C();

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
  sub_1660C();
  v10 = aBlock;

  sub_5220(v37);
  if (v10)
  {
    [v10 invalidate];
    swift_unknownObjectRelease();
  }

  if (!a2)
  {
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_1660C();
    swift_unknownObjectRelease();
    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *&v40[8] = *&v42[8];
    *v40 = 0;
    v41 = v43;
    sub_1661C();
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_1660C();

    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *v40 = *v42;
    *&v40[8] = a1;
    *&v40[16] = 0;
    v41 = v43;
    sub_1661C();
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    v31 = v29;
    v32 = v44;
    v33 = v6;
    v34 = v7;
    sub_1660C();
    sub_5220(v43);
    aBlock = v29;
    v36 = v44;
    v37 = v6;
    v38 = v7;
    *v40 = *v42;
    *&v40[16] = *&v42[16];
    v41 = 0x8000000000000000;
    sub_1661C();
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    return sub_5D54(&v45, &qword_25FA8, &qword_17F58);
  }

  v26 = v6;
  v27 = v7;

  sub_5D54(v48, &qword_25F98, &qword_17F48);
  v28 = a2;
  sub_5D54(&v47, &qword_25FA0, &qword_17F50);
  sub_5D24(&v46);
  sub_5D54(&v45, &qword_25FA8, &qword_17F58);
  sub_5D54(v48, &qword_25F98, &qword_17F48);
  sub_5D54(&v47, &qword_25FA0, &qword_17F50);
  sub_5D24(&v46);
  sub_5D54(&v45, &qword_25FA8, &qword_17F58);
  sub_5D54(v48, &qword_25F98, &qword_17F48);
  sub_5D54(&v47, &qword_25FA0, &qword_17F50);
  sub_5D24(&v46);
  sub_5D54(&v45, &qword_25FA8, &qword_17F58);
  v11 = *(v3 + 64);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 iconCache];
    v14 = sub_1671C();
    v15 = [v13 iconForName:v14 fallBackToPersistentStoreIfNecessary:0];

    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    sub_5D54(v48, &qword_25F98, &qword_17F48);
    sub_5D54(&v47, &qword_25FA0, &qword_17F50);
    sub_5D24(&v46);
    sub_5D54(&v45, &qword_25FA8, &qword_17F58);
    if (v15)
    {

      sub_1660C();

      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v7;
      *v40 = *v42;
      *&v40[8] = a1;
      *&v40[16] = v28;
      v41 = v43;
      sub_1661C();
      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
      sub_5D54(&v45, &qword_25FA8, &qword_17F58);
      sub_1660C();
      swift_unknownObjectRelease();
      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v7;
      *&v40[8] = *&v42[8];
      *v40 = 0;
      v41 = v43;
      sub_1661C();
      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
      sub_5D54(&v45, &qword_25FA8, &qword_17F58);
      v16 = v15;
      v17 = sub_165BC();
      v31 = v29;
      v32 = v44;
      v33 = v6;
      v34 = v27;
      sub_1660C();
      sub_5220(v43);
      aBlock = v29;
      v36 = v44;
      v37 = v6;
      v38 = v27;
      *v40 = *v42;
      *&v40[16] = *&v42[16];
      v41 = v17;
      sub_1661C();

      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
    }

    else
    {
      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
      sub_5D54(&v45, &qword_25FA8, &qword_17F58);
      v18 = sub_1671C();
      v19 = *(v3 + 16);
      v20 = swift_allocObject();
      v21 = *(v3 + 48);
      v20[3] = *(v3 + 32);
      v20[4] = v21;
      v20[5] = *(v3 + 64);
      v22 = *(v3 + 16);
      v20[1] = *v3;
      v20[2] = v22;
      v38 = sub_5E14;
      v39 = v20;
      aBlock = _NSConcreteStackBlock;
      *&v36 = 1107296256;
      *(&v36 + 1) = sub_4F9C;
      v37 = &unk_21208;
      v23 = _Block_copy(&aBlock);
      sub_531C(v3, &v31);

      v24 = [v12 iconFetchTaskForBundleIdentifier:v18 isPhoneApp:v19 completion:v23];
      _Block_release(v23);

      v31 = v29;
      v32 = v44;
      v33 = v26;
      v34 = v7;
      swift_unknownObjectRetain();
      sub_1660C();
      swift_unknownObjectRelease();
      aBlock = v29;
      v36 = v44;
      v37 = v26;
      v38 = v7;
      *&v40[8] = *&v42[8];
      *v40 = v24;
      v41 = v43;
      sub_1661C();
      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
      sub_5D54(&v45, &qword_25FA8, &qword_17F58);
      v31 = v29;
      v32 = v44;
      v33 = v26;
      v34 = v7;
      sub_1660C();

      aBlock = v29;
      v36 = v44;
      v37 = v26;
      v38 = v7;
      *v40 = *v42;
      *&v40[8] = a1;
      *&v40[16] = v28;
      v41 = v43;
      sub_1661C();
      swift_unknownObjectRelease();
      sub_5D54(v48, &qword_25F98, &qword_17F48);
      sub_5D54(&v47, &qword_25FA0, &qword_17F50);
      sub_5D24(&v46);
    }

    return sub_5D54(&v45, &qword_25FA8, &qword_17F58);
  }

  sub_3F1C();
  sub_3F68();
  result = sub_1639C();
  __break(1u);
  return result;
}

void sub_4F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_5028@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v22[0] = *(v1 + 24);
  v22[1] = v4;
  v23 = *(v1 + 56);
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();
  v5 = v24;
  sub_5200(v24);
  swift_unknownObjectRelease();

  sub_5220(v24);
  sub_3F1C();
  sub_3F68();
  v6 = sub_163AC();
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
  a1[5] = sub_5244;
  a1[6] = v9;
  a1[7] = sub_52CC;
  a1[8] = v12;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v17;
  a1[12] = v16;
  a1[13] = sub_52F0;
  a1[14] = v18;
  sub_531C(v2, v22);
  sub_531C(v2, v22);
  sub_531C(v2, v22);
}

unint64_t sub_5200(unint64_t result)
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

unint64_t sub_5220(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_5244()
{
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();

  result = sub_5220(v2);
  if (v1)
  {
    [v1 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_5354@<X0>(void *a1@<X0>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!(a3 >> 62))
  {

LABEL_5:
    result = sub_164AC();
    *a4 = v7;
    *(a4 + 8) = v8;
    return result;
  }

  if (a1)
  {
    v5 = [a1 genericIcon];
    sub_165BC();
    goto LABEL_5;
  }

  sub_3F1C();
  sub_3F68();
  result = sub_1639C();
  __break(1u);
  return result;
}

__n128 sub_5438@<Q0>(uint64_t a1@<X8>)
{
  sub_165FC();
  sub_3F1C();
  sub_3F68();
  v2 = sub_163AC();
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

__n128 sub_54D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_165FC();
  sub_3F1C();
  sub_3F68();
  v8 = sub_163AC();
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

uint64_t sub_55D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

unint64_t sub_55FC(unint64_t a1)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

unint64_t sub_5658(unint64_t *a1)
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

__n128 sub_5674(uint64_t a1, uint64_t a2)
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

uint64_t sub_5690(uint64_t a1, unsigned int a2)
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

uint64_t sub_56EC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_5770(uint64_t a1, unsigned int a2)
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

uint64_t sub_57CC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_582C(void *result, uint64_t a2)
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

unint64_t sub_586C()
{
  result = qword_25EF8;
  if (!qword_25EF8)
  {
    sub_32C0(&qword_25F00, &qword_17DC0);
    sub_58F8();
    sub_5A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25EF8);
  }

  return result;
}

unint64_t sub_58F8()
{
  result = qword_25F08;
  if (!qword_25F08)
  {
    sub_32C0(&qword_25F10, &qword_17DC8);
    sub_5984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F08);
  }

  return result;
}

unint64_t sub_5984()
{
  result = qword_25F18;
  if (!qword_25F18)
  {
    sub_32C0(&qword_25F20, &qword_17DD0);
    sub_5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F18);
  }

  return result;
}

unint64_t sub_5A10()
{
  result = qword_268B0[0];
  if (!qword_268B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_268B0);
  }

  return result;
}

unint64_t sub_5A64()
{
  result = qword_25F28;
  if (!qword_25F28)
  {
    sub_32C0(&qword_25F30, &qword_17DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F28);
  }

  return result;
}

__n128 sub_5AC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5ADC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_5B38(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_5B9C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_5BA8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_5C04(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_5CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3278(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5D54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3278(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5DB4()
{

  swift_unknownObjectRelease();

  sub_5220(*(v0 + 64));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_5E14(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_165BC();
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
    sub_5CBC(v23, &v11, &qword_25F98, &qword_17F48);
    sub_5CBC(&v22, &v11, &qword_25FA0, &qword_17F50);
    sub_5C84(&v21, &v11);
    sub_5CBC(&v20, &v11, &qword_25FA8, &qword_17F58);
    sub_3278(&qword_25EF0, &qword_17C20);
    sub_1660C();
    sub_5220(v19);
    v11 = v4;
    v12 = *(v2 + 48);
    v13 = v5;
    v14 = v6;
    sub_1661C();

    sub_5D54(v23, &qword_25F98, &qword_17F48);
    sub_5D54(&v22, &qword_25FA0, &qword_17F50);
    sub_5D24(&v21);
  }

  else
  {
    if (!a2)
    {
      sub_6130();
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
    sub_5CBC(v23, &v11, &qword_25F98, &qword_17F48);
    sub_5CBC(&v22, &v11, &qword_25FA0, &qword_17F50);
    sub_5C84(&v21, &v11);
    sub_5CBC(&v20, &v11, &qword_25FA8, &qword_17F58);
    sub_3278(&qword_25EF0, &qword_17C20);
    sub_1660C();
    sub_5220(v19);
    v11 = v7;
    v12 = *(v2 + 48);
    v13 = v8;
    v14 = v9;
    sub_1661C();
    sub_5D54(v23, &qword_25F98, &qword_17F48);
    sub_5D54(&v22, &qword_25FA0, &qword_17F50);
    sub_5D24(&v21);
  }

  return sub_5D54(&v20, &qword_25FA8, &qword_17F58);
}

uint64_t sub_6118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_6130()
{
  result = qword_26940[0];
  if (!qword_26940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_26940);
  }

  return result;
}

unint64_t sub_6198()
{
  result = qword_25FB0;
  if (!qword_25FB0)
  {
    sub_32C0(&qword_25FB8, &qword_17F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25FB0);
  }

  return result;
}

uint64_t sub_622C(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);

  return sub_1634C();
}

uint64_t sub_62B0(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_62FC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);

  return sub_1635C();
}

uint64_t sub_63C0()
{
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return v1;
}

uint64_t (*sub_6464(uint64_t *a1))()
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
  sub_6570(v3 + 48, v3 + 32);
  *(v5 + 8) = sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return sub_6514;
}

void sub_6514(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v1[2] = **a1;
  *(v1 + 65) = v2;
  sub_1661C();
  sub_65E0(v1);

  free(v1);
}

uint64_t sub_6570(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_25FD0, &qword_17FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_65E0(uint64_t a1)
{
  v2 = sub_3278(&qword_25FC8, &qword_17FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6648()
{
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1662C();
  return v1;
}

uint64_t sub_669C()
{
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return v1;
}

void (*sub_6750(uint64_t *a1))(uint64_t *a1)
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
  sub_6884(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return sub_680C;
}

void sub_680C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 56);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1666C();
  sub_68E0(v1 + 48);

  free(v1);
}

uint64_t sub_6934()
{
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  return v1;
}

uint64_t sub_69A4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);

  v10 = sub_1634C();
  v12 = v11;
  sub_165FC();

  *a6 = v10;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = &off_21288;
  return result;
}

uint64_t sub_6AA0()
{
  v1 = sub_1645C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3278(&qword_25FE0, &qword_17FD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = v0;
  sub_3278(&qword_25FE8, &unk_17FE0);
  sub_3D34(&qword_25FF0, &qword_25FE8, &unk_17FE0, &protocol conformance descriptor for TupleView<A>);
  sub_164FC();
  sub_1644C();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1643C(v9);
  sub_1642C(*(*(v0 + 8) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName));
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1643C(v10);
  sub_1647C();
  sub_3D34(&qword_25FF8, &qword_25FE0, &qword_17FD8, &protocol conformance descriptor for Form<A>);
  sub_1658C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_6CFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_3278(&qword_26008, &qword_181D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - v5;
  v6 = sub_3278(&qword_26010, &qword_181E0);
  v7 = __chkstk_darwin(v6 - 8);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v38 = sub_3278(&qword_26018, &qword_181E8);
  v11 = *(v38 - 8);
  v12 = __chkstk_darwin(v38);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v42 = a1;
  sub_3278(&qword_26020, &qword_181F0);
  v16 = sub_32C0(&qword_26028, &qword_181F8);
  v17 = sub_3D34(&qword_26030, &qword_26028, &qword_181F8, &protocol conformance descriptor for HStack<A>);
  *&v44 = v16;
  *(&v44 + 1) = v17;
  v18 = v10;
  v19 = v4;
  v20 = 1;
  swift_getOpaqueTypeConformance2();
  v21 = v15;
  v22 = sub_166BC();
  v23 = *(a1 + 8);
  if ((*(*v23 + 248))(v22))
  {
    v44 = *(a1 + 32);
    v45 = *(a1 + 48);
    sub_3278(&qword_25FD8, &qword_17FD0);
    v24 = sub_1665C();
    if (v43 == 1 && (v25 = (*(*v23 + 176))(v24), (v25 & 1) != 0))
    {
      __chkstk_darwin(v25);
      *(&v36 - 2) = a1;
      sub_3278(&qword_26040, &qword_18208);
      sub_9928();
      v26 = v37;
      sub_1650C();
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
  sub_5CBC(v18, v40, &qword_26010, &qword_181E0);
  v32 = v41;
  v28(v41, v30, v29);
  v33 = sub_3278(&qword_26038, &qword_18200);
  sub_5CBC(v31, &v32[*(v33 + 48)], &qword_26010, &qword_181E0);
  sub_5D54(v18, &qword_26010, &qword_181E0);
  v34 = *(v27 + 8);
  v34(v21, v29);
  sub_5D54(v31, &qword_26010, &qword_181E0);
  return (v34)(v30, v29);
}

uint64_t sub_7208(uint64_t *a1)
{
  v2 = sub_164EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3278(&qword_26028, &qword_181F8);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  *v8 = sub_1641C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_3278(&qword_260E0, &qword_18298);
  sub_73C8(a1, &v8[*(v9 + 44)]);
  sub_164DC();
  sub_3D34(&qword_26030, &qword_26028, &qword_181F8, &protocol conformance descriptor for HStack<A>);
  sub_165AC();
  (*(v3 + 8))(v5, v2);
  return sub_5D54(v8, &qword_26028, &qword_181F8);
}

uint64_t sub_73C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = sub_3278(&qword_25E60, &unk_182A0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = v35 - v4;
  v5 = sub_3278(&qword_25E68, &qword_17BE0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = __chkstk_darwin(v5);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  if (*(a1[1] + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
  {
    *&v52 = sub_2BA0(0xD00000000000001ELL, 0x8000000000019E80);
    *(&v52 + 1) = v10;
    sub_3408();
    v47 = sub_1652C();
    v48 = v11;
    v49 = v12 & 1;
    v50 = v13;
    v51 = 0;
  }

  else
  {
    *&v52 = sub_2BA0(0xD000000000000017, 0x8000000000019E60);
    *(&v52 + 1) = v14;
    sub_3408();
    v47 = sub_1652C();
    v48 = v16;
    v49 = v15 & 1;
    v50 = v17;
    v51 = 1;
  }

  sub_164AC();
  v18 = v54;
  v36 = v53;
  v37 = v52;
  v19 = *(&v52 + 1);
  v38 = *(&v53 + 1);
  v20 = v53;
  v39 = v52;
  sub_9C60(v52, *(&v52 + 1), v53, *(&v53 + 1));
  v35[1] = sub_1646C();
  v35[0] = v21;
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
  sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  v22 = v40;
  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0, &protocol conformance descriptor for Toggle<A>);
  v23 = v43;
  sub_1656C();
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
  v30 = sub_3278(&qword_260E8, qword_182D8);
  v26(v28 + *(v30 + 64), v27, v24);
  v32 = v38;
  v31 = v39;
  sub_9C60(v39, v19, v20, v38);
  sub_9C9C(v31, v19, v20, v32);
  v33 = *(v25 + 8);
  v33(v9, v24);
  v33(v27, v24);
  return sub_9C9C(v31, v19, v20, v32);
}

uint64_t sub_7888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v52 = sub_3278(&qword_26070, &qword_18220);
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - v3;
  v53 = sub_3278(&qword_26080, &qword_18228);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v44 - v4;
  v60 = sub_3278(&qword_26088, &qword_18230);
  __chkstk_darwin(v60);
  v62 = &v44 - v5;
  v49 = sub_3278(&qword_26090, &qword_18238);
  __chkstk_darwin(v49);
  v50 = &v44 - v6;
  v61 = sub_3278(&qword_26058, &qword_18210);
  __chkstk_darwin(v61);
  v51 = &v44 - v7;
  v58 = sub_1640C();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3278(&qword_26060, &qword_18218);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = &v44 - v10;
  v59 = sub_3278(&qword_26098, &qword_18240);
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v44 - v12;
  v14 = a1[1];
  v15 = *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v16 = *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  sub_BEC4(v71);
  v73 = v71[1];
  v74 = v71[0];
  v17 = v71[0];
  sub_9BC4(&v73);
  v72 = v71[2];
  sub_9BC4(&v72);
  if (__PAIR128__(v16, v15) == v17)
  {
    sub_9BC4(&v74);
  }

  else
  {
    v18 = sub_1685C();
    sub_9BC4(&v74);
    if ((v18 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v64 = *(a1 + 1);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  if ((v67 & 1) == 0)
  {
    v69 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v70 = v36;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260A0, &qword_18270);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_1812C);
    sub_3D34(&qword_260B0, &qword_260A0, &qword_18270, &protocol conformance descriptor for TupleView<A>);
    sub_3408();
    sub_1663C();
    sub_163FC();
    v37 = sub_3D34(&qword_26068, &qword_26060, &qword_18218, &protocol conformance descriptor for Picker<A, B, C>);
    v38 = v57;
    v39 = v58;
    sub_1655C();
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
    v42 = sub_3D34(&qword_26078, &qword_26070, &qword_18220, &protocol conformance descriptor for Picker<A, B, C>);
    *&v64 = v52;
    *(&v64 + 1) = v39;
    v65 = v42;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v43 = v51;
    sub_164AC();
    sub_5CBC(v43, v62, &qword_26058, &qword_18210);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    sub_164AC();
    sub_5D54(v43, &qword_26058, &qword_18210);
    return (*(v40 + 8))(v13, v41);
  }

LABEL_5:
  if (*(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) == 1 && *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) == 1)
  {
    v69 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v70 = v19;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260B8, &qword_18278);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_1812C);
    sub_3D34(&qword_260C0, &qword_260B8, &qword_18278, &protocol conformance descriptor for TupleView<A>);
    sub_3408();
    v20 = v45;
    sub_1663C();
    sub_163FC();
    v21 = sub_3D34(&qword_26078, &qword_26070, &qword_18220, &protocol conformance descriptor for Picker<A, B, C>);
    v22 = v47;
    v23 = v52;
    v24 = v58;
    sub_1655C();
    (*(v56 + 8))(v9, v24);
    (*(v46 + 8))(v20, v23);
    v25 = v48;
    v26 = v53;
    (*(v48 + 16))(v50, v22, v53);
    swift_storeEnumTagMultiPayload();
    v27 = sub_3D34(&qword_26068, &qword_26060, &qword_18218, &protocol conformance descriptor for Picker<A, B, C>);
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
    sub_164AC();
    sub_5CBC(v28, v62, &qword_26058, &qword_18210);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    sub_164AC();
    sub_5D54(v28, &qword_26058, &qword_18210);
    return (*(v25 + 8))(v22, v26);
  }

  else
  {
    v69 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v70 = v30;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v67 = v64;
    v68 = v65;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260A0, &qword_18270);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting, &unk_1812C);
    sub_3D34(&qword_260B0, &qword_260A0, &qword_18270, &protocol conformance descriptor for TupleView<A>);
    sub_3408();
    sub_1663C();
    sub_163FC();
    v31 = sub_3D34(&qword_26068, &qword_26060, &qword_18218, &protocol conformance descriptor for Picker<A, B, C>);
    v32 = v57;
    v33 = v58;
    sub_1655C();
    (*(v56 + 8))(v9, v33);
    (*(v54 + 8))(v11, v32);
    v34 = v55;
    v35 = v59;
    (*(v55 + 16))(v62, v13, v59);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    *&v64 = v32;
    *(&v64 + 1) = v33;
    v65 = v31;
    v66 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    sub_164AC();
    return (*(v34 + 8))(v13, v35);
  }
}

uint64_t sub_8900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_8994@<X0>(char *a1@<X8>)
{
  v2 = sub_3278(&qword_260C8, &qword_18280);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v27 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v28 = v15;
  sub_3408();
  *v14 = sub_1652C();
  *(v14 + 1) = v16;
  v14[16] = v17 & 1;
  *(v14 + 3) = v18;
  *(v14 + 4) = 0;
  v14[40] = 1;
  v27 = sub_2BA0(0xD000000000000026, 0x8000000000019E00);
  v28 = v19;
  *v12 = sub_1652C();
  *(v12 + 1) = v20;
  v12[16] = v21 & 1;
  *(v12 + 3) = v22;
  *(v12 + 4) = 2;
  v12[40] = 1;
  v23 = *(v3 + 16);
  v23(v9, v14, v2);
  v23(v6, v12, v2);
  v23(a1, v9, v2);
  v24 = sub_3278(&qword_260D0, &qword_18288);
  v23(&a1[*(v24 + 48)], v6, v2);
  v25 = *(v3 + 8);
  v25(v12, v2);
  v25(v14, v2);
  v25(v6, v2);
  return (v25)(v9, v2);
}

uint64_t sub_8C34(uint64_t *a1)
{
  if (sub_15CA4(2, 26, 0, 0))
  {
    sub_164CC();

    return sub_1637C();
  }

  else
  {
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    sub_1678C();
    swift_getWitnessTable();
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    return sub_1637C();
  }
}

uint64_t sub_8D98(uint64_t *a1)
{
  if (sub_15CA4(2, 26, 0, 0))
  {
    sub_164CC();
    sub_1637C();
  }

  else
  {
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    sub_1678C();
    swift_getWitnessTable();
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8F98@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_3278(&qword_260C8, &qword_18280);
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
  v43 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v44 = v19;
  sub_3408();
  *v18 = sub_1652C();
  *(v18 + 1) = v20;
  v18[16] = v21 & 1;
  *(v18 + 3) = v22;
  *(v18 + 4) = 0;
  v18[40] = 1;
  v43 = sub_2BA0(0xD00000000000002DLL, 0x8000000000019E30);
  v44 = v23;
  *v16 = sub_1652C();
  *(v16 + 1) = v24;
  v16[16] = v25 & 1;
  *(v16 + 3) = v26;
  *(v16 + 4) = 1;
  v16[40] = 1;
  v43 = sub_2BA0(0xD000000000000026, 0x8000000000019E00);
  v44 = v27;
  *v13 = sub_1652C();
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
  v36 = sub_3278(&qword_260D8, &qword_18290);
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

uint64_t sub_934C@<X0>(char *a1@<X8>)
{
  v2 = sub_3278(&qword_260C8, &qword_18280);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v27 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v28 = v15;
  sub_3408();
  *v14 = sub_1652C();
  *(v14 + 1) = v16;
  v14[16] = v17 & 1;
  *(v14 + 3) = v18;
  *(v14 + 4) = 0;
  v14[40] = 1;
  v27 = sub_2BA0(0xD00000000000002DLL, 0x8000000000019E30);
  v28 = v19;
  *v12 = sub_1652C();
  *(v12 + 1) = v20;
  v12[16] = v21 & 1;
  *(v12 + 3) = v22;
  *(v12 + 4) = 1;
  v12[40] = 1;
  v23 = *(v3 + 16);
  v23(v9, v14, v2);
  v23(v6, v12, v2);
  v23(a1, v9, v2);
  v24 = sub_3278(&qword_260D0, &qword_18288);
  v23(&a1[*(v24 + 48)], v6, v2);
  v25 = *(v3 + 8);
  v25(v12, v2);
  v25(v14, v2);
  v25(v6, v2);
  return (v25)(v9, v2);
}

Swift::Int sub_9628()
{
  v1 = *v0;
  sub_168AC();
  sub_168BC(v1);
  return sub_168CC();
}

Swift::Int sub_969C(uint64_t a1)
{
  v2 = *v1;
  sub_168AC();
  sub_168BC(v2);
  return sub_168CC();
}

void *sub_96F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_972C(uint64_t a1, uint64_t a2)
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

uint64_t sub_9740(uint64_t a1, int a2)
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

uint64_t sub_9788(uint64_t result, int a2, int a3)
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

uint64_t sub_97E8()
{
  sub_32C0(&qword_25FE0, &qword_17FD8);
  sub_3D34(&qword_25FF8, &qword_25FE0, &qword_17FD8, &protocol conformance descriptor for Form<A>);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting()
{
  if (!qword_265D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_265D0);
    }
  }
}

unint64_t sub_9928()
{
  result = qword_26048;
  if (!qword_26048)
  {
    sub_32C0(&qword_26040, &qword_18208);
    sub_9A44();
    sub_32C0(&qword_26060, &qword_18218);
    sub_1640C();
    sub_3D34(&qword_26068, &qword_26060, &qword_18218, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26048);
  }

  return result;
}

unint64_t sub_9A44()
{
  result = qword_26050;
  if (!qword_26050)
  {
    sub_32C0(&qword_26058, &qword_18210);
    sub_32C0(&qword_26060, &qword_18218);
    sub_1640C();
    sub_3D34(&qword_26068, &qword_26060, &qword_18218, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    sub_32C0(&qword_26070, &qword_18220);
    sub_3D34(&qword_26078, &qword_26070, &qword_18220, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26050);
  }

  return result;
}

uint64_t sub_9C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9C60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_3D7C(a1, a2, a3 & 1);
}

uint64_t sub_9C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_3D8C(a1, a2, a3 & 1);
}

uint64_t sub_9CD8()
{
  sub_2BA0(0xD00000000000002FLL, 0x8000000000019EA0);
  sub_3408();
  sub_1652C();
  sub_3278(&qword_260F0, qword_182F0);
  sub_9E14();
  return sub_166CC();
}

uint64_t sub_9DA0()
{
  sub_3A70();
  sub_9FB0();
  return sub_1633C();
}

unint64_t sub_9E14()
{
  result = qword_260F8;
  if (!qword_260F8)
  {
    sub_32C0(&qword_260F0, qword_182F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_260F8);
  }

  return result;
}

uint64_t sub_9E78@<X0>(uint64_t a1@<X8>)
{
  sub_2BA0(0xD000000000000027, 0x8000000000019ED0);
  sub_3408();
  result = sub_1652C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_9F18()
{
  result = qword_26100;
  if (!qword_26100)
  {
    sub_32C0(&qword_26108, "t7");
    sub_9E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26100);
  }

  return result;
}

unint64_t sub_9FB0()
{
  result = qword_26110;
  if (!qword_26110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26110);
  }

  return result;
}

uint64_t sub_A038(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);

  return sub_1635C();
}

uint64_t sub_A0C4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v60 = sub_3278(&qword_26118, &qword_183B0);
  __chkstk_darwin(v60);
  v56 = &v55 - v5;
  v6 = sub_3278(&qword_26120, &qword_183B8);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = __chkstk_darwin(v6);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v55 - v9;
  v10 = sub_3278(&qword_26128, &qword_183C0);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = __chkstk_darwin(v10);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = sub_3278(&qword_26130, &qword_183C8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = sub_3278(&qword_26138, &qword_183D0);
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
    sub_AA88();
    sub_166BC();

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
  v57 = sub_3278(&qword_26140, &qword_183D8);
  v59 = sub_AA04();
  v27 = sub_166BC();
  v58 = &v55;
  __chkstk_darwin(v27);
  *(&v55 - 2) = a1;
  *(&v55 - 1) = a2;
  v71 = sub_2BA0(0xD00000000000002CLL, 0x8000000000019F00);
  v72 = v28;
  sub_3408();
  v29 = sub_1652C();
  v31 = v30;
  v33 = v32;
  v55 = v14;
  v35 = v34;
  v36 = v56;
  v37 = &v56[*(v60 + 36)];
  v38 = *(sub_3278(&qword_26158, &qword_183E0) + 28);
  v39 = sub_1651C();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *v37 = swift_getKeyPath();
  *v36 = v29;
  *(v36 + 1) = v31;
  v36[16] = v33 & 1;
  *(v36 + 3) = v35;
  sub_AD98();
  v40 = v69;
  sub_1669C();
  v41 = v68;
  sub_5CBC(v70, v68, &qword_26138, &qword_183D0);
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
  sub_5CBC(v49, v67, &qword_26138, &qword_183D0);
  v51 = sub_3278(&qword_26170, qword_18418);
  (v60)(v50 + *(v51 + 48), v43, v44);
  v59((v50 + *(v51 + 64)), v46, v48);
  v52 = *(v45 + 8);
  v52(v69, v48);
  v53 = *(v42 + 8);
  v53(v55, v44);
  sub_AE50(v70);
  v52(v46, v48);
  v53(v43, v44);
  return sub_AE50(v68);
}

uint64_t sub_A7D0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.segname[(swift_isaMask & **a1) + 8])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_A898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.size + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_3278(&qword_26600, &unk_18540);
  sub_3D34(&qword_26190, &qword_26600, &unk_18540, &protocol conformance descriptor for [A]);
  sub_B0D8(&qword_26198, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_18668);
  sub_AA88();
  return sub_1668C();
}

unint64_t sub_AA04()
{
  result = qword_26148;
  if (!qword_26148)
  {
    sub_32C0(&qword_26140, &qword_183D8);
    sub_AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26148);
  }

  return result;
}

unint64_t sub_AA88()
{
  result = qword_26150;
  if (!qword_26150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26150);
  }

  return result;
}

uint64_t sub_AADC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.flags + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_3278(&qword_26600, &unk_18540);
  sub_3D34(&qword_26190, &qword_26600, &unk_18540, &protocol conformance descriptor for [A]);
  sub_B0D8(&qword_26198, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_18668);
  sub_AA88();
  return sub_1668C();
}

uint64_t sub_AC48(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);

  return sub_1634C();
}

uint64_t sub_ACF0(uint64_t a1)
{
  v2 = sub_3278(&qword_26188, &unk_18518);
  __chkstk_darwin(v2 - 8);
  sub_5CBC(a1, &v5 - v3, &qword_26188, &unk_18518);
  return sub_163CC();
}

unint64_t sub_AD98()
{
  result = qword_26160;
  if (!qword_26160)
  {
    sub_32C0(&qword_26118, &qword_183B0);
    sub_3D34(&qword_26168, &qword_26158, &qword_183E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26160);
  }

  return result;
}

uint64_t sub_AE50(uint64_t a1)
{
  v2 = sub_3278(&qword_26138, &qword_183D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_AEB8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(&stru_108.reloff + (swift_isaMask & **(v1 + 32)));

  v4(v5);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  v6 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_13AD8(sub_B29C, v3, v9, v10, v11, v12);
  v7 = v12[1];
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v13[0];
  result = *(v13 + 9);
  *(a1 + 41) = *(v13 + 9);
  return result;
}

uint64_t sub_B088()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B0D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_B138@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = *(&stru_108.reloff + (swift_isaMask & **(v3 + 24)));

  v7(v8);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  v9 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_13AD8(a2, v6, v12, v13, v14, v15);
  v10 = v15[1];
  *a3 = v15[0];
  a3[1] = v10;
  a3[2] = v16[0];
  result = *(v16 + 9);
  *(a3 + 41) = *(v16 + 9);
  return result;
}

id sub_B2A0()
{
  v0 = objc_allocWithZone(CSLPRFIconFetcher);

  return [v0 init];
}

id sub_B2F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1671C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_B370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher;
  *&v4[v7] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  *&v4[OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model] = sub_F338();
  if (a2)
  {
    v8 = sub_1671C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_B4CC(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_B510(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher;
  *&v2[v4] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  *&v2[OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model] = sub_F338();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_B5E4()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v1 = objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = (*(&stru_20.nsects + (swift_isaMask & *v0)))(v1);
  [v0 addChildViewController:v2];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v4 addSubview:v5];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  v19 = [v2 view];
  if (v19)
  {
    v20 = v19;
    [v19 setAutoresizingMask:18];

    [v2 didMoveToParentViewController:v0];
    v21 = [v0 navigationItem];
    sub_2BA0(0xD00000000000001ALL, 0x8000000000019F30);
    v22 = sub_1671C();

    [v21 setTitle:v22];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_B86C()
{
  sub_1452C(*(v0 + OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model));
  v1 = *(v0 + OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher);
  sub_3F1C();
  sub_3F68();
  sub_1627C();
  v2 = objc_allocWithZone(sub_3278(&qword_261B0, &qword_18550));
  v3 = v1;
  return sub_1649C();
}

void sub_B91C(char a1)
{
  v3 = sub_3278(&qword_261B8, &qword_18558);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1624C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_161AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1670C();
  __chkstk_darwin(v11 - 8);
  v12 = sub_161BC();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v24.receiver = v1;
  v24.super_class = v15;
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1);
  v16 = sub_1671C();
  v17 = [objc_opt_self() bundleWithIdentifier:v16];

  if (v17)
  {
    v22 = v12;
    sub_166FC();
    v18 = [v17 bundleURL];
    sub_161DC();

    (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v7);
    sub_1623C();
    sub_161CC();
    sub_161EC();
    v19 = sub_161FC();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v5, 1, v19) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1626C();
      sub_1625C();

      (*(v23 + 8))(v14, v22);
      (*(v20 + 8))(v5, v19);
    }
  }
}

id sub_BD90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BE48()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_BE94()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_BEC4(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000000019FD0;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x8000000000019FF0;
  a1[4] = 0xD000000000000018;
  a1[5] = 0x800000000001A010;
}

uint64_t sub_BF68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_BFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a2;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_BF68;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  BSDispatchMain();
  _Block_release(v10);
}

void sub_C0FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_3278(&qword_265E0, &qword_18870);
  v10 = sub_1674C();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_BF68;
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_C1F4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_12CF8;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_BF68;
  v4[3] = &unk_21520;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

void sub_C2E4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_C468;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_BF68;
  v4[3] = &unk_21570;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

uint64_t sub_C3AC(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v1, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  sub_1628C();
  sub_1629C();
}

uint64_t sub_C430()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_C4AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_BF68;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

unint64_t sub_C570(unint64_t result)
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
          sub_167AC();
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
            sub_12718(&qword_262A0, v6, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
            sub_1628C();
          }

          else
          {
            v46 = v5;
            v10 = (*(&stru_B8.size + (swift_isaMask & *v2)))();
            v11 = v10;
            if (v10 >> 62)
            {
              v12 = sub_1682C();
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
                    v2 = sub_167AC();
                  }

                  else
                  {
                    v2 = *(v11 + 8 * v13 + 32);
                  }

                  v14 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v15 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v3 = [v9 identifier];
                  v16 = sub_1672C();
                  v18 = v17;

                  if (v14 == v16 && v15 == v18)
                  {
                  }

                  else
                  {
                    v20 = sub_1685C();

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
                sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
                sub_1628C();
                sub_1629C();

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
              v24 = sub_1682C();
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
                    v26 = sub_167AC();
                  }

                  else
                  {
                    v26 = *(v23 + 8 * v25 + 32);
                  }

                  v27 = *(v26 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v28 = *(v26 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v29 = [v9 identifier];
                  v30 = sub_1672C();
                  v32 = v31;

                  if (v27 == v30 && v28 == v32)
                  {
                  }

                  else
                  {
                    v34 = sub_1685C();

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
                sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
                sub_1628C();
                sub_1629C();

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
            v36 = sub_1672C();
            v38 = v37;

            if (v36 == 0xD00000000000001ALL && 0x8000000000019FD0 == v38)
            {

              v5 = v46;
              v2 = v47;
              v4 = v43;
              v3 = v44;
            }

            else
            {
              v40 = sub_1685C();

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
            sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
            sub_1628C();
          }

          sub_1629C();
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
      result = sub_1682C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_CDDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_CED8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_CF90()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_CFE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_D0A0()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_D0E4(char a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_D1A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a1;
  v2 = a1;
}

uint64_t sub_D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9)
{
  v14 = swift_allocObject();
  sub_1621C();
  v15 = (v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x8000000000019FF0 == a2 || (sub_1685C() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x8000000000019FD0 == a2 || (sub_1685C() & 1) != 0)
  {

    a3 = sub_2BA0(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  sub_162AC();
  swift_endAccess();
  *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v14 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v14;
}

uint64_t sub_D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char a7, char a8, char a9)
{
  sub_1621C();
  v15 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x8000000000019FF0 == a2 || (sub_1685C() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x8000000000019FD0 == a2 || (sub_1685C() & 1) != 0)
  {

    a3 = sub_2BA0(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  v20 = a5;
  sub_162AC();
  swift_endAccess();

  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v9;
}

uint64_t sub_D608(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_162FC();
}

uint64_t sub_D678(uint64_t a1)
{
  sub_1622C();
  sub_12718(&qword_26280, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_166EC();
}

uint64_t sub_D700@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v4 = sub_1622C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_D778()
{
  v1 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);

  return v1;
}

uint64_t sub_D7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);

  return v1;
}

uint64_t sub_D820(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v4 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  v5 = v3 == 0xD00000000000001CLL && 0x8000000000019FF0 == v4;
  if (v5 || (sub_1685C() & 1) != 0)
  {
    return sub_1672C();
  }

  v7 = v3 == 0xD00000000000001ALL && 0x8000000000019FD0 == v4;
  if (v7 || (sub_1685C() & 1) != 0)
  {
    return sub_1672C();
  }

  return v3;
}

void sub_D924(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_E24C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_DABC;
  v7[3] = &unk_215C0;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_DA1C(void *a1, char a2)
{
  [a1 setAllowLiveActivitiesForApp:a2 & 1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
  sub_1628C();
  sub_1629C();
}

uint64_t sub_DABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void (*sub_DB1C(uint64_t *a1))(void ****a1, char a2)
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
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = [*(v1 + v4) allowLiveActivitiesForApp];
  return sub_DBA8;
}

void sub_DBA8(void ****a1, char a2)
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
    v2[4] = sub_12D4C;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21610;
    v7 = _Block_copy(v2);

    v8 = v5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[4] = sub_12D4C;
    v2[5] = v9;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21660;
    v7 = _Block_copy(v2);
    v10 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

void sub_DD54(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_E258;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_DABC;
  v7[3] = &unk_216B0;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_DE48(void *a1, uint64_t a2)
{
  [a1 setAutoLaunchBehaviorForApp:a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp, &unk_186A8);
  sub_1628C();
  sub_1629C();
}

void (*sub_DEE4(void *a1))(void ****a1, char a2)
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
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = [*(v1 + v4) autoLaunchBehaviorForApp];
  return sub_DF70;
}

void sub_DF70(void ****a1, char a2)
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
    v2[4] = sub_12D50;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21700;
    v7 = _Block_copy(v2);

    v8 = v5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    v2[4] = sub_12D50;
    v2[5] = v9;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21750;
    v7 = _Block_copy(v2);
    v10 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

uint64_t sub_E100()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_162EC();

  return v1;
}

uint64_t sub_E174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_E214()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_E260(uint64_t *a1))()
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
  *(v3 + 48) = sub_162DC();
  return sub_E304;
}

void sub_E304(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_E36C()
{
  swift_beginAccess();
  sub_3278(&qword_26288, &qword_18620);
  sub_162BC();
  return swift_endAccess();
}

uint64_t sub_E3E0(uint64_t a1)
{
  v2 = sub_3278(&qword_26290, qword_18628);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_3278(&qword_26288, &qword_18620);
  sub_162CC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_E518(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_3278(&qword_26290, qword_18628);
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

  v9 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_3278(&qword_26288, &qword_18620);
  sub_162BC();
  swift_endAccess();
  return sub_E688;
}

void sub_E688(uint64_t a1, char a2)
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
    sub_162CC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_162CC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_E7F0()
{
  v1 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_1622C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4 = sub_3278(&qword_26288, &qword_18620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_E8D4()
{
  v1 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_1622C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4 = sub_3278(&qword_26288, &qword_18620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

Swift::Int sub_E9F4()
{
  sub_168AC();
  (*(*v0 + 160))(v2);
  return sub_168CC();
}

uint64_t sub_EA54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v5 = sub_1622C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_EB60(uint64_t a1)
{
  sub_168AC();
  (*(**v1 + 160))(v3);
  return sub_168CC();
}

uint64_t sub_EBC0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  result = sub_1628C();
  *a2 = result;
  return result;
}

uint64_t sub_EC28(char a1)
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
    aBlock[4] = sub_EE20;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_DABC;
    aBlock[3] = &unk_217A0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1681C();
    __break(1u);
  }

  return result;
}

uint64_t sub_EDE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_EE2C(uint64_t a1))(uint64_t a1)
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
  return sub_EF00;
}

id sub_EF34(SEL *a1)
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

uint64_t sub_EFE0(char a1)
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
    aBlock[4] = sub_F1A0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_DABC;
    aBlock[3] = &unk_217F0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1681C();
    __break(1u);
  }

  return result;
}

uint64_t sub_F1AC(void *a1, SEL *a2)
{
  [a1 *a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v3, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  sub_1628C();
  sub_1629C();
}

uint64_t (*sub_F23C(uint64_t a1))(uint64_t a1)
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
  return sub_F310;
}

id sub_F338()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_F36C()
{
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = 0;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_filteredAppLibrary] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesWatchLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesCompanionLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp] = 0;
  v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled] = 0;
  v1 = [objc_opt_self() sharedSettingsModel];
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings] = v1;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v2 = v1;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = objc_allocWithZone(CSLPRFInstalledLiveActivityApplicationsDataSource);
  v5 = [v4 init];
  v6 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource;
  v7 = *&v3[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  *&v3[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = v5;

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

id sub_F4F4()
{
  v1 = *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_F63C(uint64_t (*a1)(uint64_t))
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

  v4 = *(v1 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  v210 = 0;
  v206 = v1;
  if (v4)
  {
    v204 = v4;
    v5 = [v204 apps];
    sub_12ADC();
    v6 = sub_1674C();

    v7 = v6;
    if (v6 >> 62)
    {
      v27 = sub_1682C();
      v7 = v6;
      v8 = v27;
      if (v27)
      {
LABEL_5:
        if (v8 >= 1)
        {
          v9 = 0;
          v205 = (v7 & 0xC000000000000001);
          v2 = 0x800000000001A010;
          v202 = &_swiftEmptyArrayStorage;
          v10 = v7;
          while (1)
          {
            if (v205)
            {
              v11 = sub_167AC();
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            v13 = [v12 bundleIdentifier];
            v14 = sub_1672C();
            v16 = v15;

            if (v14 == 0xD000000000000018 && 0x800000000001A010 == v16)
            {
            }

            else
            {
              v18 = sub_1685C();

              if ((v18 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            (*(&stru_108.flags + (swift_isaMask & *v206)))(1);
LABEL_18:
            v19 = [v12 bundleIdentifier];

            v20 = sub_1672C();
            v22 = v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v202 = sub_11A34(0, *(v202 + 2) + 1, 1, v202);
            }

            v24 = *(v202 + 2);
            v23 = *(v202 + 3);
            if (v24 >= v23 >> 1)
            {
              v202 = sub_11A34((v23 > 1), v24 + 1, 1, v202);
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
  v203 = sub_3278(&qword_265E8, &qword_18878);
  v30 = sub_1674C();

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
        v33 = sub_167AC();
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
          v31 = sub_1682C();
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
        sub_167CC();
        v2 = v208[2];
        sub_167FC();
        sub_1680C();
        sub_167DC();
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
    v35 = sub_1682C();
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
  v204 = 0x800000000001A470;
  v205 = 0xD000000000000013;
  while ((v34 & 0xC000000000000001) != 0)
  {
    v3 = sub_167AC();
    v36 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_62;
    }

LABEL_53:
    v37 = [v3 SDKVersion];
    v38 = sub_1672C();
    v40 = v39;

    v211 = 0.0;
    LOBYTE(v37) = sub_129C8(v38, v40, &v211);

    if (v37)
    {
      *&v41 = v211;
      if (v211 < 19.0)
      {
        v42 = [v3 bundleIdentifier];
        v43 = sub_1672C();
        v45 = v44;

        if (v43 == v205 && v204 == v45)
        {
          swift_unknownObjectRelease();

          goto LABEL_49;
        }

        v46 = sub_1685C();

        if (v46)
        {
          swift_unknownObjectRelease();
          goto LABEL_49;
        }
      }
    }

    sub_167CC();
    sub_167FC();
    sub_1680C();
    sub_167DC();
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
  v49 = sub_1674C();

  if (v49 >> 62)
  {
    v50 = sub_1682C();
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
          v53 = sub_167AC();
        }

        else
        {
          v53 = *(v49 + 8 * v51 + 32);
          swift_unknownObjectRetain();
        }

        if ([v53 supportsSmartStack])
        {
          v54 = [v53 bundleIdentifier];
          v55 = sub_1672C();
          v57 = v56;

          v208 = v55;
          v209 = v57;
          __chkstk_darwin(v58);
          v179[2] = &v208;
          LOBYTE(v54) = sub_117A4(sub_12AC0, v179, v202);

          if (v54)
          {
            goto LABEL_73;
          }

          v59 = [v53 bundleIdentifier];
          if (!v59)
          {
            sub_1672C();
            v59 = sub_1671C();
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
            v62 = sub_1672C();
            v64 = v63;

            v65 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v194 = sub_11A34(0, *(v194 + 2) + 1, 1, v194);
            }

            v67 = *(v194 + 2);
            v66 = *(v194 + 3);
            if (v67 >= v66 >> 1)
            {
              v194 = sub_11A34((v66 > 1), v67 + 1, 1, v194);
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
            sub_1673C();
            if (*(&dword_10 + (*v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_1675C();
            }

            sub_1677C();
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
  v204 = 0x8000000000019FD0;
  v75 = sub_1671C();
  v35 = &off_25000;
  v76 = [v48 fakeApplicationWithIdentifier:v75];

  v30 = *&stru_B8.segname[(swift_isaMask & *v3) + 16];
  v2 = (swift_isaMask & *v3) + 216;
  v34 = (v30)(&v208);
  v78 = v77;
  sub_1673C();
  v79 = *(&dword_10 + (*v78 & 0xFFFFFFFFFFFFFF8));
  if (v79 >= *(&dword_18 + (*v78 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_182;
  }

  while (2)
  {
    sub_1677C();
    (v34)(&v208, 0);
    v195 = 0x8000000000019FF0;
    v80 = sub_1671C();
    v81 = [v48 *(v35 + 1368)];

    v82 = (v30)(&v208);
    v84 = v83;
    sub_1673C();
    v85 = v3;
    if (*(&dword_10 + (*v84 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v84 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1675C();
    }

    sub_1677C();
    v86 = v82(&v208, 0);
    v34 = &swift_isaMask;
    v87 = (*&stru_B8.segname[swift_isaMask & *v3])(v86);
    if (v87 >> 62)
    {
      v169 = v87;
      v35 = sub_1682C();
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
      sub_167EC();
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
        sub_1675C();
        continue;
      }

      v200 = v79 + 1;
      v201 = v79;
      if (v192)
      {
        v3 = sub_167AC();
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
      v94 = sub_1672C();
      v96 = v95;

      v208 = v94;
      v209 = v96;
      v213 = &v208;
      v97 = sub_117A4(sub_12D30, &v211, v92);

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
        sub_1672C();
        v99 = sub_1671C();
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
      v103 = sub_1672C();
      v105 = v104;

      if (v103 == sub_1672C() && v105 == v106)
      {
LABEL_116:

        goto LABEL_118;
      }

      v107 = sub_1685C();

      if (v107)
      {
        goto LABEL_118;
      }

      v141 = [v3 bundleIdentifier];
      v142 = sub_1672C();
      v144 = v143;

      if (v142 == sub_1672C() && v144 == v145)
      {
        goto LABEL_116;
      }

      v146 = sub_1685C();

      if (v146)
      {
LABEL_118:
        v101 = 0;
      }

      v205 = v91;
      v199 = v30;
      v108 = [v3 unionedBackgroundModes];
      v109 = sub_1671C();
      v110 = [v108 containsObject:v109];

      v111 = [v3 bundleIdentifier];
      v112 = sub_1672C();
      v114 = v113;

      if (v112 == 0xD00000000000001ALL && v204 == v114)
      {
LABEL_121:

        goto LABEL_123;
      }

      v115 = sub_1685C();

      if (v115)
      {
        goto LABEL_123;
      }

      v147 = [v3 bundleIdentifier];
      v148 = sub_1672C();
      v150 = v149;

      if (v148 == 0xD00000000000001CLL && v195 == v150)
      {
        goto LABEL_121;
      }

      v151 = sub_1685C();

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
      v118 = sub_1672C();
      v120 = v119;

      v121 = [v3 localizedName];
      v2 = sub_1672C();
      v123 = v122;

      v196 = (*&stru_158.segname[(swift_isaMask & *v203) + 8])();
      v124 = v210;
      objc_opt_self();
      v125 = swift_dynamicCastObjCClassUnconditional();
      type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
      v126 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1621C();
      v127 = (v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
      *v127 = v118;
      v127[1] = v120;
      v35 = 0xD000000000000028;
      if (v118 == 0xD00000000000001CLL && v195 == v120 || (sub_1685C() & 1) != 0)
      {
        v128 = &v215;
        goto LABEL_128;
      }

      v35 = 0xD000000000000026;
      if (v118 == 0xD00000000000001ALL && v204 == v120 || (sub_1685C() & 1) != 0)
      {
        v128 = &v212;
LABEL_128:
        v129 = *(v128 - 32);
        v85 = v206;

        v2 = sub_2BA0(v35, (v129 | 0x8000000000000000));
        v123 = v130;
      }

      else
      {
        v85 = v206;
      }

      v131 = v198;
      v132 = v124 | v198 ^ 1;
      v133 = (v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      *v133 = v2;
      v133[1] = v123;
      *(v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = v125;
      swift_beginAccess();
      v214 = v196 & 1;
      sub_162AC();
      swift_endAccess();
      *(v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = v132 & 1;
      *(v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = v131 & 1;
      *(v126 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = v197;
      v134 = [v3 bundleIdentifier];
      v135 = sub_1672C();
      v137 = v136;

      v34 = &swift_isaMask;
      if (v135 == 0xD00000000000001ALL && v204 == v137)
      {

        goto LABEL_133;
      }

      v138 = sub_1685C();

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

      sub_167CC();
      v48 = v207[2];
      sub_167FC();
      sub_1680C();
      sub_167DC();
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

  v208 = sub_127A0(v152);
  sub_11850(&v208);
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
    v79 = sub_1682C();
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
      sub_167AC();
    }

    else
    {
      if (v157 >= *(v2 + 16))
      {
        goto LABEL_179;
      }
    }

    v35 = sub_1620C();

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
  sub_11148(v157);

  v159(&v208, 0);
  v34 = &swift_isaMask;

LABEL_166:
  v205 = *(&stru_B8.size + (*v34 & *v85));
  v160 = v205(v155);
  v161 = v160;
  if (v160 >> 62)
  {
    v162 = sub_1682C();
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
          v164 = sub_167AC();
        }

        else
        {
          v164 = *(v161 + 8 * i + 32);
        }

        if (*(v164 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
        {
          v165 = *&stru_108.sectname[swift_isaMask & *v206];

          v166 = v165(&v208);
          v168 = v167;
          sub_1673C();
          if (*(&dword_10 + (*v168 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v168 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v201 = *(&dword_10 + (*v168 & 0xFFFFFFFFFFFFFF8));
            sub_1675C();
          }

          sub_1677C();
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
        v175 = sub_167AC();
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
          v173 = sub_1682C();
          if (!v173)
          {
            break;
          }

          goto LABEL_187;
        }
      }

      if (*(v175 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp))
      {
      }

      else
      {
        sub_167CC();
        sub_167FC();
        sub_1680C();
        sub_167DC();
      }

      ++v174;
    }

    while (v176 != v173);
  }

  (v204)(v208);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v177, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  sub_1628C();
  sub_1629C();

  swift_unknownObjectRelease();
}

unint64_t sub_11148(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_118CC(v3);
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

uint64_t sub_111D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  result = sub_1628C();
  *a2 = result;
  return result;
}

uint64_t sub_11214()
{
  v1 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  v2 = [v1 globalSettings];

  sub_F63C(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1136C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  sub_1628C();
  sub_1629C();
}

uint64_t type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(uint64_t a1)
{
  result = qword_26FA0;
  if (!qword_26FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_114D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_114E4(uint64_t a1, int a2)
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

uint64_t sub_1152C(uint64_t result, int a2, int a3)
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

void sub_11590(uint64_t a1)
{
  sub_1622C();
  if (v1 <= 0x3F)
  {
    sub_11754(319, &unk_263C0, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_11754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_117A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_11850(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_129B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_11BC8(v6);
  return sub_167DC();
}

uint64_t sub_118CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1682C();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

char *sub_11930(char *result, int64_t a2, char a3, char *a4)
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
    sub_3278(&qword_26618, &unk_18898);
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

char *sub_11A34(char *result, int64_t a2, char a3, char *a4)
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
    sub_3278(&qword_265F8, &unk_18880);
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

void *sub_11B40(uint64_t a1, uint64_t a2)
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

  sub_3278(&qword_26610, &qword_18890);
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

Swift::Int sub_11BC8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1684C(v2);
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
        v6 = sub_1676C();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_11DA4(v8, v9, a1, v4);
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
    return sub_11CCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_11CCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v12 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = sub_1685C(), (result & 1) == 0))
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

uint64_t sub_11DA4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
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
      result = sub_1267C(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        sub_12390((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1267C(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_125F0(v88 - 1);
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
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1685C();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
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
            result = sub_1685C();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
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
      result = sub_11930(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_11930((v42 > 1), v43 + 1, 1, v9);
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
        sub_12390((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1267C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_125F0(v47);
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
    v35 = (v33 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = sub_1685C(), (result & 1) == 0))
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

uint64_t sub_12390(char *__dst, char *__src, char *a3, char *a4)
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
        v24 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);
        v25 = (*v21 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v26 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName) == *v25 && v24 == v25[1];
        if (!v26 && (sub_1685C() & 1) != 0)
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
        v15 = (*v6 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (sub_1685C() & 1) == 0)
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

uint64_t sub_125F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1267C(v3);
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

uint64_t (*sub_12690(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_167AC();
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
    return sub_12710;
  }

  __break(1u);
  return result;
}

uint64_t sub_12718(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_12760()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_127A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1682C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_11B40(v3, 0);
  sub_12834(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_12834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1682C();
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
      result = sub_1682C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_12B2C();
          for (i = 0; i != v6; ++i)
          {
            sub_3278(&qword_26600, &unk_18540);
            v9 = sub_12690(v13, i, a3);
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

BOOL sub_129C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_1679C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_12ADC()
{
  result = qword_265F0;
  if (!qword_265F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_265F0);
  }

  return result;
}

unint64_t sub_12B2C()
{
  result = qword_26608;
  if (!qword_26608)
  {
    sub_32C0(&qword_26600, &unk_18540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26608);
  }

  return result;
}

uint64_t sub_12B90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1685C() & 1;
  }
}

_BYTE *sub_12BE8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

unint64_t sub_12D74()
{
  result = qword_25FC0;
  if (!qword_25FC0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25FC0);
  }

  return result;
}

uint64_t sub_12DE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  v6 = sub_12D74();

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_12E58()
{
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return v1;
}

void (*sub_12EFC(uint64_t *a1))(uint64_t *a1)
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
  v4 = *(v1 + 24);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_5CBC(v3 + 48, v3 + 32, &qword_25FD0, &qword_17FC8);
  *(v5 + 8) = sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return sub_12FBC;
}

void sub_12FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_1661C();
  sub_5D54(v1, &qword_25FC8, &qword_17FC0);

  free(v1);
}

uint64_t sub_13028()
{
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1662C();
  return v1;
}

uint64_t sub_1307C()
{
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return v1;
}

void (*sub_13130(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 56);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_6884(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return sub_680C;
}

uint64_t sub_131EC()
{
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  return v1;
}

uint64_t sub_13248()
{
  v0 = 0xD000000000000026;
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12D74();
  v1 = sub_1631C();
  v2 = (*(*v1 + 200))(v1);

  if (v2 == 1)
  {
    v3 = "AUTOLAUNCH_SETTING_APP";
    v0 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = sub_1631C();
    v5 = (*(*v4 + 200))(v4);

    v3 = "AUTO_LAUNCH_TITLE";
    if (v5 == 2)
    {
      v3 = "AUTOLAUNCH_SETTING_OFF";
    }
  }

  return sub_2BA0(v0, (v3 | 0x8000000000000000));
}

uint64_t sub_1338C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12D74();
  sub_1631C();
  v2 = *(v0 + 24);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  sub_69A4(v4, v5, v6, &v2);
  sub_3278(&qword_26620, &qword_188A8);
  sub_3D34(&qword_26628, &qword_26620, &qword_188A8, &protocol conformance descriptor for HStack<A>);
  sub_13BFC();
  return sub_1633C();
}

uint64_t sub_13500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_3278(&qword_26650, &qword_189E8);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = (v40 - v6);
  v7 = sub_165DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v44 = a1;
  v13 = *(a1 + 16);
  v14 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12D74();
  v42 = v12;
  v43 = v11;
  v41 = v13;
  v40[1] = v14;
  v15 = sub_1631C();
  v17 = *(v15 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v16 = *(v15 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  sub_BEC4(v68);
  v75 = v68[1];
  *v76 = v68[0];
  v18 = v68[0];
  sub_9BC4(&v75);
  v74 = v68[2];
  sub_9BC4(&v74);
  if (v17 == v18 && v16 == *(&v18 + 1))
  {
    sub_9BC4(v76);

    goto LABEL_8;
  }

  v20 = sub_1685C();
  sub_9BC4(v76);

  if (v20)
  {
LABEL_8:
    sub_165CC();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v27 = sub_165EC();

    (*(v8 + 8))(v10, v7);
    sub_166DC();
    sub_1632C();
    v51 = v70;
    v50 = v72;
    v48 = 0;
    *&v64 = v27;
    *(&v64 + 1) = v69;
    LOBYTE(v65) = v70;
    *(&v65 + 1) = v52;
    DWORD1(v65) = *(&v52 + 3);
    *(&v65 + 1) = v71;
    LOBYTE(v66[0]) = v72;
    *(v66 + 1) = *v49;
    DWORD1(v66[0]) = *&v49[3];
    *(v66 + 8) = v73;
    *(&v66[2] + 1) = v59;
    *(&v66[1] + 8) = v58;
    v26 = 0;
    goto LABEL_9;
  }

  v21 = sub_1631C();
  v22 = (*(*v21 + 168))(v21);
  v24 = v23;

  v25 = *(sub_1631C() + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp);

  sub_54D0(v22, v24, v25, &v64);
  v26 = 1;
  LOBYTE(v58) = 1;
LABEL_9:
  v67 = v26;
  sub_3278(&qword_26658, &qword_189F0);
  sub_13D80();
  sub_13E04();
  sub_164AC();
  v28 = sub_1648C();
  v29 = v45;
  *v45 = v28;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = sub_3278(&qword_26670, &qword_189F8);
  __chkstk_darwin(v30);
  v40[-2] = v44;
  sub_1630C();
  v54 = *&v76[7];
  v55 = *&v76[9];
  v56 = *&v76[11];
  v57 = v77;
  v52 = *&v76[3];
  v53 = *&v76[5];
  v31 = v47;
  sub_5CBC(v29, v47, &qword_26650, &qword_189E8);
  v32 = v55;
  v33 = v56;
  v61 = v55;
  v62 = v56;
  v34 = v57;
  v63 = v57;
  v35 = v52;
  v36 = v53;
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v37 = v46;
  *(v46 + 32) = v54;
  *(v37 + 48) = v32;
  *(v37 + 64) = v33;
  *(v37 + 80) = v34;
  *v37 = v35;
  *(v37 + 16) = v36;
  v38 = sub_3278(&qword_26678, &qword_18A00);
  sub_5CBC(v31, v37 + *(v38 + 48), &qword_26650, &qword_189E8);
  sub_5CBC(&v58, &v64, &qword_26680, qword_18A08);
  sub_5D54(v29, &qword_26650, &qword_189E8);
  sub_5D54(v31, &qword_26650, &qword_189E8);
  v66[0] = v54;
  v66[1] = v55;
  v66[2] = v56;
  v67 = v57;
  v64 = v52;
  v65 = v53;
  return sub_5D54(&v64, &qword_26680, qword_18A08);
}

void *sub_13AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = sub_165FC();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_13BA4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_1641C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_3278(&qword_26648, &qword_189E0);
  return sub_13500(v4, a2 + *(v5 + 44));
}

unint64_t sub_13BFC()
{
  result = qword_26630;
  if (!qword_26630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26630);
  }

  return result;
}

__n128 sub_13C78(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_13C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13D80()
{
  result = qword_26660;
  if (!qword_26660)
  {
    sub_32C0(&qword_26658, &qword_189F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26660);
  }

  return result;
}

unint64_t sub_13E04()
{
  result = qword_26668;
  if (!qword_26668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26668);
  }

  return result;
}

uint64_t sub_13E58@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp(0);
  sub_12D74();
  sub_1631C();

  sub_3408();
  result = sub_1652C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_13F50(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);

  return sub_1634C();
}

uint64_t sub_13FCC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);

  return sub_1635C();
}

uint64_t sub_1405C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_3278(&qword_26688, &qword_18AB0);
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_3278(&qword_26690, &qword_18AB8);
  sub_3D34(&qword_26698, &qword_26690, &qword_18AB8, &protocol conformance descriptor for TupleView<A>);
  sub_1650C();
  sub_3F1C();
  sub_14398(&qword_25EE8, sub_3F1C, &protocol conformance descriptor for CSLPRFIconFetcher);
  v9 = sub_1627C();
  v10 = &v8[*(v6 + 36)];
  *v10 = v9;
  v10[1] = a3;
  v11 = a3;
  v18 = sub_2BA0(0xD000000000000015, 0x800000000001A4D0);
  v19 = v12;
  sub_143E0();
  sub_3408();
  sub_1659C();

  return sub_144C4(v8);
}

void sub_14234(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_15380();
  v6 = v5;
  if ((*&stru_158.sectname[swift_isaMask & *v3])())
  {
    v7 = sub_15380();
    v9 = v8;
    nullsub_1();
    v10 = sub_B298();
    v12 = v11;
    nullsub_1();
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
  sub_14700(v7, v9, v10, v12);
  sub_14740(v7, v9, v10, v12);
  *a1 = v4;
  a1[1] = v15;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v12;
  sub_14740(v7, v9, v10, v12);
}

uint64_t sub_14398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_143E0()
{
  result = qword_266A0;
  if (!qword_266A0)
  {
    sub_32C0(&qword_26688, &qword_18AB0);
    sub_3D34(&qword_266A8, &qword_266B0, &qword_18AC0, &protocol conformance descriptor for List<A, B>);
    sub_3D34(&qword_266B8, &qword_266C0, qword_18AC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_266A0);
  }

  return result;
}

uint64_t sub_144C4(uint64_t a1)
{
  v2 = sub_3278(&qword_26688, &qword_18AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1452C(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel, &unk_18708);
  v1 = sub_1634C();
  [objc_allocWithZone(CSLPRFIconFetcher) init];
  return v1;
}

uint64_t sub_145F0(uint64_t a1, int a2)
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

uint64_t sub_14638(uint64_t result, int a2, int a3)
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

uint64_t sub_14688()
{
  sub_32C0(&qword_26688, &qword_18AB0);
  sub_143E0();
  sub_3408();
  return swift_getOpaqueTypeConformance2();
}

void sub_14700(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_14740(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_14784()
{
  result = qword_262A0;
  if (!qword_262A0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_262A0);
  }

  return result;
}

uint64_t sub_147DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();

  return sub_1635C();
}

uint64_t sub_14838(uint64_t a1, uint64_t a2)
{
  sub_2BA0(0xD000000000000029, 0x800000000001A4F0);
  sub_3408();
  sub_1652C();
  sub_2BA0(0xD00000000000002ALL, 0x800000000001A520);
  sub_1652C();
  sub_3278(&qword_266C8, &qword_18BA0);
  sub_32C0(&qword_266D0, qword_18BA8);
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_166AC();
}

uint64_t sub_149D0(uint64_t a1, void *a2)
{
  v4 = sub_164EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3278(&qword_266D0, qword_18BA8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *v10 = sub_1641C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_3278(&qword_266F0, &unk_18C78);
  sub_14BA0(a1, a2, &v10[*(v11 + 44)]);
  sub_164DC();
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8, &protocol conformance descriptor for HStack<A>);
  sub_165AC();
  (*(v5 + 8))(v7, v4);
  return sub_5D54(v10, &qword_266D0, qword_18BA8);
}

uint64_t sub_14BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v4 = sub_3278(&qword_25E60, &unk_182A0);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v37 = sub_3278(&qword_266F8, &qword_18C88) - 8;
  v8 = __chkstk_darwin(v37);
  v38 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v39 = sub_2BA0(0xD000000000000021, 0x800000000001A550);
  v40 = v12;
  sub_3408();
  v13 = sub_1652C();
  v31 = v14;
  v32 = v13;
  v33 = v15;
  v34 = v16;
  sub_1646C();
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();
  v17 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0, &protocol conformance descriptor for Toggle<A>);
  v18 = v35;
  sub_1656C();
  v19 = (*(v36 + 8))(v7, v18);
  LOBYTE(v7) = (*&stru_158.sectname[swift_isaMask & *v29])(v19);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = (v7 & 1) == 0;
  v22 = &v11[*(v37 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_152F8;
  v22[2] = v21;
  v23 = v38;
  sub_15310(v11, v38);
  v25 = v31;
  v24 = v32;
  *a3 = v32;
  *(a3 + 8) = v25;
  LOBYTE(v7) = v33 & 1;
  *(a3 + 16) = v33 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v26 = sub_3278(&unk_26700, qword_18CE8);
  sub_15310(v23, a3 + *(v26 + 64));
  sub_3D7C(v24, v25, v7);

  sub_5D54(v11, &qword_266F8, &qword_18C88);
  sub_5D54(v23, &qword_266F8, &qword_18C88);
  sub_3D8C(v24, v25, v7);
}

uint64_t sub_14F78(uint64_t a1)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();

  return sub_1634C();
}

uint64_t sub_14FE0()
{
  sub_2BA0(0xD000000000000029, 0x800000000001A4F0);
  sub_3408();
  sub_1652C();
  sub_2BA0(0xD00000000000002ALL, 0x800000000001A520);
  sub_1652C();
  sub_3278(&qword_266C8, &qword_18BA0);
  sub_32C0(&qword_266D0, qword_18BA8);
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_166AC();
}

unint64_t sub_15190()
{
  result = qword_266E0;
  if (!qword_266E0)
  {
    sub_32C0(&qword_266E8, "B6");
    sub_32C0(&qword_266D0, qword_18BA8);
    sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_266E0);
  }

  return result;
}

uint64_t sub_15290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_163DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_15310(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_266F8, &qword_18C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15388@<X0>(uint64_t *a2@<X8>)
{
  sub_3F1C();
  result = sub_1628C();
  *a2 = result;
  return result;
}

uint64_t sub_153C8(uint64_t a1, uint64_t a2)
{
  sub_3278(&qword_25E50, qword_18D70);
  sub_32C0(&qword_25D98, &qword_17A90);
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_166BC();
}

uint64_t sub_154B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_164EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3278(&qword_25D98, &qword_17A90);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *v9 = sub_1641C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_3278(&qword_25E58, &unk_17BD0);
  sub_15678(a1, &v9[*(v10 + 44)]);
  sub_164DC();
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
  sub_165AC();
  (*(v4 + 8))(v6, v3);
  return sub_3CCC(v9);
}

uint64_t sub_15678@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = sub_3278(&qword_25E60, &unk_182A0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = sub_3278(&qword_25E68, &qword_17BE0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v37 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v31 - v12;
  v40 = sub_2BA0(0xD000000000000017, 0x8000000000019E60);
  v41 = v14;
  sub_3408();
  v15 = sub_1652C();
  v32 = v16;
  v33 = v15;
  v34 = v17;
  v35 = v18;
  v19 = sub_1646C();
  v31[1] = v20;
  v31[2] = v19;
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();
  v21 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0, &protocol conformance descriptor for Toggle<A>);
  v31[0] = v13;
  v22 = v38;
  sub_1656C();
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
  v28 = sub_3278(&qword_25E78, &qword_17C10);
  v23((a3 + *(v28 + 64)), v24, v8);
  sub_3D7C(v26, v25, v27);
  v29 = *(v9 + 8);

  v29(v31[0], v8);
  v29(v24, v8);
  sub_3D8C(v26, v25, v27);
}

uint64_t sub_159FC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **a1])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_15AE0()
{
  sub_3278(&qword_25E50, qword_18D70);
  sub_32C0(&qword_25D98, &qword_17A90);
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_166BC();
}

BOOL sub_15BE4(int a1, int a2, int a3)
{
  if (qword_272D8 == -1)
  {
    v3 = dword_272C8 < a1;
    if (dword_272C8 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1616C();
    a2 = v6;
    a3 = v5;
    v3 = dword_272C8 < a1;
    if (dword_272C8 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_272CC > a2)
  {
    return 1;
  }

  if (dword_272CC < a2)
  {
    return 0;
  }

  return dword_272D0 >= a3;
}

uint64_t sub_15CA4(int a1, int a2, int a3, int a4)
{
  if (qword_272E0 == -1)
  {
    if (qword_272E8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_16184();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_272E8)
    {
      return _availability_version_check();
    }
  }

  if (qword_272D8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1616C();
    a3 = v10;
    a4 = v9;
    v8 = dword_272C8 < v11;
    if (dword_272C8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_272CC > a3)
      {
        return 1;
      }

      if (dword_272CC >= a3)
      {
        return dword_272D0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_272C8 < a2;
  if (dword_272C8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_15E38(uint64_t result)
{
  v1 = qword_272E8;
  if (qword_272E8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_272E8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_272C8, &dword_272CC, &dword_272D0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}
id sub_1BA06EF58()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v3[4] = xmmword_1EDC6D2B0;
  v3[5] = *&qword_1EDC6D2C0;
  v3[6] = xmmword_1EDC6D2D0;
  v3[7] = unk_1EDC6D2E0;
  v3[0] = xmmword_1EDC6D270;
  v3[1] = *&qword_1EDC6D280;
  v3[2] = xmmword_1EDC6D290;
  v3[3] = *&qword_1EDC6D2A0;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v2[4] = xmmword_1EDC6D2B0;
  v2[5] = *&qword_1EDC6D2C0;
  v2[6] = xmmword_1EDC6D2D0;
  v2[7] = unk_1EDC6D2E0;
  v2[0] = xmmword_1EDC6D270;
  v2[1] = *&qword_1EDC6D280;
  v2[2] = xmmword_1EDC6D290;
  v2[3] = *&qword_1EDC6D2A0;
  sub_1B9F1D9A4(v3, &v1);
  return sub_1B9F293A8(v2);
}

uint64_t sub_1BA06F02C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1BA06FE18(a1, &v11 - v6);
  v8 = sub_1BA4A2888();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1BA06F9D0(v7);
    *a2 = 0;
  }

  else
  {
    *a2 = sub_1BA4A2858();
    return (*(v9 + 8))(v7, v8);
  }

  return result;
}

void sub_1BA06F164(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAvatarImage_];
  }
}

void sub_1BA06F1C8()
{
  v1 = v0;
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *(*v6 + 760);

  v7(v8);

  v9 = sub_1BA4A2888();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1BA06F9D0(v5);
LABEL_4:
    v11 = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
    v17.receiver = v1;
    v17.super_class = v11;
    objc_msgSendSuper2(&v17, sel_setUpNavigationBar);
    return;
  }

  v12 = sub_1BA4A2AE8();
  v14 = v13;
  (*(v10 + 8))(v5, v9);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA06FA80(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B9F1BE20();
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  sub_1BA4A6768();

  v16 = sub_1BA4A6758();

  [v1 setTitle_];
}

void sub_1BA06F524()
{
  v1 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthStore] profileIdentifier];
  v2 = [v1 type];

  if (v2 == 1)
  {
    v8.receiver = v0;
    v8.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
    objc_msgSendSuper2(&v8, sel_didUpdateName);
    v3 = [objc_opt_self() defaultCenter];
    v4 = sub_1BA4A73C8();
    [v3 postNotificationName:v4 object:0];

    sub_1BA4A73C8();
    v5 = objc_allocWithZone(sub_1BA4A34C8());
    v6 = sub_1BA4A34B8();
    sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
    v7 = sub_1BA4A7198();
    [v7 addOperation_];
  }
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(healthStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHealthStore_];

  return v3;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA06F854(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable] = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_screenScale;
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_rightToLeft;
  v2[v9] = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore]);
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthStore] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v14, sel_initWithHealthStore_, v10);
  v12 = [v10 profileIdentifier];
  if ([v12 type] == 1)
  {
    sub_1BA06E024(v12);
  }

  else
  {
    sub_1BA06EC30(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_1BA06F9D0(uint64_t a1)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA06FA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA06FAE4()
{
  result = qword_1EDC6B3D0;
  if (!qword_1EDC6B3D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6B3D0);
  }

  return result;
}

void _s18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = 0;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_screenScale;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_rightToLeft;
  *(v0 + v5) = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA06FC68(uint64_t a1)
{
  if (!qword_1EBBEAD10)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA06FD34(255, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1B9F3C928(255);
    sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEAD10);
    }
  }
}

void sub_1BA06FD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA06FA80(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA06FDD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA06FD34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA06FE18(uint64_t a1, uint64_t a2)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA06FED4(uint64_t a1)
{
  if (!qword_1EBBEAD20)
  {
    sub_1BA06FF80(255);
    sub_1B9F3C928(255);
    sub_1B9F3DBAC(&qword_1EBBEAD30, sub_1BA06FF80, MEMORY[0x1E695BCC0]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAD20);
    }
  }
}

void sub_1BA06FF80(uint64_t a1)
{
  if (!qword_1EBBEAD28)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA06FD34(255, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B08();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEAD28);
    }
  }
}

unint64_t sub_1BA07003C()
{
  result = qword_1EDC5F430;
  if (!qword_1EDC5F430)
  {
    sub_1BA06FA80(255, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F430);
  }

  return result;
}

uint64_t sub_1BA0700CC(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, __int128 *a8)
{
  v9 = v8;
  *&v65 = a6;
  v60 = a5;
  v59 = *v8;
  v64 = sub_1BA4A3EA8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BA4A1798();
  v61 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  if (sub_1BA070E1C(a1, a2))
  {
    v23 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText);
    *v23 = a3;
    v23[1] = a4;
    v58 = a2;
    sub_1BA071040(a2, v67);
    v24 = type metadata accessor for EndSharingRelationshipItem();
    v25 = swift_allocObject();
    *(v25 + 16) = 0xD00000000000001ALL;
    *(v25 + 24) = 0x80000001BA4E6C00;
    v69 = type metadata accessor for ProfileButtonCell();
    v26 = a1;
    v27 = a7;
    sub_1BA0711AC(a8, v66);
    sub_1BA071208();
    *(v25 + 32) = sub_1BA4A6808();
    *(v25 + 40) = v28;
    *(v25 + 64) = 0;
    *(v25 + 72) = 0;
    v29 = [objc_opt_self() systemRedColor];
    *(v25 + 96) = 256;
    *(v25 + 200) = v26;
    v30 = v67[1];
    *(v25 + 208) = v67[0];
    *(v25 + 224) = v30;
    *(v25 + 240) = v68;
    *(v25 + 248) = 0;
    v31 = v65;
    *(v25 + 48) = v60;
    *(v25 + 56) = v31;
    *(v25 + 80) = v29;
    *(v25 + 88) = v27;
    v32 = *a8;
    *(v25 + 120) = a8[1];
    *(v25 + 104) = v32;
    v33 = a8[2];
    v34 = a8[3];
    v35 = a8[4];
    *(v25 + 184) = a8[5];
    *(v25 + 168) = v35;
    *(v25 + 152) = v34;
    *(v25 + 136) = v33;
    *(v9 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem) = v25;
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v65 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = v65;
    *(v37 + 56) = v24;
    *(v37 + 64) = sub_1BA0712FC(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem, &unk_1BA4D4398);
    *(v37 + 32) = v25;

    sub_1BA4A1788();
    v38 = sub_1BA4A1748();
    v40 = v39;
    (v61)[1](v21, v62);
    v41 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v41);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v37;
    v42 = Array<A>.identifierToIndexDict()(v37);

    *(inited + 56) = v42;
    *(inited + 64) = v38;
    *(inited + 72) = v40;
    v43 = sub_1B9F1DAFC(inited, 1, sub_1BA0707A0, 0);
    sub_1BA0710D0(a8);

    sub_1BA071124(v58);
    return v43;
  }

  else
  {
    v61 = a1;
    v62 = a7;

    sub_1BA4A3E28();
    sub_1BA071040(a2, v66);
    v45 = sub_1BA4A3E88();
    v46 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315394;
      v49 = sub_1BA4A85D8();
      v51 = sub_1B9F0B82C(v49, v50, &v69);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      sub_1BA071040(v66, v67);
      sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
      v52 = sub_1BA4A6808();
      v54 = v53;
      sub_1BA071124(v66);
      v55 = sub_1B9F0B82C(v52, v54, &v69);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1B9F07000, v45, v46, "[%s] Should not display data source for profile with profileInformation: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      MEMORY[0x1BFAF43A0](v47, -1, -1);

      sub_1BA0710D0(a8);
      v56 = v22;
    }

    else
    {

      sub_1BA0710D0(a8);
      sub_1BA071124(a2);
      v56 = v66;
    }

    sub_1BA071124(v56);
    (*(v63 + 8))(v18, v64);
    type metadata accessor for EndSharingRelationshipDataSource(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_1BA0707A0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1B9F37E38(v8, v7);
  *(v7 + 8) = 0x4014000000000000;
  *(v7 + 6) = 0x4034000000000000;
  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension_];

  *(v7 + 3) = v10;
  v11 = [v9 estimatedDimension_];

  *(v7 + 4) = v11;
  v12 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC24(v7, type metadata accessor for ListLayoutConfiguration);
  return v12;
}

unint64_t sub_1BA070908@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_footerText);
    a1[3] = &type metadata for TextViewItem;
    a1[4] = sub_1BA0712A8();
    v10 = swift_allocObject();
    *a1 = v10;
    strcpy(v14, "TextViewItem_");
    HIWORD(v14[1]) = -4864;

    sub_1BA4A1788();
    sub_1BA0712FC(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v11);

    result = (*(v4 + 8))(v7, v3);
    v13 = v14[1];
    *(v10 + 16) = v14[0];
    *(v10 + 24) = v13;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    *(v10 + 48) = -1;
    *(v10 + 72) = -1;
    *(v10 + 80) = v9;
    *(v10 + 88) = v8;
    *(v10 + 96) = sub_1BA34B4C4;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
  }

  else
  {
    a1[3] = &type metadata for EmptyHeaderItem;
    a1[4] = sub_1B9FDA1B0();
    *a1 = swift_allocObject();
    return EmptyHeaderItem.init()();
  }

  return result;
}

uint64_t sub_1BA070B84()
{
}

uint64_t sub_1BA070BC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA070CAC()
{
  sub_1BA070BC8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndSharingRelationshipDataSource(uint64_t a1)
{
  result = qword_1EBBEAD58;
  if (!qword_1EBBEAD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA070DCC()
{
  sub_1B9FF5260();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C(v0, v1);

  return result;
}

BOOL sub_1BA070E1C(void *a1, uint64_t a2)
{
  sub_1BA071250(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = [a1 profileIdentifier];
  v10 = [v9 type];

  if (v10 == 3)
  {
    return 1;
  }

  v11 = [a1 profileIdentifier];
  v12 = [v11 type];

  if (v12 == 2)
  {
    return 1;
  }

  sub_1BA071040(a2, v18);
  if (v19)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    v14 = sub_1BA4A33C8();
    v15 = swift_dynamicCast();
    (*(*(v14 - 8) + 56))(v8, v15 ^ 1u, 1, v14);
  }

  else
  {
    sub_1BA071124(v18);
    v14 = sub_1BA4A33C8();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1BA4A33C8();
  v16 = (*(*(v14 - 8) + 48))(v8, 1, v14) == 0;
  sub_1B9F5AC24(v8, sub_1BA071250);
  return v16;
}

uint64_t sub_1BA071040(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA071124(uint64_t a1)
{
  sub_1B9F0CF6C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA071208()
{
  result = qword_1EBBE9DE0;
  if (!qword_1EBBE9DE0)
  {
    type metadata accessor for ProfileButtonCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DE0);
  }

  return result;
}

void sub_1BA071250(uint64_t a1)
{
  if (!qword_1EBBEA318)
  {
    sub_1BA4A33C8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA318);
    }
  }
}

unint64_t sub_1BA0712A8()
{
  result = qword_1EDC69500;
  if (!qword_1EDC69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69500);
  }

  return result;
}

uint64_t sub_1BA0712FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void HealthAppPluginSource.pluginAppDelegateObject<A>(name:_:)(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_1BA4A1B28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B38();
  if (!v4)
  {
    v12 = sub_1BA4A1B18();
    (*(v8 + 8))(v11, v7);
    NSBundle.getPluginAppDelegateObject<A>(as:)(a3, a4);
  }
}

uint64_t PluginAppDelegateError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA0714F4()
{
  result = qword_1EBBEAD70;
  if (!qword_1EBBEAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD70);
  }

  return result;
}

unint64_t sub_1BA07154C()
{
  result = qword_1EBBEAD78;
  if (!qword_1EBBEAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD78);
  }

  return result;
}

uint64_t ResettableDateDisplayItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResettableDateDisplayItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResettableDateDisplayItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ResettableDateDisplayItem.placeholderText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ResettableDateDisplayItem.dataProvider.getter()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1, *(v0 + 72));
  return v1;
}

uint64_t ResettableDateDisplayItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1BA0716FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA07177C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t ResettableDateDisplayItem.updateHandler.getter()
{
  v1 = *(v0 + 80);
  sub_1B9F0F1B8(v1, *(v0 + 88));
  return v1;
}

uint64_t ResettableDateDisplayItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ResettableDateDisplayItem.init(title:placeholderText:dataProvider:updateHandler:cellSelectionHandler:isEditEnabled:uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v33 = a2;
  v16 = a14;
  v36 = a11;
  v37 = a4;
  v34 = a10;
  v35 = a3;
  v17 = sub_1BA4A1798();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ResettableCalendarDateDisplayCell();
  sub_1BA071A54();
  result = sub_1BA4A6808();
  v23 = result;
  v25 = v24;
  if (!a14)
  {
    sub_1BA4A1788();
    a13 = sub_1BA4A1748();
    v16 = v27;
    result = (*(v18 + 8))(v21, v17);
  }

  *a9 = v23;
  *(a9 + 8) = v25;
  *(a9 + 16) = a13;
  *(a9 + 24) = v16;
  v28 = v33;
  *(a9 + 32) = a1;
  *(a9 + 40) = v28;
  v30 = v37;
  v29 = v38;
  *(a9 + 48) = v35;
  *(a9 + 56) = v30;
  *(a9 + 64) = v29;
  v31 = v40;
  *(a9 + 72) = v39;
  *(a9 + 80) = v31;
  v32 = v34;
  *(a9 + 88) = v41;
  *(a9 + 96) = v32;
  *(a9 + 104) = v36;
  *(a9 + 112) = a12 & 1;
  return result;
}

unint64_t sub_1BA071A54()
{
  result = qword_1EBBEAD80;
  if (!qword_1EBBEAD80)
  {
    type metadata accessor for ResettableCalendarDateDisplayCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEAD80);
  }

  return result;
}

uint64_t sub_1BA071A98()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA071AC8()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1BA071B00()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_1BA071B38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_1B9F0E310(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = v4;
  return result;
}

uint64_t (*sub_1BA071B74(void *a1))()
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_1BA071BA8;
}

void *sub_1BA071BA8(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1BA071BC0()
{
  v1 = *(v0 + 80);
  sub_1B9F0F1B8(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_1BA071BF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_1B9F0E310(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = v4;
  return result;
}

uint64_t (*sub_1BA071C34(void *a1))()
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_1BA071C68;
}

void *sub_1BA071C68(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_1BA071C80(uint64_t a1)
{
  v2 = sub_1BA074B60();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t ResettableCalendarDateDisplayCell.deselectionBehavior(in:)@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v13);
  if (!v14)
  {
    result = sub_1B9F43C48(v13, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B9F0E310(v6, v7);
  sub_1B9F0E310(v8, v9);
  result = sub_1B9F0E310(v10, v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  *a1 = v5;
  return result;
}

uint64_t sub_1BA071E60(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA073834();
  return sub_1B9F43C48(v6, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA071EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA071F44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA073834();
  return sub_1B9F43C48(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA071FCC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA072030;
}

void sub_1BA072030(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA073834();
  }
}

id sub_1BA072064()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = v1;
  v3 = sub_1BA4A6758();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v5 setImage:v4 forState:0];
  v6 = [objc_opt_self() redColor];
  [v5 setTintColor_];

  [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v7 = [v5 imageView];
  if (v7)
  {
    v8 = v7;
    [v7 setContentMode_];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v9) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];

  return v5;
}

char *sub_1BA072230(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v83 - v17;
  v19 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *MEMORY[0x1E69DDCF8];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
  }

  else
  {
    v85 = v22;
    v89 = v14;
    sub_1BA4A3DD8();
    v26 = v21;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    v88 = v26;

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v86 = v11;
      v30 = v29;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v92 = v84;
      *v30 = 136315906;
      v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v87 = v10;
      v33 = sub_1B9F0B82C(v31, v32, &v92);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v90 = 0;
      v91 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v92);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      LODWORD(v90) = 0;
      type metadata accessor for SymbolicTraits(0);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v92);
      v10 = v87;

      *(v30 + 24) = v39;
      *(v30 + 32) = 2112;
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v30 + 34) = v40;
      v41 = v83;
      *v83 = v40;
      _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
      sub_1B9F8C6C8(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      v42 = v84;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      v43 = v30;
      v11 = v86;
      MEMORY[0x1BFAF43A0](v43, -1, -1);
    }

    (*(v11 + 8))(v18, v10);
    v22 = v85;
    v44 = [v85 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v44 size:0.0];

    v14 = v89;
  }

  v45 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel;
  [v20 setFont_];

  [v20 setTextAlignment_];
  [v20 setNumberOfLines_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v46 = objc_opt_self();
  v47 = [v46 labelColor];
  [v20 setTextColor_];

  *&v5[v45] = v20;
  v48 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v49)
  {
    v50 = v49;
    v51 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v52 = v21;
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v89 = v14;
      v56 = v55;
      v85 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v56 = 136315906;
      v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v87 = v10;
      v59 = sub_1B9F0B82C(v57, v58, &v92);
      v86 = v11;
      v60 = v59;

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v90 = 0;
      v91 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v61 = sub_1BA4A6808();
      v63 = sub_1B9F0B82C(v61, v62, &v92);

      *(v56 + 14) = v63;
      *(v56 + 22) = 2080;
      LODWORD(v90) = 0;
      type metadata accessor for SymbolicTraits(0);
      v64 = sub_1BA4A6808();
      v66 = sub_1B9F0B82C(v64, v65, &v92);

      *(v56 + 24) = v66;
      *(v56 + 32) = 2112;
      v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v56 + 34) = v67;
      v68 = v85;
      *v85 = v67;
      _os_log_impl(&dword_1B9F07000, v53, v54, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v56, 0x2Au);
      sub_1B9F8C6C8(v68);
      MEMORY[0x1BFAF43A0](v68, -1, -1);
      v69 = v88;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);

      (*(v86 + 8))(v89, v87);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v50 = [v22 preferredFontDescriptorWithTextStyle_];
    v51 = [objc_opt_self() fontWithDescriptor:v50 size:0.0];
  }

  v70 = v51;

  v71 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel;
  [v48 setFont_];

  [v48 setTextAlignment_];
  [v48 setNumberOfLines_];
  [v48 setAdjustsFontForContentSizeCategory_];
  v72 = [v46 labelColor];
  [v48 setTextColor_];

  *&v5[v71] = v48;
  v73 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  *&v5[v73] = sub_1BA072064();
  v74 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints] = v74;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint] = 0;
  v75 = type metadata accessor for ResettableCalendarDateDisplayCell();
  v93.receiver = v5;
  v93.super_class = v75;
  v76 = objc_msgSendSuper2(&v93, sel_initWithFrame_, a1, a2, a3, a4);
  v77 = [v76 contentView];
  [v77 addSubview_];

  v78 = [v76 contentView];
  [v78 addSubview_];

  v79 = [v76 contentView];
  v80 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  [v79 addSubview_];

  sub_1BA072E8C();
  v81 = *&v76[v80];
  [v81 addTarget:v76 action:sel_didTapClear forControlEvents:64];

  return v76;
}

id ResettableCalendarDateDisplayCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA072C54()
{
  sub_1B9F0CFD4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v5, v21);
  if (!v22)
  {
    return sub_1B9F43C48(v21, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v11[4] = v17;
    v11[5] = v18;
    v11[6] = v19;
    v12 = v20;
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v11[3] = v16;
    v7 = v18;
    if (v18)
    {
      v9[4] = v17;
      v9[5] = v18;
      v9[6] = v19;
      v10 = v20;
      v9[0] = v13;
      v9[1] = v14;
      v9[2] = v15;
      v9[3] = v16;
      v8 = sub_1BA4A1728();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v7(v9, v4);
      sub_1B9F43C48(v4, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    }

    return sub_1BA074DA4(v11);
  }

  return result;
}

void sub_1BA072E8C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant_];

  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint] = v3;

  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5880;
  v6 = [v0 contentView];
  v7 = [v6 bottomAnchor];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:12.0];

  *(v5 + 32) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:8.0];

  *(v5 + 40) = v13;
  v14 = [v1 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 &selRef:v16 objectAtIndex:12.0 + 6];
  *(v5 + 48) = v17;
  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel];
  v19 = [v18 topAnchor];
  v20 = [v0 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 &selRef:v21 objectAtIndex:12.0 + 6];
  *(v5 + 56) = v22;
  v23 = [v18 trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor_];

  *(v5 + 64) = v27;
  v77 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints] = v5;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5880;
  v29 = [v8 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v30 = [v0 &selRef_fetchSources];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v33 = [v29 &selRef:v32 numberWithInteger:? + 5];

  *(v28 + 32) = v33;
  v34 = [v1 leadingAnchor];
  v35 = [v0 &selRef_fetchSources];
  v36 = [v35 &selRef__createTableFooterView + 1];

  v37 = [v36 leadingAnchor];
  v38 = [v34 &selRef:v37 numberWithInteger:? + 5];

  *(v28 + 40) = v38;
  v39 = [v1 topAnchor];
  v40 = [v8 bottomAnchor];
  v41 = [v39 &selRef:v40 numberWithInteger:? + 5];

  *(v28 + 48) = v41;
  v42 = [v18 topAnchor];
  v43 = [v8 bottomAnchor];
  v44 = [v42 &selRef:v43 numberWithInteger:? + 5];

  *(v28 + 56) = v44;
  v45 = [v18 trailingAnchor];
  v46 = [v0 contentView];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 trailingAnchor];
  v49 = [v45 constraintLessThanOrEqualToAnchor_];

  *(v28 + 64) = v49;
  v50 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints] = v28;

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BA4B5880;
  v52 = [v8 topAnchor];
  v53 = [v0 contentView];
  v54 = [v53 topAnchor];

  v55 = [v52 constraintEqualToAnchor:v54 constant:12.0];
  *(v51 + 32) = v55;
  v56 = [v8 leadingAnchor];
  v57 = [v0 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 leadingAnchor];
  v60 = [v56 constraintEqualToAnchor_];

  *(v51 + 40) = v60;
  v61 = [v18 leadingAnchor];
  v62 = [v1 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v51 + 48) = v63;
  v64 = [v0 &selRef_fetchSources];
  v65 = [v64 bottomAnchor];

  v66 = [v18 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:12.0];

  *(v51 + 56) = v67;
  v68 = [v0 &selRef_fetchSources];
  v69 = [v68 bottomAnchor];

  v70 = [v1 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:12.0];

  *(v51 + 64) = v71;
  v72 = [v0 traitCollection];
  v73 = [v72 preferredContentSizeCategory];

  LOBYTE(v72) = sub_1BA4A74F8();
  v74 = v77;
  if (v72)
  {
    v74 = v50;
  }

  v75 = *&v0[v74];

  v76 = objc_opt_self();
  sub_1B9F73B50(v75);
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v78 = sub_1BA4A6AE8();

  [v76 activateConstraints_];
}

void sub_1BA073834()
{
  sub_1B9F0CFD4(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v23 - v3;
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v10, v41);
  if (!v42)
  {
    sub_1B9F43C48(v41, &qword_1EDC6E1A0, sub_1B9FCD918);
    return;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v11 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel);
  v12 = sub_1BA4A6758();
  [v11 setText_];

  if (v29)
  {
    v23[4] = v29;
    v23[5] = v30;
    v23[6] = v31;
    v24 = v32;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    v13 = v0;
    (v29)(v23);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v14 setDateStyle_];
      [v14 setTimeStyle_];
      v15 = sub_1BA4A16B8();
      v16 = [v14 stringFromDate_];

      if (!v16)
      {
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v16 = sub_1BA4A6758();
      }

      v17 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel);
      [v17 setText_];

      v18 = [objc_opt_self() labelColor];
      [v17 setTextColor_];

      LOBYTE(v18) = v32;
      [*(v13 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton) setHidden_];
      [*(v13 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint) setActive_];

      sub_1BA074DA4(&v25);
      (*(v6 + 8))(v9, v5);
      return;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_1B9F43C48(v4, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v19 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel);
  if (*(&v28 + 1))
  {

    v20 = sub_1BA4A6758();
  }

  else
  {
    v20 = 0;
  }

  [v19 setText_];

  [v19 setEnabled_];
  v21 = [objc_opt_self() systemBlueColor];
  [v19 setTextColor_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton) setHidden_];
  v22 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint);
  [v22 setActive_];
  sub_1BA074DA4(&v25);
}

void sub_1BA073D4C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ResettableCalendarDateDisplayCell();
  objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1BA4A74F8();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_1BA073E9C();
  }
}

void sub_1BA073E9C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v4 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];
}

id ResettableCalendarDateDisplayCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResettableCalendarDateDisplayCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0740D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v15);
  if (!v16)
  {
    return sub_1B9F43C48(v15, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    if (v14 == 1)
    {
      if (!v12)
      {

        sub_1B9F0E310(v8, v9);
        sub_1B9F0E310(v10, v11);
        v7 = 0;
        return sub_1B9F0E310(v7, v13);
      }

      v12(a1);

      sub_1B9F0E310(v8, v9);
      v5 = v10;
      v6 = v11;
    }

    else
    {

      sub_1B9F0E310(v8, v9);
      v5 = v10;
      v6 = v11;
    }

    sub_1B9F0E310(v5, v6);
    v7 = v12;
    return sub_1B9F0E310(v7, v13);
  }

  return result;
}

void _s18HealthExperienceUI33ResettableCalendarDateDisplayCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v67 - v9;
  v11 = v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    v69 = v14;
    v73 = v6;
    sub_1BA4A3DD8();
    v18 = v13;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FB8();
    v72 = v18;

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v70 = v3;
      v22 = v21;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v22 = 136315906;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v2;
      v25 = sub_1B9F0B82C(v23, v24, &v76);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v74 = 0;
      v75 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v76);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2080;
      LODWORD(v74) = 0;
      type metadata accessor for SymbolicTraits(0);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v76);
      v2 = v71;

      *(v22 + 24) = v31;
      *(v22 + 32) = 2112;
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v22 + 34) = v32;
      v33 = v67;
      *v67 = v32;
      _os_log_impl(&dword_1B9F07000, v19, v20, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v22, 0x2Au);
      sub_1B9F8C6C8(v33);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      v35 = v22;
      v3 = v70;
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    v14 = v69;
    v36 = [v69 preferredFontDescriptorWithTextStyle_];
    v17 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];

    v6 = v73;
  }

  v37 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleLabel;
  [v12 setFont_];

  [v12 setTextAlignment_];
  [v12 setNumberOfLines_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v38 = objc_opt_self();
  v39 = [v38 labelColor];
  [v12 setTextColor_];

  *(v1 + v37) = v12;
  v40 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v44 = v13;
    v45 = sub_1BA4A3E88();
    v46 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v73 = v6;
      v48 = v47;
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v48 = 136315906;
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v2;
      v51 = sub_1B9F0B82C(v49, v50, &v76);
      v70 = v3;
      v52 = v51;

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v74 = 0;
      v75 = 1;
      sub_1B9F0CFD4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v53 = sub_1BA4A6808();
      v55 = sub_1B9F0B82C(v53, v54, &v76);

      *(v48 + 14) = v55;
      *(v48 + 22) = 2080;
      LODWORD(v74) = 0;
      type metadata accessor for SymbolicTraits(0);
      v56 = sub_1BA4A6808();
      v58 = sub_1B9F0B82C(v56, v57, &v76);

      *(v48 + 24) = v58;
      *(v48 + 32) = 2112;
      v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v48 + 34) = v59;
      v60 = v69;
      *v69 = v59;
      _os_log_impl(&dword_1B9F07000, v45, v46, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v48, 0x2Au);
      sub_1B9F8C6C8(v60);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      v61 = v72;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      (*(v70 + 8))(v73, v71);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v42 = [v14 preferredFontDescriptorWithTextStyle_];
    v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  v62 = v43;

  v63 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_dateLabel;
  [v40 setFont_];

  [v40 setTextAlignment_];
  [v40 setNumberOfLines_];
  [v40 setAdjustsFontForContentSizeCategory_];
  v64 = [v38 labelColor];
  [v40 setTextColor_];

  *(v1 + v63) = v40;
  v65 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButton;
  *(v1 + v65) = sub_1BA072064();
  v66 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldSideBySideConstraints) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_titleAndValueFieldStackedConstraints) = v66;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_clearButtonWidthConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA074B38(uint64_t a1)
{
  result = sub_1BA074B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA074B60()
{
  result = qword_1EBBEAD90;
  if (!qword_1EBBEAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD90);
  }

  return result;
}

unint64_t sub_1BA074BB8()
{
  result = qword_1EBBEAD98;
  if (!qword_1EBBEAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAD98);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA074C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1BA074C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA074DD4(uint64_t a1)
{
  if (!qword_1EDC6B490)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E350, 0x1E69E58C0);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B490);
    }
  }
}

uint64_t DataTypeDetailMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6553796C696D6166;
  v2 = 0x50676E6972616873;
  if (a1 != 2)
  {
    v2 = 0x537972616D6D7573;
  }

  if (a1)
  {
    v1 = 0x507972616D697270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA074F48(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000707574;
  v3 = 0x6553796C696D6166;
  v4 = *a1;
  v5 = 0x50676E6972616873;
  v6 = 0xEE00776569766572;
  if (v4 != 2)
  {
    v5 = 0x537972616D6D7573;
    v6 = 0xEE00676E69726168;
  }

  v7 = 0x507972616D697270;
  v8 = 0xEE00656C69666F72;
  if (!*a1)
  {
    v7 = 0x6553796C696D6166;
    v8 = 0xEB00000000707574;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x50676E6972616873;
  v12 = 0xEE00776569766572;
  if (*a2 != 2)
  {
    v11 = 0x537972616D6D7573;
    v12 = 0xEE00676E69726168;
  }

  if (*a2)
  {
    v3 = 0x507972616D697270;
    v2 = 0xEE00656C69666F72;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BA4A8338();
  }

  return v15 & 1;
}

uint64_t sub_1BA0750D8()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA0751C8(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA0752A4(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

unint64_t sub_1BA075390@<X0>(Swift::String *a1@<X0>, HealthExperienceUI::DataTypeDetailMode_optional *a2@<X8>)
{
  result = _s18HealthExperienceUI18DataTypeDetailModeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1BA0753C0(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000707574;
  v3 = 0x6553796C696D6166;
  v4 = 0xEE00776569766572;
  v5 = 0x50676E6972616873;
  if (*v1 != 2)
  {
    v5 = 0x537972616D6D7573;
    v4 = 0xEE00676E69726168;
  }

  if (*v1)
  {
    v3 = 0x507972616D697270;
    v2 = 0xEE00656C69666F72;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [a1 type];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        return 3;
      }

      return 1;
    }

    if (v2 == 9)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return v3 != 3;
  }
}

unint64_t _s18HealthExperienceUI18DataTypeDetailModeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BA07553C()
{
  result = qword_1EBBEADD0;
  if (!qword_1EBBEADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEADD0);
  }

  return result;
}

uint64_t sub_1BA0755A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for NotificationSettingsSharingItem(0) + 20);
  v10 = sub_1BA4A33C8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a2 + v9, a1, v10);
  v19 = 0xD000000000000020;
  v20 = 0x80000001BA4E6DE0;
  v12 = sub_1BA4A33A8();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v13 = sub_1BA4A1748();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1BFAF1350](v13, v15);

  v16 = v19;
  v17 = v20;
  result = (*(v11 + 8))(a1, v10);
  *a2 = v16;
  a2[1] = v17;
  return result;
}

uint64_t sub_1BA075774()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v96 = *(v2 - 1);
  v97 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v82 - v8;
  v9 = sub_1BA4A1798();
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v86 = &v82 - v15;
  sub_1B9F66270(0, &qword_1EBBEADE0, sub_1BA078D4C, v12);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v82 - v18;
  v95 = sub_1BA4A33C8();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v91 = &v82 - v25;
  v26 = sub_1BA4A4428();
  v94 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66270(0, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem, v12);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v82 - v32;
  v34 = type metadata accessor for NotificationSettingsSharingItem(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v93 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v38, v99);
  if (v100)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v39 = swift_dynamicCast();
    (*(v35 + 56))(v33, v39 ^ 1u, 1, v34);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v40 = v33;
      v41 = v93;
      sub_1BA078E00(v40, v93);
      sub_1BA4A4418();
      v42 = *(v34 + 20);
      sub_1BA4A3328();
      sub_1BA4A43B8();
      v100 = v26;
      v101 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
      (*(v94 + 16))(boxed_opaque_existential_1, v29, v26);
      MEMORY[0x1BFAF1EF0](v99);
      v84 = v26;
      v44 = v92;
      v45 = *(v92 + 16);
      v83 = v29;
      v46 = v91;
      v45(v91, v41 + v42, v95);
      sub_1BA4A32E8();
      sub_1BA078D4C(0);
      v48 = v47;
      v49 = *(v47 - 8);
      if ((*(v49 + 48))(v19, 1, v47) == 1)
      {
        v50 = v83;
        v51 = v84;
        sub_1BA078EC4(v19, &qword_1EBBEADE0, sub_1BA078D4C);
        v52 = v89;
        sub_1BA4A3DD8();
        v53 = sub_1BA4A3E88();
        v54 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v99[0] = v56;
          *v55 = 136315138;
          v57 = sub_1BA4A85D8();
          v59 = sub_1B9F0B82C(v57, v58, v99);

          *(v55 + 4) = v59;
          _os_log_impl(&dword_1B9F07000, v53, v54, "[%s] could not find associated profileIdentifier to update cell with", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          MEMORY[0x1BFAF43A0](v56, -1, -1);
          MEMORY[0x1BFAF43A0](v55, -1, -1);
        }

        (*(v96 + 8))(v52, v97);
        (*(v92 + 8))(v91, v95);
        (*(v94 + 8))(v50, v51);
      }

      else
      {
        v97 = sub_1BA4A65C8();
        (*(v49 + 8))(v19, v48);
        v72 = v86;
        sub_1BA4A3278();
        v45(v22, v46, v95);
        v73 = v97;
        v74 = [v97 identifier];
        v75 = v85;
        sub_1BA4A1778();

        v76 = v73;
        v77 = sub_1BA076BDC(v72, v22, v75, [v73 type], v1);
        (*(v87 + 8))(v75, v88, v77);
        v78 = *(v44 + 8);
        v79 = v22;
        v80 = v95;
        v78(v79, v95);
        v81 = MEMORY[0x1E69A33B0];
        sub_1BA078EC4(v72, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
        sub_1BA4A3278();
        sub_1B9FD44D4(v72);

        sub_1BA078EC4(v72, &qword_1EBBE97C8, v81);
        v78(v46, v80);
        (*(v94 + 8))(v83, v84);
      }

      return sub_1BA078E64(v93, type metadata accessor for NotificationSettingsSharingItem);
    }
  }

  else
  {
    sub_1B9F7B644(v99);
    (*(v35 + 56))(v33, 1, 1, v34);
  }

  sub_1BA078EC4(v33, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem);
  sub_1BA4A3D88();
  v60 = v1;
  v61 = sub_1BA4A3E88();
  v62 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v98 = v64;
    *v63 = 136315394;
    v65 = sub_1BA4A85D8();
    v67 = sub_1B9F0B82C(v65, v66, &v98);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    sub_1B9F68124(v1 + v38, v99);
    sub_1B9F0CF6C(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v68 = sub_1BA4A6808();
    v70 = sub_1B9F0B82C(v68, v69, &v98);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_1B9F07000, v61, v62, "[%s] Expected NotificationSettingsSharingItem; got %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v64, -1, -1);
    MEMORY[0x1BFAF43A0](v63, -1, -1);
  }

  return (*(v96 + 8))(v5, v97);
}

uint64_t sub_1BA076200()
{
  sub_1B9F66270(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = aBlock - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = aBlock - v11;
  v13 = sub_1BA4A40A8();
  v14 = type metadata accessor for NotificationSettingsSharingCell();
  v29.receiver = v0;
  v29.super_class = v14;
  objc_msgSendSuper2(&v29, sel__bridgedUpdateConfigurationUsingState_, v13);

  if (sub_1BA4A4068() & 1) != 0 || (sub_1BA4A4078())
  {
    MEMORY[0x1BFAF1F00]();
    v15 = sub_1BA4A4168();
    if ((*(*(v15 - 8) + 48))(v12, 1, v15))
    {
      v16 = MEMORY[0x1E69DC0D8];
      sub_1BA078F98(v12, v8, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v8);
      v17 = v12;
      return sub_1BA078EC4(v17, &qword_1EDC6B770, v16);
    }

    v18 = objc_opt_self();
    v19 = [v18 systemGray5Color];
    v20 = [v18 tertiarySystemGroupedBackgroundColor];
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = v20;
    v21[4] = 0;
    v21[5] = v19;
    v22 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FE1088;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_15;
    v23 = _Block_copy(aBlock);
    [v22 initWithDynamicProvider_];
    _Block_release(v23);

    sub_1BA4A4118();
    v24 = v12;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v25 = sub_1BA4A4168();
    if ((*(*(v25 - 8) + 48))(v4, 1, v25))
    {
      v16 = MEMORY[0x1E69DC0D8];
      sub_1BA078F98(v4, v8, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v8);
      v17 = v4;
      return sub_1BA078EC4(v17, &qword_1EDC6B770, v16);
    }

    v27 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v24 = v4;
  }

  return MEMORY[0x1BFAF1F10](v24);
}

id sub_1BA07679C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettingsSharingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA076804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA07685C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA075774();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA0768C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA07692C;
}

uint64_t sub_1BA07692C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA075774();
  }

  return result;
}

void sub_1BA076960(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

id sub_1BA0769FC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_16;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA076B28()
{
  type metadata accessor for NotificationSettingsSharingCell();
  sub_1BA07914C();
  return sub_1BA4A6808();
}

uint64_t sub_1BA076B60(uint64_t a1)
{
  v2 = sub_1BA079104(&qword_1EBBEAE10, type metadata accessor for NotificationSettingsSharingItem, &unk_1BA4BA810);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

double sub_1BA076BDC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v121 = a5;
  v112 = a4;
  v111 = a3;
  v122 = a2;
  v6 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v108 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = sub_1BA4A1798();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v9);
  v104 = v10;
  v105 = &v102[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BA4A3158();
  v123 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = &v102[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v109 = &v102[-v16];
  sub_1B9FD7D5C(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v102[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1E69A33B0];
  v23 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v110 = &v102[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27, v28);
  v115 = &v102[-v29];
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v102[-v32];
  sub_1B9F66270(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], v23);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v102[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v102[-v40];
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v102[-v44];
  v46 = sub_1BA4A33C8();
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v116 = &v102[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = v50;
  v51 = *(v50 + 16);
  v118 = v52;
  v51(v48);
  v120 = a1;
  sub_1BA078F98(a1, v33, &qword_1EBBE97C8, v22);
  v53 = sub_1BA4A3118();
  v54 = *(v53 - 8);
  v122 = *(v54 + 48);
  v55 = v122(v33, 1, v53);
  v114 = v53;
  v113 = v54;
  if (v55 == 1)
  {
    sub_1BA078EC4(v33, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v56 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v54 + 8))(v33, v53);
    v56 = 0;
  }

  v57 = v123;
  v58 = *(v123 + 56);
  v58(v45, v56, 1, v11);
  (*(v57 + 104))(v41, *MEMORY[0x1E69A33C0], v11);
  v58(v41, 0, 1, v11);
  v59 = *(v18 + 48);
  v60 = MEMORY[0x1E69A33C8];
  sub_1BA078F98(v45, v21, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA078F98(v41, &v21[v59], &qword_1EBBE97F8, v60);
  v61 = *(v57 + 48);
  if (v61(v21, 1, v11) == 1)
  {
    v62 = MEMORY[0x1E69A33C8];
    sub_1BA078EC4(v41, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA078EC4(v45, &qword_1EBBE97F8, v62);
    v63 = v61(&v21[v59], 1, v11);
    v64 = v114;
    if (v63 == 1)
    {
      sub_1BA078EC4(v21, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      v65 = 0;
LABEL_10:
      v67 = v120;
      v68 = v121;
      v69 = v119;
      goto LABEL_12;
    }

LABEL_9:
    sub_1BA078E64(v21, sub_1B9FD7D5C);
    v65 = 1;
    goto LABEL_10;
  }

  sub_1BA078F98(v21, v37, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if (v61(&v21[v59], 1, v11) == 1)
  {
    v66 = MEMORY[0x1E69A33C8];
    sub_1BA078EC4(v41, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA078EC4(v45, &qword_1EBBE97F8, v66);
    (*(v123 + 8))(v37, v11);
    v64 = v114;
    goto LABEL_9;
  }

  v70 = v123;
  v71 = v109;
  (*(v123 + 32))(v109, &v21[v59], v11);
  sub_1BA079104(&qword_1EBBE9800, MEMORY[0x1E69A33C8], MEMORY[0x1E69A33D0]);
  v103 = sub_1BA4A6728();
  v72 = *(v70 + 8);
  v72(v71, v11);
  v73 = MEMORY[0x1E69A33C8];
  sub_1BA078EC4(v41, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA078EC4(v45, &qword_1EBBE97F8, v73);
  v72(v37, v11);
  sub_1BA078EC4(v21, &qword_1EBBE97F8, v73);
  v65 = v103 ^ 1;
  v67 = v120;
  v68 = v121;
  v69 = v119;
  v64 = v114;
LABEL_12:
  [v68 setUserInteractionEnabled_];
  v74 = v115;
  sub_1BA078F98(v67, v115, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v122(v74, 1, v64) == 1)
  {
    (*(v117 + 8))(v116, v118);
    sub_1BA078EC4(v74, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    return result;
  }

  sub_1BA4A30F8();
  v76 = *(v113 + 8);
  v76(v74, v64);
  v77 = v123;
  if ((*(v123 + 88))(v69, v11) != *MEMORY[0x1E69A33B8])
  {
    (*(v117 + 8))(v116, v118);
    (*(v77 + 8))(v69, v11);
    return result;
  }

  (*(v77 + 8))(v69, v11);
  v78 = v110;
  sub_1BA078F98(v67, v110, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v122(v78, 1, v64) == 1)
  {
    sub_1BA078EC4(v78, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
LABEL_23:
    v96 = [v68 viewController];
    v97 = v116;
    v98 = v118;
    v99 = sub_1BA4A2AB8();
    v101 = v100;
    (*(v117 + 8))(v97, v98);
    sub_1BA199AD4(v96, v99, v101, v111, v112);

    return result;
  }

  v79 = sub_1BA4A3108();
  v81 = v80;
  v76(v78, v64);
  if (v81)
  {
    goto LABEL_23;
  }

  v82 = [v68 viewController];
  if (!v82)
  {
    goto LABEL_23;
  }

  v83 = v82;
  (*(v117 + 8))(v116, v118);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v84 = v106;
  v85 = v105;
  v86 = v107;
  (*(v106 + 16))(v105, v111, v107);
  v87 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v88 = (v104 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  (*(v84 + 32))(&v89[v87], v85, v86);
  *&v89[v88] = v112;
  v90 = sub_1BA4A6758();
  aBlock[4] = sub_1B9FD80C8;
  aBlock[5] = v89;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_8;
  v91 = _Block_copy(aBlock);

  v92 = [objc_opt_self() actionWithTitle:v90 style:0 handler:v91];
  _Block_release(v91);

  type metadata accessor for HKError(0);
  v124 = v79;
  sub_1BA198DE4(MEMORY[0x1E69E7CC0]);
  sub_1BA079104(&qword_1EBBE9090, type metadata accessor for HKError, &unk_1BA4B450C);
  sub_1BA4A1478();
  v93 = v108;
  SummarySharingOnboardingError.init(error:)(aBlock[0], v108);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = v92;
  v95 = v92;
  sub_1BA0C6BA4(v83, 0, 0, 0, 0, inited, 0, 0);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BA078E64(v93, type metadata accessor for SummarySharingOnboardingError);
  return result;
}

uint64_t sub_1BA0779FC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a2;
  v77 = a4;
  v85 = sub_1BA4A1798();
  *&v90 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v9);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66270(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v89 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v74 - v14;
  v16 = sub_1BA4A33C8();
  v94[3] = v16;
  v94[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, a3, v16);
  v83 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v76 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources) = MEMORY[0x1E69E7CC0];
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationCancellable) = 0;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationManager;
  sub_1BA4A1BC8();
  v20 = sub_1BA4A1BB8();
  v86 = a6;
  *(a6 + v19) = v20;
  v21 = objc_opt_self();
  v22 = a1;
  v78 = v21;
  v88 = [v21 defaultCenter];
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  v23 = sub_1BA4A70E8();
  v24 = type metadata accessor for SharedProfileNotificationSettingsManager(0);
  v25 = objc_allocWithZone(v24);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v25[v26] = sub_1BA4A1C08();
  v27 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  *&v95 = sub_1B9FDB444(v18);
  sub_1BA078F34(0);
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v25[v27], v15, v89);
  *&v25[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = v22;
  v28 = *MEMORY[0x1E696C890];
  v29 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v30 = v22;
  v31 = [v29 initWithCategory:1 domainName:v28 healthStore:v30];
  *&v25[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = v31;
  *&v25[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = v88;
  *&v25[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v23;
  v93.receiver = v25;
  v93.super_class = v24;
  v82 = objc_msgSendSuper2(&v93, sel_init);
  v75 = v30;

  v32 = 0;
  v81 = (v90 + 8);
  v92 = v18;
  v90 = xmmword_1BA4B5480;
  v33 = v84;
  v34 = v85;
  do
  {
    v89 = v32;
    v35 = *(&unk_1F37FBDD0 + v32 + 32);
    sub_1B9F0A534(v94, &v95);
    v36 = *(v86 + v83);
    type metadata accessor for ProfileSharingWithYouNotificationSettingsDataSource(0);
    v37 = swift_allocObject();
    sub_1B9F0A534(&v95, v37 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation);
    *(v37 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType) = v35;
    *(v37 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled) = v36;
    v87 = v37;
    LOBYTE(v91[0]) = v35;
    v38 = type metadata accessor for ProfileSharingWithYouNotificationSettingsItem();
    swift_allocObject();
    v88 = v82;
    v39 = sub_1BA29F0B0(v91, v88, v36);
    *(v37 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item) = v39;
    sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
    inited = swift_initStackObject();
    *(inited + 16) = v90;
    sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = v90;
    *(v41 + 56) = v38;
    *(v41 + 64) = sub_1BA079104(&qword_1EBBEADF8, type metadata accessor for ProfileSharingWithYouNotificationSettingsItem, &protocol conformance descriptor for SwitchCollectionViewItem);
    *(v41 + 32) = v39;

    sub_1BA4A1788();
    v42 = sub_1BA4A1748();
    v44 = v43;
    v45 = *v81;
    (*v81)(v33, v34);
    v46 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v46);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v41;
    v47 = Array<A>.identifierToIndexDict()(v41);

    *(inited + 56) = v47;
    *(inited + 64) = v42;
    *(inited + 72) = v44;
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    strcpy(v91, "MutableArray<");
    HIWORD(v91[1]) = -4864;
    sub_1BA4A1788();
    v48 = sub_1BA4A1748();
    v50 = v49;
    v45(v33, v34);
    MEMORY[0x1BFAF1350](v48, v50);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v91[0], v91[1]);
    v51 = v88;

    __swift_destroy_boxed_opaque_existential_1(&v95);

    MEMORY[0x1BFAF1510](v52);
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    v53 = v89 + 1;
    sub_1BA4A6BB8();

    v32 = v53;
  }

  while (v53 != 3);
  *(v86 + v76) = v92;

  v54 = sub_1B9FE98D4();

  sub_1B9F0A534(v94, v91);
  v55 = qword_1EBBE8598;
  *&v90 = v75;
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = *algn_1EBBEF348;
  v89 = qword_1EBBEF340;
  v57 = objc_opt_self();
  v87 = v56;

  v85 = [v57 secondarySystemGroupedBackgroundColor];
  if (qword_1EBBE85A0 != -1)
  {
    swift_once();
  }

  v58 = qword_1EBBEF350;
  v59 = *algn_1EBBEF358;
  v60 = qword_1EBBE85A8;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = qword_1EBBEF360;
  v62 = *algn_1EBBEF368;
  v63 = qword_1EBBE85B0;
  swift_bridgeObjectRetain_n();
  if (v63 != -1)
  {
    swift_once();
  }

  v64 = qword_1EBBEF370;
  v65 = *algn_1EBBEF378;
  v66 = qword_1EBBE85B8;

  if (v66 != -1)
  {
    swift_once();
  }

  *&v95 = v58;
  *(&v95 + 1) = v59;
  v96 = v61;
  v97 = v62;
  v98 = v61;
  v99 = v62;
  v100 = v64;
  v101 = v65;
  v102 = qword_1EBBEF380;
  v103 = *algn_1EBBEF388;
  v104 = v77;
  v105 = v79;
  type metadata accessor for EndSharingRelationshipDataSource(0);
  swift_allocObject();

  v67 = sub_1BA0700CC(v90, v91, 0, 0, v89, v87, v85, &v95);
  if (v67)
  {
    v68 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1B9F1E00C();
    }

    v69 = *(v54 + 16);
    if (v69 >= *(v54 + 24) >> 1)
    {
      v54 = sub_1B9F1E00C();
    }

    *(v54 + 16) = v69 + 1;
    v70 = v54 + 16 * v69;
    *(v70 + 32) = v68;
    *(v70 + 40) = &protocol witness table for MutableArrayDataSource;
  }

  v71 = CompoundSectionedDataSource.init(_:)(v54);

  v72 = [v78 defaultCenter];
  [v72 addObserver:v71 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x1E69DDBC0] object:0];

  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v94);
  return v71;
}

char *sub_1BA078438(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  sub_1B9F66270(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v40[3] = v21;
  v40[4] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v35 = *(v14 + 32);
  v35(boxed_opaque_existential_1, a3, v13);
  v23 = objc_allocWithZone(type metadata accessor for ProfileSharingWithYouOptionsViewController());
  v37 = a2;
  sub_1B9F0A534(a2, v39);
  type metadata accessor for ProfileSharingWithYouOptionsDataSource(0);
  v24 = swift_allocObject();
  (*(v14 + 16))(v20, boxed_opaque_existential_1, v13);

  *&v23[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController_optionsDataSource] = sub_1BA0779FC(a1, v39, v20, v38, a5, v24);

  v26 = CompoundDataSourceCollectionViewController.init(dataSource:)(v25);
  sub_1BA4A2AB8();
  v27 = sub_1BA4A6758();

  [v26 setTitle_];

  sub_1B9F0A534(v40, v39);
  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  v28 = swift_dynamicCast();
  v29 = *(v14 + 56);
  if (v28)
  {
    v29(v12, 0, 1, v13);
    v30 = v36;
    v35(v36, v12, v13);
    sub_1BA4A3328();
    v31 = sub_1BA4A6758();

    [v26 setTitle_];

    (*(v14 + 8))(v30, v13);
  }

  else
  {
    v29(v12, 1, 1, v13);
    sub_1BA078EC4(v12, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
  }

  result = [v26 collectionView];
  if (result)
  {
    v33 = result;
    v34 = [objc_opt_self() systemGroupedBackgroundColor];
    [v33 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA078844(void *a1)
{
  v39 = a1;
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F66270(0, &qword_1EBBEADE0, sub_1BA078D4C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v40[-1] - v10;
  sub_1B9F66270(0, &qword_1EBBEADF0, type metadata accessor for NotificationSettingsSharingItem, v7);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v40[-1] - v14;
  v16 = type metadata accessor for NotificationSettingsSharingItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v21, v41);
  if (!v41[3])
  {
    sub_1B9F7B644(v41);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_6;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v22 = swift_dynamicCast();
  (*(v17 + 56))(v15, v22 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_6:
    v27 = &qword_1EBBEADF0;
    v28 = type metadata accessor for NotificationSettingsSharingItem;
    v29 = v15;
    return sub_1BA078EC4(v29, v27, v28);
  }

  sub_1BA078E00(v15, v20);
  v23 = *(v16 + 20);
  sub_1BA4A32E8();
  sub_1BA078D4C(0);
  v25 = v24;
  v26 = *(v24 - 8);
  if ((*(v26 + 48))(v11, 1, v24) == 1)
  {
    sub_1BA078E64(v20, type metadata accessor for NotificationSettingsSharingItem);
    v27 = &qword_1EBBEADE0;
    v28 = sub_1BA078D4C;
    v29 = v11;
    return sub_1BA078EC4(v29, v27, v28);
  }

  v31 = sub_1BA4A65C8();
  (*(v26 + 8))(v11, v25);
  v32 = v31;
  v33 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  [v33 setProfileIdentifier_];
  [v33 resume];
  v34 = v39;
  UIViewController.resolvedHealthExperienceStore.getter(v41);
  sub_1B9F0A534(v41, v40);
  (*(v3 + 16))(v6, &v20[v23], v2);
  v35 = v33;
  v36 = sub_1BA078438(v35, v40, v6, sub_1BA076960, 0);

  v37 = [v34 navigationController];
  if (v37)
  {
    v38 = v37;
    [v37 pushViewController:v36 animated:1];
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1BA078E64(v20, type metadata accessor for NotificationSettingsSharingItem);
}

void sub_1BA078D4C(uint64_t a1)
{
  if (!qword_1EBBEADE8)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E3D8, 0x1E696C338);
    v1 = sub_1BA4A65E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEADE8);
    }
  }
}

uint64_t type metadata accessor for NotificationSettingsSharingItem(uint64_t a1)
{
  result = qword_1EBBEAE00;
  if (!qword_1EBBEAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA078E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSettingsSharingItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA078E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA078EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F66270(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA078F34(uint64_t a1)
{
  if (!qword_1EDC5E878)
  {
    sub_1B9FDC8C0();
    v1 = sub_1BA4A6688();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E878);
    }
  }
}

uint64_t sub_1BA078F98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F66270(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA079040(uint64_t a1)
{
  result = sub_1BA4A33C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA079104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA07914C()
{
  result = qword_1EBBE9E58;
  if (!qword_1EBBE9E58)
  {
    type metadata accessor for NotificationSettingsSharingCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E58);
  }

  return result;
}

void sub_1BA0791A0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a3;
  v52[1] = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v52 - v17;
  sub_1B9F12538();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59[0] = a1;
  *(&v59[0] + 1) = a2;
  *&v56 = 0x616465726F632D78;
  *(&v56 + 1) = 0xEA00000000006174;
  sub_1B9F252FC();
  if ((sub_1BA4A7BC8() & 1) == 0)
  {
    sub_1BA4A3DD8();

    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6F88();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v59[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1B9F0B82C(a1, a2, v59);
      _os_log_impl(&dword_1B9F07000, v43, v44, "FetchedResultsControllerDataSource cannot find the requested section with identifier %s.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    (*(v53 + 8))(v18, v54);
    goto LABEL_17;
  }

  v25 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v21 + 16))(v24, v4 + v25, v20);
  v52[0] = a1;
  *&v59[0] = a1;
  *(&v59[0] + 1) = a2;
  v26 = sub_1BA4A4468();
  v28 = v27;
  (*(v21 + 8))(v24, v20);
  if ((v28 & 1) != 0 || (v29 = qword_1EDC84AD8, swift_beginAccess(), (v30 = [*(v4 + v29) fetchedObjects]) == 0))
  {
    sub_1BA4A3D88();

    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v59[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1B9F0B82C(v52[0], a2, v59);
      _os_log_impl(&dword_1B9F07000, v47, v48, "Unable to create section data source item from unique identifier %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
    }

    (*(v53 + 8))(v10, v54);
LABEL_17:
    v51 = v55;
    *(v55 + 32) = 0;
    *v51 = 0u;
    v51[1] = 0u;
    return;
  }

  v31 = v30;
  v32 = sub_1BA4A27B8();
  v33 = sub_1BA4A6B08();

  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1BFAF2860](v26, v33);
    v34 = v52[0];
    goto LABEL_8;
  }

  v34 = v52[0];
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v35 = *(v33 + 8 * v26 + 32);
LABEL_8:

  v57 = v32;
  v58 = sub_1B9F15730();
  *&v56 = v35;
  sub_1B9F1134C(&v56, v59);
  sub_1BA4A3D88();

  v36 = sub_1BA4A3E88();
  v37 = sub_1BA4A6F88();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v56 = v39;
    *v38 = 136315394;
    v40 = sub_1BA4A85D8();
    v42 = sub_1B9F0B82C(v40, v41, &v56);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_1B9F0B82C(v34, a2, &v56);
    _os_log_impl(&dword_1B9F07000, v36, v37, "[%s] Successfully created SnapshotDataSourceItem for: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    MEMORY[0x1BFAF43A0](v38, -1, -1);
  }

  (*(v53 + 8))(v14, v54);
  sub_1B9F1134C(v59, v55);
}

uint64_t sub_1BA0797D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v31 = v2;
  v11(v9, v2 + v10, v5);
  v12 = sub_1BA4A4578();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v30 = a1;
  v14 = sub_1BA4A1968();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= *(v12 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v12 + 16 * v14;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);

  v18 = v31 + v10;
  v10 = v31;
  v11(v9, v18, v5);
  v32 = v16;
  v33 = v17;
  v19 = sub_1BA4A4528();
  v13(v9, v5);
  v20 = sub_1BA4A1958();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v19 + 16 * v20;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  sub_1B9F3AB98(v22, v23, &v34);

  if (v35)
  {

    return sub_1B9F1134C(&v34, v29);
  }

LABEL_11:
  sub_1B9F43AAC(&v34, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v32 = sub_1BA4A1968();
  v25 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v25);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v32 = sub_1BA4A1958();
  v26 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v26);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v32 = v10;
  type metadata accessor for SearchSectionDataSource(0);

  v27 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v27);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA079B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v38 = v2;
  v11(v9, v2 + v10, v5);
  v12 = sub_1BA4A4578();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v37 = a1;
  v14 = sub_1BA4A1968();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= *(v12 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v12 + 16 * v14;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);

  v18 = v38 + v10;
  v10 = v38;
  v11(v9, v18, v5);
  v39 = v16;
  v40 = v17;
  v19 = sub_1BA4A4528();
  v13(v9, v5);
  v20 = sub_1BA4A1958();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v19 + 16 * v20;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  v24 = sub_1B9F3A92C(v22, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_1B9F3A3B4(v24, v26, v28, v30, &v41);

  if (v42)
  {

    return sub_1B9F1134C(&v41, v36);
  }

LABEL_11:
  sub_1B9F43AAC(&v41, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v39 = sub_1BA4A1968();
  v32 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v32);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v39 = sub_1BA4A1958();
  v33 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v33);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v39 = v10;
  type metadata accessor for CompoundSectionedDataSource(0);

  v34 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v34);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA079F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EDC84AC8;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v32 = v2;
  v11(v9, &v10[v2], v5);
  v12 = sub_1BA4A4578();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v31 = a1;
  v14 = sub_1BA4A1968();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= *(v12 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v12 + 16 * v14;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);

  v18 = &v10[v32];
  v10 = v32;
  v11(v9, v18, v5);
  v33 = v16;
  v34 = v17;
  v19 = sub_1BA4A4528();
  v13(v9, v5);
  v20 = sub_1BA4A1958();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v19 + 16 * v20;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  sub_1BA0791A0(v22, v23, &v35);

  if (v36)
  {

    return sub_1B9F1134C(&v35, v30);
  }

LABEL_11:
  sub_1B9F43AAC(&v35, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v33 = sub_1BA4A1968();
  v25 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v25);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v33 = sub_1BA4A1958();
  v26 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v26);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v33 = v10;
  type metadata accessor for ProvidersYouAreSharingWithDataSource(0);
  v27 = v10;
  v28 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v28);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CompoundSectionedDataSource.registerChildDataSourceCells(for:)(UICollectionView *a1)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_1BA4A1998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v66 = v17;
  v65 = v10 + 16;
  v64 = v18;
  v18(v16, v2 + v17, v9);
  v19 = sub_1BA4A4548();
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v67 = v16;
  v68 = v9;
  v63 = v21;
  v21(v16, v9);
  if (v19 < 0)
  {
    goto LABEL_30;
  }

  if (!v19)
  {
LABEL_14:
    v47 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = (v47 + 32);
      sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
      v68 = sub_1B9F0D9AC(0, &qword_1EBBEAE18, &protocol descriptor for NestedDataSource, 1);
      v50 = 0uLL;
      do
      {
        v51 = *v49;
        v80 = 0;
        v78 = v50;
        v79 = v50;
        v71 = v51;
        v69 = v51;
        swift_unknownObjectRetain_n();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v72, &v75);
          v52 = *(&v76 + 1);
          v53 = v77;
          __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
          v54 = (*(v53 + 8))(v52, v53);
          v56 = v55;
          sub_1B9F43AAC(&v78, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
          *&v71 = v54;
          *(&v71 + 1) = v56;
          sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
          }

          v78 = v72;
          v79 = v73;
          v80 = v74;
          __swift_destroy_boxed_opaque_existential_1(&v75);
        }

        else
        {
          sub_1B9F43AAC(&v78, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
          sub_1B9F43AAC(&v72, qword_1EBBEAE20, &qword_1EBBEAE18, &protocol descriptor for NestedDataSource);
          v72 = v69;
          sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            v77 = 0;
            v75 = 0u;
            v76 = 0u;
          }

          v78 = v75;
          v79 = v76;
          v80 = v77;
        }

        sub_1BA07B690(&v78, &v72);
        if (*(&v73 + 1))
        {
          sub_1B9F1134C(&v72, &v75);
          v57 = *(&v76 + 1);
          v58 = v77;
          __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
          (*(v58 + 8))(v70, v57, v58);
          swift_unknownObjectRelease();
          sub_1B9F43AAC(&v78, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
          __swift_destroy_boxed_opaque_existential_1(&v75);
        }

        else
        {
          sub_1B9F43AAC(&v78, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
          swift_unknownObjectRelease();
          sub_1B9F43AAC(&v72, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
        }

        ++v49;
        --v48;
        v50 = 0uLL;
      }

      while (v48);
    }

    return;
  }

  v22 = 0;
  v23 = (v4 + 8);
  *&v69 = v20;
  v60 = v2;
  v62 = v19;
  while (1)
  {
    v24 = v67;
    v25 = v68;
    v64(v67, v2 + v66, v68);
    v26 = sub_1BA4A4548();
    v63(v24, v25);
    if (v22 < v26)
    {
      break;
    }

LABEL_4:
    if (++v22 == v62)
    {
      goto LABEL_14;
    }
  }

  v27 = v66;
  v28 = v2 + v66;
  v29 = v67;
  v30 = v68;
  v31 = v2;
  v32 = v64;
  v64(v67, v28, v68);
  v33 = v31 + v27;
  v34 = v61;
  v32(v61, v33, v30);
  v35 = sub_1BA4A4578();
  v36 = v63;
  v63(v34, v30);
  if (v22 >= *(v35 + 16))
  {
    goto LABEL_29;
  }

  v37 = v35 + 16 * v22;
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);

  *&v78 = v38;
  *(&v78 + 1) = v39;
  v40 = v30;
  v41 = sub_1BA4A44A8();

  v36(v29, v40);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v2 = v60;
    if (v41)
    {
      for (i = 0; i != v41; ++i)
      {
        MEMORY[0x1BFAEC380](i, v22);
        sub_1BA079B80(v7, &v75);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v72, &v78);
          v43 = v3;
          v45 = *(&v79 + 1);
          v44 = v80;
          __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
          v46 = v45;
          v3 = v43;
          (*(v44 + 8))(v70, v46, v44);
          (*v23)(v7, v43);
          __swift_destroy_boxed_opaque_existential_1(&v78);
        }

        else
        {
          (*v23)(v7, v3);
          v74 = 0;
          v72 = 0u;
          v73 = 0u;
          sub_1B9F43AAC(&v72, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
        }
      }
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t CompoundSectionedDataSource.forEachItem<A>(itemHandler:)(void (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v67 = a2;
  v5 = sub_1BA4A7AA8();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1BA4A1998();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v53 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v51 - v24;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v27 = *(v19 + 16);
  v69 = v3;
  v57 = v19 + 16;
  v58 = v26;
  v56 = v27;
  v27(v25, v3 + v26, v18);
  v28 = sub_1BA4A4548();
  v29 = *(v19 + 8);
  v60 = v19 + 8;
  v61 = v18;
  v55 = v29;
  result = v29(v25, v18);
  if (v28 < 0)
  {
    goto LABEL_17;
  }

  v59 = v25;
  if (v28)
  {
    v31 = 0;
    v32 = (v63 + 1);
    v33 = (v9 + 56);
    v63 = (v9 + 32);
    ++v64;
    v62 = (v9 + 8);
    v52 = v13;
    v54 = v28;
    do
    {
      v34 = v59;
      v35 = v61;
      v56(v59, v69 + v58, v61);
      v36 = sub_1BA4A4548();
      result = v55(v34, v35);
      if (v31 < v36)
      {
        v37 = v58;
        v38 = v61;
        v39 = v56;
        v56(v59, v69 + v58, v61);
        v40 = v69 + v37;
        v41 = v53;
        v39(v53, v40, v38);
        v42 = sub_1BA4A4578();
        v43 = v55;
        result = v55(v41, v38);
        if (v31 >= *(v42 + 16))
        {
          goto LABEL_16;
        }

        v44 = v42 + 16 * v31;
        v46 = *(v44 + 32);
        v45 = *(v44 + 40);

        v70[0] = v46;
        v70[1] = v45;
        v47 = v59;
        v48 = sub_1BA4A44A8();

        result = v43(v47, v61);
        if (v48 < 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v49 = v52;
        if (v48)
        {
          for (i = 0; i != v48; ++i)
          {
            MEMORY[0x1BFAEC380](i, v31);
            sub_1BA079B80(v16, v70);
            sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
            if (swift_dynamicCast())
            {
              (*v33)(v8, 0, 1, a3);
              (*v63)(v49, v8, a3);
              v66(v49, v16);
              (*v62)(v49, a3);
              result = (*v32)(v16, v68);
            }

            else
            {
              (*v32)(v16, v68);
              (*v33)(v8, 1, 1, a3);
              result = (*v64)(v8, v65);
            }
          }
        }
      }

      ++v31;
    }

    while (v31 != v54);
  }

  return result;
}

void CompoundSectionedDataSource.forEachChild<A>(childHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v49 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v42 - v20;
  v22 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v23 = *(v22 + 16);
  if (v23)
  {
    v26 = *(v5 + 56);
    v24 = v5 + 56;
    v25 = v26;
    v27 = (v22 + 32);
    v56 = (v19 + 8);
    v53 = (v19 + 16);
    v54 = (v19 + 32);
    v52 = (v24 - 8);
    v44 = (v24 - 24);
    v57 = v24;
    v43 = (v24 - 48);
    v45 = v10;
    v51 = v26;
    do
    {
      v58 = *v27;
      v25(v21, 1, 1, a3);
      v61 = v58;
      sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
      sub_1B9F0D9AC(0, &qword_1EBBEAE18, &protocol descriptor for NestedDataSource, 1);
      v28 = v58;
      swift_unknownObjectRetain_n();
      v29 = swift_dynamicCast();
      v55 = v28;
      if (v29)
      {
        sub_1B9F1134C(v59, &v62);
        v30 = v63;
        v31 = v64;
        __swift_project_boxed_opaque_existential_1(&v62, v63);
        v32 = (*(v31 + 8))(v30, v31);
        v34 = v33;
        v35 = *v56;
        (*v56)(v21, v7);
        *&v59[0] = v32;
        *(&v59[0] + 1) = v34;
        v10 = v45;
        v36 = v46;
        v37 = swift_dynamicCast();
        v38 = v51;
        v51(v36, v37 ^ 1u, 1, a3);
        (*v54)(v21, v36, v7);
        __swift_destroy_boxed_opaque_existential_1(&v62);
        v25 = v38;
      }

      else
      {
        v35 = *v56;
        (*v56)(v21, v7);
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        sub_1B9F43AAC(v59, qword_1EBBEAE20, &qword_1EBBEAE18, &protocol descriptor for NestedDataSource);
        v62 = v58;
        swift_unknownObjectRetain();
        v39 = v47;
        v40 = swift_dynamicCast();
        v25 = v51;
        v51(v39, v40 ^ 1u, 1, a3);
        (*v54)(v21, v39, v7);
      }

      (*v53)(v10, v21, v7);
      if ((*v52)(v10, 1, a3) == 1)
      {
        v35(v21, v7);
        swift_unknownObjectRelease();
        v35(v10, v7);
      }

      else
      {
        v41 = v48;
        (*v44)(v48, v10, a3);
        v49(v41);
        swift_unknownObjectRelease();
        (*v43)(v41, a3);
        v35(v21, v7);
      }

      ++v27;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_1BA07B690(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CE40(0, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RuntimeItemDataSource.Section.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RuntimeItemDataSource.Section.init(identifier:items:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1BA07B7D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RuntimeItemDataSource.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

uint64_t sub_1BA07B8A4(uint64_t a1)
{
  sub_1B9F12538();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_1BA07B9F8(v6);
}

uint64_t sub_1BA07B970@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC09498;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA07B9F8(uint64_t a1)
{
  v3 = qword_1EBC09498;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_1BA07BAE8()
{
  sub_1BA07CFDC();

  return result;
}

double sub_1BA07BB10(uint64_t a1)
{
  v3 = qword_1EBC094A0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *RuntimeItemDataSource.__allocating_init(identifier:sections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BA07D020(a1, a2, a3);

  return v6;
}

void *RuntimeItemDataSource.init(identifier:sections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA07D020(a1, a2, a3);

  return v3;
}

uint64_t sub_1BA07BC04(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1BA07C3F8(a1, &v17 - v13);
  sub_1BA07B9F8(v14);
  v15 = qword_1EBC094A0;

  swift_beginAccess();
  *(v2 + v15) = a1;

  type metadata accessor for RuntimeItemDataSource(0, v4[10], v4[11], v4[12]);
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  sub_1BA07B970(v10);
  sub_1B9F177C4(v14);
  (*(v7 + 8))(v10, v6);
  return sub_1BA07B9F8(v14);
}

uint64_t sub_1BA07BDBC@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v4 = *v3;
  v28[1] = a2;
  v29 = v4;
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07D4F8(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v28 - v13;
  v15 = sub_1BA4A1998();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07B970(v10);
  sub_1BA0F00FC(v14);
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BA07D49C(v14, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
    v20 = v29[10];
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v21 = v16;
    v22 = sub_1BA4A1968();
    swift_beginAccess();
    v20 = v29[10];
    type metadata accessor for RuntimeItemDataSource.Section(0, v20, v29[11], v29[12]);

    v23 = sub_1BA4A6BC8();

    if (v22 >= v23)
    {
      (*(v21 + 8))(v19, v15);
    }

    else
    {
      v29 = v15;
      v24 = sub_1BA4A1958();
      sub_1BA4A1968();
      swift_beginAccess();

      sub_1BA4A6C08();

      v25 = sub_1BA4A6BC8();

      if (v24 < v25)
      {
        sub_1BA4A1968();
        sub_1BA4A1958();
        swift_beginAccess();

        sub_1BA4A6C08();

        v26 = v30;
        sub_1BA4A6C08();

        (*(v21 + 8))(v19, v29);
        return (*(*(v20 - 8) + 56))(v26, 0, 1, v20);
      }

      (*(v21 + 8))(v19, v29);
    }
  }

  return (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
}

uint64_t sub_1BA07C23C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = sub_1BA4A7AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  sub_1BA07BDBC(a2, (&v16 - v11));
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v7;
    *(a3 + 32) = *(v6 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v13 + 32))(boxed_opaque_existential_1, v12, v7);
  }

  return result;
}

uint64_t sub_1BA07C3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v92 = sub_1BA4A7AA8();
  v7 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v8);
  v97 = v80 - v9;
  v99 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v85 = v80 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v80 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v80[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v104 = v80 - v25;
  v90 = a2;
  v27 = v26;
  sub_1BA4A45D8();
  v28 = *(v5 + 88);
  v98 = v2;
  v29 = *(v5 + 96);
  v101 = v28;
  v93 = v29;
  v30 = type metadata accessor for RuntimeItemDataSource.Section(0, v6, v28, v29);
  result = sub_1BA4A6BC8();
  if (result)
  {
    v32 = 0;
    v83 = 0;
    v81 = a1 + 32;
    v33 = (v99 + 16);
    v96 = (v99 + 32);
    v95 = (v99 + 48);
    v94 = (v99 + 8);
    v91 = (v7 + 8);
    v88 = xmmword_1BA4B5480;
    v80[2] = a1;
    v89 = v27;
    v80[1] = v30;
    while (1)
    {
      v34 = sub_1BA4A6BA8();
      result = sub_1BA4A6B48();
      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v32, 1))
      {
        break;
      }

      v82 = v32 + 1;
      v35 = (v81 + 24 * v32);
      v36 = v35[1];
      v37 = v35[2];
      v38 = *v35;
      sub_1B9F25350();
      v87 = v39;
      v40 = swift_allocObject();
      *(v40 + 16) = v88;
      *(v40 + 32) = v38;
      *(v40 + 40) = v36;
      sub_1B9F12538();
      v42 = v41;

      sub_1BA4A44C8();

      v103 = v80;
      v110[0] = v37;
      MEMORY[0x1EEE9AC00](v43, v44);
      v45 = v101;
      v80[-4] = v6;
      v80[-3] = v45;
      v80[-2] = v93;
      v46 = sub_1BA4A6BF8();

      WitnessTable = swift_getWitnessTable();
      v48 = v46;
      v49 = v89;
      v50 = v83;
      sub_1B9F12F50(sub_1BA07D458, &v80[-6], v48, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v51);
      v83 = v50;

      v110[0] = 0;
      v110[1] = 0;
      v86 = v42;
      sub_1BA4A4448();

      if (sub_1BA4A6BC8())
      {
        v52 = 0;
        v100 = v37;
        while (1)
        {
          v54 = sub_1BA4A6BA8();
          sub_1BA4A6B48();
          if (v54)
          {
            v55 = *(v99 + 16);
            v56 = v6;
            v55(v104, (v37 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v52), v6);
          }

          else
          {
            result = sub_1BA4A7E18();
            if (v80[0] != 8)
            {
              goto LABEL_35;
            }

            v110[0] = result;
            v55 = *v33;
            v56 = v6;
            (*v33)(v104, v110, v6);
            swift_unknownObjectRelease();
          }

          if (__OFADD__(v52, 1))
          {
            __break(1u);
LABEL_33:
            result = sub_1BA4A7E18();
            __break(1u);
            goto LABEL_34;
          }

          v102 = v55;
          v103 = (v52 + 1);
          v57 = v33;
          v58 = v19;
          v59 = *v96;
          (*v96)(v49, v104, v56);
          sub_1BA4A2D58();
          v60 = v97;
          sub_1BA07BDBC(v61, v97);
          v62 = v60;

          if ((*v95)(v60, 1, v56) == 1)
          {
            break;
          }

          v19 = v58;
          v59(v58, v62, v56);
          v6 = v56;
          if (sub_1BA4A6728())
          {
            v63 = *v94;
            (*v94)(v58, v56);
            v63(v49, v56);
            v33 = v57;
            goto LABEL_9;
          }

          v64 = v56;
          v33 = v57;
          v65 = v102;
          v102(v85, v49, v64);
          sub_1B9FCD918();
          v66 = swift_dynamicCast();
          v37 = v100;
          if (v66)
          {
            sub_1B9F25598(&v107, v110);
            v65(v84, v19, v6);
            v67 = swift_dynamicCast();
            v53 = v103;
            if (v67)
            {
              sub_1B9F25598(v105, &v107);
              __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
              v102 = sub_1BA4A2E58();
              v69 = v68;
              __swift_project_boxed_opaque_existential_1(v110, v111);
              if (v102 == sub_1BA4A2E58() && v69 == v70)
              {

                v49 = v89;
                goto LABEL_26;
              }

              v74 = sub_1BA4A8338();

              v49 = v89;
              if (v74)
              {
LABEL_26:
                v75 = swift_allocObject();
                *(v75 + 16) = v88;
                __swift_project_boxed_opaque_existential_1(v110, v111);
                *(v75 + 32) = sub_1BA4A2D58();
                *(v75 + 40) = v76;
                sub_1BA4A4558();
              }

              else
              {
                v77 = swift_allocObject();
                *(v77 + 16) = v88;
                __swift_project_boxed_opaque_existential_1(v110, v111);
                *(v77 + 32) = sub_1BA4A2D58();
                *(v77 + 40) = v78;
                sub_1BA4A4498();
              }

              v79 = *v94;
              (*v94)(v19, v6);
              v79(v49, v6);
              __swift_destroy_boxed_opaque_existential_1(&v107);
              __swift_destroy_boxed_opaque_existential_1(v110);
              goto LABEL_10;
            }

            v106 = 0;
            memset(v105, 0, sizeof(v105));
            sub_1BA07D49C(v105, &qword_1EDC6E1A0, sub_1B9FCD918);
            __swift_destroy_boxed_opaque_existential_1(v110);
          }

          else
          {
            v109 = 0;
            v107 = 0u;
            v108 = 0u;
            sub_1BA07D49C(&v107, &qword_1EDC6E1A0, sub_1B9FCD918);
            v53 = v103;
          }

          v71 = swift_allocObject();
          *(v71 + 16) = v88;
          v49 = v89;
          *(v71 + 32) = sub_1BA4A2D58();
          *(v71 + 40) = v72;
          sub_1BA4A4558();

          v73 = *v94;
          (*v94)(v19, v6);
          v73(v49, v6);
LABEL_10:
          ++v52;
          if (v53 == sub_1BA4A6BC8())
          {
            goto LABEL_3;
          }
        }

        (*v94)(v49, v56);
        (*v91)(v60, v92);
        v19 = v58;
        v33 = v57;
        v6 = v56;
LABEL_9:
        v37 = v100;
        v53 = v103;
        goto LABEL_10;
      }

LABEL_3:

      result = sub_1BA4A6BC8();
      v32 = v82;
      if (v82 == result)
      {
        return result;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t RuntimeItemDataSource.deinit()
{

  v1 = qword_1EBC09498;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RuntimeItemDataSource.__deallocating_deinit()
{
  RuntimeItemDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA07CFDC()
{
  v1 = qword_1EBC094A0;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1BA07D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F15B38();
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v4[2] = v11;
  sub_1BA4A45D8();
  v4[3] = a1;
  v4[4] = a2;
  *(v4 + qword_1EBC094A0) = a3;

  sub_1BA07BC04(v12);
  return v4;
}

void sub_1BA07D134(uint64_t a1)
{
  sub_1B9F12538();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BA07D394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA07D3D0(uint64_t a1, int a2)
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

uint64_t sub_1BA07D418(uint64_t result, int a2, int a3)
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

uint64_t sub_1BA07D458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A2D58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BA07D49C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA07D4F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA07D4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA07D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v17 == a2)
  {

    goto LABEL_13;
  }

  v48 = v8;
  v19 = sub_1BA4A8338();

  if (v19)
  {
LABEL_13:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    v27 = sub_1BA4A1318();
    v29 = v28;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v30 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v27, v29, 0, 0, 0, 0, v16, 0, 0);
    v32 = v31;
    a3[3] = v30;
    result = sub_1B9F2A984(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
    a3[4] = result;
    *a3 = v32;
    return result;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v20 == a2)
  {

    v23 = v9;
  }

  else
  {
    v22 = sub_1BA4A8338();

    v23 = v9;
    if ((v22 & 1) == 0)
    {
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      return EmptyHeaderItem.init()();
    }
  }

  v33 = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  v35 = sub_1BA4A1318();
  v37 = v36;

  v49[0] = sub_1BA07DCCC();
  v49[1] = v38;
  MEMORY[0x1BFAF1350](23306, 0xE200000000000000);
  MEMORY[0x1BFAF1350](v35, v37);

  MEMORY[0x1BFAF1350](10333, 0xE200000000000000);
  v39 = sub_1BA4A6888();
  MEMORY[0x1BFAF1350](v39);

  MEMORY[0x1BFAF1350](41, 0xE100000000000000);
  v40 = v49[0];
  v41 = v49[1];
  v42 = swift_allocObject();
  *(v42 + 16) = v7;
  a3[3] = &type metadata for TextViewItem;
  a3[4] = sub_1BA0712A8();
  v43 = swift_allocObject();
  *a3 = v43;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  *(v43 + 56) = 0;
  *(v43 + 64) = 0;
  *(v43 + 48) = -1;
  *(v43 + 72) = -1;
  *(v43 + 80) = v40;
  *(v43 + 88) = v41;
  *(v43 + 112) = 0;
  *(v43 + 120) = 0;
  *(v43 + 128) = 0;
  *(v43 + 96) = sub_1BA07E1B4;
  *(v43 + 104) = v42;
  strcpy(v49, "TextViewItem_");
  HIWORD(v49[1]) = -4864;

  sub_1BA4A1788();
  sub_1B9F2A984(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v44 = v48;
  v45 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v45);

  (*(v23 + 8))(v12, v44);

  v46 = v49[1];
  *(v43 + 16) = v49[0];
  *(v43 + 24) = v46;
  return result;
}

void sub_1BA07DAA8(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "%{public}s: presenting privacy splash", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v15)
  {
    [v15 setPresentingViewController_];
  }

  [v15 present];
}

uint64_t sub_1BA07DCCC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_healthStore) profileIdentifier];
  [v1 type];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BA4A1318();

  return v4;
}

uint64_t sub_1BA07DE28()
{
}

uint64_t sub_1BA07DE78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA07DF50()
{
  sub_1BA07DE78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDataSource(uint64_t a1)
{
  result = qword_1EBBEAF40;
  if (!qword_1EBBEAF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA07E074(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  __swift_project_value_buffer(v4, qword_1EDC6CBB8);
  ListLayoutConfiguration.withFooter.getter(v6);
  v8 = ListLayoutConfiguration.layout(for:)(v7);
  sub_1BA047354(v6);
  return v8;
}

double sub_1BA07E164()
{
  sub_1B9FF5688();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  return result;
}

uint64_t sub_1BA07E1D8(void *a1)
{
  v2 = v1;
  v43 = sub_1BA4A1798();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem) = 0;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_healthStore) = a1;
  v10 = a1;
  v11 = [v10 profileIdentifier];
  v12 = [v11 type];

  if (v12 == 4)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = type metadata accessor for AppSourcesDataSourceItem();
    swift_allocObject();
    v15 = sub_1BA19F130(v10);
    *(v2 + v9) = v15;

    v13 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1BA27EFB4((v16 > 1), v17 + 1, 1, v13);
    }

    v45 = v14;
    v46 = sub_1B9F2A984(&qword_1EDC66638, type metadata accessor for AppSourcesDataSourceItem, &protocol conformance descriptor for AppSourcesDataSourceItem);
    *&v44 = v15;
    v13[2] = v17 + 1;
    sub_1B9F25598(&v44, &v13[5 * v17 + 4]);
  }

  v18 = [v10 profileIdentifier];
  v19 = [v18 type];

  if (v19 == 1)
  {
    v20 = type metadata accessor for ResearchStudySourcesDataSourceItem();
    swift_allocObject();
    v21 = sub_1BA395684(v10);
    *(v2 + v8) = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1BA27EFB4(0, v13[2] + 1, 1, v13);
    }

    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1BA27EFB4((v22 > 1), v23 + 1, 1, v13);
    }

    v45 = v20;
    v46 = sub_1B9F2A984(&qword_1EDC61AC0, type metadata accessor for ResearchStudySourcesDataSourceItem, &protocol conformance descriptor for ResearchStudySourcesDataSourceItem);
    *&v44 = v21;
    v13[2] = v23 + 1;
    sub_1B9F25598(&v44, &v13[5 * v23 + 4]);
  }

  v24 = [v10 profileIdentifier];
  v25 = [v24 type];

  if (v25 != 4)
  {
    v26 = type metadata accessor for DeviceSourcesDataSourceItem();
    swift_allocObject();
    v27 = sub_1BA31A394(v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1BA27EFB4(0, v13[2] + 1, 1, v13);
    }

    v29 = v13[2];
    v28 = v13[3];
    if (v29 >= v28 >> 1)
    {
      v13 = sub_1BA27EFB4((v28 > 1), v29 + 1, 1, v13);
    }

    v45 = v26;
    v46 = sub_1B9F2A984(&qword_1EBBEAF50, type metadata accessor for DeviceSourcesDataSourceItem, &protocol conformance descriptor for DeviceSourcesDataSourceItem);
    *&v44 = v27;
    v13[2] = v29 + 1;
    sub_1B9F25598(&v44, &v13[5 * v29 + 4]);
  }

  v30 = sub_1B9FE4F98(v13);

  sub_1BA4A1788();
  v31 = sub_1BA4A1748();
  v33 = v32;
  v34 = *(v4 + 8);
  v35 = v43;
  v34(v7, v43);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v37 = Array<A>.identifierToIndexDict()(v36);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v30;
  *(inited + 56) = v37;
  *(inited + 64) = v31;
  *(inited + 72) = v33;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(&v44, "MutableArray<");
  HIWORD(v44) = -4864;
  sub_1BA4A1788();
  v39 = sub_1BA4A1748();
  v41 = v40;
  v34(v7, v35);
  MEMORY[0x1BFAF1350](v39, v41);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v44, *(&v44 + 1));
}

uint64_t EmergencyAccessUserStatus.onboardingStatus.getter()
{
  sub_1BA07E7A0(0);
  sub_1BA4A2DA8();
  return v1;
}

void sub_1BA07E7A0(uint64_t a1)
{
  if (!qword_1EDC6E1B8)
  {
    type metadata accessor for HKEmergencyOnboardingStatus(255);
    sub_1BA07F1E0(&qword_1EDC6B518, type metadata accessor for HKEmergencyOnboardingStatus, &unk_1BA4B44D4);
    v1 = sub_1BA4A2DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E1B8);
    }
  }
}

uint64_t (*EmergencyAccessUserStatus.onboardingStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1BA07E7A0(0);
  *(v3 + 32) = sub_1BA4A2D98();
  return sub_1BA07E90C;
}

void sub_1BA07E90C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t type metadata accessor for EmergencyAccessUserStatus(uint64_t a1)
{
  result = qword_1EDC6C640;
  if (!qword_1EDC6C640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for HKEmergencyOnboardingStatus(0);
  sub_1BA07F1E0(&qword_1EDC6B518, type metadata accessor for HKEmergencyOnboardingStatus, &unk_1BA4B44D4);
  sub_1BA4A2DC8();
  result = type metadata accessor for EmergencyAccessUserStatus(0);
  *(a4 + *(result + 20)) = a3;
  return result;
}

unint64_t sub_1BA07EA7C()
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

void sub_1BA07EAB4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4E7020 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4E7040 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1BA07EB98(uint64_t a1)
{
  v2 = sub_1BA07EDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA07EBD4(uint64_t a1)
{
  v2 = sub_1BA07EDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmergencyAccessUserStatus.encode(to:)(void *a1)
{
  sub_1BA07F17C(0, &qword_1EDC5DD80, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA07EDD8();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA07E7A0(0);
  sub_1BA07F1E0(&qword_1EDC6AD38, sub_1BA07E7A0, MEMORY[0x1E69A3318]);
  sub_1BA4A8288();
  if (!v1)
  {
    type metadata accessor for EmergencyAccessUserStatus(0);
    v10[14] = 1;
    sub_1BA4A8258();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA07EDD8()
{
  result = qword_1EDC6C660;
  if (!qword_1EDC6C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C660);
  }

  return result;
}

uint64_t EmergencyAccessUserStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1BA07E7A0(0);
  v25 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA07F17C(0, &qword_1EDC5DEE0, MEMORY[0x1E69E6F48]);
  v26 = v8;
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA07EDD8();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v15;
  v16 = v23;
  v28 = 0;
  sub_1BA07F1E0(&qword_1EDC6AD30, sub_1BA07E7A0, MEMORY[0x1E69A3320]);
  v17 = v25;
  sub_1BA4A81C8();
  v18 = v21;
  (*(v16 + 32))(v21, v7, v17);
  v27 = 1;
  v19 = sub_1BA4A8198();
  (*(v24 + 8))(v11, v26);
  *(v18 + *(v12 + 20)) = v19 & 1;
  sub_1BA020470(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BA0204E8(v18);
}

void sub_1BA07F17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA07EDD8();
    v7 = a3(a1, &type metadata for EmergencyAccessUserStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA07F1E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA07F280(uint64_t a1)
{
  sub_1BA07E7A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BA07F308()
{
  result = qword_1EBBEAF58;
  if (!qword_1EBBEAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAF58);
  }

  return result;
}

unint64_t sub_1BA07F360()
{
  result = qword_1EDC6C650;
  if (!qword_1EDC6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C650);
  }

  return result;
}

unint64_t sub_1BA07F3B8()
{
  result = qword_1EDC6C658;
  if (!qword_1EDC6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C658);
  }

  return result;
}

void HKCodableDateInterval.dateInterval.getter()
{
  v1 = [objc_opt_self() hk:v0 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();
}

id static HKCodableDateInterval.make(from:)()
{
  v0 = sub_1BA4A0F28();
  v1 = [v0 hk_codableDateInterval];

  return v1;
}

id HKCodableQuantity.init(_:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    [a1 _value];
    [v3 setValue_];
    v4 = [a1 _unit];
    v5 = [v4 unitString];

    if (!v5)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v5 = sub_1BA4A6758();
    }

    [v3 setUnitString_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableQuantity.quantity.getter()
{
  result = [v0 unitString];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() unitFromString_];

    [v0 value];
    v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v4];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableMetadataKeyValuePair.init(pair:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v12 = result;

    v13 = v12;
    v14 = sub_1BA4A6758();

    [v13 setKey_];

    if (a3)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        sub_1B9F0ADF8(0, &qword_1EDC5E4A8, 0x1E69A4218);
        v17 = a3;
        v18 = HKCodableQuantity.init(_:)(v16);
        [v13 setQuantityValue_];

LABEL_10:

        return v13;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = a3;
        [v13 setStringValue_];

LABEL_9:
        goto LABEL_10;
      }

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v21 = a3;
        [v13 setNumberIntValue_];
        goto LABEL_9;
      }
    }

    v35 = v7;
    sub_1BA4A3D88();

    v24 = a3;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = v6;
      v28 = v27;
      v29 = swift_slowAlloc();
      v38 = a3;
      v39 = v29;
      *v28 = 136315138;
      v36 = a1;
      v37 = a2;
      sub_1BA081340(0);

      v30 = v24;
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v39);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1B9F07000, v25, v26, "Unexpected metadata value type %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v35 + 8))(v10, v34);
    }

    else
    {

      (*(v35 + 8))(v10, v6);
    }

    return v13;
  }

  __break(1u);
  return result;
}

id HKCodableMetadataKeyValuePair.keyValue.getter()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 hasQuantityValue])
  {
    if ([v1 hasStringValue])
    {
      v13 = [v1 stringValue];
      if (v13)
      {
        v14 = v13;
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      }

      sub_1BA4A6758();
    }

    else if ([v1 hasNumberIntValue])
    {
      v15 = [v1 numberIntValue];
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    }

    else
    {
      sub_1BA4A3D88();
      v16 = v1;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v33 = v18;
        v20 = v19;
        v32 = swift_slowAlloc();
        v34 = v32;
        *v20 = 136315138;
        v21 = v16;
        v22 = [v21 description];
        v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v25 = v24;

        v26 = sub_1B9F0B82C(v23, v25, &v34);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_1B9F07000, v17, v33, "Unexpected metadata value type %s", v20, 0xCu);
        v27 = v32;
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1BFAF43A0](v27, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
    }

    goto LABEL_14;
  }

  result = [v1 quantityValue];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  result = [result unitString];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [objc_opt_self() unitFromString_];

  [v9 value];
  [objc_opt_self() quantityWithUnit:v11 doubleValue:v12];

LABEL_14:
  v28 = [v1 key];
  if (!v28)
  {
    return 0;
  }

  v29 = v28;
  v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v30;
}

id HKCodableNotificationDataSourceQueryData.init(codableSamples:sampleType:version:)(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA0813C0(a1, a2, a3);

  return v4;
}

id (*sub_1BA07FE30(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1BA07FE84;
}

id (*sub_1BA07FE9C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1BA07FEF0;
}

id (*sub_1BA07FF04(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1BA07FF58;
}

id (*sub_1BA07FF70(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1BA07FFC4;
}

id HKCodableNotificationSample.init(sample:sampleType:version:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA081600(a1, a2, a3);

  return v5;
}

id HKCodableNotificationSample.init(sample:sampleType:startDate:endDate:version:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA081A50(a1, a2, a3, a4, a5);

  return v7;
}

id (*sub_1BA080058(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1BA081E80;
}

id (*sub_1BA0800AC(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1BA081E84;
}

id (*sub_1BA080100(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1BA081E88;
}

id (*sub_1BA080154(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1BA081E8C;
}

id sub_1BA0801AC(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    [v5 setDayIndex_];
    [v5 setDuration_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableDayIndexRange.dayIndexRange.getter()
{
  if (![v0 hasDayIndex] || !objc_msgSend(v0, sel_hasDuration))
  {
    return 0;
  }

  v1 = [v0 dayIndex];
  [v0 duration];
  return v1;
}

uint64_t HKCodableChartFeedItemData.trendsArray.getter()
{
  v1 = [v0 trends];
  if (v1)
  {
    v2 = v1;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0, 0x1E69A4310);
    sub_1BA4A6AF8();
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BA080340(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 trends];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0, 0x1E69A4310);
    sub_1BA4A6AF8();
  }

  *a2 = MEMORY[0x1E69E7CC0];
}

void sub_1BA0803D4(unint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_1B9FE5B88(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v4 = sub_1BA4A6AE8();

  v5 = [v3 initWithArray_];

  [v2 setTrends_];
}

void HKCodableChartFeedItemData.trendsArray.setter(unint64_t a1)
{
  sub_1B9FE5B88(a1);

  v2 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  v3 = sub_1BA4A6AE8();

  v4 = [v2 initWithArray_];

  [v1 setTrends_];
}

void (*HKCodableChartFeedItemData.trendsArray.modify(void *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 trends];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0, 0x1E69A4310);
    sub_1BA4A6AF8();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  return sub_1BA0805EC;
}

void sub_1BA0805EC(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1B9FE5B88(v4);

    v5 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v6 = sub_1BA4A6AE8();

    v9 = [v5 initWithArray_];

    [v2 setTrends_];
  }

  else
  {
    sub_1B9FE5B88(v3);

    v7 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v8 = sub_1BA4A6AE8();

    v9 = [v7 initWithArray_];

    [v2 setTrends_];
  }
}

id HKCodableChartFeedItemData.chartTrendModel.getter()
{
  v1 = [v0 trends];
  if (v1)
  {
    v2 = v1;
    sub_1B9F0ADF8(0, &unk_1EDC6B4F0, 0x1E69A4310);
    sub_1BA4A6AF8();
  }

  v3 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v15 = v7;
      sub_1BA080998(&v15, &v14);

      if (v14)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v6 = v16;
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (v6 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_23;
    }

LABEL_25:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_23:
  v10 = objc_allocWithZone(MEMORY[0x1E69A4140]);
  sub_1B9F0ADF8(0, &qword_1EDC5E288, 0x1E69A4138);
  v11 = sub_1BA4A6AE8();

  v12 = [v10 initWithTimeScopeTrends:v11 selectTrendInitially:1];

  return v12;
}

void sub_1BA080998(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BA4A0FA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - v11;
  v13 = *a1;
  v14 = HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter();
  if ((v15 & 1) != 0 || (v54 = v14, ![v13 hasBaselineDateInterval]) || !objc_msgSend(v13, sel_hasBaselineQuantity))
  {
    v16 = 0;
    goto LABEL_13;
  }

  v16 = [v13 baselineDateInterval];
  if (!v16)
  {
LABEL_13:
    *a2 = v16;
    return;
  }

  v17 = [v13 baselineQuantity];
  if (!v17)
  {

    v16 = 0;
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v13 hasChangeDateInterval];
  v52 = v18;
  v53 = v16;
  if ((v19 & 1) == 0)
  {
    v51 = 0;
    goto LABEL_18;
  }

  if (![v13 hasChangeQuantity] || (v20 = objc_msgSend(v13, sel_changeDateInterval)) == 0)
  {
LABEL_17:
    v51 = 0;
    goto LABEL_18;
  }

  v49 = v20;
  v50 = [v13 changeQuantity];
  if (!v50)
  {

    goto LABEL_17;
  }

  v21 = [objc_opt_self() hk:v49 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();

  v22 = [v50 unitString];
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v22;
  v24 = [objc_opt_self() unitFromString_];

  [v50 value];
  v48 = [objc_opt_self() quantityWithUnit:v24 doubleValue:v25];

  v26 = objc_allocWithZone(MEMORY[0x1E69A4148]);
  v27 = sub_1BA4A0F28();
  v28 = v26;
  v29 = v48;
  v51 = [v28 initWithTrendDateInterval:v27 trendAverage:v48];

  (*(v5 + 8))(v12, v4);
  v18 = v52;
  v16 = v53;
LABEL_18:
  v30 = [objc_opt_self() hk:v16 dateIntervalWithCodableDateInterval:0 sourceTimeZone:?];
  sub_1BA4A0F48();

  v31 = [v18 unitString];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() unitFromString_];

    [v18 value];
    v35 = [objc_opt_self() quantityWithUnit:v33 doubleValue:v34];

    v36 = objc_allocWithZone(MEMORY[0x1E69A4148]);
    v37 = sub_1BA4A0F28();
    v38 = [v36 initWithTrendDateInterval:v37 trendAverage:v35];

    (*(v5 + 8))(v8, v4);
    v56[4] = v51;
    v56[5] = v38;
    v55 = MEMORY[0x1E69E7CC0];
    v39 = v51;
    v40 = v38;
    for (i = 0; i != 2; ++i)
    {
      v42 = v56[i + 4];
      if (v42)
      {
        v43 = v42;
        MEMORY[0x1BFAF1510]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
      }
    }

    sub_1B9F6A804(0, &qword_1EDC5E358, &unk_1EDC5E360, 0x1E69A4148);
    swift_arrayDestroy();
    v44 = [v13 chartString];
    if (v44)
    {
      v45 = v44;
      v46 = objc_allocWithZone(MEMORY[0x1E69A4138]);
      sub_1B9F0ADF8(0, &unk_1EDC5E360, 0x1E69A4148);
      v47 = sub_1BA4A6AE8();

      v16 = [v46 initForTimeScope:v54 trendSpans:v47 localizableTrendDescription:v45];

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 hasCoveredTimeScopeRawValue])
  {
    if (([v0 coveredTimeScopeRawValue] & 0x8000000000000000) == 0)
    {
      return [v0 coveredTimeScopeRawValue];
    }
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v8 = v0;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315394;
      v13 = sub_1BA4A85D8();
      v15 = sub_1B9F0B82C(v13, v14, &v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v19 = [v8 coveredTimeScopeRawValue];
      v16 = sub_1BA4A82D8();
      v18 = sub_1B9F0B82C(v16, v17, &v20);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1B9F07000, v9, v10, "%s View model has time scope that can't be decoded: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }

  return 0;
}

id HKCodableSummaryTrendChartViewModel.coveredTimeScope.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = -1;
  }

  return [v2 setCoveredTimeScopeRawValue_];
}

id (*HKCodableSummaryTrendChartViewModel.coveredTimeScope.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter();
  *(a1 + 8) = v3 & 1;
  return sub_1BA08124C;
}

id sub_1BA08124C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = -1;
  }

  else
  {
    v1 = *a1;
  }

  return [*(a1 + 16) setCoveredTimeScopeRawValue_];
}

id HKCodableIntentValueResponse.init(identifier:value:chart:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = sub_1BA4A6758();

    [v7 setIdentifier_];

    [v7 setValue_];
    [v7 setChart_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA081340(uint64_t a1)
{
  if (!qword_1EBBEAF60)
  {
    sub_1B9F6A804(255, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAF60);
    }
  }
}

id sub_1BA0813C0(unint64_t a1, void *a2, uint64_t a3)
{
  sub_1BA081E08(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v12 = result;
    sub_1B9FE5B74(a1);
    v13 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v14 = sub_1BA4A6AE8();

    v15 = [v13 initWithArray_];

    [v12 setSamples_];
    if (a1 >> 62)
    {
      v16 = sub_1BA4A7CC8();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v12 setCount_];
    [v12 setDataType_];
    v17 = sub_1BA4A2338();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v10, a3, v17);
    (*(v18 + 56))(v10, 0, 1, v17);
    SharableModelVersionCoding.modelVersion.setter(v10, v3, &protocol witness table for HKCodableNotificationDataSourceQueryData);

    (*(v18 + 8))(a3, v17);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA081600(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v36 = a2;
  v38 = sub_1BA4A1798();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA081E08(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A1728();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v4;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v20 = result;
    v21 = [a1 startDate];
    sub_1BA4A16F8();

    v22 = sub_1BA4A16B8();
    v23 = *(v15 + 8);
    v23(v18, v14);
    v24 = MEMORY[0x1BFAF3470](v22);

    [v20 setStartDate_];
    v25 = [a1 endDate];
    sub_1BA4A16F8();

    v26 = sub_1BA4A16B8();
    v23(v18, v14);
    v27 = MEMORY[0x1BFAF3470](v26);

    [v20 setEndDate_];
    [v20 setDataType_];

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v30 = a1;
      [v20 setCategoryValue_];
    }

    v31 = sub_1BA4A2338();
    v32 = *(v31 - 8);
    v33 = v39;
    (*(v32 + 16))(v13, v39, v31);
    (*(v32 + 56))(v13, 0, 1, v31);
    SharableModelVersionCoding.modelVersion.setter(v13, v37, &protocol witness table for HKCodableNotificationSample);
    v34 = [a1 UUID];
    sub_1BA4A1778();

    sub_1BA4A1748();
    (*(v6 + 8))(v9, v38);
    v35 = sub_1BA4A6758();

    [v20 setSampleUUID_];

    (*(v32 + 8))(v33, v31);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA081A50(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a5;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA081E08(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v36 = v11;
    v21 = result;
    v38 = a3;
    v22 = sub_1BA4A16B8();
    v23 = MEMORY[0x1BFAF3470]();

    [v21 setStartDate_];
    v37 = a4;
    v24 = sub_1BA4A16B8();
    v25 = MEMORY[0x1BFAF3470]();

    [v21 setEndDate_];
    [v21 setDataType_];

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = a1;
      [v21 setCategoryValue_];
    }

    v29 = sub_1BA4A2338();
    v30 = *(v29 - 8);
    v31 = v39;
    (*(v30 + 16))(v19, v39, v29);
    (*(v30 + 56))(v19, 0, 1, v29);
    SharableModelVersionCoding.modelVersion.setter(v19, v6, &protocol witness table for HKCodableNotificationSample);
    v32 = [a1 UUID];
    sub_1BA4A1778();

    sub_1BA4A1748();
    (*(v12 + 8))(v15, v36);
    v33 = sub_1BA4A6758();

    [v21 setSampleUUID_];

    (*(v30 + 8))(v31, v29);
    v34 = sub_1BA4A1728();
    v35 = *(*(v34 - 8) + 8);
    v35(v37, v34);
    v35(v38, v34);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA081E08(uint64_t a1)
{
  if (!qword_1EDC6ADC8)
  {
    sub_1BA4A2338();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6ADC8);
    }
  }
}

void sub_1BA081EB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_1BA081F0C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_1BA081F50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

double sub_1BA081F98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;

  return result;
}

uint64_t sub_1BA081FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

double sub_1BA082044(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

double sub_1BA0820E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;

  return result;
}

uint64_t sub_1BA082148()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double sub_1BA082194(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void *SidebarDataSourceItem.__allocating_init(uniqueIdentifier:detailViewController:text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[4] = 0;
  type metadata accessor for SidebarListCell();
  sub_1BA0823A4();
  v12[6] = sub_1BA4A6808();
  v12[7] = v13;
  v12[5] = a3;
  v12[2] = a4;
  v12[3] = a5;
  swift_beginAccess();
  v12[4] = a6;
  v12[8] = a1;
  v12[9] = a2;
  return v12;
}

void *SidebarDataSourceItem.init(uniqueIdentifier:detailViewController:text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  type metadata accessor for SidebarListCell();
  sub_1BA0823A4();
  v6[6] = sub_1BA4A6808();
  v6[7] = v13;
  v6[5] = a3;
  v6[2] = a4;
  v6[3] = a5;
  swift_beginAccess();
  v14 = v6[4];
  v6[4] = a6;

  v6[8] = a1;
  v6[9] = a2;
  return v6;
}

unint64_t sub_1BA0823A4()
{
  result = qword_1EBBEAF68;
  if (!qword_1EBBEAF68)
  {
    type metadata accessor for SidebarListCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEAF68);
  }

  return result;
}

uint64_t SidebarDataSourceItem.deinit()
{

  return v0;
}

uint64_t SidebarDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1BA0824D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return result;
}

void *sub_1BA082584()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = v2;
  return v2;
}

void sub_1BA0825CC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = a1;
}

id sub_1BA08266C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

void sub_1BA0826BC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

id sub_1BA08275C(uint64_t a1, void *a2)
{
  v4 = *v2;
  swift_beginAccess();
  return [a2 showDetailViewController:*(v4 + 40) sender:a2];
}

uint64_t sub_1BA0827B4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_1BA082804()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);

  return v2;
}

uint64_t sub_1BA082854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA0828B8(uint64_t a1)
{
  result = sub_1BA082930(&qword_1EBBEAF70, &protocol conformance descriptor for SidebarDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA082930(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SidebarDataSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA082C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v86 = a2;
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v100 = *(v3 - 8);
  v99 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v97 = MEMORY[0x1E69E8050];
  v98 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D488(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v96 = &v70 - v8;
  sub_1BA090A08(0);
  v72 = v9;
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA090DCC(0);
  v71 = v13;
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091540(0, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
  v77 = v17;
  v78 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v70 - v19;
  sub_1BA090EBC(0);
  v80 = v21;
  v81 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091020(0);
  v83 = v24;
  v87 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v75 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091330(0, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
  v89 = v27;
  v91 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v79 = &v70 - v29;
  sub_1BA09140C(0);
  v88 = v30;
  v90 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v84 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091540(0, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
  v34 = *(v33 - 8);
  v92 = v33;
  v93 = v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v82 = &v70 - v36;
  sub_1BA0915E4(0);
  v38 = *(v37 - 8);
  v94 = v37;
  v95 = v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  v85 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C48();
  v41 = sub_1BA4A3C38();
  *&v102 = sub_1BA4A7698();
  sub_1BA4A4D08();
  sub_1BA090C94(0);
  sub_1BA090B9C(0);
  sub_1BA091AF8(&qword_1EBBEB0D0, sub_1BA090C94, MEMORY[0x1E695C038]);
  sub_1BA090C60();
  sub_1BA4A5078();

  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = v41;
  *(v42 + 24) = v43;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1BA091AF8(&qword_1EBBEB0E0, sub_1BA090A08, MEMORY[0x1E695BE40]);

  v44 = v43;
  v45 = v72;
  sub_1BA4A4FD8();

  (*(v74 + 8))(v12, v45);
  sub_1BA090E88();
  v46 = v71;
  sub_1BA4A5068();
  (*(v73 + 8))(v16, v46);
  sub_1B9F0A534(v86, &v102);
  v47 = swift_allocObject();
  sub_1B9F25598(&v102, v47 + 16);
  sub_1B9F3D488(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
  sub_1BA090F98();
  v48 = v70;
  v49 = v77;
  sub_1BA4A5058();

  (*(v78 + 8))(v20, v49);
  sub_1BA4A4D08();
  sub_1BA09110C(0);
  sub_1BA091AF8(&qword_1EBBEB130, sub_1BA090EBC, MEMORY[0x1E695BE28]);
  sub_1BA091274();
  v50 = v75;
  v51 = v80;
  sub_1BA4A5078();
  (*(v81 + 8))(v48, v51);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v52 = sub_1BA4A7308();
  *&v102 = v52;
  v53 = sub_1BA4A72A8();
  v54 = v96;
  (*(*(v53 - 8) + 56))(v96, 1, 1, v53);
  sub_1BA0913D8();
  sub_1B9F3DC80();
  v55 = v79;
  v56 = v83;
  sub_1BA4A50A8();
  sub_1BA091A88(v54, &qword_1EDC6B5B8, v97);
  (*(v87 + 8))(v50, v56);

  v57 = v98;
  sub_1BA091B40(v101, v98, type metadata accessor for SummarySharingSelectionFlow);
  v58 = (*(v100 + 80) + 24) & ~*(v100 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v44;
  sub_1BA0918B0(v57, v59 + v58, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA0914B8();
  v60 = v44;
  v61 = v84;
  v62 = v89;
  sub_1BA4A4FA8();

  (*(v91 + 8))(v55, v62);
  sub_1BA0915B0();
  v63 = v82;
  v64 = v88;
  sub_1BA4A5068();
  (*(v90 + 8))(v61, v64);
  sub_1BA09091C(0);
  sub_1BA0916D0();
  sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C, MEMORY[0x1E695BED8]);
  v65 = v85;
  v66 = v92;
  sub_1BA4A5018();
  (*(v93 + 8))(v63, v66);
  sub_1BA091AF8(&qword_1EBBEB178, sub_1BA0915E4, MEMORY[0x1E695BDA0]);
  v67 = v94;
  v68 = sub_1BA4A4F98();

  (*(v95 + 8))(v65, v67);
  return v68;
}

uint64_t sub_1BA08397C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F3D488(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v51 - v9;
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v6);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  if (FeedItem.pluginInfo.getter())
  {
    v57 = v23;
    v58 = v19;
    v24 = sub_1BA4A3AD8();

    if (sub_1BA1B05F0(v24))
    {
      v26 = v25;
      v56 = v24;
      v27 = a1;
      v28 = v15;
      ObjectType = swift_getObjectType();
      sub_1BA091B40(a2, v10, type metadata accessor for SummarySharingSelectionFlow);
      v30 = type metadata accessor for SummarySharingSelectionFlow(0);
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      v31 = *(v26 + 40);
      v55 = v27;
      v31(v27, v10, ObjectType, v26);
      sub_1BA091A88(v10, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
      if ((*(v16 + 48))(v14, 1, v28) != 1)
      {
        v54 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
        v34 = v57;
        sub_1BA0918B0(v14, v57, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA091B40(v34, v58, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v59 = type metadata accessor for SummarySharingSelectableDataTypeCell();
        sub_1BA091918();
        v35 = sub_1BA4A6808();
        v53 = v28;
        v37 = v36;
        *(a3 + 40) = 0;
        swift_unknownObjectWeakInit();
        v38 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v39 = *(v38 + 40);
        v40 = *(v16 + 56);
        v51 = v16 + 56;
        v52 = v40;
        v40(a3 + v39, 1, 1, v28);
        *a3 = v35;
        *(a3 + 8) = v37;
        v59 = 0xD000000000000025;
        v60 = 0x80000001BA4E3640;
        v41 = v55;
        v42 = [v55 uniqueIdentifier];
        v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v45 = v44;

        MEMORY[0x1BFAF1350](v43, v45);

        v46 = v60;
        *(a3 + 16) = v59;
        *(a3 + 24) = v46;
        v47 = [v41 uniqueIdentifier];
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = v49;
        swift_unknownObjectRelease();

        sub_1BA091D8C(v34, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        *(a3 + 56) = v48;
        *(a3 + 64) = v50;
        sub_1BA091A88(a3 + v39, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA0918B0(v58, a3 + v39, v54);
        v52(a3 + v39, 0, 1, v53);
        *(a3 + 49) = 1;
        *(a3 + 40) = 0;
        swift_unknownObjectWeakAssign();
        *(a3 + 48) = 1;
        return (*(*(v38 - 8) + 56))(a3, 0, 1, v38);
      }

      swift_unknownObjectRelease();

      sub_1BA091A88(v14, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    }

    else
    {
    }
  }

  v32 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
}

uint64_t sub_1BA083F00(void *a1)
{
  sub_1B9F3D488(0, &qword_1EBBEB180, sub_1BA090984, MEMORY[0x1E695C000]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v27 - v6;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v8;
    v19 = v18;
    v30 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v30);
    *(v17 + 12) = 2080;
    v29 = a1;
    v20 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v30);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Encountered an error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    v24 = v17;
    v3 = v28;
    MEMORY[0x1BFAF43A0](v24, -1, -1);

    (*(v9 + 8))(v12, v27);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1BA090984(0);
  sub_1BA4A4E78();
  sub_1BA091828();
  v25 = sub_1BA4A4F98();
  (*(v4 + 8))(v7, v3);
  return v25;
}

uint64_t sub_1BA084234()
{
  sub_1BA090588(0);
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0906F8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedProfileHeaderDataSource(0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore + 24));
  v15 = sub_1BA4A1B68();
  sub_1BA4A3358();
  v29 = *(sub_1BA0CDA8C(v15, v14) + qword_1EDC6A560);
  v16 = MEMORY[0x1E69A3430];
  v17 = MEMORY[0x1E695BF98];
  sub_1BA090874(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
  sub_1BA090810(&qword_1EBBEB080, &qword_1EBBEE020, v17, MEMORY[0x1E695BFB0]);
  v29 = sub_1BA4A4F98();
  v18 = MEMORY[0x1E695BED0];
  sub_1BA090874(0, &unk_1EBBEE000, &qword_1EBBEA318, v16, MEMORY[0x1E695BED0]);
  v19 = MEMORY[0x1E69A3340];
  sub_1B9F3D488(0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E69E6720]);
  sub_1BA090810(&qword_1EBBEE010, &unk_1EBBEE000, v18, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();

  v20 = MEMORY[0x1E695BD60];
  sub_1BA091AF8(&unk_1EBBEE030, sub_1BA0906F8, MEMORY[0x1E695BD60]);
  v21 = sub_1BA4A4F98();

  (*(v7 + 8))(v10, v6);
  v29 = v21;
  sub_1BA090874(0, &unk_1EBBEDFE0, &qword_1EBBEB070, v19, v18);
  sub_1BA08FA0C(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  sub_1BA090668();
  v22 = v26;
  sub_1BA4A4FE8();
  sub_1BA091AF8(&qword_1EBBEB088, sub_1BA090588, v20);
  v23 = v27;
  v24 = sub_1BA4A4F98();

  (*(v28 + 8))(v22, v23);
  return v24;
}

id sub_1BA0846F4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA08477C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGrayColor];
    [v6 setTintColor_];

    [v6 startAnimating];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1BA084884()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v52 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations;
  v10 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v57 = v0;
  v12 = *(v0 + v11);
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = v13[2];
  v55 = v10;
  if (v14)
  {
    v53 = v5;
    v15 = sub_1BA0219CC(v14, 0);
    v54 = v6;
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v58 = v15;
    sub_1BA023688(&v59, v15 + v16, v14, v13);
    v18 = v17;
    v19 = v59;

    sub_1B9F52E48(v19);
    if (v18 != v14)
    {
      goto LABEL_46;
    }

    v20 = v58;
    v5 = v53;
    v6 = v54;
    v21 = v58[2];
    if (v21)
    {
LABEL_4:
      v22 = *(v5 + 40);
      v23 = *(v6 + 80);
      v58 = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v25 = *(v6 + 72);
      v26 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v24, v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v9[v22], v4);
        v27 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v27 - 8) + 48))(v4, 1, v27) == 1)
        {
          sub_1BA091A88(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v28 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v28 = *&v4[*(v27 + 44)];

          sub_1BA091D8C(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BA27FC80(0, v26[2] + 1, 1, v26);
        }

        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          v26 = sub_1BA27FC80((v29 > 1), v30 + 1, 1, v26);
        }

        v26[2] = v30 + 1;
        v26[v30 + 4] = v28;
        v24 += v25;
        --v21;
      }

      while (v21);

      v31 = v26[2];
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_33:
      v33 = MEMORY[0x1E69E7CC0];
LABEL_34:

      v44 = sub_1BA090428(v33, v55);

      if (*(*(v57 + v56) + 16) <= *(v44 + 16) >> 3)
      {
        goto LABEL_38;
      }

      v46 = sub_1BA08BF54(v45, v44);

      v47 = *(v46 + 16);
      if (v47)
      {
        while (1)
        {
          v48 = sub_1BA021C24(v47, 0);
          v49 = *(sub_1BA4A3A28() - 8);
          sub_1BA023BA4(&v59, &v48[(*(v49 + 80) + 32) & ~*(v49 + 80)], v47, v46);
          v44 = v50;
          sub_1B9F52E48(v59);
          if (v44 == v47)
          {
            break;
          }

          __break(1u);
LABEL_38:
          v59 = v44;

          sub_1BA08BD28(v51, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69A3910], sub_1BA021FB8);

          v46 = v59;
          v47 = *(v59 + 16);
          if (!v47)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
      }

      return;
    }
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v21)
    {
      goto LABEL_4;
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
  v31 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_14:
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v32 < v26[2])
  {
    v34 = v26[v32 + 4];
    v35 = *(v34 + 16);
    v36 = v33[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v37 <= v33[3] >> 1)
    {
      if (*(v34 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      v33 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v39, 1, v33);
      if (*(v34 + 16))
      {
LABEL_27:
        v40 = (v33[3] >> 1) - v33[2];
        sub_1BA4A3A28();
        if (v40 < v35)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v35)
        {
          v41 = v33[2];
          v42 = __OFADD__(v41, v35);
          v43 = v41 + v35;
          if (v42)
          {
            goto LABEL_45;
          }

          v33[2] = v43;
        }

        goto LABEL_16;
      }
    }

    if (v35)
    {
      goto LABEL_43;
    }

LABEL_16:
    if (v31 == ++v32)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_1BA084EF0()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v52 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v55 = v0;
  v11 = *(v0 + v10);
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = v12[2];
  if (v13)
  {
    v53 = v5;
    v14 = sub_1BA0219CC(v13, 0);
    v54 = v6;
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v56 = v14;
    sub_1BA023688(&v57, v14 + v15, v13, v12);
    v17 = v16;
    v18 = v57;

    sub_1B9F52E48(v18);
    if (v17 != v13)
    {
      goto LABEL_44;
    }

    v19 = v56;
    v5 = v53;
    v6 = v54;
    v20 = v56[2];
    if (v20)
    {
LABEL_4:
      v21 = *(v5 + 40);
      v22 = *(v6 + 80);
      v56 = v19;
      v23 = v19 + ((v22 + 32) & ~v22);
      v24 = *(v6 + 72);
      v25 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v23, v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v9[v21], v4);
        v26 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v26 - 8) + 48))(v4, 1, v26) == 1)
        {
          sub_1BA091A88(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v27 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v27 = *&v4[*(v26 + 44)];

          sub_1BA091D8C(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1BA27FC80(0, v25[2] + 1, 1, v25);
        }

        v29 = v25[2];
        v28 = v25[3];
        if (v29 >= v28 >> 1)
        {
          v25 = sub_1BA27FC80((v28 > 1), v29 + 1, 1, v25);
        }

        v25[2] = v29 + 1;
        v25[v29 + 4] = v27;
        v23 += v24;
        --v20;
      }

      while (v20);

      v30 = v25[2];
      if (v30)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v20)
    {
      goto LABEL_4;
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  v30 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v30)
  {
LABEL_14:
    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v31 >= v25[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v33 = v25[v31 + 4];
      v34 = *(v33 + 16);
      v35 = v32[2];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v36 <= v32[3] >> 1)
      {
        if (*(v33 + 16))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        v32 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v38, 1, v32);
        if (*(v33 + 16))
        {
LABEL_27:
          v39 = (v32[3] >> 1) - v32[2];
          sub_1BA4A3A28();
          if (v39 < v34)
          {
            goto LABEL_42;
          }

          swift_arrayInitWithCopy();

          if (v34)
          {
            v40 = v32[2];
            v41 = __OFADD__(v40, v34);
            v42 = v40 + v34;
            if (v41)
            {
              goto LABEL_43;
            }

            v32[2] = v42;
          }

          goto LABEL_16;
        }
      }

      if (v34)
      {
        goto LABEL_41;
      }

LABEL_16:
      if (v30 == ++v31)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v32 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v43 = *(v55 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);

  v45 = sub_1BA090428(v44, v43);

  v46 = sub_1BA08C9A4(v32, v45);

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = sub_1BA021C24(*(v46 + 16), 0);
    v49 = *(sub_1BA4A3A28() - 8);
    sub_1BA023BA4(&v57, &v48[(*(v49 + 80) + 32) & ~*(v49 + 80)], v47, v46);
    v51 = v50;
    sub_1B9F52E48(v57);
    if (v51 == v47)
    {
      return;
    }

    __break(1u);
  }
}

char *sub_1BA0854CC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v56 = a2;
  v8 = sub_1BA4A33C8();
  v54 = *(v8 - 8);
  v9 = v54;
  MEMORY[0x1EEE9AC00](v8, v10);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D488(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for SummarySharingRelationshipManagementContext(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthStore) = a3;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore);
  v24 = *(v9 + 16);
  v25 = a1;
  v55 = v8;
  v24(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingProfileInformation, a1, v8);
  v26 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v49 = a3;
  v27 = [v26 initWithHealthStore_];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore) = v27;
  v28 = v25;
  v52 = v25;
  v24(v23, v25, v8);
  *&v23[*(v17 + 28)] = v27;
  v29 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow;
  v53 = v23;
  sub_1BA091B40(v23, v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow, type metadata accessor for SummarySharingRelationshipManagementContext);
  v30 = type metadata accessor for SummarySharingSelectionFlow(0);
  swift_storeEnumTagMultiPayload();
  sub_1BA091B40(v4 + v29, v15, type metadata accessor for SummarySharingSelectionFlow);
  (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
  type metadata accessor for SummarySharingSelectedDataTypesContext(0);
  swift_allocObject();
  v31 = v27;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext) = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(MEMORY[0x1E69E7CC0], v15);
  v32 = v51;
  v24(v51, v28, v55);
  v33 = v50;
  sub_1BA091B40(v23, v50, type metadata accessor for SummarySharingRelationshipManagementContext);
  sub_1B9F0A534(v56, v58);
  type metadata accessor for SummarySharingRelationshipDetailsDataSource(0);
  swift_allocObject();
  v34 = v49;
  v35 = sub_1BA416814(v32, v33, v58, v34);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource) = v35;

  v37 = CompoundDataSourceCollectionViewController.init(dataSource:)(v36);
  v38 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v57 = *(*&v37[v38] + 48);
  v39 = MEMORY[0x1E69E7CA8];
  sub_1BA091C38(0, &qword_1EBBEB1A0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1BA091BA8();
  v40 = v37;
  v57 = sub_1BA4A4F98();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1BA091C28;
  *(v42 + 24) = v41;
  sub_1BA091C38(0, &qword_1EBBEB1B0, v39 + 8, MEMORY[0x1E695BED0]);
  sub_1BA091CA0(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v39 + 8);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1B9F3D488(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v43 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource;
  *(*(*(*&v40[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_alertsDataSource) + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 24) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v45 = v40;

  sub_1BA29AAC4(v44);
  sub_1BA16CA30();

  *(*(*(*&v40[v43] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_topicsDataSource) + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 24) = &off_1F3803B10;
  swift_unknownObjectWeakAssign();
  v47 = v45;

  sub_1BA29AAC4(v46);
  sub_1BA2FE7FC();

  __swift_destroy_boxed_opaque_existential_1(v56);
  (*(v54 + 8))(v52, v55);
  sub_1BA091D8C(v53, type metadata accessor for SummarySharingRelationshipManagementContext);

  *(*(*(*&v40[v43] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 152) = &off_1F3803AE0;
  swift_unknownObjectWeakAssign();

  return v47;
}

void sub_1BA085CC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_1BA2FE7FC();

    sub_1BA16CA30();

    v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
    swift_beginAccess();
    if (*&v2[v3])
    {

      sub_1BA10BB30(1);
    }

    v4 = sub_1BA0846F4();
    sub_1BA0869E0();
    [v4 setEnabled_];
  }
}

void sub_1BA085E0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummarySharingRelationshipDetailsViewController(0);
  v25.receiver = v0;
  v25.super_class = v8;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v9 = sub_1BA0846F4();
  [v9 setEnabled_];

  v10 = [v1 navigationItem];
  [v10 setRightBarButtonItem_];

  v11 = [v1 navigationItem];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v11 setLeftBarButtonItem_];

  sub_1BA17B13C();
  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() systemBackgroundColor];
    [v14 setBackgroundColor_];

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setPreservesSuperviewLayoutMargins_];

      sub_1BA4A3358();
      v18 = objc_allocWithZone(MEMORY[0x1E696C438]);
      v19 = sub_1BA4A1758();
      v20 = [v18 initForInvitationUUID_];

      (*(v4 + 8))(v7, v3);
      v21 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthStore] recipientIdentifier:v20];
      v24[1] = sub_1BA082C90(v21, &v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore], &v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow]);
      *(swift_allocObject() + 16) = ObjectType;
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = ObjectType;
      sub_1BA09091C(0);
      sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C, MEMORY[0x1E695BED8]);
      sub_1BA4A4F88();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA086250(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController(0);
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F780(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17BF70();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_90;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA0864F4(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController(0);
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F780(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17BF70();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA090900;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_83;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BA0867A8()
{
  v1 = v0;
  v2 = sub_1BA4A3778();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BA4A37B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BA4A3358();
  sub_1BA4A37A8();
  (*(v10 + 16))(v13, v17, v9);
  sub_1BA4A3758();
  v18 = sub_1BA4A3728();
  [v1 setUserActivity_];

  (*(v3 + 8))(v6, v2);
  return (*(v10 + 8))(v17, v9);
}

void sub_1BA0869E0()
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v47 = v0;
  v12 = *(v0 + v11);
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = v13[2];
  v48 = v10;
  if (v14)
  {
    v45 = v5;
    v15 = sub_1BA0219CC(v14, 0);
    v46 = v6;
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v49 = v15;
    sub_1BA023688(&v50, v15 + v16, v14, v13);
    v18 = v17;
    v19 = v50;

    sub_1B9F52E48(v19);
    if (v18 != v14)
    {
      goto LABEL_40;
    }

    v20 = v49;
    v5 = v45;
    v6 = v46;
    v21 = v49[2];
    if (v21)
    {
LABEL_4:
      v22 = *(v5 + 40);
      v23 = *(v6 + 80);
      v49 = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v25 = *(v6 + 72);
      v26 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BA091B40(v24, v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA08FD94(&v9[v22], v4);
        v27 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        if ((*(*(v27 - 8) + 48))(v4, 1, v27) == 1)
        {
          sub_1BA091A88(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          v28 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v28 = *&v4[*(v27 + 44)];

          sub_1BA091D8C(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        }

        sub_1BA091D8C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BA27FC80(0, v26[2] + 1, 1, v26);
        }

        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          v26 = sub_1BA27FC80((v29 > 1), v30 + 1, 1, v26);
        }

        v26[2] = v30 + 1;
        v26[v30 + 4] = v28;
        v24 += v25;
        --v21;
      }

      while (v21);

      v31 = v26[2];
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_33:
      v33 = MEMORY[0x1E69E7CC0];
LABEL_34:

      v44 = sub_1BA024460(v33);

      sub_1BA08B990(v48, v44);

      return;
    }
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v21)
    {
      goto LABEL_4;
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
  v31 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_14:
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v32 < v26[2])
  {
    v34 = v26[v32 + 4];
    v35 = *(v34 + 16);
    v36 = v33[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v37 <= v33[3] >> 1)
    {
      if (*(v34 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      v33 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v39, 1, v33);
      if (*(v34 + 16))
      {
LABEL_27:
        v40 = (v33[3] >> 1) - v33[2];
        sub_1BA4A3A28();
        if (v40 < v35)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v35)
        {
          v41 = v33[2];
          v42 = __OFADD__(v41, v35);
          v43 = v41 + v35;
          if (v42)
          {
            goto LABEL_39;
          }

          v33[2] = v43;
        }

        goto LABEL_16;
      }
    }

    if (v35)
    {
      goto LABEL_37;
    }

LABEL_16:
    if (v31 == ++v32)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

double sub_1BA086FAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_healthExperienceStore));

  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA091D8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_flow, type metadata accessor for SummarySharingSelectionFlow);

  return result;
}

id sub_1BA0870E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingRelationshipDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingRelationshipDetailsViewController(uint64_t a1)
{
  result = qword_1EBBEAFF0;
  if (!qword_1EBBEAFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0872B4(uint64_t a1)
{
  result = sub_1BA4A33C8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA0873D0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA08741C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA0874D8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 1;
  v2 = sub_1BA0846F4();
  sub_1BA0869E0();
  [v2 setEnabled_];
}

double sub_1BA087538()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1BA087580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA087638(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Fetch identifiers stream completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1BA0877E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v74 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v74 - v15;
  v17 = sub_1BA4A3EA8();
  v84 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  v83 = v8;
  sub_1BA4A3DD8();

  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FC8();

  v81 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v82 = v23;
  if (v26)
  {
    v80 = v9;
    v77 = v24;
    v78 = v20;
    v27 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v87[0] = v75;
    *v27 = 136315394;
    v28 = sub_1BA4A85D8();
    v30 = sub_1B9F0B82C(v28, v29, v87);

    *(v27 + 4) = v30;
    v76 = v27;
    *(v27 + 12) = 2080;
    v31 = v21;
    v32 = *(v21 + 16);
    v33 = MEMORY[0x1E69E7CC0];
    v79 = v31;
    if (v32)
    {
      v74 = v17;
      v86 = MEMORY[0x1E69E7CC0];
      sub_1BA066F70(0, v32, 0);
      v33 = v86;
      v34 = v31 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v85 = *(v80 + 72);
      do
      {
        sub_1BA091B40(v34, v16, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v36 = *(v16 + 7);
        v35 = *(v16 + 8);

        sub_1BA091D8C(v16, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v86 = v33;
        v38 = *(v33 + 16);
        v37 = *(v33 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1BA066F70((v37 > 1), v38 + 1, 1);
          v33 = v86;
        }

        *(v33 + 16) = v38 + 1;
        v39 = v33 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        v34 += v85;
        --v32;
      }

      while (v32);
      v23 = v82;
      v40 = v83;
      v9 = v80;
      v17 = v74;
    }

    else
    {
      v9 = v80;
      v40 = v83;
    }

    sub_1BA0909B8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v42 = MEMORY[0x1BFAF1560](v33, v41);
    v44 = v43;

    v45 = sub_1B9F0B82C(v42, v44, v87);

    v46 = v76;
    *(v76 + 14) = v45;
    v47 = v77;
    _os_log_impl(&dword_1B9F07000, v77, v81, "[%s] Fetched selectedTopics with identifiers: %s", v46, 0x16u);
    v48 = v75;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v48, -1, -1);
    MEMORY[0x1BFAF43A0](v46, -1, -1);

    (*(v84 + 8))(v78, v17);
    v21 = v79;
  }

  else
  {

    (*(v84 + 8))(v20, v17);
    v40 = v83;
  }

  swift_beginAccess();

  sub_1BA0DF96C(v21);

  v49 = *(v21 + 16);
  if (v49)
  {
    v50 = *(v40 + 40);
    v51 = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v52 = *(v9 + 72);
    v53 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BA091B40(v51, v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA08FD94(&v12[v50], v7);
      v54 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v54 - 8) + 48))(v7, 1, v54) == 1)
      {
        sub_1BA091A88(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v55 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v55 = *&v7[*(v54 + 44)];

        sub_1BA091D8C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      sub_1BA091D8C(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1BA27FC80(0, v53[2] + 1, 1, v53);
      }

      v57 = v53[2];
      v56 = v53[3];
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v53 = sub_1BA27FC80((v56 > 1), v57 + 1, 1, v53);
      }

      v53[2] = v58;
      v53[v57 + 4] = v55;
      v51 += v52;
      --v49;
    }

    while (v49);
    v23 = v82;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
    v58 = *(MEMORY[0x1E69E7CC0] + 16);
    v59 = MEMORY[0x1E69E7CC0];
    if (!v58)
    {
LABEL_41:

      v71 = sub_1BA024460(v59);

      *&v23[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations] = v71;

      v72 = sub_1BA0846F4();
      sub_1BA0869E0();
      [v72 setEnabled_];

      return;
    }
  }

  v60 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  while (v60 < v53[2])
  {
    v61 = v53[v60 + 4];
    v62 = *(v61 + 16);
    v63 = v59[2];
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v64 <= v59[3] >> 1)
    {
      if (*(v61 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v63 <= v64)
      {
        v66 = v63 + v62;
      }

      else
      {
        v66 = v63;
      }

      v59 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v66, 1, v59);
      if (*(v61 + 16))
      {
LABEL_37:
        v67 = (v59[3] >> 1) - v59[2];
        sub_1BA4A3A28();
        if (v67 < v62)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v62)
        {
          v68 = v59[2];
          v69 = __OFADD__(v68, v62);
          v70 = v68 + v62;
          if (v69)
          {
            goto LABEL_47;
          }

          v59[2] = v70;
        }

        goto LABEL_26;
      }
    }

    if (v62)
    {
      goto LABEL_45;
    }

LABEL_26:
    if (v58 == ++v60)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

id sub_1BA088028()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1B9F3D488(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v110 = &v98 - v4;
  v105 = sub_1BA4A1798();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v5);
  v102 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v103 = &v98 - v9;
  sub_1BA08B238(0);
  v108 = v10;
  v107 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA091330(0, &qword_1EBBEB018, sub_1BA08B238, sub_1BA08B468);
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v109 = &v98 - v15;
  v16 = sub_1BA4A3EA8();
  v117 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v115 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v100 = &v98 - v25;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_selectedDataTypesContext;
  swift_beginAccess();
  v27 = *&v0[v26];
  swift_beginAccess();
  v28 = *(v27 + 24);
  v29 = v28[2];
  if (v29)
  {
    v113 = v19;
    v114 = v16;
    v30 = sub_1BA0219CC(v29, 0);
    v31 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    sub_1BA023688(&v118, v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v29, v28);
    v33 = v32;
    v34 = v118;

    result = sub_1B9F52E48(v34);
    if (v33 != v29)
    {
      __break(1u);
      return result;
    }

    v1 = v0;
    v19 = v113;
    v16 = v114;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v36 = v30[2];

  if (v36)
  {
    v37 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable;
    if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable])
    {
      v38 = v115;
      sub_1BA4A3DD8();
      v39 = sub_1BA4A3E88();
      v40 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v118 = v42;
        *v41 = 136315138;
        v43 = sub_1BA4A85D8();
        v45 = sub_1B9F0B82C(v43, v44, &v118);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1B9F07000, v39, v40, "[%s] updateAuthorizationsCancellable is in progress; not starting a new stream", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        MEMORY[0x1BFAF43A0](v41, -1, -1);
      }

      return (*(v117 + 8))(v38, v16);
    }

    else
    {
      sub_1BA084884();
      v54 = *(v53 + 16);

      if (v54 || (sub_1BA084EF0(), v56 = *(v55 + 16), , v56) || (v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged] & 1) != 0)
      {
        sub_1BA089F74(sub_1BA08477C, 0, 1);
        v57 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore];
        v58 = v103;
        sub_1BA4A3358();
        sub_1BA084884();
        v60 = v59;
        sub_1BA084EF0();
        v62 = v61;
        v63 = v104;
        v64 = v102;
        v65 = v105;
        (*(v104 + 16))(v102, v58, v105);
        v66 = *(v63 + 80);
        v117 = v37;
        v67 = (v66 + 40) & ~v66;
        v68 = swift_allocObject();
        v69 = v1;
        *(v68 + 2) = v60;
        *(v68 + 3) = v62;
        *(v68 + 4) = v57;
        (*(v63 + 32))(&v68[v67], v64, v65);
        v70 = MEMORY[0x1E695C028];
        sub_1BA08F8AC(0, &qword_1EBBEB028, MEMORY[0x1E695C028]);
        swift_allocObject();
        v71 = v57;
        v118 = sub_1BA4A4EA8();
        sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v70, MEMORY[0x1E695C038]);
        v72 = sub_1BA4A4F98();

        (*(v63 + 8))(v58, v65);
        v118 = v72;
        v73 = swift_allocObject();
        v99 = v1;
        v74 = ObjectType;
        *(v73 + 16) = v99;
        *(v73 + 24) = v74;
        v115 = v69;
        sub_1BA4A4D08();
        v75 = MEMORY[0x1E695BED0];
        sub_1BA08F8AC(0, &qword_1EDC5F4B0, MEMORY[0x1E695BED0]);
        v76 = MEMORY[0x1E69E6370];
        sub_1BA091C38(0, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
        sub_1BA08B424(&qword_1EDC5F4B8, &qword_1EDC5F4B0, v75, MEMORY[0x1E695BED8]);
        sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v76);
        v77 = v106;
        sub_1BA4A5078();

        sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
        v78 = sub_1BA4A7308();
        v118 = v78;
        v79 = sub_1BA4A72A8();
        v80 = v110;
        (*(*(v79 - 8) + 56))(v110, 1, 1, v79);
        sub_1BA08B468();
        sub_1B9F3DC80();
        v82 = v108;
        v81 = v109;
        sub_1BA4A50A8();
        sub_1BA091A88(v80, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

        (*(v107 + 8))(v77, v82);
        v83 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v84 = swift_allocObject();
        *(v84 + 16) = v83;
        *(v84 + 24) = v74;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BA08F944();
        v85 = v112;
        v86 = sub_1BA4A5008();

        (*(v111 + 8))(v81, v85);
        *&v99[v117] = v86;
      }

      else
      {
        v87 = v100;
        sub_1BA4A3DD8();
        v88 = sub_1BA4A3E88();
        v89 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = v16;
          v91 = v1;
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v118 = v93;
          *v92 = 136315138;
          v94 = sub_1BA4A85D8();
          v96 = sub_1B9F0B82C(v94, v95, &v118);

          *(v92 + 4) = v96;
          _os_log_impl(&dword_1B9F07000, v88, v89, "[%s] User didn't change topics and didn't update their pause state. This should not have been possible so will just dismiss and not commit any transactions.", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x1BFAF43A0](v93, -1, -1);
          v97 = v92;
          v1 = v91;
          MEMORY[0x1BFAF43A0](v97, -1, -1);

          (*(v117 + 8))(v87, v90);
        }

        else
        {

          (*(v117 + 8))(v87, v16);
        }

        return [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v118 = v49;
      *v48 = 136315138;
      v50 = sub_1BA4A85D8();
      v52 = sub_1B9F0B82C(v50, v51, &v118);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] User selected no topics to share; displaying error message", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    (*(v117 + 8))(v19, v16);
    return sub_1BA088D00();
  }
}

uint64_t sub_1BA088D00()
{
  v1 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA4A32B8();
  if ((v6 & 1) == 0)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    v34 = v7;
    v33 = v1;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = v0;
    v10 = sub_1BA4A6758();

    v39 = sub_1BA08FD50;
    v40 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1BA0B06D4;
    v38 = &block_descriptor_59;
    v11 = _Block_copy(&aBlock);

    v12 = objc_opt_self();
    v32 = [v12 actionWithTitle:v10 style:2 handler:v11];
    _Block_release(v11);

    sub_1BA4A1318();
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v31 = v9;
    v14 = sub_1BA4A6758();

    v39 = sub_1BA08F9CC;
    v40 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1BA0B06D4;
    v38 = &block_descriptor_65;
    v15 = _Block_copy(&aBlock);

    v16 = [v12 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    sub_1BA4A1318();
    sub_1BA08FA0C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B5480;
    v18 = sub_1BA4A33A8();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B9F1BE20();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_1BA4A6768();
    v23 = v22;

    v24 = sub_1BA4A1318();
    v26 = v25;
    *v4 = v34;
    swift_storeEnumTagMultiPayload();
    sub_1BA0909B8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B7510;
    v28 = v32;
    *(inited + 32) = v32;
    *(inited + 40) = v16;
    v29 = v28;
    v30 = v16;
    sub_1BA0C6BA4(v31, v21, v23, v24, v26, inited, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_1BA091D8C(v4, type metadata accessor for SummarySharingOnboardingError);
  }

  return result;
}

uint64_t sub_1BA0892D4@<X0>(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1BA4A3DD8();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Completed authorization update!", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    v19 = v14;
    a3 = v21;
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  result = sub_1BA08949C(v10);
  *a3 = result;
  return result;
}

uint64_t sub_1BA08949C(char a1)
{
  sub_1BA0909B8(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v3 = v2;
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - v5;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA08FA74(0);
  v13 = v12;
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA08FB30(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v20;
    v24 = objc_allocWithZone(sub_1BA4A34F8());
    v35 = sub_1BA4A34E8();
    v36 = sub_1BA4A34D8();
    *(swift_allocObject() + 16) = 1;
    v25 = MEMORY[0x1E695C028];
    sub_1BA08F8AC(0, &qword_1EBBEB028, MEMORY[0x1E695C028]);
    sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v25, MEMORY[0x1E695C038]);
    v26 = MEMORY[0x1E69E6370];
    sub_1BA4A4FE8();

    *(swift_allocObject() + 16) = 1;
    sub_1BA091C38(0, &qword_1EDC5F4A0, v26, MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB050, sub_1BA08FA74, MEMORY[0x1E695BD60]);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v26);
    sub_1BA4A5018();

    (*(v34 + 8))(v16, v13);
    sub_1BA091AF8(&qword_1EBBEB058, sub_1BA08FB30, MEMORY[0x1E695BDA0]);
    v27 = sub_1BA4A4F98();

    (*(v23 + 8))(v22, v18);
  }

  else
  {
    sub_1BA4A3DD8();
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v36);
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%{public}s] Invite failed to send; not creating a commit transaction", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    LOBYTE(v36) = 0;
    sub_1BA4A4E78();
    sub_1BA08FC30();
    v27 = sub_1BA4A4F98();
    (*(v35 + 1))(v6, v3);
  }

  return v27;
}

char *sub_1BA089A6C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if (v9)
    {
      v12 = v9;
      sub_1BA4A3DD8();
      v13 = v9;
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v26[0] = swift_slowAlloc();
        v27 = v26[0];
        *v16 = 136446466;
        v17 = sub_1BA4A85D8();
        v19 = sub_1B9F0B82C(v17, v18, &v27);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v26[1] = v9;
        v20 = v9;
        sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
        v21 = sub_1BA4A6828();
        v23 = sub_1B9F0B82C(v21, v22, &v27);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] Failed to send invite: %s", v16, 0x16u);
        v24 = v26[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v24, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v25 = v9;
      sub_1BA089D08(v9);
    }

    *&v11[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable] = 0;
  }

  return result;
}

uint64_t sub_1BA089D08(void *a1)
{
  v3 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A1318();
  v9 = v8;
  v10 = a1;
  SummarySharingOnboardingError.init(error:)(a1, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = v1;
  sub_1BA0C6BA4(v12, v7, v9, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA08F9CC, v11);

  return sub_1BA091D8C(v6, type metadata accessor for SummarySharingOnboardingError);
}

void sub_1BA089EA8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_1BA089D08(0);
    }
  }
}

double sub_1BA089F74(uint64_t (*a1)(void), char a2, char a3)
{
  v7 = [v3 navigationItem];
  v8 = a1();
  [v7 setRightBarButtonItem_];

  v9 = [v3 navigationItem];
  v10 = [v9 leftBarButtonItem];

  if (v10)
  {
    [v10 setEnabled_];
  }

  v12 = *(*&v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem);
    *(v13 + 96) = a3;
    sub_1BA08FA0C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    *(v14 + 56) = type metadata accessor for EndSharingRelationshipItem();
    *(v14 + 64) = sub_1BA091AF8(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem, &unk_1BA4D4398);
    *(v14 + 32) = v13;

    sub_1BA0EB668(0, v14, 1);
  }

  return result;
}

void sub_1BA08A158()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A1798();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v39 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 navigationItem];
  v13 = sub_1BA08477C();
  [v12 setRightBarButtonItem_];

  v14 = *(*&v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_relationshipDetailsDataSource] + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingRelationshipDetailsDataSource_stopSharingDataSource);
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI32EndSharingRelationshipDataSource_endSharingRelationshipItem);
    *(v15 + 96) = 1;
    sub_1BA08FA0C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5480;
    *(v16 + 56) = type metadata accessor for EndSharingRelationshipItem();
    *(v16 + 64) = sub_1BA091AF8(&qword_1EBBEAD68, type metadata accessor for EndSharingRelationshipItem, &unk_1BA4D4398);
    *(v16 + 32) = v15;

    sub_1BA0EB668(0, v16, 1);
  }

  sub_1BA4A3DD8();
  v17 = v1;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315395;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, aBlock);
    v37 = v7;
    v26 = ObjectType;
    v27 = v25;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2081;
    sub_1BA4A33C8();
    sub_1BA091AF8(&qword_1EBBE9818, MEMORY[0x1E69A3430], MEMORY[0x1E69A3448]);
    v28 = sub_1BA4A82D8();
    v30 = sub_1B9F0B82C(v28, v29, aBlock);

    *(v21 + 14) = v30;
    ObjectType = v26;
    _os_log_impl(&dword_1B9F07000, v18, v19, "%s Attempting to revoke invitation for %{private}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    v31 = v21;
    v3 = v38;
    MEMORY[0x1BFAF43A0](v31, -1, -1);

    (*(v39 + 8))(v11, v37);
  }

  else
  {

    (*(v39 + 8))(v11, v7);
  }

  v32 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_sharingEntryStore];
  sub_1BA4A3358();
  v33 = sub_1BA4A1758();
  (*(v40 + 8))(v6, v3);
  v34 = swift_allocObject();
  *(v34 + 16) = v17;
  *(v34 + 24) = ObjectType;
  aBlock[4] = sub_1BA08FD74;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_71;
  v35 = _Block_copy(aBlock);
  v36 = v17;

  [v32 revokeInvitationWithUUID:v33 completion:v35];
  _Block_release(v35);
}

uint64_t sub_1BA08A688(int a1, void *a2, void *a3, void *a4)
{
  v65 = a4;
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3EA8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60 - v22;
  if (a2)
  {
    v24 = a2;
    sub_1BA4A3DD8();
    v25 = a2;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v63 = v15;
      v29 = v28;
      v30 = swift_slowAlloc();
      v64 = v8;
      v31 = v30;
      aBlock[0] = v30;
      *v29 = 136315395;
      v32 = sub_1BA4A85D8();
      v65 = v7;
      v34 = sub_1B9F0B82C(v32, v33, aBlock);
      v62 = v14;
      v35 = a3;
      v36 = v34;

      *(v29 + 4) = v36;
      *(v29 + 12) = 2081;
      v69 = a2;
      v37 = a2;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v38 = sub_1BA4A6828();
      v40 = sub_1B9F0B82C(v38, v39, aBlock);
      a3 = v35;
      v14 = v62;

      *(v29 + 14) = v40;
      v7 = v65;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s Could not revoke invitation: %{private}s", v29, 0x16u);
      swift_arrayDestroy();
      v41 = v31;
      v8 = v64;
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      (*(v16 + 8))(v23, v63);
    }

    else
    {

      (*(v16 + 8))(v23, v15);
    }
  }

  else
  {
    LODWORD(v62) = a1;
    v64 = v8;
    sub_1BA4A3DD8();
    v42 = a3;
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = v15;
      v46 = v45;
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v46 = 136315651;
      v47 = sub_1BA4A85D8();
      v65 = a3;
      v49 = sub_1B9F0B82C(v47, v48, aBlock);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2081;
      sub_1BA4A33C8();
      sub_1BA091AF8(&qword_1EBBE9818, MEMORY[0x1E69A3430], MEMORY[0x1E69A3448]);
      v50 = sub_1BA4A82D8();
      v52 = sub_1B9F0B82C(v50, v51, aBlock);
      a3 = v65;

      *(v46 + 14) = v52;
      *(v46 + 22) = 1024;
      *(v46 + 24) = v62 & 1;
      _os_log_impl(&dword_1B9F07000, v43, v44, "%s Successfully revoked invitation for %{private}s. Success: %{BOOL}d", v46, 0x1Cu);
      v53 = v61;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v16 + 8))(v19, v63);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v8 = v64;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v54 = sub_1BA4A7308();
  v55 = swift_allocObject();
  *(v55 + 16) = a3;
  aBlock[4] = sub_1BA08FD7C;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_77_0;
  v56 = _Block_copy(aBlock);
  v57 = a3;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA091AF8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3D488(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v58 = v68;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v14, v58, v56);
  _Block_release(v56);

  (*(v8 + 8))(v58, v7);
  return (*(v66 + 8))(v14, v67);
}

void *sub_1BA08ADA4()
{
  swift_beginAccess();
  swift_beginAccess();

  return sub_1BA0DF61C(v0);
}

void sub_1BA08AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v35 = a6;
  v37 = a5;
  v10 = sub_1BA4A3A28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v36 = v15;
  v16 = *(a3 + 16);
  if (v16)
  {
    v33 = a4;
    aBlock[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v34 = v11;
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v38 = v18;
    v19 = a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v38(v14, v19, v10);
      sub_1BA4A3A18();
      (*(v17 - 8))(v14, v10);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v19 += v20;
      --v16;
    }

    while (v16);
    v21 = aBlock[0];
    a4 = v33;
    v11 = v34;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(a4 + 16);
  if (v22)
  {
    v34 = v21;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v24 = *(v11 + 16);
    v23 = v11 + 16;
    v38 = v24;
    v25 = a4 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    do
    {
      v38(v14, v25, v10);
      sub_1BA4A3A18();
      (*(v23 - 8))(v14, v10);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  v27 = sub_1BA4A1758();
  sub_1B9F0ADF8(0, &qword_1EBBEB060, 0x1E696C428);
  v28 = sub_1BA4A6AE8();

  v29 = sub_1BA4A6AE8();

  v30 = swift_allocObject();
  v31 = v36;
  *(v30 + 16) = sub_1BA08FD3C;
  *(v30 + 24) = v31;
  aBlock[4] = sub_1BA08FD48;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_17;
  v32 = _Block_copy(aBlock);

  [v37 updateSharingAuthorizationsForInvitationUUID:v27 sharingAuthorizationsToAdd:v28 sharingAuthorizationsToDelete:v29 completion:v32];
  _Block_release(v32);
}

void sub_1BA08B1BC(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1 & 1);
  }
}

void sub_1BA08B238(uint64_t a1)
{
  if (!qword_1EBBEB000)
  {
    sub_1BA08B344(255);
    v1 = MEMORY[0x1E695BED0];
    sub_1BA08F8AC(255, &qword_1EDC5F4B0, MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB010, sub_1BA08B344, MEMORY[0x1E695BCF8]);
    sub_1BA08B424(&qword_1EDC5F4B8, &qword_1EDC5F4B0, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4C28();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEB000);
    }
  }
}

void sub_1BA08B344(uint64_t a1)
{
  if (!qword_1EBBEB008)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1BA091C38(255, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v1);
    v2 = sub_1BA4A4B38();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEB008);
    }
  }
}

uint64_t sub_1BA08B424(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA08F8AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA08B49C(char a1, char a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] Completed commit transaction operation with status: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}
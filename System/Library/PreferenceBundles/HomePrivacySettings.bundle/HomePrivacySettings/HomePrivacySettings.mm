void sub_1628()
{
  v0 = sub_D4C4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_18B40 = v1;
}

void sub_16C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_170C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo, &unk_E59C);
  sub_D104();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_17DC(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5348(&qword_18768, type metadata accessor for AppInfo, &unk_E59C);
    sub_D0F4();
  }

  return result;
}

void sub_18EC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo, &unk_E59C);
  sub_D104();

  if (*(v1 + 104) != v4)
  {
    v5 = sub_D4C4();
    v6 = sub_D4C4();
    v7 = TCCAccessSetForBundleId();

    if (v7)
    {
      if (*(v2 + 104) == (a1 & 1))
      {
        *(v2 + 104) = v4;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_D0F4();
      }
    }
  }
}

uint64_t sub_1A90()
{
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo, &unk_E59C);
  sub_D104();

  return *(v0 + 104);
}

uint64_t sub_1B30()
{

  sub_5564(v0 + 8);
  v1 = OBJC_IVAR____TtC19HomePrivacySettings7AppInfo___observationRegistrar;
  v2 = sub_D144();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1C30()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  swift_beginAccess();
}

uint64_t sub_1CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1DC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t sub_1E30()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  return *(v0 + 64);
}

uint64_t sub_1ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1FA0(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
    sub_D0F4();
  }

  return result;
}

uint64_t sub_20B0()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  swift_beginAccess();
}

uint64_t sub_2168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_2248(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D0F4();
}

uint64_t sub_2304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
}

uint64_t sub_236C()
{
  v1 = v0;
  sub_4358(v0 + 72, v20);
  result = sub_55B0(v20, v21);
  if (!kTCCServiceWillow)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = kTCCServiceWillow;
  v4 = sub_D4D4();
  v6 = v5;

  type metadata accessor for TCCServiceManager();
  sub_67F4(v4, v6);
  v8 = v7;

  result = sub_5564(v20);
  if (!kTCCServiceWillow)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = kTCCServiceWillow;
  sub_53DC(v8, v9);

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v20[0] = v1;
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D0F4();

  sub_4358(v1 + 72, v20);
  result = sub_55B0(v20, v21);
  if (!kTCCServiceEnergyKitGuidance)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = kTCCServiceEnergyKitGuidance;
  v12 = sub_D4D4();
  v14 = v13;

  sub_67F4(v12, v14);
  v16 = v15;

  result = sub_5564(v20);
  v17 = kTCCServiceEnergyKitGuidance;
  if (kTCCServiceEnergyKitGuidance)
  {

    v18 = v17;
    sub_53DC(v16, v18);

    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v20[0] = v1;
    sub_D0F4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2684(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v65 = a3;
  v55 = sub_D0C4();
  v54 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = kTCCInfoBundle;
  if (!kTCCInfoBundle)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v11 = *a1;
  type metadata accessor for CFString(0);
  v13 = v12;
  *(&v61 + 1) = v12;
  *&v60 = v10;
  v14 = v10;
  if (([v11 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    sub_5564(&v60);
LABEL_12:
    *v65 = 0;
    return;
  }

  sub_55B0(&v60, v13);
  v15 = [v11 __swift_objectForKeyedSubscript:sub_D654()];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_D5E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v64[0] = v57;
  v64[1] = v58;
  sub_5564(&v60);
  sub_55F4(v64, &v57);
  if (!*(&v58 + 1))
  {
    goto LABEL_35;
  }

  sub_5664(&v57, &v60);
  type metadata accessor for CFBundle(0);
  swift_dynamicCast();
  v16 = v63[0];
  v17 = CFBundleCopyBundleURL(v63[0]);
  if (!v17)
  {
    sub_5674(v64, &qword_18778, &qword_E670);

    goto LABEL_12;
  }

  v18 = v17;
  sub_D0B4();

  v19 = v54;
  v20 = v55;
  (*(v54 + 16))(v7, v9, v55);
  v21 = objc_allocWithZone(LSApplicationRecord);
  v22 = sub_4464(v7, 0);
  if (v3)
  {

    (*(v19 + 8))(v9, v20);
    sub_5674(v64, &qword_18778, &qword_E670);

    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v23 bundleIdentifier];
  if (v24)
  {
    v25 = v24;
    v50 = sub_D4D4();
    v52 = v26;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v27 = [v23 localizedName];

  v49 = sub_D4D4();
  v51 = v28;

  if (!kTCCInfoGranted)
  {
    goto LABEL_36;
  }

  v63[3] = v13;
  v63[0] = kTCCInfoGranted;
  v29 = kTCCInfoGranted;
  if (([v11 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    v57 = 0uLL;
    *&v58 = 0;
    *(&v58 + 1) = 1;
    goto LABEL_22;
  }

  sub_55B0(v63, v13);
  v30 = [v11 __swift_objectForKeyedSubscript:sub_D654()];
  swift_unknownObjectRelease();
  if (!v30)
  {
    v57 = 0u;
    v58 = 0u;
    goto LABEL_29;
  }

  sub_D5E4();
  swift_unknownObjectRelease();
  v57 = v60;
  v58 = v61;
  if (*(&v61 + 1) == 1)
  {
LABEL_22:
    sub_5564(v63);
    v31 = &unk_18780;
    v32 = &unk_E678;
    v33 = &v57;
LABEL_23:
    sub_5674(v33, v31, v32);
    goto LABEL_24;
  }

LABEL_29:
  v60 = v57;
  v61 = v58;
  if (!*(&v58 + 1))
  {
    sub_5564(v63);
    v31 = &qword_18778;
    v32 = &qword_E670;
    v33 = &v60;
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    v34 = v56;
    sub_5564(v63);
    goto LABEL_25;
  }

  sub_5564(v63);
LABEL_24:
  v34 = 0;
LABEL_25:
  if (!v52)
  {

    (*(v54 + 8))(v9, v55);
    sub_5674(v64, &qword_18778, &qword_E670);
    goto LABEL_12;
  }

  v53 = sub_D4D4();
  v48 = v35;
  v36 = type metadata accessor for TCCServiceManager();
  v37 = swift_allocObject();
  v47 = v23;
  *(&v61 + 1) = v36;
  v62 = &off_14A88;
  *&v60 = v37;
  type metadata accessor for AppInfo(0);
  v38 = swift_allocObject();
  v39 = sub_4308(&v60, v36);
  __chkstk_darwin(v39);
  v41 = (&v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  *(&v58 + 1) = v36;
  v59 = &off_14A88;
  *&v57 = v43;
  *(v38 + 104) = 0;
  sub_D134();
  v44 = v51;
  *(v38 + 16) = v49;
  *(v38 + 24) = v44;
  v45 = v52;
  *(v38 + 32) = v50;
  *(v38 + 40) = v45;
  v46 = v48;
  *(v38 + 48) = v53;
  *(v38 + 56) = v46;
  sub_4358(&v57, v38 + 64);
  sub_18EC(v34);

  (*(v54 + 8))(v9, v55);
  sub_5674(v64, &qword_18778, &qword_E670);
  sub_5564(&v57);
  sub_5564(&v60);
  *v65 = v38;
}

Swift::Int sub_2DB4(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_5260(v2);
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_45B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2E2C()
{
  v1[10] = v0;
  sub_D584();
  v1[11] = sub_D574();
  v3 = sub_D564();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_2EC4, v3, v2);
}

uint64_t sub_2EC4()
{
  v1 = v0[10];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
  v0[5] = v1;
  v0[14] = v2;
  v0[15] = sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  if (*(v1 + 64))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[10];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[6] = v5;
    sub_D0F4();

    v7 = v5[5];
    v8 = v5[6];
    sub_55B0(v5 + 2, v7);
    v10 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_314C;

    return v10(v7, v8);
  }
}

uint64_t sub_314C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
    v6 = sub_3384;
  }

  else
  {

    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
    v6 = sub_3278;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_3278()
{
  v1 = v0[10];

  if (*(v1 + 64) == 1)
  {
    v2 = v0[10];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[9] = v2;
    sub_D0F4();
  }

  else
  {
    *(v0[10] + 64) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_3384()
{
  v1 = v0[10];

  if (*(v1 + 64) == 1)
  {
    v2 = v0[10];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[8] = v2;
    sub_D0F4();
  }

  else
  {
    *(v0[10] + 64) = 0;
  }

  sub_42C0(&qword_18770, &qword_E668);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E480;
  sub_D5F4(22);
  v8._object = 0x800000000000DCC0;
  v8._countAndFlagsBits = 0xD000000000000014;
  sub_D504(v8);
  swift_getErrorValue();
  sub_D644();
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_D6A4();

  v5 = v0[1];

  return v5();
}

void sub_3550()
{
  v1 = kTCCServiceWillow;
  if (kTCCServiceWillow)
  {
    v2 = v0;
    v70 = kTCCServiceWillow;
    v65 = sub_42C0(&qword_18748, &qword_E5B8);
    v71 = swift_allocObject();
    v64 = xmmword_E490;
    v71[1] = xmmword_E490;
    v66 = v1;
    v69 = sub_D4D4();
    v67 = v3;
    v4 = type metadata accessor for TCCServiceManager();
    v78 = v4;
    v79 = &off_14A88;
    v77[0] = swift_allocObject();
    type metadata accessor for AppInfo(0);
    v5 = swift_allocObject();
    v6 = sub_4308(v77, v4);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v9 = *(v7 + 16);
    v72 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v73 = v9;
    v9(v61 - v72);
    v10 = *(v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v75 = v4;
    v76 = &off_14A88;
    v74[0] = v10;
    *(v5 + 104) = 0;
    v70 = v70;
    sub_D134();
    *(v5 + 16) = 1701670728;
    *(v5 + 24) = 0xE400000000000000;
    strcpy((v5 + 32), "com.apple.Home");
    *(v5 + 47) = -18;
    v11 = v67;
    *(v5 + 48) = v69;
    *(v5 + 56) = v11;
    sub_4358(v74, v5 + 64);
    sub_18EC(1);
    sub_5564(v74);
    sub_5564(v77);
    v12 = v71;
    *(v71 + 4) = v5;
    v69 = sub_D4D4();
    v67 = v13;
    v14 = swift_allocObject();
    v78 = v4;
    v79 = &off_14A88;
    v77[0] = v14;
    v15 = swift_allocObject();
    v16 = sub_4308(v77, v4);
    __chkstk_darwin(v16);
    v17 = (v61 - v72);
    v73(v61 - v72);
    v18 = *v17;
    v75 = v4;
    v76 = &off_14A88;
    v74[0] = v18;
    *(v15 + 104) = 0;
    sub_D134();
    *(v15 + 16) = 0x636973754DLL;
    *(v15 + 24) = 0xE500000000000000;
    *(v15 + 32) = 0x6C7070612E6D6F63;
    *(v15 + 40) = 0xEF636973754D2E65;
    v19 = v67;
    *(v15 + 48) = v69;
    *(v15 + 56) = v19;
    sub_4358(v74, v15 + 64);
    sub_18EC(1);
    sub_5564(v74);
    sub_5564(v77);
    *(v12 + 5) = v15;
    v67 = 0x800000000000DC60;
    v66 = sub_D4D4();
    v21 = v20;

    v22 = swift_allocObject();
    v78 = v4;
    v79 = &off_14A88;
    v77[0] = v22;
    v23 = swift_allocObject();
    v24 = sub_4308(v77, v4);
    v68 = v8;
    __chkstk_darwin(v24);
    v25 = (v61 - v72);
    v69 = v7 + 16;
    v73(v61 - v72);
    v26 = *v25;
    v75 = v4;
    v76 = &off_14A88;
    v74[0] = v26;
    *(v23 + 104) = 0;
    sub_D134();
    *(v23 + 16) = 1818845517;
    *(v23 + 24) = 0xE400000000000000;
    *(v23 + 32) = 0xD000000000000014;
    v27 = v66;
    *(v23 + 40) = v67;
    *(v23 + 48) = v27;
    *(v23 + 56) = v21;
    sub_4358(v74, v23 + 64);
    sub_18EC(1);
    sub_5564(v74);
    sub_5564(v77);
    *(v71 + 6) = v23;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v29 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
    v77[0] = v2;
    v30 = sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
    sub_D0F4();

    swift_getKeyPath();
    v77[0] = v2;
    sub_D104();

    v77[0] = v2;
    swift_getKeyPath();
    sub_D124();

    swift_beginAccess();
    sub_2DB4((v2 + 112));
    v63 = 0;
    swift_endAccess();
    v77[0] = v2;
    swift_getKeyPath();
    v67 = v29;
    v62 = v2;
    v66 = v30;
    sub_D114();

    v31 = kTCCServiceEnergyKitGuidance;
    if (kTCCServiceEnergyKitGuidance)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v64;
      v65 = v32;
      v71 = v31;
      *&v64 = sub_D4D4();
      v61[0] = v33;
      v34 = swift_allocObject();
      v78 = v4;
      v79 = &off_14A88;
      v77[0] = v34;
      v35 = swift_allocObject();
      v36 = sub_4308(v77, v4);
      v61[1] = v31;
      __chkstk_darwin(v36);
      v37 = (v61 - v72);
      v38 = v72;
      v73(v61 - v72);
      v39 = *v37;
      v75 = v4;
      v76 = &off_14A88;
      v74[0] = v39;
      *(v35 + 104) = 0;
      v71 = v71;
      sub_D134();
      *(v35 + 16) = 1936744781;
      *(v35 + 24) = 0xE400000000000000;
      strcpy((v35 + 32), "com.apple.Maps");
      *(v35 + 47) = -18;
      v40 = v61[0];
      *(v35 + 48) = v64;
      *(v35 + 56) = v40;
      sub_4358(v74, v35 + 64);
      sub_18EC(1);
      sub_5564(v74);
      sub_5564(v77);
      *(v32 + 32) = v35;
      *&v64 = 0x800000000000DC80;
      v41 = sub_D4D4();
      v61[0] = v42;
      v43 = swift_allocObject();
      v78 = v4;
      v79 = &off_14A88;
      v77[0] = v43;
      v44 = swift_allocObject();
      v45 = sub_4308(v77, v4);
      __chkstk_darwin(v45);
      v46 = v38;
      v47 = (v61 - v38);
      v48 = v73;
      v73(v47);
      v49 = *v47;
      v75 = v4;
      v76 = &off_14A88;
      v74[0] = v49;
      *(v44 + 104) = 0;
      sub_D134();
      *(v44 + 16) = 0x736567617373654DLL;
      *(v44 + 24) = 0xE800000000000000;
      *(v44 + 32) = 0xD000000000000013;
      *(v44 + 40) = v64;
      *(v44 + 48) = v41;
      *(v44 + 56) = v61[0];
      sub_4358(v74, v44 + 64);
      sub_18EC(1);
      sub_5564(v74);
      sub_5564(v77);
      v50 = v65;
      *(v65 + 40) = v44;
      *&v64 = 0x800000000000DCA0;
      v51 = sub_D4D4();
      v53 = v52;

      v54 = swift_allocObject();
      v78 = v4;
      v79 = &off_14A88;
      v77[0] = v54;
      v55 = swift_allocObject();
      v56 = sub_4308(v77, v4);
      __chkstk_darwin(v56);
      v57 = (v61 - v46);
      v48(v57);
      v58 = *v57;
      v75 = v4;
      v76 = &off_14A88;
      v74[0] = v58;
      *(v55 + 104) = 0;
      sub_D134();
      *(v55 + 16) = 0x64726F7773736150;
      *(v55 + 24) = 0xE900000000000073;
      *(v55 + 32) = 0xD000000000000013;
      *(v55 + 40) = v64;
      *(v55 + 48) = v51;
      *(v55 + 56) = v53;
      sub_4358(v74, v55 + 64);
      sub_18EC(1);
      sub_5564(v74);
      sub_5564(v77);
      *(v50 + 48) = v55;
      v59 = swift_getKeyPath();
      __chkstk_darwin(v59);
      v60 = v62;
      v77[0] = v62;
      sub_D0F4();

      swift_getKeyPath();
      v77[0] = v60;
      sub_D104();

      v77[0] = v60;
      swift_getKeyPath();
      sub_D124();

      swift_beginAccess();
      sub_2DB4((v60 + 56));
      swift_endAccess();
      v77[0] = v60;
      swift_getKeyPath();
      sub_D114();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_40DC()
{
  sub_5564(v0 + 2);

  sub_5564(v0 + 9);

  v1 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
  v2 = sub_D144();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_41C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_D144();
  if (v8 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_42C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4308(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_4358(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_4464(uint64_t a1, char a2)
{
  v3 = v2;
  sub_D0A4(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = sub_D0C4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    sub_D094();

    swift_willThrow();
    v14 = sub_D0C4();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

Swift::Int sub_45B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_D634(v2);
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
        type metadata accessor for AppInfo(0);
        v6 = sub_D544();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_47B4(v8, v9, a1, v4);
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
    return sub_46BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_46BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_52C8();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_D5C4();
      if (result != -1)
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

      v11 = *v10;
      *v10 = v10[1];
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_47B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v87 = v6;
        v82 = v5;
        v10 = 8 * v9;
        v11 = v9;
        v12 = *a3 + 8 * v9 + 16;
        sub_52C8();
        result = sub_D5C4();
        v13 = result;
        v84 = v11;
        v14 = (v11 + 2);
        while (1)
        {
          v7 = v87;
          if (v87 == v14)
          {
            break;
          }

          result = sub_D5C4();
          ++v14;
          v12 += 8;
          if ((v13 == -1) == (result != -1))
          {
            v7 = (v14 - 1);
            break;
          }
        }

        v9 = v84;
        if (v13 == -1)
        {
          if (v7 < v84)
          {
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
            return result;
          }

          if (v84 < v7)
          {
            v15 = 8 * v7 - 8;
            v16 = v7;
            v17 = v84;
            do
            {
              if (v17 != --v16)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v18 = *(v19 + v10);
                *(v19 + v10) = *(v19 + v15);
                *(v19 + v15) = v18;
              }

              ++v17;
              v15 -= 8;
              v10 += 8;
            }

            while (v17 < v16);
          }
        }

        v5 = v82;
      }

      v20 = a3[1];
      if (v7 < v20)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_117;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_118;
          }

          if (v9 + a4 >= v20)
          {
            v21 = a3[1];
          }

          else
          {
            v21 = v9 + a4;
          }

          if (v21 < v9)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v7 != v21)
          {
            v83 = v5;
            v22 = *a3;
            sub_52C8();
            v23 = v22 + 8 * v7 - 8;
            v85 = v9;
            v24 = v9 - v7;
            do
            {
              v88 = v7;
              v25 = v24;
              v26 = v23;
              do
              {
                result = sub_D5C4();
                if (result != -1)
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_122;
                }

                v27 = *v26;
                *v26 = v26[1];
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              v7 = v88 + 1;
              v23 += 8;
              --v24;
            }

            while (v88 + 1 != v21);
            v7 = v21;
            v5 = v83;
            v9 = v85;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_515C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v30 = *(v8 + 2);
      v29 = *(v8 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = sub_515C((v29 > 1), v30 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v31;
      v32 = &v8[16 * v30];
      *(v32 + 4) = v9;
      *(v32 + 5) = v7;
      v33 = *v86;
      if (!*v86)
      {
        goto LABEL_126;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v8 + 4);
            v36 = *(v8 + 5);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_57:
            if (v38)
            {
              goto LABEL_105;
            }

            v51 = &v8[16 * v31];
            v53 = *v51;
            v52 = *(v51 + 1);
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_108;
            }

            v57 = &v8[16 * v34 + 32];
            v59 = *v57;
            v58 = *(v57 + 1);
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_112;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v61 = &v8[16 * v31];
          v63 = *v61;
          v62 = *(v61 + 1);
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_71:
          if (v56)
          {
            goto LABEL_107;
          }

          v64 = &v8[16 * v34];
          v66 = *(v64 + 4);
          v65 = *(v64 + 5);
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_110;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_78:
          v72 = v34 - 1;
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v73 = *&v8[16 * v72 + 32];
          v74 = *&v8[16 * v34 + 40];
          sub_4E0C((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v34 + 32]), (*a3 + 8 * v74), v33);
          if (v5)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_5148(v8);
          }

          if (v72 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v75 = &v8[16 * v72];
          *(v75 + 4) = v73;
          *(v75 + 5) = v74;
          result = sub_50BC(v34);
          v31 = *(v8 + 2);
          if (v31 <= 1)
          {
            goto LABEL_3;
          }
        }

        v39 = &v8[16 * v31 + 32];
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_103;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_104;
        }

        v46 = &v8[16 * v31];
        v48 = *v46;
        v47 = *(v46 + 1);
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_106;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_109;
        }

        if (v50 >= v42)
        {
          v68 = &v8[16 * v34 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_113;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_88:
  v7 = *v86;
  if (!*v86)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_5148(v8);
    v8 = result;
  }

  v76 = v5;
  v77 = *(v8 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v5 = v77 - 1;
      v78 = *&v8[16 * v77];
      v79 = *&v8[16 * v77 + 24];
      sub_4E0C((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v77 + 16]), (*a3 + 8 * v79), v7);
      if (v76)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_5148(v8);
      }

      if (v77 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v80 = &v8[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_50BC(v5);
      v77 = *(v8 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_4E0C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_52C8();
      do
      {
        v21 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v18 -= 8;
          v6 = v17;
          if (sub_D5C4() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v21;
            goto LABEL_39;
          }
        }

        if (v19 != v21)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_52C8();
      while (sub_D5C4() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_50BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5148(v3);
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

char *sub_515C(char *result, int64_t a2, char a3, char *a4)
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
    sub_42C0(&qword_18760, &qword_E610);
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

uint64_t sub_5260(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_D624();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

unint64_t sub_52C8()
{
  result = qword_18758;
  if (!qword_18758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18758);
  }

  return result;
}

uint64_t sub_5348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_53DC(unint64_t a1, uint64_t a2)
{
  v12 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D624())
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_D604();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v11 = v6;
      sub_2684(&v11, a2, &v10);
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_D514();
        if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_D534();
        }

        sub_D554();
        v5 = v12;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_18:
  v12 = v5;
  sub_2DB4(&v12);
  return v12;
}

uint64_t sub_5564(void *a1)
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

void *sub_55B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_55F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18778, &qword_E670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_5664(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5674(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_42C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5738()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B48 = result;
  unk_18B50 = v4;
  return result;
}

uint64_t sub_5878()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B58 = result;
  unk_18B60 = v4;
  return result;
}

uint64_t sub_59C4()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B68 = result;
  unk_18B70 = v4;
  return result;
}

uint64_t sub_5B14()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B78 = result;
  unk_18B80 = v4;
  return result;
}

uint64_t sub_5C60()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B88 = result;
  unk_18B90 = v4;
  return result;
}

uint64_t sub_5DA4()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B98 = result;
  unk_18BA0 = v4;
  return result;
}

uint64_t sub_5EF0()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BA8 = result;
  unk_18BB0 = v4;
  return result;
}

uint64_t sub_603C()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BB8 = result;
  unk_18BC0 = v4;
  return result;
}

uint64_t sub_6188()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BC8 = result;
  unk_18BD0 = v4;
  return result;
}

uint64_t sub_62D4()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BD8 = result;
  unk_18BE0 = v4;
  return result;
}

uint64_t sub_6418()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_D494();
  __chkstk_darwin(v2 - 8);
  sub_D484();
  v6._object = 0x800000000000DD70;
  v6._countAndFlagsBits = 0xD000000000000013;
  sub_D474(v6);
  sub_676C();
  v7._countAndFlagsBits = sub_D5D4();
  sub_D464(v7);

  v8._countAndFlagsBits = 0xD0000000000000DELL;
  v8._object = 0x800000000000DD90;
  sub_D474(v8);
  sub_D4A4();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v3 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BE8 = result;
  unk_18BF0 = v5;
  return result;
}

uint64_t sub_6620()
{
  v0 = sub_D0E4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D4B4();
  __chkstk_darwin(v1 - 8);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v2 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BF8 = result;
  unk_18C00 = v4;
  return result;
}

unint64_t sub_676C()
{
  result = qword_18788;
  if (!qword_18788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18788);
  }

  return result;
}

void sub_67F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_D4C4();
  v3 = TCCAccessCopyInformation();

  if (v3)
  {
    sub_D524();
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_6854()
{
  sub_D6B4();
  sub_D6C4(0);
  return sub_D6D4();
}

Swift::Int sub_68C0(uint64_t a1)
{
  sub_D6B4();
  sub_D6C4(0);
  return sub_D6D4();
}

uint64_t sub_692C()
{
  sub_69B4();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_69B4()
{
  result = qword_18838;
  if (!qword_18838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18838);
  }

  return result;
}

uint64_t sub_6A08()
{
  v3 = (&async function pointer to dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes() + async function pointer to dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes());
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6AAC;

  return v3();
}

uint64_t sub_6AAC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t getEnumTagSinglePayload for HomeEnergyManagingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeEnergyManagingError(_WORD *result, int a2, int a3)
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

unint64_t sub_6CA0()
{
  result = qword_18840;
  if (!qword_18840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18840);
  }

  return result;
}

uint64_t sub_6D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_42C0(&qword_18848, &unk_E7E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_42C0(&qword_18848, &unk_E7E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for MainView(uint64_t a1)
{
  result = qword_188A8;
  if (!qword_188A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6F08(uint64_t a1)
{
  sub_6F8C(319);
  if (v1 <= 0x3F)
  {
    sub_6FE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6F8C(uint64_t a1)
{
  if (!qword_188B8)
  {
    type metadata accessor for HomeSettingsViewModel(255);
    v1 = sub_D424();
    if (!v2)
    {
      atomic_store(v1, &qword_188B8);
    }
  }
}

void sub_6FE4()
{
  if (!qword_188C0)
  {
    v0 = sub_D314();
    if (!v1)
    {
      atomic_store(v0, &qword_188C0);
    }
  }
}

uint64_t sub_7050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = sub_42C0(&qword_18918, &qword_E860);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v143 = &v124 - v3;
  v142 = sub_42C0(&qword_18920, &qword_E868);
  v126 = *(v142 - 8);
  v4 = __chkstk_darwin(v142);
  v141 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v140 = &v124 - v6;
  v7 = sub_42C0(&qword_18928, &qword_E870);
  v8 = __chkstk_darwin(v7 - 8);
  v133 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v124 - v10;
  v11 = sub_42C0(&qword_18930, &qword_E878);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v138 = &v124 - v16;
  __chkstk_darwin(v15);
  v125 = &v124 - v17;
  v18 = sub_42C0(&qword_18938, &qword_E880);
  v19 = __chkstk_darwin(v18 - 8);
  v129 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v124 - v21;
  v127 = sub_42C0(&qword_18940, &qword_E888);
  v23 = *(v127 - 8);
  v24 = __chkstk_darwin(v127);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v135 = &v124 - v28;
  __chkstk_darwin(v27);
  v147 = &v124 - v29;
  sub_D584();
  v128 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v144 = v12;
  v137 = v26;
  v146 = v22;
  if (qword_18430 != -1)
  {
    swift_once();
  }

  v153 = qword_18B58;
  v154 = unk_18B60;
  v30 = sub_52C8();

  v148 = v30;
  v31 = sub_D224();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v153 = v31;
  v154 = v33;
  v155 = v35 & 1;
  v156 = v37;
  sub_D3D4();
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v38 = v153;
  swift_getKeyPath();
  v153 = v38;
  sub_C19C(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  swift_beginAccess();
  v39 = *(v38 + 112);
  if (v39 >> 62)
  {
    v40 = sub_D624();
  }

  else
  {
    v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
  }

  v145 = v23;
  v139 = v11;
  if (v40)
  {
    __chkstk_darwin(v41);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v124 = a1;
    if (qword_18438 != -1)
    {
      swift_once();
    }

    v153 = qword_18B68;
    v154 = unk_18B70;

    v42 = sub_D224();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v153 = v42;
    v154 = v44;
    v155 = v46 & 1;
    v156 = v48;
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18440 != -1)
    {
      swift_once();
    }

    v149 = qword_18B78;
    v150 = unk_18B80;

    v49 = sub_D224();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v149 = v49;
    v150 = v51;
    v151 = v53 & 1;
    v152 = v55;
    sub_42C0(&qword_18948, &qword_E8B8);
    sub_A3B8();
    v56 = v125;
    sub_D3C4();
    v57 = v144;
    v58 = v146;
    v59 = v56;
    v11 = v139;
    (*(v144 + 32))(v146, v59, v139);
    v60 = 0;
    v23 = v145;
  }

  else
  {
    v60 = 1;
    v58 = v146;
    v57 = v144;
  }

  (*(v57 + 56))(v58, v60, 1, v11);
  sub_D3E4();
  v61 = v153;
  swift_getKeyPath();
  v153 = v61;
  sub_D104();

  swift_beginAccess();
  v62 = *(v61 + 56);
  if (v62 >> 62)
  {
    v63 = sub_D624();
  }

  else
  {
    v63 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
  }

  if (v63)
  {
    __chkstk_darwin(v64);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18448 != -1)
    {
      swift_once();
    }

    v153 = qword_18B88;
    v154 = unk_18B90;

    v65 = sub_D224();
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v153 = v65;
    v154 = v67;
    v155 = v69 & 1;
    v156 = v71;
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18450 != -1)
    {
      swift_once();
    }

    v149 = qword_18B98;
    v150 = unk_18BA0;

    v72 = sub_D224();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v149 = v72;
    v150 = v74;
    v151 = v76 & 1;
    v152 = v78;
    sub_42C0(&qword_18948, &qword_E8B8);
    sub_A3B8();
    v79 = sub_D3C4();
    __chkstk_darwin(v79);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18478 != -1)
    {
      swift_once();
    }

    v153 = qword_18BE8;
    v154 = unk_18BF0;

    v80 = sub_D224();
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v153 = v80;
    v154 = v82;
    v155 = v84 & 1;
    v156 = v86;
    sub_42C0(&qword_18960, &qword_E8E8);
    sub_A4E4();
    sub_D3D4();
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v87 = v144;
    v88 = v145;
    if (qword_18480 != -1)
    {
      swift_once();
    }

    v153 = qword_18BF8;
    v154 = unk_18C00;

    v89 = sub_D224();
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v153 = v89;
    v154 = v91;
    v155 = v93 & 1;
    v156 = v95;
    v96 = v135;
    sub_D3D4();
    v125 = *(v87 + 16);
    v97 = v136;
    v98 = v139;
    (v125)(v136, v138, v139);
    v99 = v126;
    v148 = *(v126 + 16);
    v148(v141, v140, v142);
    v100 = *(v88 + 16);
    v101 = v137;
    v102 = v96;
    v103 = v127;
    v100(v137, v102, v127);
    (v125)(v143, v97, v98);
    v104 = sub_42C0(&qword_189A0, &qword_E908);
    v106 = v142;
    v105 = v143;
    v148((v143 + *(v104 + 48)), v141, v142);
    v107 = v105 + *(v104 + 64);
    v148 = v100;
    v100(v107, v101, v103);
    v108 = *(v145 + 8);
    v108(v135, v103);
    v109 = *(v99 + 8);
    v109(v140, v106);
    v110 = *(v144 + 8);
    v111 = v139;
    v110(v138, v139);
    v108(v101, v103);
    v109(v141, v142);
    v112 = v145;
    v110(v136, v111);
    v113 = v130;
    sub_A694(v143, v130);
    (*(v131 + 56))(v113, 0, 1, v132);
    v58 = v146;
  }

  else
  {
    v113 = v130;
    (*(v131 + 56))(v130, 1, 1, v132);
    v148 = *(v23 + 16);
    v103 = v127;
    v112 = v23;
  }

  v114 = v137;
  v115 = v148;
  v148(v137, v147, v103);
  v116 = v129;
  sub_B5F0(v58, v129, &qword_18938, &qword_E880);
  v117 = v133;
  sub_A704(v113, v133);
  v118 = v103;
  v119 = v134;
  v115(v134, v114, v118);
  v120 = v113;
  v121 = sub_42C0(&qword_189A8, &qword_E910);
  sub_B5F0(v116, v119 + *(v121 + 48), &qword_18938, &qword_E880);
  sub_A704(v117, v119 + *(v121 + 64));
  sub_A774(v120);
  sub_5674(v146, &qword_18938, &qword_E880);
  v122 = *(v112 + 8);
  v122(v147, v118);
  sub_A774(v117);
  sub_5674(v116, &qword_18938, &qword_E880);
  v122(v114, v118);
}

uint64_t sub_827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_42C0(&qword_189D8, &qword_E9E0);
  sub_D364();
  if (!(v17 >> 62))
  {

LABEL_3:
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = a4;
    __chkstk_darwin(v12);
    sub_42C0(&qword_189E0, &qword_EA08);
    sub_A43C();
    sub_C228(&qword_189E8, &qword_189E0, &qword_EA08, &protocol conformance descriptor for [A]);
    sub_C228(&qword_189F0, &qword_189E0, &qword_EA08, &protocol conformance descriptor for [A]);
    swift_getKeyPath();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a5;
    v13[6] = a6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_B8E0;
    *(v14 + 24) = v13;

    sub_42C0(&qword_189F8, &qword_EA10);
    sub_B984();
    return sub_D3B4();
  }

  v16 = sub_D624();

  if ((v16 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_8534@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_85E4(a1);
}

uint64_t sub_85E4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for MainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_42C0(&qword_18970, &qword_E8F0);
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  if (qword_18458 != -1)
  {
    swift_once();
  }

  v28 = qword_18BA8;
  v29 = unk_18BB0;
  sub_A7DC(v1, v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_A844(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = sub_52C8();

  v23[2] = v10;
  sub_D344();
  v24 = v7;
  if (qword_18460 != -1)
  {
    swift_once();
  }

  v32 = qword_18BB8;
  v33 = unk_18BC0;
  v11 = v1 + *(v2 + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  v30 = v12;
  v31 = v13;

  sub_42C0(&qword_189B0, &qword_E918);
  v14 = sub_D304();
  v23[1] = v23;
  __chkstk_darwin(v14);
  sub_42C0(&qword_18978, &qword_E8F8);
  sub_C228(&qword_18980, &qword_18970, &qword_E8F0, &protocol conformance descriptor for Button<A>);
  sub_C228(&qword_18988, &qword_18978, &qword_E8F8, &protocol conformance descriptor for TupleView<A>);
  v15 = v26;
  v16 = v27;
  v17 = v24;
  sub_D2A4();

  (*(v25 + 8))(v17, v15);
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v18 = v28;
  swift_getKeyPath();
  v28 = v18;
  sub_C19C(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D104();

  LOBYTE(v15) = *(v18 + 64);

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  result = sub_42C0(&qword_18960, &qword_E8E8);
  v22 = (v16 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_B268;
  v22[2] = v20;
  return result;
}

uint64_t sub_8AE4(uint64_t a1)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  v24 = a5;
  v22 = a4;
  v20 = a2;
  v7 = type metadata accessor for MainView(0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_42C0(&qword_18848, &unk_E7E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D3F4();
  swift_getKeyPath();
  sub_D414();

  (*(v10 + 8))(v12, v9);
  v13 = v25;
  v14 = v26;
  v15 = v27;
  KeyPath = swift_getKeyPath();
  sub_A7DC(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_A844(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_827C(v13, v14, v15, KeyPath, v24, v18);
}

uint64_t sub_8DDC@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t sub_8EDC(uint64_t a1)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MainView(0);
  sub_42C0(&qword_189B0, &qword_E918);
  sub_D2F4();
}

uint64_t sub_8FBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a1;
  v50 = a2;
  v42 = sub_D1D4();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v48 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MainView(0);
  v40 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = v4;
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_42C0(&qword_18970, &qword_E8F0);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v35 - v6;
  v47 = sub_42C0(&qword_189B8, &qword_E978);
  v41 = *(v47 - 8);
  v8 = __chkstk_darwin(v47);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_D194();
  __chkstk_darwin(v12 - 8);
  v13 = sub_42C0(&qword_189C0, &qword_E980);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  sub_D584();
  v39 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D184();
  v37 = v19;
  sub_D334();
  sub_A7DC(v45, v5);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_A844(v5, v21 + v20);
  sub_D324();
  v22 = v48;
  sub_D1C4();
  sub_C228(&qword_18980, &qword_18970, &qword_E8F0, &protocol conformance descriptor for Button<A>);
  v36 = v11;
  v23 = v44;
  sub_D284();
  (*(v49 + 8))(v22, v42);
  (*(v46 + 8))(v7, v23);
  v24 = *(v14 + 16);
  v25 = v17;
  v24(v17, v19, v13);
  v26 = v41;
  v49 = *(v41 + 16);
  v27 = v43;
  v28 = v11;
  v29 = v47;
  (v49)(v43, v28, v47);
  v30 = v50;
  v24(v50, v25, v13);
  v31 = sub_42C0(&qword_189C8, &qword_E988);
  (v49)(&v30[*(v31 + 48)], v27, v29);
  v32 = *(v26 + 8);
  v32(v36, v29);
  v33 = *(v14 + 8);
  v33(v37, v13);
  v32(v27, v29);
  v33(v25, v13);
}

uint64_t sub_95C8()
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_9658(uint64_t a1)
{
  v2 = type metadata accessor for MainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_42C0(&qword_189D0, &qword_E990);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_D5B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_A7DC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_D574();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_A844(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_9B70(0, 0, v7, &unk_E9A0, v11);
}

uint64_t sub_9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_D584();
  v4[4] = sub_D574();
  v6 = sub_D564();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_9918, v6, v5);
}

uint64_t sub_9918()
{
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_99CC;

  return sub_2E2C();
}

uint64_t sub_99CC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_9B10, v3, v2);
}

uint64_t sub_9B10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_42C0(&qword_189D0, &qword_E990);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_B5F0(a3, v25 - v10, &qword_189D0, &qword_E990);
  v12 = sub_D5B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5674(v11, &qword_189D0, &qword_E990);
  }

  else
  {
    sub_D5A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_D564();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_D4F4() + 32;
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

      sub_5674(a3, &qword_189D0, &qword_E990);

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

  sub_5674(a3, &qword_189D0, &qword_E990);
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

uint64_t sub_9E70@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_18470 != -1)
  {
    swift_once();
  }

  sub_52C8();

  v2 = sub_D224();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_9F8C@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_18468 != -1)
  {
    swift_once();
  }

  sub_52C8();

  v2 = sub_D224();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_A0A8@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_D1B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_42C0(&qword_188F0, &qword_E850);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  v12 = v1;
  sub_42C0(&qword_188F8, &qword_E858);
  sub_C228(&qword_18900, &qword_188F8, &qword_E858, &protocol conformance descriptor for TupleView<A>);
  sub_D214();
  sub_D434();
  sub_C228(&qword_18908, &qword_188F0, &qword_E850, &protocol conformance descriptor for Form<A>);
  sub_C19C(&qword_18910, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  sub_D2B4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_A324(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_A3B8()
{
  result = qword_18950;
  if (!qword_18950)
  {
    sub_A324(&qword_18948, &qword_E8B8);
    sub_A43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18950);
  }

  return result;
}

unint64_t sub_A43C()
{
  result = qword_18958;
  if (!qword_18958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18958);
  }

  return result;
}

unint64_t sub_A4E4()
{
  result = qword_18968;
  if (!qword_18968)
  {
    sub_A324(&qword_18960, &qword_E8E8);
    sub_A324(&qword_18970, &qword_E8F0);
    sub_A324(&qword_18978, &qword_E8F8);
    sub_C228(&qword_18980, &qword_18970, &qword_E8F0, &protocol conformance descriptor for Button<A>);
    sub_52C8();
    sub_C228(&qword_18988, &qword_18978, &qword_E8F8, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_C228(&qword_18990, &qword_18998, &qword_E900, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18968);
  }

  return result;
}

uint64_t sub_A694(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18918, &qword_E860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A704(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18928, &qword_E870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A774(uint64_t a1)
{
  v2 = sub_42C0(&qword_18928, &qword_E870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D394();
  swift_getKeyPath();
  sub_D384();

  sub_42C0(&qword_18A28, &qword_EAE0);
  sub_C228(&qword_18A30, &qword_18A28, &qword_EAE0, &protocol conformance descriptor for Label<A, B>);
  return sub_D354();
}

uint64_t sub_AA30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C19C(&qword_18768, type metadata accessor for AppInfo, &unk_E59C);
  sub_D104();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_AAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_D584();
  sub_D574();
  sub_D564();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v5 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v5);
  sub_42C0(&qword_18A38, &qword_EAE8);
  sub_C228(&qword_18A40, &qword_18A38, &qword_EAE8, &protocol conformance descriptor for AsyncIconImage<A>);
  sub_D2C4();
}

uint64_t sub_AC6C@<X0>(uint64_t a4@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D364();

  sub_52C8();
  v5 = sub_D224();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_AD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D364();

  v3 = objc_allocWithZone(ISIcon);
  v4 = sub_D4C4();

  [v3 initWithBundleIdentifier:v4];

  v5 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_D174();
}

void *sub_AF3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_42C0(&qword_189D8, &qword_E9E0);
  result = sub_D364();
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_D604();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) > a1)
  {

LABEL_5:

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_B010(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_B108;

  return v6(a1);
}

uint64_t sub_B108()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_B200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D1E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_B298(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MainView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_B30C()
{
  v1 = *(type metadata accessor for MainView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_42C0(&qword_18848, &unk_E7E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B40C(uint64_t a1)
{
  v4 = *(type metadata accessor for MainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_B4FC;

  return sub_9880(a1, v6, v7, v1 + v5);
}

uint64_t sub_B4FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_B5F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_42C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B658()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B690(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C294;

  return sub_B010(a1, v4);
}

uint64_t sub_B748(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B4FC;

  return sub_B010(a1, v4);
}

uint64_t sub_B808()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_B858@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_AF3C(*a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_B890()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_B8E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_BC7C(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

__n128 sub_B91C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v9[1] = a1[2];
  v10 = v5;
  v9[0] = v6;
  v4(&v11, &v10, v9);
  v7 = v13;
  result = v12;
  *a2 = v11;
  *(a2 + 8) = result;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_B984()
{
  result = qword_18A00;
  if (!qword_18A00)
  {
    sub_A324(&qword_189F8, &qword_EA10);
    sub_BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A00);
  }

  return result;
}

unint64_t sub_BA08()
{
  result = qword_18A08;
  if (!qword_18A08)
  {
    sub_A324(&qword_18A10, &qword_EA18);
    sub_BA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A08);
  }

  return result;
}

unint64_t sub_BA94()
{
  result = qword_18A18;
  if (!qword_18A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A18);
  }

  return result;
}

void *sub_BAE8@<X0>(unint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  sub_42C0(&qword_189D8, &qword_E9E0);
  result = sub_D364();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v6 = sub_D604();
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v7 + 8 * v4 + 32);

LABEL_5:

    *a3 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_BBA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = *a1;
  v6 = *a5;
  sub_42C0(&qword_189D8, &qword_E9E0);
  sub_D364();
  v7 = v9;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
  {
    result = sub_5260(v9);
    v7 = result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    *(&stru_20.cmd + 8 * v6 + (v7 & 0xFFFFFFFFFFFFFF8)) = v5;

    return sub_D374();
  }

  __break(1u);
  return result;
}

uint64_t sub_BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a1;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a1;
  type metadata accessor for AppInfo(0);
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_D3A4();
  a5(&v13, &v14);

  return v13;
}

uint64_t sub_BDC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_BE28()
{
  v1 = *(type metadata accessor for MainView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_42C0(&qword_18848, &unk_E7E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

__n128 sub_BFA4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_BFB0(uint64_t a1, int a2)
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

uint64_t sub_BFF8(uint64_t result, int a2, int a3)
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

uint64_t sub_C048()
{
  sub_A324(&qword_188F0, &qword_E850);
  sub_D1B4();
  sub_C228(&qword_18908, &qword_188F0, &qword_E850, &protocol conformance descriptor for Form<A>);
  sub_C19C(&qword_18910, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C19C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C228(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_A324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C2C0()
{
  result = qword_18AF0;
  if (!qword_18AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AF0);
  }

  return result;
}

uint64_t sub_C330@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_D204();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MainView(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_42C0(&qword_18B10, &qword_EBC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_42C0(&qword_18B08, &qword_EBB8);
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_D584();
  v33 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = a1;
  v38 = a1;
  v39 = a2;
  sub_42C0(&qword_18B28, &qword_EBC8);
  sub_D2E4();
  type metadata accessor for HomeSettingsViewModel(0);
  sub_CE0C(&qword_18750, type metadata accessor for HomeSettingsViewModel, &unk_E580);
  sub_D404();
  v17 = &v9[*(v7 + 20)];
  LOBYTE(v42) = 0;
  sub_D2D4();
  v18 = v39;
  *v17 = v38;
  *(v17 + 1) = v18;
  sub_D234();
  sub_CE54(v9);
  if (qword_18428 != -1)
  {
    swift_once();
  }

  v38 = qword_18B48;
  v39 = unk_18B50;
  v42 = v7;
  v43 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_52C8();
  sub_D274();
  (*(v11 + 8))(v13, v10);
  v22 = v34;
  v23 = v35;
  v24 = v36;
  (*(v35 + 104))(v34, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v36);
  v38 = v10;
  v39 = &type metadata for String;
  v40 = OpaqueTypeConformance2;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v37;
  v26 = v32;
  sub_D294();
  (*(v23 + 8))(v22, v24);
  (*(v31 + 8))(v16, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v30;
  *(v27 + 24) = a2;
  v28 = (v25 + *(sub_42C0(&qword_18AF8, &qword_EBB0) + 36));
  sub_D1A4();

  sub_D594();

  *v28 = &unk_EBD8;
  v28[1] = v27;
  return result;
}

uint64_t sub_C878(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_D584();
  v2[7] = sub_D574();
  v4 = sub_D564();

  return _swift_task_switch(sub_C910, v4, v3);
}

uint64_t sub_C910()
{
  v1 = v0[6];
  v2 = v0[5];

  v0[2] = v2;
  v0[3] = v1;
  sub_42C0(&qword_18B28, &qword_EBC8);
  sub_D2E4();
  sub_236C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_C9B4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = sub_42C0(&qword_18AF8, &qword_EBB0);
  v5 = sub_CC5C();

  return SettingsPane.init(makeContent:)(sub_CC54, v3, v4, v5);
}

void *sub_CA5C@<X0>(void *a1@<X8>)
{
  sub_D164();
  v2 = sub_D154();
  type metadata accessor for TCCServiceManager();
  v3 = swift_allocObject();
  sub_CADC(v2, v3);
  type metadata accessor for HomeSettingsViewModel(0);
  result = sub_D2D4();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_CADC(uint64_t a1, uint64_t a2)
{
  v14 = sub_D164();
  v15 = &protocol witness table for HomeEnergyManager;
  *&v13 = a1;
  v4 = type metadata accessor for TCCServiceManager();
  v12[3] = v4;
  v12[4] = &off_14A88;
  v12[0] = a2;
  type metadata accessor for HomeSettingsViewModel(0);
  v5 = swift_allocObject();
  v6 = sub_4308(v12, v4);
  __chkstk_darwin(v6);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  *(v5 + 96) = v4;
  *(v5 + 104) = &off_14A88;
  *(v5 + 72) = v10;
  *(v5 + 56) = &_swiftEmptyArrayStorage;
  *(v5 + 64) = 0;
  *(v5 + 112) = &_swiftEmptyArrayStorage;
  sub_D134();
  sub_CC38(&v13, v5 + 16);
  sub_5564(v12);
  return v5;
}

uint64_t sub_CC38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_CC5C()
{
  result = qword_18B00;
  if (!qword_18B00)
  {
    sub_A324(&qword_18AF8, &qword_EBB0);
    sub_A324(&qword_18B08, &qword_EBB8);
    sub_A324(&qword_18B10, &qword_EBC0);
    type metadata accessor for MainView(255);
    swift_getOpaqueTypeConformance2();
    sub_52C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CE0C(&qword_18B20, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B00);
  }

  return result;
}

uint64_t sub_CE0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CE54(uint64_t a1)
{
  v2 = type metadata accessor for MainView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CEB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CEF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_B4FC;

  return sub_C878(v2, v3);
}

__n128 sub_CF88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_CF94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_CFDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_D02C()
{
  result = qword_18B30;
  if (!qword_18B30)
  {
    sub_A324(&qword_18B38, &qword_EC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B30);
  }

  return result;
}
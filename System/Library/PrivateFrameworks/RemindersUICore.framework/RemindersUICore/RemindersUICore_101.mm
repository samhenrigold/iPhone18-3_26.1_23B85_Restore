uint64_t (*TTRUserDefaults.lastSeenWelcomeScreenVersion.modify(uint64_t a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v3 = [v3 integerForKey_];
  }

  TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v3);
  v5 = v7;
  if (v7 == 9)
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_21DA56118;
}

void sub_21DA56118(void *a1)
{
  v3 = *a1;
  v1 = (a1 + 1);
  v2 = v3;
  if (v3)
  {
    v4 = qword_21DC38BE8[*v1];
    v5 = sub_21DBFA12C();
    [v2 setInteger:v4 forKey:v5];
  }
}

id TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA5621C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA56298(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA56478;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA56478(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.recentlyUsedTimeZones.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void TTRUserDefaults.recentlyUsedTimeZones.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1)
    {
      v3 = sub_21DBFA5DC();
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t (*TTRUserDefaults.recentlyUsedTimeZones.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 56) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_13:
    sub_21D0CF7E0(v4, &qword_27CE5C690, &unk_21DC11AB0);
    *(v4 + 32) = 0;
    return sub_21DA5686C;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  *v4 = v12;
  *(v4 + 16) = v13;
  if (!*(v4 + 24))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 40);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 32) = v9;
  return sub_21DA56948;
}

void sub_21DA5686C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.recentlyUsedTimeZones.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v4)
    {
      if (v2[4])
      {
        v5 = sub_21DBFA5DC();
      }

      else
      {
        v5 = 0;
      }

      v6 = sub_21DBFA12C();
      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

LABEL_9:

  free(v2);
}

void sub_21DA56948(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.recentlyUsedTimeZones.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v2[4])
    {
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_21DBFA12C();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  free(v2);
}

char static TTRUserDefaults.WelcomeScreenVersion.current.getter@<W0>(_BYTE *a1@<X8>)
{
  v12 = MEMORY[0x277D84F90];
  sub_21D18E658(0, 9, 0);
  v2 = 0;
  v3 = *(v12 + 16);
  do
  {
    v4 = byte_282EA6998[v2 + 32];
    v5 = *(v12 + 24);
    if (v3 >= v5 >> 1)
    {
      sub_21D18E658((v5 > 1), v3 + 1, 1);
    }

    ++v2;
    v6 = qword_21DC38BE8[v4];
    *(v12 + 16) = v3 + 1;
    *(v12 + 8 * v3++ + 32) = v6;
  }

  while (v2 != 9);
  v7 = sub_21D7D077C(v12);
  v9 = v8;

  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v7).value;
    if (v11 != 9)
    {
      *a1 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA56B64()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](qword_21DC38BE8[v1]);
  return sub_21DBFC82C();
}

uint64_t sub_21DA56BEC(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](qword_21DC38BE8[v2]);
  return sub_21DBFC82C();
}

uint64_t TTRUserDefaults.ShowCompletedType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x223D44FA0](v3);
    return sub_21DBFB64C();
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = 5;
    }

    else if (v2 == 4)
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 2;
  }

  return MEMORY[0x223D44FA0](v5);
}

uint64_t TTRUserDefaults.ShowCompletedType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21DBFC7DC();
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x223D44FA0](v3);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v4 = 5;
    }

    else if (v1 == 4)
    {
      v4 = 6;
    }

    else
    {
      v4 = 7;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 2;
  }

  MEMORY[0x223D44FA0](v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA56DF0()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DBFC7DC();
  TTRUserDefaults.ShowCompletedType.hash(into:)(v3);
  return sub_21DBFC82C();
}

uint64_t sub_21DA56E48(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_21DBFC7DC();
  TTRUserDefaults.ShowCompletedType.hash(into:)(v4);
  return sub_21DBFC82C();
}

void *TTRUserDefaults.observablePropertyForShowsCompleted(forType:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120, &qword_21DC09CC0);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[9] = v6;
  v7[10] = 0;
  v7[4] = sub_21D1952BC;
  v7[5] = v4;
  v7[6] = sub_21D1952C8;
  v7[7] = v5;
  v7[8] = sub_21D1952D4;
  v8 = v1;
  sub_21D157850(v2, v3);
  v9 = v8;
  sub_21D157850(v2, v3);
  v10 = v9;
  sub_21D157850(v2, v3);
  return v7;
}

void sub_21DA56FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v5)
  {
    LOBYTE(v9) = a3;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v6 = sub_21DBFA12C();

    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

void sub_21DA5706C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:v3 forKey:v4];
  }
}

id sub_21DA57110(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v12 = a1;
  *(v12 + 1) = a2;
  v36.receiver = v11;
  v36.super_class = v10;

  v13 = objc_msgSendSuper2(&v36, sel_init);
  v34 = a4;
  v35 = a5;
  v14 = TTRUserDefaults.ShowCompletedType.key.getter();
  v16 = v15;
  v17 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v18 = *&a3[v17];
  if (*(v18 + 16) && (v19 = sub_21D0CEF70(v14, v16), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v22 = v21;
  }

  else
  {
    swift_endAccess();
    v21 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v23 = v21;
    sub_21DBF8E0C();
    sub_21D0D9AC8(v21, v14, v16);
    swift_endAccess();
  }

  v24 = type metadata accessor for TTRUserDefaultsObserver();
  v25 = objc_allocWithZone(v24);
  v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v26 = &v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v26 = v14;
  v26[1] = v16;
  *&v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v13;
  v33.receiver = v25;
  v33.super_class = v24;
  sub_21DBF8E0C();
  v27 = a3;
  v28 = v13;
  v29 = objc_msgSendSuper2(&v33, sel_init);
  if (v21)
  {
    [v21 addObject_];
  }

  v30 = *&v27[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v30)
  {
    v31 = sub_21DBFA12C();

    [v30 addObserver:v27 forKeyPath:v31 options:0 context:0];
  }

  else
  {
  }

  return v29;
}

uint64_t TTRUserDefaults.ShowingLargeAttachmentsType.key.getter()
{
  v1 = *v0;
  sub_21DBFBEEC();
  if (v1 <= 3)
  {
    v10 = 0xE300000000000000;
    v11 = 7105633;
    v12 = 0xE900000000000064;
    v13 = 0x656C756465686373;
    if (v1 != 2)
    {
      v13 = 0x64656767616C66;
      v12 = 0xE700000000000000;
    }

    if (v1)
    {
      v11 = 0x7961646F74;
      v10 = 0xE500000000000000;
    }

    if (v1 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x686372616573;
    v4 = 0xE600000000000000;
    v5 = 0x646567676174;
    if (v1 != 7)
    {
      v5 = 0xD000000000000014;
      v4 = 0x800000021DC43AF0;
    }

    if (v1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0xE800000000000000;
    v7 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v7 = 0x6E756F4669726973;
      v6 = 0xEF737070416E4964;
    }

    if (v1 <= 5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  MEMORY[0x223D42AA0](v8, v9);

  MEMORY[0x223D42AA0](0xD000000000000017, 0x800000021DC74680);
  return 0;
}

uint64_t TTRUserDefaults.ShowingLargeAttachmentsType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 7105633;
    v7 = 0x656C756465686373;
    if (v1 != 2)
    {
      v7 = 0x64656767616C66;
    }

    if (*v0)
    {
      v6 = 0x7961646F74;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x686372616573;
    v3 = 0x646567676174;
    if (v1 != 7)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v4 = 0x6E756F4669726973;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType_optional __swiftcall TTRUserDefaults.ShowingLargeAttachmentsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DA57680()
{
  v1 = *v0;
  sub_21DBFC7DC();
  sub_21D7145F8(v3, v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DA576D0(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  sub_21D7145F8(v4, v2);
  return sub_21DBFC82C();
}

uint64_t sub_21DA57720@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.ShowingLargeAttachmentsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Bool __swiftcall TTRUserDefaults.showingLargeAttachments(forType:)(RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType forType)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v2)
  {
    return 1;
  }

  TTRUserDefaults.ShowingLargeAttachmentsType.key.getter();
  v3 = sub_21DBFA12C();

  v4 = [v2 BOOLForKey_];

  return v4;
}

Swift::Void __swiftcall TTRUserDefaults.setShowingLargeAttachments(value:forType:)(Swift::Bool value, RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType forType)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    TTRUserDefaults.ShowingLargeAttachmentsType.key.getter();
    v5 = sub_21DBFA12C();

    [v3 setBool:value forKey:v5];
  }
}

void sub_21DA57884(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA57900(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.animationSlowModeEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.animationSlowModeEnabled.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA57AE0;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA57AE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.didInformUserAboutCustomSmartListAdd.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA57BC4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA57C40(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.didInformUserAboutCustomSmartListAdd.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.didInformUserAboutCustomSmartListAdd.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA57E20;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA57E20(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.todayListIsGrouped.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA57F0C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA57F90(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.todayListIsGrouped.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.todayListIsGrouped.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA58174;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA58174(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA581EC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA58268(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void (*TTRUserDefaults.templateSharingIncludePropertiesAlertShown.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA583B4;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA583B4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.streamTodayListIsGrouped(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000012, 0x800000021DC746D0), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000012, 0x800000021DC746D0);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = v3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000012;
  v19[1] = 0x800000021DC746D0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = v3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

uint64_t TTRUserDefaults.SmartListVersionWarning.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.init(creationDate:supportedVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRUserDefaults.SmartListVersionWarning(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21DA58760()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F697461657263;
  }
}

void sub_21DA587A8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DC74900 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();

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
}

uint64_t sub_21DA58890(uint64_t a1)
{
  v2 = sub_21DA5FA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DA588CC(uint64_t a1)
{
  v2 = sub_21DA5FA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65128, &qword_21DC38388);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA5FA90();
  sub_21DBFC88C();
  v8[15] = 0;
  sub_21DBF563C();
  sub_21DA60E3C(&qword_27CE65138, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_21DBFC56C();
  if (!v1)
  {
    type metadata accessor for TTRUserDefaults.SmartListVersionWarning(0);
    v8[14] = 1;
    sub_21DBFC54C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_21DBF563C();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65140, &qword_21DC38390);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA5FA90();
  sub_21DBFC87C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_21DA60E3C(&qword_280D17198, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v14 = v23;
  sub_21DBFC4EC();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_21DBFC4DC();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  *&v19[*(v9 + 20)] = v15;
  sub_21DA60E84(v17, v16, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21DA5FAE4(v17, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
}

uint64_t TTRUserDefaults.smartListVersionWarnings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return sub_21D179954(MEMORY[0x277D84F90]);
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return sub_21D179954(MEMORY[0x277D84F90]);
  }

  v4 = sub_21DBF551C();
  v6 = v5;

  sub_21DBF4B7C();
  swift_allocObject();
  sub_21DBF4B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65150, &unk_21DC38398);
  sub_21DA5FB44();
  sub_21DBF4B5C();
  sub_21D17B8A8(v4, v6);

  return v8;
}

void TTRUserDefaults.smartListVersionWarnings.setter(uint64_t a1)
{
  v2 = v1;
  sub_21DBF4BAC();
  swift_allocObject();
  sub_21DBF4B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65150, &unk_21DC38398);
  sub_21DA5FC30();
  v3 = sub_21DBF4B8C();
  v5 = v4;

  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    if (v5 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      sub_21D1BAF70(v3, v5);
      v7 = sub_21DBF54FC();
      sub_21D1BAF38(v3, v5);
    }

    v8 = sub_21DBFA12C();
    [v6 setObject:v7 forKey:v8];
    sub_21D1BAF38(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21D1BAF38(v3, v5);
  }
}

void (*TTRUserDefaults.smartListVersionWarnings.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TTRUserDefaults.smartListVersionWarnings.getter();
  return sub_21DA59154;
}

void sub_21DA59154(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_21DBF8E0C();
    TTRUserDefaults.smartListVersionWarnings.setter(v2);
  }

  else
  {
    TTRUserDefaults.smartListVersionWarnings.setter(*a1);
  }
}

double (*TTRUserDefaults.activitySessionId.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_21DBFA16C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    return sub_21DA5928C;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_21DA5937C;
  }
}

double sub_21DA5928C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.activitySessionId.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21DA59394(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a1[1];
    v5 = *a1;
    sub_21DBF8E0C();
    a3(v5, v4);
  }

  return result;
}

uint64_t sub_21DA593FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_21D0D3954(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t (*TTRUserDefaults.activitySessionBeginTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA598B0;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA59714;
}

void sub_21DA59714(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.activitySessionBeginTime.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA598B0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.activitySessionBeginTime.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690, &unk_21DC11AB0);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68, &unk_21DC0C060);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t (*TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5A164;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA59FC8;
}

void sub_21DA59FC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5A164(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastAppStoreRatingPromptDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690, &unk_21DC11AB0);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastAppStoreRatingPromptDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68, &unk_21DC0C060);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t (*TTRUserDefaults.lastAppStoreRatingPromptDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5AA18;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5A87C;
}

void sub_21DA5A87C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastAppStoreRatingPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5AA18(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastAppStoreRatingPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.firstTimeAppForegroundingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690, &unk_21DC11AB0);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.firstTimeAppForegroundingDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68, &unk_21DC0C060);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t (*TTRUserDefaults.firstTimeAppForegroundingDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5B2CC;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5B130;
}

void sub_21DA5B130(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.firstTimeAppForegroundingDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5B2CC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.firstTimeAppForegroundingDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastAppForegroundingDates.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65190, &qword_21DC383A8);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void TTRUserDefaults.lastAppForegroundingDates.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1)
    {
      sub_21DBF563C();
      v3 = sub_21DBFA5DC();
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t (*TTRUserDefaults.lastAppForegroundingDates.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 56) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_13:
    sub_21D0CF7E0(v4, &qword_27CE5C690, &unk_21DC11AB0);
    *(v4 + 32) = 0;
    return sub_21DA5B7F0;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  *v4 = v12;
  *(v4 + 16) = v13;
  if (!*(v4 + 24))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65190, &qword_21DC383A8);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 40);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 32) = v9;
  return sub_21DA5B8D0;
}

void sub_21DA5B7F0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.lastAppForegroundingDates.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v4)
    {
      if (v2[4])
      {
        sub_21DBF563C();
        v5 = sub_21DBFA5DC();
      }

      else
      {
        v5 = 0;
      }

      v6 = sub_21DBFA12C();
      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

LABEL_9:

  free(v2);
}

void sub_21DA5B8D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.lastAppForegroundingDates.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v2[4])
    {
      sub_21DBF563C();
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_21DBFA12C();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t TTRUserDefaults.lastICloudIsOffPromptDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690, &unk_21DC11AB0);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastICloudIsOffPromptDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68, &unk_21DC0C060);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t (*TTRUserDefaults.lastICloudIsOffPromptDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5C0B8;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5BF1C;
}

void sub_21DA5BF1C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastICloudIsOffPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5C0B8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68, &unk_21DC0C060);
    TTRUserDefaults.lastICloudIsOffPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68, &unk_21DC0C060);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68, &unk_21DC0C060);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5C258(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1[1] >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_21DBF54FC();
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void *TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120, &qword_21DC09CC0);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21DA5FD68;
  v4[5] = v1;
  v4[6] = sub_21DA5FD70;
  v4[7] = v2;
  v4[8] = sub_21DA5FD78;
  v5 = v0;
  return v4;
}

void sub_21DA5C41C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA5C494(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

id sub_21DA5C528(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&a3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000028, 0x800000021DC69380), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000028, 0x800000021DC69380);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000028;
  v19[1] = 0x800000021DC69380;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = a3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

void TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (a1 == 2)
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 removeObjectForKey_];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:?];
  }
}

void (*TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 40) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_12:
    sub_21D0CF7E0(v4, &qword_27CE5C690, &unk_21DC11AB0);
    v9 = 2;
    goto LABEL_13;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *v4 = v11;
  *(v4 + 16) = v12;
  if (!*(v4 + 24))
  {
    goto LABEL_12;
  }

  v8 = swift_dynamicCast();
  v9 = *(v4 + 49);
  if (!v8)
  {
    v9 = 2;
  }

LABEL_13:
  *(v4 + 48) = v9;
  return sub_21DA5C998;
}

void sub_21DA5C998(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter(v3);
    goto LABEL_9;
  }

  v4 = v2[5];
  if (v3 == 2)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = sub_21DBFA12C();
    [v4 removeObjectForKey_];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = v3;
    v5 = sub_21DBFA12C();
    [v4 setBool:v6 & 1 forKey:v5];
  }

LABEL_9:

  free(v2);
}

void TTRUserDefaults.reminderDetailNewStyleEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (a1 == 2)
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 removeObjectForKey_];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:?];
  }
}

void (*TTRUserDefaults.reminderDetailNewStyleEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 40) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_12:
    sub_21D0CF7E0(v4, &qword_27CE5C690, &unk_21DC11AB0);
    v9 = 2;
    goto LABEL_13;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *v4 = v11;
  *(v4 + 16) = v12;
  if (!*(v4 + 24))
  {
    goto LABEL_12;
  }

  v8 = swift_dynamicCast();
  v9 = *(v4 + 49);
  if (!v8)
  {
    v9 = 2;
  }

LABEL_13:
  *(v4 + 48) = v9;
  return sub_21DA5CCBC;
}

void sub_21DA5CCBC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    TTRUserDefaults.reminderDetailNewStyleEnabled.setter(v3);
    goto LABEL_9;
  }

  v4 = v2[5];
  if (v3 == 2)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = sub_21DBFA12C();
    [v4 removeObjectForKey_];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = v3;
    v5 = sub_21DBFA12C();
    [v4 setBool:v6 & 1 forKey:v5];
  }

LABEL_9:

  free(v2);
}

void TTRUserDefaults.unitTest_clearShowsCompleted(forType:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    TTRUserDefaults.ShowCompletedType.key.getter();
    v2 = sub_21DBFA12C();

    [v1 removeObjectForKey_];
  }
}

void TTRUserDefaults.unitTest_clearRemindersListLayout(for:)(id *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = [*a1 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v4 = sub_21DBFA12C();

    [v2 removeObjectForKey_];
  }
}

id TTRUserDefaults.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  *&v0[v2] = sub_21D0CC778();
  *&v0[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers] = MEMORY[0x277D84F98];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void (*sub_21DA5D160(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.modify(v2);
  return sub_21D4C30A8;
}

void (*sub_21DA5D21C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastAppStoreRatingPromptDate.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D2D8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.firstTimeAppForegroundingDate.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D394(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastAppForegroundingDates.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D450(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastICloudIsOffPromptDate.modify(v2);
  return sub_21D4C3D30;
}

id sub_21DA5D4C4(uint64_t *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v5 = *a1;
    LOBYTE(v6) = *(a1 + 8);
    TTRUserDefaults.ShowCompletedType.key.getter();
    v3 = sub_21DBFA12C();

    v2 = [v2 BOOLForKey_];
  }

  return v2;
}

void (*sub_21DA5D5BC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.activitySessionId.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D678(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.activitySessionBeginTime.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D734(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.recentlyUsedTimeZones.modify(v2);
  return sub_21D4C3D30;
}

void TTRUserDefaults.RemindersListLayoutKey.init(listOrCustomSmartList:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = [*a1 objectID];

  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t TTRUserDefaults.RemindersListLayoutKey.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

void TTRUserDefaults.remindersListLayout(for:)(id *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v4 && (v5 = [*a1 stringRepresentation], sub_21DBFA16C(), v5, MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000), v6 = sub_21DBFA12C(), , v7 = objc_msgSend(v4, sel_stringForKey_, v6), v6, v7))
  {
    sub_21DBFA16C();

    v8 = sub_21DBFC45C();

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (!v8)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2;
  }

  *a2 = v9;
}

void TTRUserDefaults.setRemindersListLayout(_:for:)(uint64_t a1, void **a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = *a2;
    v5 = sub_21DBFA12C();

    v6 = [v4 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v7 = sub_21DBFA12C();

    [v3 setObject:v5 forKey:v7];
  }
}

void *TTRUserDefaults.observablePropertyForRemindersListLayout(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE651A0, &qword_21DC383B8);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[9] = v6;
  v7[10] = 0;
  v7[4] = sub_21DA600FC;
  v7[5] = v4;
  v7[6] = sub_21DA60108;
  v7[7] = v5;
  v7[8] = sub_21DA60158;
  v8 = v1;
  v9 = v2;
  v10 = v8;
  v11 = v2;
  v12 = v10;
  v13 = v2;
  return v7;
}

void sub_21DA5DC48(id a1@<X1>, uint64_t a2@<X0>, BOOL *a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  v9 = 0;
  if (v4)
  {
    v5 = [a1 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v6 = sub_21DBFA12C();

    v7 = [v4 stringForKey_];

    if (v7)
    {
      sub_21DBFA16C();

      v8 = sub_21DBFC45C();

      if (v8 == 1)
      {
        v9 = 1;
      }
    }
  }

  *a3 = v9;
}

void sub_21DA5DD6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v5 = sub_21DBFA12C();

    v6 = [a3 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v7 = sub_21DBFA12C();

    [v3 setObject:v5 forKey:v7];
  }
}

id sub_21DA5DEA0(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v10 = a1;
  *(v10 + 1) = a2;
  v37.receiver = v9;
  v37.super_class = v8;

  v11 = objc_msgSendSuper2(&v37, sel_init);
  v12 = [a4 stringRepresentation];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v35 = v13;
  v36 = v15;
  MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
  v17 = v13;
  v16 = v36;
  v18 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v19 = *&a3[v18];
  if (*(v19 + 16) && (v20 = sub_21D0CEF70(v17, v36), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
    v23 = v22;
  }

  else
  {
    swift_endAccess();
    v22 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v24 = v22;
    sub_21DBF8E0C();
    sub_21D0D9AC8(v22, v17, v36);
    swift_endAccess();
  }

  v25 = type metadata accessor for TTRUserDefaultsObserver();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v27 = &v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v27 = v17;
  v27[1] = v16;
  *&v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v11;
  v34.receiver = v26;
  v34.super_class = v25;
  sub_21DBF8E0C();
  v28 = a3;
  v29 = v11;
  v30 = objc_msgSendSuper2(&v34, sel_init);
  if (v22)
  {
    [v22 addObject_];
  }

  v31 = *&v28[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v31)
  {
    v32 = sub_21DBFA12C();

    [v31 addObserver:v28 forKeyPath:v32 options:0 context:0];
  }

  else
  {
  }

  return v30;
}

void (*sub_21DA5E1AC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA5E1F8;
}

void (*sub_21DA5E210(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA5E25C;
}

void sub_21DA5E274(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v4 = *a1;
    sub_21DBF8E0C();
    a3(&v4);
  }

  else
  {
    v4 = *a1;
    a3(&v4);
  }
}

void sub_21DA5E2FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61567961646F54 && a2 == 0xEA00000000006575;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C61566C6C41 && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (a1 == 0x656C756465686353 && a2 == 0xEE0065756C615664 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (a1 == 0x5664656767616C46 && a2 == 0xEC00000065756C61 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (a1 == 0x64656E6769737341 && a2 == 0xED000065756C6156 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021DC74920 == a2 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 5;
  }

  else if (a1 == 0x6574656C706D6F43 && a2 == 0xEE0065756C615664)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *a3 = v7;
}

void sub_21DA5E578(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65290, &qword_21DC0FAB0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65298, &qword_21DC38BE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - v13;
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v37 = v5;
  v42 = v19;
  if (v20)
  {
    v38 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    sub_21DA60E84(*(v17 + 48) + *(v39 + 72) * v26, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v27 = *(*(v17 + 56) + 8 * v26);
    v28 = *(v41 + 48);
    v29 = v8;
    v30 = v41;
    sub_21DA60EEC(v29, v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *&v15[v28] = v27;
    v31 = v40;
    (*(v40 + 56))(v15, 0, 1, v30);

    v24 = v21;
    v32 = v31;
    a1 = v38;
LABEL_12:
    *v1 = v17;
    v1[1] = v16;
    v1[2] = v42;
    v1[3] = v24;
    v1[4] = v25;
    v33 = v1[5];
    sub_21D0D523C(v15, v11, &qword_27CE65298, &qword_21DC38BE0);
    v34 = 1;
    if ((*(v32 + 48))(v11, 1, v30) != 1)
    {
      v35 = v37;
      sub_21D0D523C(v11, v37, &qword_27CE65290, &qword_21DC0FAB0);
      v33(v35);
      sub_21D0CF7E0(v35, &qword_27CE65290, &qword_21DC0FAB0);
      v34 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE652A0, &qword_21DC0FAA8);
    (*(*(v36 - 8) + 56))(a1, v34, 1, v36);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v32 = v40;
        v30 = v41;
        (*(v40 + 56))(&v37 - v13, 1, 1, v41, v14);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v16 + 8 * v21);
      ++v18;
      if (v20)
      {
        v38 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_21DA5E964(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65240, &qword_21DC19E60);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - v4;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65248, &unk_21DC38BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = v18;
  v44 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_21DA60E84(*(v16 + 56) + *(v41 + 72) * v25, v7, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_21DA60EEC(v29, v14 + v28, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    (*(v3 + 56))(v14, 0, 1, v30);
    v31 = v26;
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v32 = v1[5];
    sub_21D0D523C(v14, v10, &qword_27CE65248, &unk_21DC38BA0);
    v33 = 1;
    v34 = (*(v3 + 48))(v10, 1, v30);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v10;
      v37 = v40;
      sub_21D0D523C(v36, v40, &qword_27CE65240, &qword_21DC19E60);
      v32(v37);
      sub_21D0CF7E0(v37, &qword_27CE65240, &qword_21DC19E60);
      v33 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65250, &qword_21DC19E58);
    (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        (*(v3 + 56))(&v39 - v12, 1, 1, v42, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21DA5ED28(uint64_t a1@<X8>)
{
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D768, &unk_21DC38BB0);
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260, &unk_21DC09040);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65268, &qword_21DC38BC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v43 - v12);
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v47 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v45 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 80 * v24);
    v27 = v25[1];
    v26 = v25[2];
    v28 = v25[4];
    v53 = v25[3];
    v54 = v28;
    v50 = *v25;
    v51 = v27;
    v52 = v26;
    sub_21D0D3954(*(v15 + 56) + *(v5 + 72) * v24, v7, &qword_27CE65260, &unk_21DC09040);
    v29 = v46;
    v30 = *(v46 + 48);
    v31 = v54;
    v14[3] = v53;
    v14[4] = v31;
    v32 = v52;
    v14[1] = v51;
    v14[2] = v32;
    *v14 = v50;
    v33 = v7;
    v34 = v29;
    sub_21D0D523C(v33, v14 + v30, &qword_27CE65260, &unk_21DC09040);
    (*(v2 + 56))(v14, 0, 1, v34);
    sub_21D1D9B34(&v50, v49);
    v35 = v45;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v47;
    v1[3] = v23;
    v1[4] = v35;
    v36 = v1[5];
    sub_21D0D523C(v14, v10, &qword_27CE65268, &qword_21DC38BC0);
    v37 = 1;
    v38 = (*(v2 + 48))(v10, 1, v34);
    v39 = v48;
    if (v38 != 1)
    {
      v40 = v10;
      v41 = v44;
      sub_21D0D523C(v40, v44, &qword_27CE5D768, &unk_21DC38BB0);
      v36(v41);
      sub_21D0CF7E0(v41, &qword_27CE5D768, &unk_21DC38BB0);
      v37 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270, &unk_21DC09030);
    (*(*(v42 - 8) + 56))(v39, v37, 1, v42);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v34 = v46;
        (*(v2 + 56))(&v43 - v12, 1, 1, v46, v13);
        v35 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21DA5F158(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D780, &qword_21DC19E80);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - v4;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65280, &qword_21DC38BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = v18;
  v44 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_21DA60E84(*(v16 + 56) + *(v41 + 72) * v25, v7, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_21DA60EEC(v29, v14 + v28, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    (*(v3 + 56))(v14, 0, 1, v30);
    v31 = v26;
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v32 = v1[5];
    sub_21D0D523C(v14, v10, &unk_27CE65280, &qword_21DC38BC8);
    v33 = 1;
    v34 = (*(v3 + 48))(v10, 1, v30);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v10;
      v37 = v40;
      sub_21D0D523C(v36, v40, &qword_27CE5D780, &qword_21DC19E80);
      v32(v37);
      sub_21D0CF7E0(v37, &qword_27CE5D780, &qword_21DC19E80);
      v33 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D778, &unk_21DC38BD0);
    (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        (*(v3 + 56))(&v39 - v12, 1, 1, v42, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t *sub_21DA5F530(unint64_t *result, void *a2)
{
  v3 = *v2;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v7 = result;
    v9 = v2;
    result = sub_21DBFC2DC();
    if (!result)
    {
      return result;
    }

    v11 = v10;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v12 = v23[0];
    v22 = v11;
    sub_21D0D8CF0(0, v7, a2);
    swift_dynamicCast();
    v13 = v23[0];
    v2 = v9;
    if (v23[0])
    {
      goto LABEL_16;
    }

    return 0;
  }

  v4 = v2[3];
  v5 = v2[4];
  if (v5)
  {
    v6 = v2[3];
LABEL_15:
    v17 = (v5 - 1) & v5;
    v18 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v3 + 48) + v18);
    v19 = *(*(v3 + 56) + v18);
    v20 = v12;
    v13 = v19;
    v2[3] = v6;
    v2[4] = v17;
    if (v12)
    {
LABEL_16:
      v21 = v2[5];
      v23[0] = v12;
      v23[1] = v13;
      v21(&v22, v23);

      return v22;
    }

    return 0;
  }

  v14 = (v2[2] + 64) >> 6;
  if (v14 <= v4 + 1)
  {
    v15 = v4 + 1;
  }

  else
  {
    v15 = (v2[2] + 64) >> 6;
  }

  v16 = v15 - 1;
  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= v14)
    {
      v2[3] = v16;
      v2[4] = 0;
      return 0;
    }

    v5 = *(v2[1] + 8 * v6);
    ++v4;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore15TTRUserDefaultsC0A13ListLayoutKeyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
LABEL_6:
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v7 = v3;
    v8 = v2;
    v6 = sub_21DBFB63C();
    goto LABEL_7;
  }

  v4 = v3;
  v5 = v2;
  v6 = 0;
LABEL_7:

  return v6 & 1;
}

uint64_t _s15RemindersUICore15TTRUserDefaultsC17ShowCompletedTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D157850(v4, 0);
      sub_21D157850(v2, 0);
      v6 = sub_21DBFB63C();
      sub_21D157478(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D157850(v4, 1u);
      sub_21D157850(v2, 1u);
      LOBYTE(v6) = sub_21DBFB63C();
      sub_21D157478(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_19:
      sub_21D157478(v7, v8);
      return v6 & 1;
    }

    goto LABEL_6;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 2 || v4 != 3)
      {
        goto LABEL_6;
      }

      sub_21D157478(3, 2u);
      v9 = 3;
    }

    else if (v2 == 4)
    {
      if (v5 != 2 || v4 != 4)
      {
        goto LABEL_6;
      }

      sub_21D157478(4, 2u);
      v9 = 4;
    }

    else
    {
      if (v5 != 2 || v4 != 5)
      {
        goto LABEL_6;
      }

      sub_21D157478(5, 2u);
      v9 = 5;
    }

    goto LABEL_32;
  }

  if (!v2)
  {
    if (v5 != 2 || v4)
    {
      goto LABEL_6;
    }

    sub_21D157478(0, 2u);
    v9 = 0;
    goto LABEL_32;
  }

  if (v2 != 1)
  {
    if (v5 != 2 || v4 != 2)
    {
      goto LABEL_6;
    }

    sub_21D157478(2, 2u);
    v9 = 2;
LABEL_32:
    sub_21D157478(v9, 2u);
    return 1;
  }

  if (v5 == 2 && v4 == 1)
  {
    sub_21D157478(1, 2u);
    sub_21D157478(1, 2u);
    return v4;
  }

LABEL_6:
  sub_21D157850(*a2, *(a2 + 8));
  sub_21D157850(v2, v3);
  sub_21D157478(v2, v3);
  sub_21D157478(v4, v5);
  return 0;
}

uint64_t type metadata accessor for TTRUserDefaults.SmartListVersionWarning(uint64_t a1)
{
  result = qword_27CE651E8;
  if (!qword_27CE651E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DA5FA90()
{
  result = qword_27CE65130;
  if (!qword_27CE65130)
  {
    result = swift_getWitnessTable(byte_21DC38B24, &type metadata for TTRUserDefaults.SmartListVersionWarning.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE65130);
  }

  return result;
}

uint64_t sub_21DA5FAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DA5FB44()
{
  result = qword_27CE65158;
  if (!qword_27CE65158)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE65150, &unk_21DC38398);
    v4[0] = sub_21DA60E3C(&qword_27CE65160, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v4[1] = sub_21DA60E3C(&qword_27CE65168, type metadata accessor for TTRUserDefaults.SmartListVersionWarning, protocol conformance descriptor for TTRUserDefaults.SmartListVersionWarning);
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v4);
    atomic_store(result, &qword_27CE65158);
  }

  return result;
}

unint64_t sub_21DA5FC30()
{
  result = qword_27CE65170;
  if (!qword_27CE65170)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE65150, &unk_21DC38398);
    v4[0] = sub_21DA60E3C(&qword_27CE5B4B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v4[1] = sub_21DA60E3C(&unk_27CE65180, type metadata accessor for TTRUserDefaults.SmartListVersionWarning, protocol conformance descriptor for TTRUserDefaults.SmartListVersionWarning);
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v4);
    atomic_store(result, &qword_27CE65170);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

void _s15RemindersUICore15TTRUserDefaultsC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = v3;
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE65080);
    sub_21DBF8E0C();
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEAC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21D0CDFB4(a1, a2, v31);
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRUserDefaults KVO change observed {userDefaultsKey: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    sub_21D0D3954(a3, v31, &qword_27CE5C690, &unk_21DC11AB0);
    if (!v31[3])
    {
      sub_21D0CF7E0(v31, &qword_27CE5C690, &unk_21DC11AB0);
      return;
    }

    sub_21D0D8CF0(0, &qword_27CE65218, 0x277CBEBD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v13 = v30;
    v14 = *(v4 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v14)
    {
      v15 = v30;
      v16 = v14;
      v17 = sub_21DBFB63C();

      if ((v17 & 1) == 0)
      {

        return;
      }

      v18 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
      swift_beginAccess();
      v19 = *(v4 + v18);
      if (!*(v19 + 16) || (v20 = sub_21D0CEF70(a1, a2), (v21 & 1) == 0))
      {
        swift_endAccess();

        return;
      }

      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      v23 = [v22 allObjects];
      type metadata accessor for TTRUserDefaultsObserver();
      v24 = sub_21DBFA5EC();

      if (v24 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v26 = 0;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x223D44740](v26, v24);
          }

          else
          {
            if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          (*(*&v27[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] + OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block))();

          ++v26;
          if (v29 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:

      v13 = v15;
    }
  }
}

uint64_t objectdestroy_53Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_21DA60168()
{
  result = qword_27CE651A8;
  if (!qword_27CE651A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserDefaults.WelcomeScreenVersion, &type metadata for TTRUserDefaults.WelcomeScreenVersion, v0, v1);
    atomic_store(result, &qword_27CE651A8);
  }

  return result;
}

unint64_t sub_21DA601F0()
{
  result = qword_27CE651C0;
  if (!qword_27CE651C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserDefaults.ShowCompletedType, &type metadata for TTRUserDefaults.ShowCompletedType, v0, v1);
    atomic_store(result, &qword_27CE651C0);
  }

  return result;
}

unint64_t sub_21DA60248()
{
  result = qword_27CE651C8;
  if (!qword_27CE651C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserDefaults.ShowingLargeAttachmentsType, &type metadata for TTRUserDefaults.ShowingLargeAttachmentsType, v0, v1);
    atomic_store(result, &qword_27CE651C8);
  }

  return result;
}

unint64_t sub_21DA602D0()
{
  result = qword_27CE651E0;
  if (!qword_27CE651E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserDefaults.RemindersListLayoutKey, &type metadata for TTRUserDefaults.RemindersListLayoutKey, v0, v1);
    atomic_store(result, &qword_27CE651E0);
  }

  return result;
}

uint64_t keypath_set_76Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;
  sub_21DBF8E0C();
  return a5(&v7);
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21DBF8E0C();
  return a5(v7, v6);
}

uint64_t sub_21DA607A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DA60838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRUserDefaults.SmartListVersionWarning(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21DA60BD8(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRUserDefaults.RemindersListLayoutKey(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = *a1;
  *a1 = v3;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for TTRUserDefaults.RemindersListLayoutKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

unint64_t sub_21DA60D38()
{
  result = qword_27CE65200;
  if (!qword_27CE65200)
  {
    result = swift_getWitnessTable(byte_21DC38AFC, &type metadata for TTRUserDefaults.SmartListVersionWarning.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE65200);
  }

  return result;
}

unint64_t sub_21DA60D90()
{
  result = qword_27CE65208;
  if (!qword_27CE65208)
  {
    atomic_store(result, &qword_27CE65208);
  }

  return result;
}

unint64_t sub_21DA60DE8()
{
  result = qword_27CE65210;
  if (!qword_27CE65210)
  {
    result = swift_getWitnessTable(aED, &type metadata for TTRUserDefaults.SmartListVersionWarning.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE65210);
  }

  return result;
}

uint64_t sub_21DA60E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DA60E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA60EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *TTRRemindersListInCellModule.init(interface:controller:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = (a4 + *(type metadata accessor for TTRRemindersListInCellModule(0, a3, v7, v8) + 28));

  return sub_21D0CF2E8(a2, v9);
}

uint64_t TTRReminderCellTitleViewModel.init(item:allowsEditing:attributedTitle:font:isCompleted:subtaskCount:inlineHashtagVisibility:completedStateTextColor:isPonderingTextEffectVisible:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a11, char a12)
{
  v18 = *a8;
  v19 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v20 = v19[7];
  v21 = a9 + v19[9];
  result = sub_21D24BDFC(a1, a9);
  *(a9 + v19[5]) = a2;
  *(a9 + v20) = a3;
  *(a9 + v19[6]) = a4;
  *(a9 + v19[8]) = a5;
  *v21 = a6;
  *(v21 + 8) = a7 & 1;
  *(a9 + v19[10]) = v18;
  *(a9 + v19[11]) = a11;
  *(a9 + v19[12]) = a12;
  return result;
}

uint64_t type metadata accessor for TTRReminderCellTitleViewModel(uint64_t a1)
{
  result = qword_280D18E90;
  if (!qword_280D18E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRReminderCellTitleViewModel.allowsEditing.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

id TTRReminderCellTitleViewModel.baseFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 24));

  return v1;
}

void TTRReminderCellTitleViewModel.baseFont.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 24);

  *(v1 + v3) = a1;
}

void *TTRReminderCellTitleViewModel.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 28));
  v2 = v1;
  return v1;
}

void TTRReminderCellTitleViewModel.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRReminderCellTitleViewModel.isCompleted.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TTRReminderCellTitleViewModel.subtaskCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

double TTRReminderCellTitleViewModel.inlineHashtagVisibility.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 40));

  sub_21DBF8E0C();
  return result;
}

void TTRReminderCellTitleViewModel.inlineHashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 40);

  *(v1 + v3) = v2;
}

id TTRReminderCellTitleViewModel.completedStateTextColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 44));

  return v1;
}

void TTRReminderCellTitleViewModel.completedStateTextColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel(0) + 44);

  *(v1 + v3) = a1;
}

uint64_t TTRReminderCellTitleViewModel.isPonderingTextEffectVisible.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t TTRReminderCellTitleViewModel.init(reminder:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v7 = v6[7];
  v8 = a3 + v6[9];
  sub_21D1D338C(a1, a3);
  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(a3 + v6[5]) = *(a1 + v9[6] + 2);
  v10 = *(a1 + v9[7]);
  *(a3 + v7) = v10;
  *(a3 + v6[6]) = a2;
  *(a3 + v6[8]) = *(a1 + v9[8]);
  v11 = (a1 + v9[23]);
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  *v8 = v12;
  *(v8 + 8) = v11;
  *(a3 + v6[10]) = *(a1 + v9[35] + 8);
  v13 = *(a1 + v9[22]);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = v10;
  result = sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Reminder);
  *(a3 + v6[11]) = v14;
  *(a3 + v6[12]) = 0;
  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRReminderCellTitleViewModel(void **a1, void **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(a2, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v114 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v114(a1 + v39, a2 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (a2 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(a2, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, a2, v48);
              *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
        v90 = a3[6];
        *(a1 + a3[5]) = *(a2 + a3[5]);
        v91 = *(a2 + v90);
        *(a1 + v90) = v91;
        v92 = a3[7];
        v93 = a3[8];
        v94 = *(a2 + v92);
        *(a1 + v92) = v94;
        *(a1 + v93) = *(a2 + v93);
        v95 = a3[9];
        v96 = a3[10];
        v97 = a1 + v95;
        v98 = a2 + v95;
        *v97 = *v98;
        v97[8] = v98[8];
        *(a1 + v96) = *(a2 + v96);
        v99 = a3[11];
        v100 = a3[12];
        v101 = *(a2 + v99);
        *(a1 + v99) = v101;
        *(a1 + v100) = *(a2 + v100);
        v102 = v91;
        v103 = v94;
        sub_21DBF8E0C();
        v104 = v101;
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v20 = a2[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *a2;
      *a1 = *a2;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(a2 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, a2 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v87 = *(a2 + v15);
        *(a1 + v15) = v87;
        v88 = v87;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, a2 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v89 = sub_21DBF563C();
      (*(*(v89 - 8) + 16))(a1 + v15, a2 + v15, v89);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v106 = *(v59 + 6);
        v115 = *(v59 + 7);
        v110 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v106, v115, v110);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v106;
        *(v58 + 7) = v115;
        v58[64] = v110;
        *(v58 + 65) = *(v59 + 65);
        v65 = v59[120];
        if (v65 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v111 = *(v59 + 10);
          v116 = *(v59 + 9);
          v66 = *(v59 + 12);
          v107 = *(v59 + 11);
          v67 = *(v59 + 13);
          v68 = *(v59 + 14);
          v69 = v65 & 1;
          sub_21D0FB960(v116, v111, v107, v66, v67, v68, v65 & 1);
          *(v58 + 9) = v116;
          *(v58 + 10) = v111;
          *(v58 + 11) = v107;
          *(v58 + 12) = v66;
          *(v58 + 13) = v67;
          *(v58 + 14) = v68;
          v58[120] = v69;
        }

        v58[121] = v59[121];
        goto LABEL_98;
      }

LABEL_95:
      v70 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v70;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v71 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v71;
      v72 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v72;
LABEL_98:
      *(a1 + v56[6]) = *(a2 + v56[6]);
      *(a1 + v56[7]) = *(a2 + v56[7]);
      *(a1 + v56[8]) = *(a2 + v56[8]);
      *(a1 + v56[9]) = *(a2 + v56[9]);
      *(a1 + v56[10]) = *(a2 + v56[10]);
      v73 = v56[11];
      v74 = *(a2 + v73);
      *(a1 + v73) = v74;
      v75 = v74;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v76 = v56[5];
    v58 = a1 + v76;
    v59 = a2 + v76;
    v77 = *(a2 + v76 + 8);
    if (v77)
    {
      *v58 = *v59;
      *(v58 + 1) = v77;
      v78 = *(v59 + 2);
      v79 = *(v59 + 3);
      v80 = *(v59 + 4);
      v81 = *(v59 + 5);
      v108 = *(v59 + 6);
      v117 = *(v59 + 7);
      v112 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v78, v79, v80, v81, v108, v117, v112);
      *(v58 + 2) = v78;
      *(v58 + 3) = v79;
      *(v58 + 4) = v80;
      *(v58 + 5) = v81;
      *(v58 + 6) = v108;
      *(v58 + 7) = v117;
      v58[64] = v112;
      *(v58 + 65) = *(v59 + 65);
      v82 = v59[120];
      if (v82 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v113 = *(v59 + 10);
        v118 = *(v59 + 9);
        v83 = *(v59 + 12);
        v109 = *(v59 + 11);
        v84 = *(v59 + 13);
        v85 = *(v59 + 14);
        v86 = v82 & 1;
        sub_21D0FB960(v118, v113, v109, v83, v84, v85, v82 & 1);
        *(v58 + 9) = v118;
        *(v58 + 10) = v113;
        *(v58 + 11) = v109;
        *(v58 + 12) = v83;
        *(v58 + 13) = v84;
        *(v58 + 14) = v85;
        v58[120] = v86;
      }

      v58[121] = v59[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRReminderCellTitleViewModel(id *a1, int *a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  v22 = *(a1 + a2[11]);
}

void **initializeWithCopy for TTRReminderCellTitleViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v117 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      v58 = *(a2 + v55 + 8);
      if (v58)
      {
        *v56 = *v57;
        *(v56 + 1) = v58;
        v59 = *(v57 + 2);
        v60 = *(v57 + 3);
        v61 = *(v57 + 4);
        v62 = *(v57 + 5);
        v63 = *(v57 + 6);
        v108 = *(v57 + 7);
        v113 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v108, v113);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v63;
        *(v56 + 7) = v108;
        v56[64] = v113;
        *(v56 + 65) = *(v57 + 65);
        v64 = v57[120];
        if (v64 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v65 = *(v57 + 9);
          v66 = *(v57 + 12);
          v109 = *(v57 + 11);
          v114 = *(v57 + 10);
          v67 = *(v57 + 13);
          v68 = *(v57 + 14);
          v69 = v64 & 1;
          sub_21D0FB960(v65, v114, v109, v66, v67, v68, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v114;
          *(v56 + 11) = v109;
          *(v56 + 12) = v66;
          *(v56 + 13) = v67;
          *(v56 + 14) = v68;
          v56[120] = v69;
        }

        a3 = v117;
        v56[121] = v57[121];
        goto LABEL_96;
      }

LABEL_93:
      v70 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v70;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v71 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v71;
      v72 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v72;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v73 = v54[11];
      v74 = *(a2 + v73);
      *(a1 + v73) = v74;
      v75 = v74;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v118 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v76 = v54[5];
    v56 = a1 + v76;
    v57 = a2 + v76;
    v77 = *(a2 + v76 + 8);
    if (v77)
    {
      *v56 = *v57;
      *(v56 + 1) = v77;
      v78 = *(v57 + 2);
      v79 = *(v57 + 3);
      v80 = *(v57 + 4);
      v81 = *(v57 + 5);
      v82 = *(v57 + 6);
      v110 = *(v57 + 7);
      v115 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v78, v79, v80, v81, v82, v110, v115);
      *(v56 + 2) = v78;
      *(v56 + 3) = v79;
      *(v56 + 4) = v80;
      *(v56 + 5) = v81;
      *(v56 + 6) = v82;
      *(v56 + 7) = v110;
      v56[64] = v115;
      *(v56 + 65) = *(v57 + 65);
      v83 = v57[120];
      if (v83 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v84 = *(v57 + 9);
        v85 = *(v57 + 12);
        v111 = *(v57 + 11);
        v116 = *(v57 + 10);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v83 & 1;
        sub_21D0FB960(v84, v116, v111, v85, v86, v87, v83 & 1);
        *(v56 + 9) = v84;
        *(v56 + 10) = v116;
        *(v56 + 11) = v111;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      a3 = v118;
      v56[121] = v57[121];
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v89 = *(a2 + v13);
      *(a1 + v13) = v89;
      v90 = v89;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v91 = sub_21DBF563C();
    (*(*(v91 - 8) + 16))(a1 + v13, a2 + v13, v91);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v112 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v112(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  v92 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v93 = *(a2 + v92);
  *(a1 + v92) = v93;
  v94 = a3[7];
  v95 = a3[8];
  v96 = *(a2 + v94);
  *(a1 + v94) = v96;
  *(a1 + v95) = *(a2 + v95);
  v97 = a3[9];
  v98 = a3[10];
  v99 = a1 + v97;
  v100 = a2 + v97;
  *v99 = *v100;
  v99[8] = v100[8];
  *(a1 + v98) = *(a2 + v98);
  v101 = a3[11];
  v102 = a3[12];
  v103 = *(a2 + v101);
  *(a1 + v101) = v103;
  *(a1 + v102) = *(a2 + v102);
  v104 = v93;
  v105 = v96;
  sub_21DBF8E0C();
  v106 = v103;
  return a1;
}

void **assignWithCopy for TTRReminderCellTitleViewModel(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v120 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v120(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v92 = *(a2 + v13);
        *(a1 + v13) = v92;
        v93 = v92;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v94 = sub_21DBF563C();
      (*(*(v94 - 8) + 16))(a1 + v13, a2 + v13, v94);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      if (*(a2 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v112 = *(v57 + 6);
        v121 = *(v57 + 7);
        v116 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v112, v121, v116);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v112;
        *(v56 + 7) = v121;
        v56[64] = v116;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v62 = v57[120];
        if (v62 == 255)
        {
          v73 = *(v57 + 72);
          v74 = *(v57 + 88);
          v75 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v75;
          *(v56 + 88) = v74;
          *(v56 + 72) = v73;
        }

        else
        {
          v117 = *(v57 + 10);
          v122 = *(v57 + 9);
          v63 = *(v57 + 12);
          v113 = *(v57 + 11);
          v64 = *(v57 + 13);
          v65 = *(v57 + 14);
          v66 = v62 & 1;
          sub_21D0FB960(v122, v117, v113, v63, v64, v65, v62 & 1);
          *(v56 + 9) = v122;
          *(v56 + 10) = v117;
          *(v56 + 11) = v113;
          *(v56 + 12) = v63;
          *(v56 + 13) = v64;
          *(v56 + 14) = v65;
          v56[120] = v66;
        }

        v56[121] = v57[121];
        goto LABEL_97;
      }

LABEL_94:
      v67 = *v57;
      v68 = *(v57 + 1);
      v69 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v69;
      *v56 = v67;
      *(v56 + 1) = v68;
      v70 = *(v57 + 4);
      v71 = *(v57 + 5);
      v72 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v71;
      *(v56 + 6) = v72;
      *(v56 + 4) = v70;
LABEL_97:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v76 = v54[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v54[5];
    v56 = a1 + v79;
    v57 = a2 + v79;
    if (*(a2 + v79 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v80 = *(v57 + 2);
      v81 = *(v57 + 3);
      v82 = *(v57 + 4);
      v83 = *(v57 + 5);
      v114 = *(v57 + 6);
      v123 = *(v57 + 7);
      v118 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v114, v123, v118);
      *(v56 + 2) = v80;
      *(v56 + 3) = v81;
      *(v56 + 4) = v82;
      *(v56 + 5) = v83;
      *(v56 + 6) = v114;
      *(v56 + 7) = v123;
      v56[64] = v118;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v84 = v57[120];
      if (v84 == 255)
      {
        v89 = *(v57 + 72);
        v90 = *(v57 + 88);
        v91 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v91;
        *(v56 + 88) = v90;
        *(v56 + 72) = v89;
      }

      else
      {
        v119 = *(v57 + 10);
        v124 = *(v57 + 9);
        v85 = *(v57 + 12);
        v115 = *(v57 + 11);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v124, v119, v115, v85, v86, v87, v84 & 1);
        *(v56 + 9) = v124;
        *(v56 + 10) = v119;
        *(v56 + 11) = v115;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v95 = a3[6];
  v96 = *(a2 + v95);
  v97 = *(a1 + v95);
  *(a1 + v95) = v96;
  v98 = v96;

  v99 = a3[7];
  v100 = *(a1 + v99);
  v101 = *(a2 + v99);
  *(a1 + v99) = v101;
  v102 = v101;

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v103 = a3[9];
  v104 = a1 + v103;
  v105 = a2 + v103;
  v106 = v105[8];
  *v104 = *v105;
  v104[8] = v106;
  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_21DBF8E0C();

  v107 = a3[11];
  v108 = *(a2 + v107);
  v109 = *(a1 + v107);
  *(a1 + v107) = v108;
  v110 = v108;

  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_21DA66184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRReminderCellTitleViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v43] = a2[v43];
  v44 = a3[9];
  v45 = a3[10];
  v46 = &a1[v44];
  v47 = &a2[v44];
  *v46 = *v47;
  v46[8] = v47[8];
  *&a1[v45] = *&a2[v45];
  v48 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  a1[v48] = a2[v48];
  return a1;
}

void *assignWithTake for TTRReminderCellTitleViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[7];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);

  v46 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v47 = a1 + v46;
  v48 = a2 + v46;
  *v47 = *v48;
  v47[8] = v48[8];
  *(a1 + a3[10]) = *(a2 + a3[10]);

  v49 = a3[11];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_21DA684A8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA68568(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21DA68600(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *(((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    *(((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24) = v10;
    (**(v10 - 8))();
  }

  return v3;
}

uint64_t sub_21DA6872C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_21DA68798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = *(((v6 + a2) & 0xFFFFFFFFFFFFFFF8) + 24);
  *(((v6 + a1) & 0xFFFFFFFFFFFFFFF8) + 24) = v7;
  (**(v7 - 8))();
  return a1;
}

uint64_t sub_21DA6884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  __swift_assign_boxed_opaque_existential_0(((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8), ((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8));
  return a1;
}

uint64_t sub_21DA688C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t sub_21DA68940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v9 = v8[1];
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t sub_21DA689C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21DA68B00(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[2] = 0;
      v18[3] = 0;
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[3] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_21DA68CBC(uint64_t a1, __n128 a2)
{
  v45 = sub_21DBF6D7C();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_21DBF6F8C();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v11 = sub_21DBFBF9C();
    v47 = v11;
    v12 = sub_21DBF718C();
    v34 = *(v12 + 16);
    if (!v34)
    {
      break;
    }

    v13 = 0;
    v14 = v29;
    v33 = v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v32 = v29 + 16;
    v46 = v3 + 16;
    v15 = (v3 + 8);
    v30 = (v29 + 8);
    v38 = v3;
    v39 = v8;
    v44 = a1;
    v28 = v9;
    v31 = v12;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v17 = *(v14 + 72);
      v35 = v13;
      (*(v14 + 16))(v37, v33 + v17 * v13, v9);
      if (v11 >> 62)
      {
        if (sub_21DBFBD7C() >= a1)
        {
          goto LABEL_6;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
        goto LABEL_6;
      }

      v18 = sub_21DBF6F7C();
      v43 = *(v18 + 16);
      if (v43)
      {
        break;
      }

LABEL_5:
      v14 = v29;
LABEL_6:
      v16 = v35 + 1;
      (*v30)(v37, v9);
      v13 = v16;
      v12 = v31;
      if (v16 == v34)
      {
        goto LABEL_36;
      }
    }

    v9 = 0;
    v36 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v41 = v18 + v36;
    v42 = v18;
    v19 = v45;
    while (v9 < *(v18 + 16))
    {
      v20 = *(v3 + 72);
      v21 = *(v3 + 16);
      v21(v8, v41 + v20 * v9, v19);
      if (v11 >> 62)
      {
        if (sub_21DBFBD7C() < a1)
        {
LABEL_17:
          sub_21DBF6D5C();
          v22 = swift_beginAccess();
          MEMORY[0x223D42D80](v22);
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
            v8 = v39;
          }

          sub_21DBFA6CC();
          v11 = v47;
          swift_endAccess();
          v23 = sub_21DBF6D6C();
          if (v23)
          {
            v24 = *(v23 + 16);
            a1 = v44;
            v19 = v45;
            v40 = v23;
            if (v24)
            {
              v25 = v23 + v36;
              do
              {
                v21(v5, v25, v19);
                if (v11 >> 62)
                {
                  if (sub_21DBFBD7C() < a1)
                  {
LABEL_26:
                    sub_21DBF6D5C();
                    v26 = swift_beginAccess();
                    MEMORY[0x223D42D80](v26);
                    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_21DBFA63C();
                    }

                    sub_21DBFA6CC();
                    v11 = v47;
                    swift_endAccess();
                    a1 = v44;
                    v19 = v45;
                  }
                }

                else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
                {
                  goto LABEL_26;
                }

                (*v15)(v5, v19);
                v25 += v20;
                --v24;
              }

              while (v24);
            }

            v3 = v38;
            v8 = v39;
          }

          else
          {
            a1 = v44;
            v19 = v45;
          }
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        goto LABEL_17;
      }

      ++v9;
      (*v15)(v8, v19);
      v18 = v42;
      if (v9 == v43)
      {

        v9 = v28;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_21DBFBD7C();
  }

LABEL_36:

  return v11;
}

Swift::tuple_contact_CNContact_fullname_String __swiftcall REMContactsProviderType.syncContactAndFullName(for:keys:)(RemindersUICore::TTRParticipantModel *a1, Swift::OpaquePointer_optional keys)
{
  sub_21DA6977C(keys.value._rawValue);
  emailAddress = a1->emailAddress;
  lastName = a1->lastName;
  v23 = emailAddress;
  phoneNumber = a1->phoneNumber;
  firstName = a1->firstName;
  displayName = a1->displayName;
  v21 = firstName;
  v5 = TTRParticipantModel.contactHandles.getter();
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBF6A4C();
    v9 = v8;

    if ((v9 & 1) == 0)
    {

      goto LABEL_7;
    }

    displayName.value._countAndFlagsBits = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    swift_willThrowTypedImpl();

    sub_21D3A229C(v7);
  }

  else
  {
  }

  v7 = 0;
LABEL_7:
  v10 = a1->emailAddress;
  lastName = a1->lastName;
  v23 = v10;
  phoneNumber = a1->phoneNumber;
  v11 = a1->firstName;
  displayName = a1->displayName;
  v21 = v11;
  v12 = sub_21DA69814(&displayName.value._countAndFlagsBits, v7);
  v14 = v13;
  v16 = v15;

  v17 = v12;
  v18 = v14;
  v19 = v16;
  result.fullname._object = v19;
  result.fullname._countAndFlagsBits = v18;
  result.contact.super.isa = v17;
  return result;
}

__n128 REMContactsProviderType.loadContactSynchronously(for:keys:)(Swift::String_optional *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DA6977C(a2);
  v5 = a1[4];
  v40 = a1[3];
  v41 = v5;
  v42 = a1[5];
  v6 = a1[2];
  v38 = a1[1];
  v39 = v6;
  v7 = TTRParticipantModel.contactHandles.getter();
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_21DBF6A4C();
  v11 = v10;

  if (v11)
  {
    sub_21D3A229C(v9);
LABEL_5:
    v12 = a1[2];
    v13 = a1[4];
    v37.lastName = a1[3];
    v37.emailAddress = v13;
    v14 = a1[4];
    v37.phoneNumber = a1[5];
    v15 = a1[2];
    v37.displayName = a1[1];
    v37.firstName = v15;
    lastName = v37.lastName;
    v35 = v14;
    v36 = a1[5];
    displayName = v37.displayName;
    v33 = v12;
    sub_21D1D9B34(&v37, &v38);
    v16 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&displayName);
    v40 = lastName;
    v41 = v35;
    v42 = v36;
    v38 = displayName;
    v39 = v33;
    sub_21D1D9B90(&v38);

    a1->value._object = v16;
    return result;
  }

  object = a1->value._object;
  sub_21D64F74C(v9);
  v19 = v9;

  v20 = a1[2];
  v21 = a1[4];
  v29 = a1[3];
  v30 = v21;
  v22 = a1[4];
  v31 = a1[5];
  v23 = a1[2];
  v28[0] = a1[1];
  v24 = v28[0];
  v28[1] = v23;
  v40 = v29;
  v41 = v22;
  v42 = a1[5];
  a1->value._object = v9;
  v38 = v24;
  v39 = v20;
  sub_21D1D9B34(v28, &v37);
  TTRParticipantModel.updatingNames(with:)(&v37, v19);
  sub_21D3A229C(v9);
  sub_21D3A229C(v9);
  lastName = v40;
  v35 = v41;
  v36 = v42;
  displayName = v38;
  v33 = v39;
  sub_21D1D9B90(&displayName);
  v25 = a1[4];
  v40 = a1[3];
  v41 = v25;
  v42 = a1[5];
  v26 = a1[2];
  v38 = a1[1];
  v39 = v26;
  sub_21D1D9B90(&v38);
  emailAddress = v37.emailAddress;
  a1[3] = v37.lastName;
  a1[4] = emailAddress;
  a1[5] = v37.phoneNumber;
  result = v37.firstName;
  a1[1] = v37.displayName;
  a1[2] = result;
  return result;
}

void REMContactsProviderType.loadContact(for:keys:updateHandler:)(Swift::String_optional *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[2];
  v13 = a1[4];
  v49 = a1[3];
  v50 = v13;
  v14 = a1[4];
  v51 = a1[5];
  v15 = a1[2];
  v48[0] = a1[1];
  v48[1] = v15;
  v45 = v49;
  v46 = v14;
  v47 = a1[5];
  v43 = v48[0];
  v44 = v12;
  sub_21D1D9B34(v48, v52);
  v16 = sub_21DA69BEC(&v43.value._countAndFlagsBits, a2, a3, a4, a5, a6);
  v52[2] = v45;
  v52[3] = v46;
  v52[4] = v47;
  v52[0] = v43;
  v52[1] = v44;
  sub_21D1D9B90(v52);
  if (v16)
  {
    object = a1->value._object;
    v18 = v16;

    v19 = a1[2];
    v20 = a1[4];
    v34 = a1[3];
    v35 = v20;
    v21 = a1[4];
    v36 = a1[5];
    v22 = a1[2];
    v33[0] = a1[1];
    v23 = v33[0];
    v33[1] = v22;
    v45 = v34;
    v46 = v21;
    v47 = a1[5];
    a1->value._object = v16;
    v43 = v23;
    v44 = v19;
    sub_21D1D9B34(v33, &v42);
    TTRParticipantModel.updatingNames(with:)(&v42, v18);

    lastName = v45;
    v40 = v46;
    v41 = v47;
    displayName = v43;
    v38 = v44;
    sub_21D1D9B90(&displayName);
    v24 = a1[4];
    v45 = a1[3];
    v46 = v24;
    v47 = a1[5];
    v25 = a1[2];
    v43 = a1[1];
    v44 = v25;
    sub_21D1D9B90(&v43);
    emailAddress = v42.emailAddress;
    a1[3] = v42.lastName;
    a1[4] = emailAddress;
    a1[5] = v42.phoneNumber;
    firstName = v42.firstName;
    a1[1] = v42.displayName;
    a1[2] = firstName;
  }

  else
  {
    v28 = a1[2];
    v29 = a1[4];
    v42.lastName = a1[3];
    v42.emailAddress = v29;
    v30 = a1[4];
    v42.phoneNumber = a1[5];
    v31 = a1[2];
    v42.displayName = a1[1];
    v42.firstName = v31;
    lastName = v42.lastName;
    v40 = v30;
    v41 = a1[5];
    displayName = v42.displayName;
    v38 = v28;
    sub_21D1D9B34(&v42, &v43);
    v32 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&displayName);
    v45 = lastName;
    v46 = v40;
    v47 = v41;
    v43 = displayName;
    v44 = v38;
    sub_21D1D9B90(&v43);

    a1->value._object = v32;
  }
}

uint64_t sub_21DA6977C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_21DC09CF0;
    *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  }

  sub_21DBF8E0C();
  return v1;
}

id sub_21DA69814(__int128 *a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v5 = a1[3];
    v16 = a1[2];
    v17 = v5;
    v18 = a1[4];
    v6 = a1[1];
    v14 = *a1;
    v15 = v6;
    v4 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v14);
  }

  v7 = objc_opt_self();
  v8 = a2;
  v9 = [v7 stringFromContact:v4 style:0];
  if (v9)
  {
    v10 = v9;
    sub_21DBFA16C();
  }

  else
  {
    v11 = a1[3];
    v16 = a1[2];
    v17 = v11;
    v18 = a1[4];
    v12 = a1[1];
    v14 = *a1;
    v15 = v12;
    TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  }

  return v4;
}

id REMContactsProviderType.contactAndFullName(for:keys:updateHandler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - v10);
  sub_21DA6977C(a2);
  v12 = a1[3];
  v28 = a1[2];
  v29 = v12;
  v30 = a1[4];
  v13 = a1[1];
  v26 = *a1;
  v27 = v13;
  v14 = TTRParticipantModel.contactHandles.getter();
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  sub_21DBF6A7C();
  v16 = (*(v9 + 88))(v11, v8);
  if (v16 == *MEMORY[0x277D450E0])
  {

    (*(v9 + 96))(v11, v8);
    v17 = swift_allocObject();
    *(v17 + 16) = v24;
    *(v17 + 24) = v25;

    v18 = sub_21DBF816C();
    sub_21DBF820C();

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  if (v16 == *MEMORY[0x277D450E8])
  {

    (*(v9 + 96))(v11, v8);
    v19 = *v11;
LABEL_10:
    v20 = a1[3];
    v28 = a1[2];
    v29 = v20;
    v30 = a1[4];
    v21 = a1[1];
    v26 = *a1;
    v27 = v21;
    v22 = sub_21DA69814(&v26, v19);

    return v22;
  }

  if (v16 == *MEMORY[0x277D450D8])
  {

    (*(v9 + 8))(v11, v8);
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DA69BEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = a1[3];
  v25 = a1[2];
  v26 = v13;
  v27 = a1[4];
  v14 = a1[1];
  v23 = *a1;
  v24 = v14;
  sub_21DA6977C(a2);
  v15 = TTRParticipantModel.contactHandles.getter();
  if (v15)
  {
    v16 = v15;
    sub_21DBF6A7C();
    v17 = (*(v10 + 88))(v12, v9);
    if (v17 == *MEMORY[0x277D450E0])
    {

      (*(v10 + 96))(v12, v9);
      v18 = swift_allocObject();
      *(v18 + 16) = v22;
      *(v18 + 24) = a4;

      v19 = sub_21DBF816C();
      sub_21DBF820C();
    }

    else
    {
      if (v17 == *MEMORY[0x277D450E8])
      {

        (*(v10 + 96))(v12, v9);
        return *v12;
      }

      if (v17 != *MEMORY[0x277D450D8])
      {
        result = sub_21DBFC63C();
        __break(1u);
        return result;
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
  }

  return 0;
}

Class REMContactsProviderType.loadContact(for:keys:updateHandler:)(Swift::String_optional *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[1];
  v13 = a1[3];
  v30 = a1[2];
  v31 = v13;
  v14 = a1[3];
  v32 = a1[4];
  v15 = a1[1];
  v29[0] = *a1;
  v29[1] = v15;
  v28.lastName = v30;
  v28.emailAddress = v14;
  v28.phoneNumber = a1[4];
  v28.displayName = v29[0];
  v28.firstName = v12;
  sub_21D1D9B34(v29, &v33);
  v16.super.isa = sub_21DA69BEC(&v28.displayName.value._countAndFlagsBits, a2, a3, a4, a5, a6);
  v33 = v28;
  sub_21D1D9B90(&v33);
  if (v16.super.isa)
  {
    v17 = a1[3];
    v26.lastName = a1[2];
    v26.emailAddress = v17;
    v26.phoneNumber = a1[4];
    v18 = a1[1];
    v26.displayName = *a1;
    v26.firstName = v18;
    TTRParticipantModel.updatingNames(with:)(&v28, v16);
    v27 = v26;
    sub_21D1D9B90(&v27);
    emailAddress = v28.emailAddress;
    a1[2] = v28.lastName;
    a1[3] = emailAddress;
    a1[4] = v28.phoneNumber;
    firstName = v28.firstName;
    *a1 = v28.displayName;
    a1[1] = firstName;
  }

  else
  {
    v21 = a1[1];
    v22 = a1[3];
    v27.lastName = a1[2];
    v27.emailAddress = v22;
    v23 = a1[3];
    v27.phoneNumber = a1[4];
    v24 = a1[1];
    v27.displayName = *a1;
    v27.firstName = v24;
    v26.lastName = v27.lastName;
    v26.emailAddress = v23;
    v26.phoneNumber = a1[4];
    v26.displayName = v27.displayName;
    v26.firstName = v21;
    sub_21D1D9B34(&v27, &v28);
    v16.super.isa = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v26);
    v28 = v26;
    sub_21D1D9B90(&v28);
  }

  return v16.super.isa;
}

id static UIFont.roundedSystemFont(ofSize:weight:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:a1 weight:a2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign_];

  if (!v7)
  {
    return v5;
  }

  v8 = [v4 fontWithDescriptor:v7 size:0.0];

  return v8;
}

UIFont __swiftcall UIFont.addingTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];
  if ((a1 & ~v4) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

    return v7;
  }

  else
  {

    return v9;
  }
}

id static UIFont.roundedCustomFont(textStyle:contentSizeCategory:maximumContentSizeCategory:weight:)(uint64_t a1, UIContentSizeCategory lhs, UIContentSizeCategory rhs, uint64_t a4, char a5)
{
  if (UIContentSizeCategoryCompareToCategory(lhs, rhs) == NSOrderedDescending)
  {
    v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v10 = objc_opt_self();
    v11 = [v10 preferredFontForTextStyle:a1 compatibleWithTraitCollection:v9];
    v12 = v11;
    if ((a5 & 1) == 0)
    {
      [v11 pointSize];
      v13 = [v10 systemFontOfSize_weight_];

      v12 = v13;
    }

    v14 = [v12 fontDescriptor];
    v15 = [v14 fontDescriptorWithDesign_];

    if (v15)
    {
      v16 = [v10 fontWithDescriptor:v15 size:0.0];

      return v16;
    }

    else
    {
      return v12;
    }
  }

  else
  {

    return sub_21D10FA9C(a1, a4, a5 & 1, 0);
  }
}

UIFont __swiftcall UIFont.withTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = *&a1;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

id static UIFont.roundedSystemFont.getter()
{
  UIAccessibilityIsBoldTextEnabled();
  v0 = objc_opt_self();
  [v0 systemFontSize];
  v1 = [v0 systemFontOfSize_weight_];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return v1;
  }

  v4 = [v0 fontWithDescriptor:v3 size:0.0];

  return v4;
}

id static UIFont.roundedFont(ofSizeMatching:weight:)(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  [v5 pointSize];
  v7 = v6;

  v8 = [v4 systemFontOfSize:v7 weight:a2];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (!v10)
  {
    return v8;
  }

  v11 = [v4 fontWithDescriptor:v10 size:0.0];

  return v11;
}

UIFont __swiftcall UIFont.withCustomWeight(_:)(UIFontWeight a1)
{
  v3 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652B0, &qword_21DC38D48);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D74430];
  *(inited + 16) = xmmword_21DC08D00;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = a1;
  v7 = v6;
  v8 = sub_21D10FD44(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE652B8, &qword_21DC38D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C0, &qword_21DC38D58);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v10 = *MEMORY[0x277D74380];
  *(v9 + 32) = *MEMORY[0x277D74380];
  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C8, &qword_21DC38D60);
  *(v9 + 40) = v8;
  v11 = v10;
  sub_21D10FFE4(v9);
  swift_setDeallocating();
  sub_21D0CF7E0(v9 + 32, &qword_27CE58160, &qword_21DC08F10);
  type metadata accessor for AttributeName(0);
  sub_21D11010C();
  v12 = sub_21DBF9E5C();

  v13 = [v3 fontDescriptorByAddingAttributes_];

  if (v13)
  {
    v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

    return v14;
  }

  else
  {

    return v16;
  }
}

id static UIFont.bodyFont.getter()
{
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  return sub_21D9004E8();
}

id sub_21DA6A9E4(uint64_t a1)
{
  if (qword_280D176B8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_21D900614(a1);
}

id static UIFont.roundedNavigationTitleFont.getter()
{
  v0 = *MEMORY[0x277D76988];
  v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v1];

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (!v5)
  {
    return v3;
  }

  v6 = [v2 fontWithDescriptor:v5 size:0.0];

  return v6;
}

id static UIFont.roundedLargeNavigationTitleFont.getter()
{
  v0 = *MEMORY[0x277D769A8];
  v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v1];
  [v3 pointSize];
  v4 = [v2 systemFontOfSize_weight_];

  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithDesign_];

  if (!v6)
  {
    return v4;
  }

  v7 = [v2 fontWithDescriptor:v6 size:0.0];

  return v7;
}

void sub_21DA6ACBC()
{
  type metadata accessor for TTRIFontCache();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_contentSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_boldTextStatusChanged_ name:*MEMORY[0x277D76448] object:0];

  qword_280D176C0 = v0;
}

id sub_21DA6ADA8(NSString *a1, NSString *a2, uint64_t a3, char a4)
{
  v7 = *MEMORY[0x277D76918];
  if (UIContentSizeCategoryCompareToCategory(a1, a2) == NSOrderedDescending)
  {
    v8 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v9 = objc_opt_self();
    v10 = [v9 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
    v11 = v10;
    if ((a4 & 1) == 0)
    {
      [v10 pointSize];
      v12 = [v9 systemFontOfSize_weight_];

      v11 = v12;
    }

    v13 = [v11 fontDescriptor];
    v14 = [v13 fontDescriptorWithDesign_];

    if (v14)
    {
      v15 = [v9 fontWithDescriptor:v14 size:0.0];

      return v15;
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return sub_21D10FA9C(v7, a3, a4 & 1, 0);
  }
}

uint64_t TTRObservableViewModel.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t *TTRObservableViewModel.deinit()
{
  v1 = v0;

  sub_21DBF905C();

  v2 = *(*v0 + 88);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t TTRObservableViewModel.__deallocating_deinit()
{
  TTRObservableViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRITextCellContentState.init(text:placeholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = a4;
  *(a5 + 40) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  return result;
}

void *TTRITextCellContentState.text.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = [v1 string];
    v4 = sub_21DBFA16C();

    sub_21D5968AC(v1, v2, 1);
    return v4;
  }

  else
  {
    sub_21DBF8E0C();
  }

  return v1;
}

Swift::Void __swiftcall TTRITextCellContent.setCurrentText(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *v1;
  v6 = *MEMORY[0x277D85000] & *v1;
  v7 = *((*MEMORY[0x277D85000] & v5) + 0x68);
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8)
  {
    v10 = *(v6 + 232);
    v9 = *(v6 + 240);
    v11 = *(v9 + 24);
    v12 = v8;
    v13 = v11(v10, v9);
    v15 = v14;

    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    sub_21DBF8E0C();
    v17(countAndFlagsBits, object, ObjectType, v15);
    sub_21DA6D780(v13, v15, 0);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRITextCellContent.currentText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    return 0;
  }

  v6 = v1 + 232;
  v4 = *(v1 + 232);
  v5 = *(v6 + 8);
  v7 = *(v5 + 24);
  v8 = v3;
  v7(v4, v5);
  v10 = v9;

  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(ObjectType, v10);
  swift_unknownObjectRelease();
  return v12;
}

Swift::Void __swiftcall TTRITextCellContent.setTextIfNotEditing(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((TTRITextCellContent.isEditing.getter() & 1) == 0)
  {
    v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = v4[16];
    v8 = v4[17];
    v10 = *(v4 + 3);
    v9 = *(v4 + 4);
    v11 = *(v4 + 5);
    sub_21D59B950(v5, v6, v7);
    v12 = v11;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D5968AC(v5, v6, v7);
    v14 = countAndFlagsBits;
    v15 = object;
    v16 = 0;
    v17 = v8;
    v18 = v10;
    v19 = v9;
    v20 = v11;
    sub_21DBE9678(&v14);
    v13 = v20;
    sub_21D5968AC(v14, v15, v16);
  }
}

void TTRITextCellContentState.text.setter(uint64_t a1, uint64_t a2)
{
  sub_21D5968AC(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
}

Swift::Void __swiftcall TTRITextCellContent.setCellSelected(isSelected:)(Swift::Bool isSelected)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = v3[16];
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = isSelected;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_21D59B950(v4, v5, v6);
  v10 = v9;
  sub_21DBF8E0C();
  sub_21DBE9678(&v12);
  v11 = v18;
  sub_21D5968AC(v12, v13, v14);
}

Swift::Void __swiftcall TTRITextCellTextArea.setTextIfChanged(_:)(Swift::String_optional a1)
{
  v3 = v2;
  v4 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v7 = (*(v2 + 8))();
  if (!v8)
  {
    if (!object)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!object)
  {

LABEL_12:
    v11 = *(v3 + 16);
    sub_21DBF8E0C();

    v11(countAndFlagsBits, object, v4, v3);
    return;
  }

  if (v7 != countAndFlagsBits || v8 != object)
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }
}

uint64_t sub_21DA6B858(uint64_t *a1, uint64_t *a2)
{
  if (a1[2])
  {
    if (a2[2])
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      return sub_21DBFB63C() & 1;
    }

    return 0;
  }

  if (a2[2])
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRITextCellContentState.placeholder.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

void TTRITextCellContentState.placeholder.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void sub_21DA6B998(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v5 = [v3 string];
    v6 = sub_21DBFA16C();
    v8 = v7;

    sub_21D5968AC(v3, v4, 1);
    v3 = v6;
    v4 = v8;
  }

  else
  {
    sub_21DBF8E0C();
  }

  *a2 = v3;
  a2[1] = v4;
}

void (*TTRITextCellContentState.text.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7)
  {
    v8 = [v5 string];
    v9 = sub_21DBFA16C();
    v11 = v10;

    sub_21D5968AC(v5, v6, 1);
    v5 = v9;
    v6 = v11;
  }

  else
  {
    sub_21DBF8E0C();
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_21DA6BB18;
}

void sub_21DA6BB18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 40);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[2];
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D5968AC(v7, v6, v5);
    *v8 = v4;
    *(v8 + 8) = v3;
    *(v8 + 16) = 0;
  }

  else
  {
    sub_21D5968AC((*a1)[3], v6, v5);
    *v8 = v4;
    *(v8 + 8) = v3;
    *(v8 + 16) = 0;
  }

  free(v2);
}

id TTRITextCellContentState.attributedText.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {

    return v1;
  }

  else
  {
    v3 = *(v0 + 8);
    v7 = *v0;
    v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v5 = sub_21DBFA12C();
    v6 = [v4 initWithString_];

    return v6;
  }
}

void sub_21DA6BC78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v7 = sub_21DBFA12C();
    v4 = [v6 initWithString_];
  }

  *a2 = v4;
}

void TTRITextCellContentState.attributedText.setter(uint64_t a1)
{
  sub_21D5968AC(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
}

void (*TTRITextCellContentState.attributedText.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = *v1;
  *(v3 + 16) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 24) = v6;
  v7 = *(v1 + 16);
  *(v3 + 32) = v7;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v10 = sub_21DBFA12C();
    v8 = [v9 initWithString_];
  }

  *v4 = v8;
  return sub_21DA6BE4C;
}

void sub_21DA6BE4C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v8 = v6;
    sub_21D5968AC(v5, v4, v3);
    *v7 = v8;
    v7[1] = 0;
    *(v7 + 16) = 1;
  }

  else
  {
    sub_21D5968AC((*a1)[2], v4, v3);
    *v7 = v6;
    v7[1] = 0;
    *(v7 + 16) = 1;
  }

  free(v2);
}

void *TTRITextCellContentState.textColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t TTRITextCellContentState.init(attributedText:placeholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = a2;
  return result;
}

uint64_t sub_21DA6BF94@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652D8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F9B4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6C034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F9C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652D8);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6C19C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652E0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6C23C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652E0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6C3A4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652E8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6C444(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652E8);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6C5AC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652F0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F968;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6C64C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F918;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652F0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6C7B4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652F8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F8DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6C854(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F89C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652F8);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6C9BC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE65300);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F9B8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6CA5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F9C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65300);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6CBC4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE65308);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F834;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6CC64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F830;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65308);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA6CD4C(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}
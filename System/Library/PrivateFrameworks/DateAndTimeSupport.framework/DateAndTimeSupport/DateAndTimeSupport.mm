id DTResolveCity(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:v1];
    if (v2)
    {
      v3 = [MEMORY[0x277CEC588] sharedManager];
      v4 = [v3 citiesWithTimeZone:v2];
    }

    else
    {
      v6 = [v1 rangeOfString:{@", "}];
      v7 = [MEMORY[0x277CEC588] sharedManager];
      v3 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v7 cityForClassicIdentifier:v1];

        v8 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v4 = [v7 citiesMatchingName:v1 localized:0];
    }

    v8 = v4;

    if (v8 && [v8 count])
    {
      v5 = [v8 objectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CEC588] sharedManager];
    v5 = [v2 bestCityForLegacyCity:v1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CEC580]) initWithProperties:v1];
  }

  else
  {
    v5 = 0;
  }

LABEL_18:

  return v5;
}

void type metadata accessor for Name()
{
  if (!qword_27EEA0D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EEA0D58);
    }
  }
}

id sub_248678B98()
{
  type metadata accessor for FindDateAndTimeSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EEA0EA8 = result;
  return result;
}

uint64_t sub_248678BF8(uint64_t a1, id *a2)
{
  result = sub_24868789C();
  *a2 = 0;
  return result;
}

uint64_t sub_248678C70(uint64_t a1, id *a2)
{
  v3 = sub_2486878AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_248678CF0@<X0>(uint64_t *a1@<X8>)
{
  sub_2486878BC();
  v2 = sub_24868788C();

  *a1 = v2;
  return result;
}

uint64_t sub_248678D34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24868788C();

  *a2 = v3;
  return result;
}

uint64_t sub_248678D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2486878BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_248678DA8(uint64_t a1)
{
  v2 = sub_248679068(&qword_27EEA0D78, &unk_248688370);
  v3 = sub_248679068(&qword_27EEA0D80, &unk_248688310);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_248678EA8()
{
  v0 = sub_2486878BC();
  v1 = MEMORY[0x24C1D4C30](v0);

  return v1;
}

uint64_t sub_248678EE4(uint64_t a1)
{
  sub_2486878BC();
  sub_2486878EC();
}

uint64_t sub_248678F38(uint64_t a1)
{
  sub_2486878BC();
  sub_248687B9C();
  sub_2486878EC();
  v1 = sub_248687BAC();

  return v1;
}

uint64_t sub_248678FAC(void *a1, uint64_t *a2)
{
  v2 = sub_2486878BC();
  v4 = v3;
  if (v2 == sub_2486878BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_248687B3C();
  }

  return v7 & 1;
}

uint64_t sub_248679068(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2486790AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2486791EC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2486790DC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_2486791EC();
  if (v2 != (result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

unint64_t sub_2486791EC()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (sub_2486835F8())
  {
    if (qword_27EEA0D40 != -1)
    {
      swift_once();
    }

    v0 = qword_27EEA0EC8;
    v1 = sub_24868788C();
    LODWORD(v0) = [v0 BOOLForKey_];

    return v0 ^ 1;
  }

  else
  {
    if (qword_27EEA0D40 != -1)
    {
      swift_once();
    }

    v3 = qword_27EEA0EC8;
    v4 = sub_24868788C();
    v5 = [v3 BOOLForKey_];

    return v5;
  }
}

id sub_248679374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2486791EC();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for DateAndTimeSettingsState(uint64_t a1)
{
  result = qword_27EEA0DE0;
  if (!qword_27EEA0DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2486793F4(char a1)
{
  v1 = a1 & 1;
  result = sub_2486791EC();
  if ((result & 1) != v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

void sub_248679500(uint64_t a1, char a2)
{
  v4 = sub_2486835F8() ^ 1 | a2;
  v5 = sub_2486835F8();
  swift_getKeyPath();
  v13 = a1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();

  if (qword_27EEA0D40 != -1)
  {
    swift_once();
  }

  v6 = v5 | a2 ^ 1;
  v7 = qword_27EEA0EC8;
  if (v4)
  {
    v8 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    LOBYTE(v13) = 1;
    v8 = MEMORY[0x277D839B0];
  }

  v16 = v8;
  sub_24868737C(&v13, 0xD000000000000017, 0x8000000248688A70);
  sub_248685B58(&v13, &qword_27EEA0E00, &qword_248688810);
  if (v6)
  {
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    LOBYTE(v13) = 1;
    v9 = MEMORY[0x277D839B0];
  }

  v16 = v9;
  sub_24868737C(&v13, 0xD000000000000017, 0x8000000248688A50);
  sub_248685B58(&v13, &qword_27EEA0E00, &qword_248688810);
  [v7 synchronize];
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = sub_24868788C();
  CFNotificationCenterPostNotification(v10, v11, 0, 0, 1u);

  v12 = sub_24868788C();
  CFNotificationCenterPostNotification(v10, v12, 0, 0, 1u);
}

id (*sub_2486797A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = sub_2486791EC() & 1;
  return sub_2486797EC;
}

id sub_2486797EC(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = sub_2486791EC();
  if (a2)
  {
    if (((v5 ^ result) & 1) == 0)
    {
      return result;
    }
  }

  else if (((v5 ^ result) & 1) == 0)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *a1 = v4;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

void sub_2486799A4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEA0ED0;
  v4 = sub_24868788C();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3 ^ 1;
}

uint64_t sub_248679AE0()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED0;
  v1 = sub_24868788C();
  LODWORD(v0) = [v0 BOOLForKey_];

  return v0 ^ 1;
}

id sub_248679C10(char a1)
{
  if (qword_27EEA0D48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27EEA0ED0;
  v5 = MEMORY[0x277D839B0];
  v4[0] = (a1 & 1) == 0;
  sub_24868737C(v4, 0xD000000000000012, 0x8000000248688A90);
  sub_248685B58(v4, &qword_27EEA0E00, &qword_248688810);
  return [v1 synchronize];
}

uint64_t (*sub_248679CE0(uint64_t *a1))()
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
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v5 = qword_27EEA0ED0;
  v6 = sub_24868788C();
  LOBYTE(v5) = [v5 BOOLForKey_];

  *(v4 + 32) = v5 ^ 1;
  return sub_248679E48;
}

void sub_248679E48(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

void sub_248679F10(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEA0ED0;
  v4 = sub_24868788C();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3 ^ 1;
}

uint64_t sub_24867A04C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

uint64_t sub_24867A108()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED0;
  v1 = sub_24868788C();
  LODWORD(v0) = [v0 BOOLForKey_];

  return v0 ^ 1;
}

uint64_t sub_24867A238(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867A2F0(char a1)
{
  if (qword_27EEA0D48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27EEA0ED0;
  v5 = MEMORY[0x277D839B0];
  v4[0] = (a1 & 1) == 0;
  sub_24868737C(v4, 0xD000000000000012, 0x8000000248688AB0);
  sub_248685B58(v4, &qword_27EEA0E00, &qword_248688810);
  return [v1 synchronize];
}

uint64_t (*sub_24867A3C0(uint64_t *a1))()
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
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D48 != -1)
  {
    swift_once();
  }

  v5 = qword_27EEA0ED0;
  v6 = sub_24868788C();
  LOBYTE(v5) = [v5 BOOLForKey_];

  *(v4 + 32) = v5 ^ 1;
  return sub_24867A528;
}

void sub_24867A528(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

uint64_t sub_24867A5F0@<X0>(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = TMIsAutomaticTimeZoneEnabled();
  *a2 = result != 0;
  return result;
}

uint64_t sub_24867A6A0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

BOOL sub_24867A770()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return TMIsAutomaticTimeZoneEnabled() != 0;
}

uint64_t sub_24867A814(char a1)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867A8E0(uint64_t a1, char a2)
{
  v4 = sub_24868770C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = a1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();

  TMSetAutomaticTimeZoneEnabled();
  if (a2)
  {
    return TMSetAutomaticTimeEnabled();
  }

  v8 = sub_24867C2BC();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_24868788C();
  v13 = DTResolveCity(v12);

  if (!v13)
  {

    goto LABEL_9;
  }

  result = [v13 name];
  if (result)
  {
    v14 = result;
    sub_2486878BC();
    v20[3] = v15;

    result = [v13 timeZone];
    if (result)
    {
      v16 = result;
      v17 = sub_2486878BC();
      v20[1] = v18;
      v20[2] = v17;

      KeyPath = swift_getKeyPath();
      v20[0] = v20;
      MEMORY[0x28223BE20](KeyPath);
      v20[-2] = v10;
      v20[-1] = v11;
      v21 = a1;
      sub_2486877AC();

      sub_2486878DC();
      tzlink();

      [objc_opt_self() resetSystemTimeZone];

LABEL_9:
      sub_2486876FC();
      return sub_24867BF20(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24867ABC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t (*sub_24867AC9C(uint64_t *a1))()
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
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *(v4 + 32) = TMIsAutomaticTimeZoneEnabled() != 0;
  return sub_24867AD98;
}

void sub_24867AD98(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_2486877AC();

  free(v1);
}

uint64_t sub_24867AE68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24867AF38()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 16);
}

uint64_t sub_24867AFD8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B0E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_24867B1B8()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 17);
}

uint64_t sub_24867B258(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_24867B438()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 18);
}

uint64_t sub_24867B4D8(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867B5E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_24867B6B8()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return *(v0 + 19);
}

uint64_t sub_24867B758(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

id sub_24867B870()
{
  v0 = objc_opt_self();
  result = [v0 locationServicesEnabled];
  if (result)
  {
    v2 = sub_24868788C();
    v3 = [v0 authorizationStatusForBundlePath_];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_24867B940()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24867BA04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_248687B3C() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t sub_24867BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t (*sub_24867BBC4(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867B8F0(v4);
  return sub_24867BCFC;
}

uint64_t sub_24867BD08(uint64_t *a1)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return sub_2486876EC();
}

uint64_t sub_24867BDB0(uint64_t a1)
{
  v2 = sub_24868770C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_24867BF20(v4);
}

uint64_t sub_24867BE7C()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  return sub_2486876EC();
}

uint64_t sub_24867BF20(uint64_t a1)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (!TMIsAutomaticTimeZoneEnabled())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2486877AC();
  }

  v3 = sub_24868770C();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*sub_24867C094(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_24868770C();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[5] = v9;
  swift_getKeyPath();
  *v5 = v1;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  sub_2486876EC();
  return sub_24867C208;
}

void sub_24867C208(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_24867BF20(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_24867BF20(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_24867C2BC()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (qword_27EEA0D50 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEA0ED8;
  v1 = sub_24868788C();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2486878BC();

  return v3;
}

uint64_t sub_24867C3F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();
}

id sub_24867C4C4(uint64_t a1, uint64_t a2)
{
  if (qword_27EEA0D50 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = qword_27EEA0ED8;
  if (a2)
  {
    v4 = MEMORY[0x277D837D0];
    v5 = a2;
  }

  else
  {
    a1 = 0;
    v5 = 0;
    v4 = 0;
    v8[2] = 0;
  }

  v8[0] = a1;
  v8[1] = v5;
  v9 = v4;

  sub_24868737C(v8, 0x656E6F7A656D6974, 0xE800000000000000);
  sub_248685B58(v8, &qword_27EEA0E00, &qword_248688810);
  v9 = MEMORY[0x277D839B0];
  LOBYTE(v8[0]) = 1;
  sub_24868737C(v8, 0x656E6F7A656D6974, 0xEB00000000746573);
  sub_248685B58(v8, &qword_27EEA0E00, &qword_248688810);
  return [v3 synchronize];
}

uint64_t (*sub_24867C608(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24867C65C;
}

uint64_t sub_24867C65C(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877BC();

    v6 = *(v5 + 40);
    v7 = *(v5 + 48);

    sub_2486826AC(v6, v7);
  }

  return result;
}

uint64_t sub_24867C740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t keypath_set_42Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24867C860()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24867C924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_248687B3C() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;

    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877BC();

    v6 = *(v2 + 40);
    v7 = *(v2 + 48);

    sub_2486826AC(v6, v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t sub_24867CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;

  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  sub_2486826AC(v6, v7);
}

uint64_t (*sub_24867CC08(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867C608(v4);
  return sub_24867CD40;
}

uint64_t (*sub_24867CD4C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24867CDA0;
}

uint64_t sub_24867CDA0(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877BC();

    if ((*(v5 + 56) & 1) == 0)
    {
      sub_24867DA44(MEMORY[0x277D84F90]);
      return sub_24867C924(0, 0xE000000000000000);
    }
  }

  return result;
}

uint64_t sub_24867CE68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_24867CF4C()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_24867D000(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (*(v2 + 56) == v3)
  {
    *(v2 + 56) = v3;
    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877BC();

    if ((*(v2 + 56) & 1) == 0)
    {
      sub_24867DA44(MEMORY[0x277D84F90]);
      return sub_24867C924(0, 0xE000000000000000);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t sub_24867D1B8(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if ((*(a1 + 56) & 1) == 0)
  {
    sub_24867DA44(MEMORY[0x277D84F90]);
    return sub_24867C924(0, 0xE000000000000000);
  }

  return result;
}

uint64_t (*sub_24867D29C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867CD4C(v4);
  return sub_24867D3D4;
}

uint64_t sub_24867D434@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_24867D518()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  swift_beginAccess();
  return *(v0 + 57);
}

uint64_t sub_24867D5CC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 57) == v2)
  {
    *(v1 + 57) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  return result;
}

uint64_t (*sub_24867D6F0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_2486877DC();

  v4[7] = sub_24867D3E0(v4);
  return sub_24867D828;
}

void sub_24867D834(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_2486877CC();

  free(v3);
}

uint64_t sub_24867D8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  *a2 = *(v3 + 64);
}

uint64_t sub_24867D9A0()
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();
}

uint64_t sub_24867DA44(uint64_t a1)
{
  if (sub_2486834D8(*(v1 + 64), a1))
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }
}

uint64_t DateAndTimeSettingsState.__allocating_init()()
{
  v0 = swift_allocObject();
  DateAndTimeSettingsState.init()();
  return v0;
}

void DateAndTimeSettingsState.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0D98, &unk_248688680);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v134 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v139 = (&v120 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v120 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v137 = &v120 - v12;
  MEMORY[0x28223BE20](v11);
  v145 = (&v120 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA0, &qword_248688890);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v120 - v16);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v18 = *(v153 - 8);
  v19 = MEMORY[0x28223BE20](v153);
  v150 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v20;
  MEMORY[0x28223BE20](v19);
  v152 = &v120 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v132 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v129 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v24;
  MEMORY[0x28223BE20](v23);
  v131 = &v120 - v25;
  *(v1 + 16) = TMIsTimeZoneConfirmed() != 0;
  v26 = [objc_opt_self() sharedConnection];
  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = v26;
  v28 = [v26 isAutomaticDateAndTimeEnforced];

  *(v1 + 17) = v28;
  *(v1 + 18) = 0;
  v29 = MobileGestalt_get_current_device();
  if (!v29)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v30 = v29;
  v130 = v10;
  v126 = v2;
  gpsCapability = MobileGestalt_get_gpsCapability();

  *(v1 + 20) = gpsCapability;
  v1[5] = 0;
  v1[6] = 0xE000000000000000;
  *(v1 + 28) = 0;
  v32 = MEMORY[0x277D84F90];
  v1[8] = MEMORY[0x277D84F90];
  sub_2486877EC();
  v1[3] = sub_248683DD0();
  v1[4] = v33;
  *v17 = 1;
  (*(v15 + 104))(v17, *MEMORY[0x277D85768], v14);
  v34 = v131;
  v35 = v152;
  sub_2486879CC();
  (*(v15 + 8))(v17, v14);
  v36 = *(v132 + 16);
  v124 = v22;
  v123 = v132 + 16;
  v122 = v36;
  v36(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStream, v34, v22);
  v37 = *(v18 + 16);
  v38 = v153;
  v37(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation, v35, v153);
  v39 = v150;
  v143 = v37;
  v144 = v18 + 16;
  v37(v150, v35, v38);
  v40 = *(v18 + 80);
  v133 = ~v40;
  v41 = swift_allocObject();
  v125 = v18;
  v42 = *(v18 + 32);
  v142 = v18 + 32;
  v141 = v42;
  v42((v41 + ((v40 + 16) & ~v40)), v39, v38);
  v43 = objc_allocWithZone(MEMORY[0x277D7B970]);
  aBlock[4] = sub_2486847B4;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248682A8C;
  aBlock[3] = &block_descriptor;
  v44 = _Block_copy(aBlock);

  v45 = [v43 initWithClient:0 handler:v44];
  _Block_release(v44);
  *(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor) = v45;
  *(v1 + 19) = [v45 state] != 1;
  v46 = [objc_allocWithZone(MEMORY[0x277D0ECC0]) initWithCurrentLocale];
  v127 = v1;
  *(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_regionStore) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DD8, &qword_2486886A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248688430;
  v48 = *MEMORY[0x277CBE620];
  *(inited + 32) = *MEMORY[0x277CBE620];
  v136 = (inited + 32);
  v49 = *MEMORY[0x277D25CA0];
  v120 = inited;
  *(inited + 40) = v49;
  v148 = sub_24868799C();
  v50 = sub_2486879BC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v51 += 56;
  v147 = v52;
  v149 = v40;
  v53 = (v40 + 40) & ~v40;
  v140 = (v51 - 8);
  v146 = v51;
  v135 = (v51 - 48);
  v121 = v46;
  v54 = v48;
  v55 = v49;
  v56 = 0;
  v57 = 0;
  v154 = v50;
  do
  {
    v58 = v56;
    v59 = v136[v57];
    v60 = v145;
    v147(v145, 1, 1, v154);
    v61 = v150;
    v62 = v153;
    v143(v150, v152, v153);
    v63 = v59;
    v64 = sub_24868798C();
    v65 = swift_allocObject();
    *(v65 + 2) = v64;
    *(v65 + 3) = MEMORY[0x277D85700];
    *(v65 + 4) = v63;
    v141(&v65[v53], v61, v62);
    v66 = v60;
    v67 = v154;
    v68 = v137;
    sub_248685BB8(v66, v137, &qword_27EEA0D98, &unk_248688680);
    v138 = *v140;
    LODWORD(v64) = v138(v68, 1, v67);

    if (v64 == 1)
    {
      sub_248685B58(v68, &qword_27EEA0D98, &unk_248688680);
    }

    else
    {
      sub_2486879AC();
      (*v135)(v68, v67);
    }

    v69 = *(v65 + 2);
    swift_unknownObjectRetain();

    if (v69)
    {
      swift_getObjectType();
      v70 = sub_24868794C();
      v72 = v71;
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    sub_248685B58(v145, &qword_27EEA0D98, &unk_248688680);
    v73 = swift_allocObject();
    *(v73 + 16) = &unk_2486886B8;
    *(v73 + 24) = v65;
    if (v72 | v70)
    {
      v159[4] = 0;
      v159[5] = 0;
      v159[6] = v70;
      v159[7] = v72;
    }

    v74 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_248682DFC(0, v32[2] + 1, 1, v32);
    }

    v76 = v32[2];
    v75 = v32[3];
    if (v76 >= v75 >> 1)
    {
      v32 = sub_248682DFC((v75 > 1), v76 + 1, 1, v32);
    }

    v32[2] = v76 + 1;
    v32[v76 + 4] = v74;
    v56 = 1;
    v57 = 1;
  }

  while ((v58 & 1) == 0);
  if (!*MEMORY[0x277D025F8])
  {
    goto LABEL_33;
  }

  v136 = v159;

  v77 = sub_2486878BC();
  v78 = 0;
  v79 = 0;
  v159[0] = v77;
  v159[1] = v80;
  v159[2] = 0xD000000000000021;
  v159[3] = 0x8000000248688B10;
  v133 &= v149 + 48;
  v81 = &qword_27EEA0D98;
  v82 = &unk_248688680;
  v83 = v133;
  do
  {
    v145 = v32;
    LODWORD(v137) = v78;
    v84 = &v136[2 * v79];
    v86 = *v84;
    v85 = v84[1];
    v87 = v82;
    v88 = v81;
    v89 = v139;
    v147(v139, 1, 1, v67);
    v90 = v150;
    v91 = v153;
    v143(v150, v152, v153);

    v92 = sub_24868798C();
    v93 = swift_allocObject();
    *(v93 + 2) = v92;
    *(v93 + 3) = MEMORY[0x277D85700];
    *(v93 + 4) = v86;
    *(v93 + 5) = v85;
    v94 = v90;
    v67 = v154;
    v141(&v93[v83], v94, v91);
    v95 = v89;
    v81 = v88;
    v82 = v87;
    v96 = v134;
    sub_248685BB8(v95, v134, v81, v87);
    LODWORD(v92) = v138(v96, 1, v67);

    if (v92 == 1)
    {
      sub_248685B58(v96, v81, v87);
    }

    else
    {
      sub_2486879AC();
      (*v135)(v96, v67);
    }

    v97 = *(v93 + 2);
    swift_unknownObjectRetain();

    v32 = v145;
    if (v97)
    {
      swift_getObjectType();
      v98 = sub_24868794C();
      v100 = v99;
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0;
      v100 = 0;
    }

    sub_248685B58(v139, v81, v82);
    v101 = swift_allocObject();
    *(v101 + 16) = &unk_2486886D0;
    *(v101 + 24) = v93;
    if (v100 | v98)
    {
      v156 = 0;
      v155 = 0;
      v157 = v98;
      v158 = v100;
    }

    v102 = swift_task_create();
    v104 = v32[2];
    v103 = v32[3];
    if (v104 >= v103 >> 1)
    {
      v105 = v102;
      v32 = sub_248682DFC((v103 > 1), v104 + 1, 1, v32);
      v102 = v105;
    }

    v32[2] = v104 + 1;
    v32[v104 + 4] = v102;
    v78 = 1;
    v79 = 1;
  }

  while ((v137 & 1) == 0);
  swift_arrayDestroy();
  v127[9] = v32;
  v106 = v130;
  v107 = v147;
  (v147)();
  v108 = swift_allocObject();
  swift_weakInit();

  v109 = sub_24868798C();
  v110 = swift_allocObject();
  v110[2] = v109;
  v110[3] = MEMORY[0x277D85700];
  v110[4] = v108;

  sub_24867F538(0, 0, v106, &unk_2486886E8, v110);

  v107(v106, 1, 1, v67);
  v111 = swift_allocObject();
  swift_weakInit();

  v112 = v129;
  v113 = v131;
  v114 = v124;
  v122(v129, v131, v124);

  v115 = sub_24868798C();
  v116 = v132;
  v117 = (*(v132 + 80) + 40) & ~*(v132 + 80);
  v118 = (v128 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  *(v119 + 2) = v115;
  *(v119 + 3) = MEMORY[0x277D85700];
  *(v119 + 4) = v111;
  (*(v116 + 32))(&v119[v117], v112, v114);
  *&v119[v118] = v126;

  sub_24867F538(0, 0, v130, &unk_2486886F8, v119);

  (*(v125 + 8))(v152, v153);
  (*(v116 + 8))(v113, v114);
}

uint64_t sub_24867ECA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24868799C();
  sub_24868798C();
  sub_24868794C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2486879EC();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_24867EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E60, &qword_248688868);
  v5[8] = swift_task_alloc();
  v7 = sub_248687A9C();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_24868799C();
  v5[13] = sub_24868798C();
  v9 = sub_24868794C();
  v5[14] = v9;
  v5[15] = v8;

  return MEMORY[0x2822009F8](sub_24867EF80, v9, v8);
}

uint64_t sub_24867EF80()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_248687AAC();

  sub_248687A8C();
  v0[16] = sub_24868798C();
  v2 = sub_248685DA4(&qword_27EEA0E68, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_24867F0B8;
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_24867F0B8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24868794C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24867F4AC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24868794C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24867F250;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24867F250()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24867F2B4, v1, v2);
}

uint64_t sub_24867F2B4()
{
  v1 = v0[8];
  v2 = sub_2486876BC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    sub_2486879EC();
    (*(v6 + 8))(v5, v7);
    sub_248685B58(v1, &qword_27EEA0E60, &qword_248688868);
    v0[16] = sub_24868798C();
    v8 = sub_248685DA4(&qword_27EEA0E68, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_24867F0B8;
    v10 = v0[8];
    v11 = v0[9];

    return MEMORY[0x282200308](v10, v11, v8);
  }
}

uint64_t sub_24867F4AC()
{
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E70, &qword_248688870);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24867F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0D98, &unk_248688680);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_248685BB8(a3, v25 - v10, &qword_27EEA0D98, &unk_248688680);
  v12 = sub_2486879BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_248685B58(v11, &qword_27EEA0D98, &unk_248688680);
  }

  else
  {
    sub_2486879AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24868794C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2486878DC() + 32;
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

      sub_248685B58(a3, &qword_27EEA0D98, &unk_248688680);

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

  sub_248685B58(a3, &qword_27EEA0D98, &unk_248688680);
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

uint64_t sub_24867F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_24868787C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E08, &qword_248688818);
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = sub_24868799C();
  v6[18] = sub_24868798C();
  v12 = sub_24868794C();
  v6[19] = v12;
  v6[20] = v11;

  return MEMORY[0x2822009F8](sub_24867FA6C, v12, v11);
}

uint64_t sub_24867FA6C()
{
  v24 = v0;
  if (qword_27EEA0D38 != -1)
  {
    swift_once();
  }

  v1 = sub_24868784C();
  v0[21] = __swift_project_value_buffer(v1, qword_27EEA0EB0);

  v2 = sub_24868782C();
  v3 = sub_248687A5C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_248682F30(v5, v4, &v23);
    _os_log_impl(&dword_248677000, v2, v3, "Entering loop for Darwin notification '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1D53D0](v7, -1, -1);
    MEMORY[0x24C1D53D0](v6, -1, -1);
  }

  v8 = v0[13];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v13 = v0[2];
  v12 = v0[3];
  sub_248685D5C(0, &qword_27EEA0E38, 0x277D85C78);
  (*(v10 + 104))(v9, *MEMORY[0x277D851B8], v11);
  v14 = sub_248687A7C();
  (*(v10 + 8))(v9, v11);
  sub_248685FD4(v13, v12, v14, v8);
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];

  sub_248687A1C();
  (*(v16 + 8))(v15, v17);
  v18 = sub_24868798C();
  v0[22] = v18;
  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_24867FFC8;
  v20 = v0[14];
  v21 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 24, v18, v21, v20);
}

uint64_t sub_24867FFC8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24868010C, v3, v2);
}

uint64_t sub_24868010C(uint64_t a1)
{
  v18 = v1;
  if (*(v1 + 192) == 1)
  {
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));

    v2 = sub_24868782C();
    v3 = sub_248687A5C();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_248682F30(v5, v4, &v17);
      _os_log_impl(&dword_248677000, v2, v3, "Exited loop for Darwin notification '%{public}s'", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1D53D0](v7, -1, -1);
      MEMORY[0x24C1D53D0](v6, -1, -1);
    }

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    v11 = *(v1 + 48);
    v10 = *(v1 + 56);
    v12 = *(v1 + 40);
    sub_2486879EC();
    (*(v11 + 8))(v10, v12);
    v13 = sub_24868798C();
    *(v1 + 176) = v13;
    v14 = swift_task_alloc();
    *(v1 + 184) = v14;
    *v14 = v1;
    v14[1] = sub_24867FFC8;
    v15 = *(v1 + 112);
    v16 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v1 + 192, v13, v16, v15);
  }
}

uint64_t sub_248680370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_24868770C();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E18, &qword_248688828);
  v4[12] = swift_task_alloc();
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E20, &qword_248688830);
  v4[14] = swift_task_alloc();
  v4[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E28, &qword_248688838);
  v4[16] = swift_task_alloc();
  v4[17] = sub_24868799C();
  v4[18] = sub_24868798C();
  v7 = sub_24868794C();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x2822009F8](sub_248680518, v7, v6);
}

uint64_t sub_248680518()
{
  v2 = v0[13];
  v1 = v0[14];
  sub_248687B4C();
  *(v1 + *(v2 + 36)) = xmmword_248688440;
  v3 = v1 + *(v2 + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  sub_24868780C();
  sub_248685B58(v1, &qword_27EEA0E20, &qword_248688830);
  swift_beginAccess();
  v0[21] = 0;
  v0[22] = sub_24868798C();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_248680640;
  v5 = v0[15];
  v6 = v0[12];

  return MEMORY[0x282141BF0](v6, v5);
}

uint64_t sub_248680640()
{
  v1 = *(*v0 + 176);

  if (v1)
  {
    swift_getObjectType();
    v2 = sub_24868794C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](sub_24868077C, v2, v4);
}

uint64_t sub_24868077C()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_2486807E0, v1, v2);
}

uint64_t sub_2486807E0()
{
  v1 = v0[12];
  v2 = sub_248687AFC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);

LABEL_8:
    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v5 = sub_24868784C();
    __swift_project_value_buffer(v5, qword_27EEA0EB0);
    v6 = sub_24868782C();
    v7 = sub_248687A5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_248677000, v6, v7, "Exiting loop for timer sequence.", v8, 2u);
      MEMORY[0x24C1D53D0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_248687A4C())
  {
    sub_248685B58(v0[16], &qword_27EEA0E28, &qword_248688838);

LABEL_7:

    sub_248685B58(v0[12], &qword_27EEA0E18, &qword_248688828);
    goto LABEL_8;
  }

  swift_getKeyPath();
  v0[5] = v4;
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877BC();

  if (TMIsAutomaticTimeZoneEnabled())
  {

    v11 = v0[21];
  }

  else
  {
    sub_2486876EC();
    swift_getKeyPath();
    v0[6] = v4;
    sub_2486877BC();

    if (TMIsAutomaticTimeZoneEnabled())
    {

      v11 = v0[21];
    }

    else
    {
      v11 = v0[21];
      v12 = v0[11];
      swift_getKeyPath();
      *(swift_task_alloc() + 16) = v12;
      v0[7] = v4;
      sub_2486877AC();
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  sub_248685B58(v0[12], &qword_27EEA0E18, &qword_248688828);
  v0[21] = v11;
  v0[22] = sub_24868798C();
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_248680640;
  v14 = v0[15];
  v15 = v0[12];

  return MEMORY[0x282141BF0](v15, v14);
}

uint64_t sub_248680C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[51] = a5;
  v6[52] = a6;
  v6[50] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E08, &qword_248688818);
  v6[53] = v7;
  v6[54] = *(v7 - 8);
  v6[55] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E10, &qword_248688820);
  v6[56] = v8;
  v6[57] = *(v8 - 8);
  v6[58] = swift_task_alloc();
  v6[59] = sub_24868799C();
  v6[60] = sub_24868798C();
  v10 = sub_24868794C();
  v6[61] = v10;
  v6[62] = v9;

  return MEMORY[0x2822009F8](sub_248680DA4, v10, v9);
}

uint64_t sub_248680DA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 1;
    }

    else
    {
      v2 = Strong;
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      v0[46] = v2;
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
      sub_2486877AC();
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = v4;
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      v0[49] = v5;
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    else
    {
      *(v4 + 16) = 0;
    }
  }

  v0[63] = 0;
  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[64] = v7;
  if (!v7)
  {
    v0[66] = 0x8000000248688D20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
    sub_248687A1C();
    swift_beginAccess();
    v0[67] = 0;
    v17 = sub_24868798C();
    v0[68] = v17;
    v18 = swift_task_alloc();
    v0[69] = v18;
    *v18 = v0;
    v18[1] = sub_248681594;
    v11 = v0[53];
    v10 = MEMORY[0x277D85700];
    v8 = v0 + 577;
    v9 = v17;

    return MEMORY[0x2822003E8](v8, v9, v10, v11);
  }

  v8 = [objc_opt_self() sharedInstance];
  v0[65] = v8;
  if (!v8)
  {
    __break(1u);
    return MEMORY[0x2822003E8](v8, v9, v10, v11);
  }

  v12 = v8;
  v14 = v0[57];
  v13 = v0[58];
  v15 = v0[56];
  v0[2] = v0;
  v0[7] = v0 + 72;
  v0[3] = sub_248681288;
  swift_continuation_init();
  v0[25] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  sub_24868795C();
  (*(v14 + 32))(boxed_opaque_existential_0, v13, v15);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_248681D74;
  v0[21] = &block_descriptor_142;
  [v12 isUpdateWaitingWithCompletion_];
  (*(v14 + 8))(boxed_opaque_existential_0, v15);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248681288()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_248681390, v2, v1);
}

uint64_t sub_248681390()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 576);
  if (v2 == *(v1 + 18))
  {
    *(v1 + 18) = v2;

    v3 = *(v0 + 504);
  }

  else
  {
    v3 = *(v0 + 504);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v0 + 376) = v1;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  *(v0 + 528) = 0x8000000248688D20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  sub_248687A1C();
  swift_beginAccess();
  *(v0 + 536) = v3;
  v5 = sub_24868798C();
  *(v0 + 544) = v5;
  v6 = swift_task_alloc();
  *(v0 + 552) = v6;
  *v6 = v0;
  v6[1] = sub_248681594;
  v7 = *(v0 + 424);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 577, v5, v8, v7);
}

uint64_t sub_248681594()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return MEMORY[0x2822009F8](sub_2486816D8, v3, v2);
}

uint64_t sub_2486816D8()
{
  if (*(v0 + 577) == 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 560) = Strong) == 0))
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
    goto LABEL_6;
  }

  if (sub_248687A4C())
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

LABEL_6:

    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v2 = sub_24868784C();
    __swift_project_value_buffer(v2, qword_27EEA0EB0);
    v3 = sub_24868782C();
    v4 = sub_248687A5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_248677000, v3, v4, "Exiting loop for update stream.", v5, 2u);
      MEMORY[0x24C1D53D0](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = [objc_opt_self() sharedInstance];
  *(v0 + 568) = v8;
  if (v8)
  {
    v9 = v8;
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    v12 = *(v0 + 448);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 578;
    *(v0 + 88) = sub_248681A28;
    swift_continuation_init();
    *(v0 + 264) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    sub_24868795C();
    (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_248681D74;
    *(v0 + 232) = &block_descriptor_147;
    [v9 isUpdateWaitingWithCompletion_];
    (*(v11 + 8))(boxed_opaque_existential_0, v12);
    v8 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v8);
}

uint64_t sub_248681A28()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_248681B30, v2, v1);
}

uint64_t sub_248681B30()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 578);

  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
    v3 = *(v0 + 536);
  }

  else
  {
    v4 = *(v0 + 560);
    v3 = *(v0 + 536);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    *(v0 + 384) = v4;
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();
  }

  v6 = *(v0 + 416);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v8 + 32) = v6;
  sub_24868786C();
  sub_24868785C();

  *(v0 + 536) = v3;
  v9 = sub_24868798C();
  *(v0 + 544) = v9;
  v10 = swift_task_alloc();
  *(v0 + 552) = v10;
  *v10 = v0;
  v10[1] = sub_248681594;
  v11 = *(v0 + 424);
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 577, v9, v12, v11);
}

uint64_t sub_248681D74(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E10, &qword_248688820);
  return sub_24868796C();
}

id sub_248681DD0(uint64_t a1, char a2)
{
  sub_24868799C();
  sub_24868798C();
  sub_24868794C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v4 = Strong;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    v7 = [result isAutomaticDateAndTimeEnforced];

    if (v7 == v4[17])
    {
      v4[17] = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    v9 = [*&v4[OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor] state];
    if ((v4[19] ^ (v9 != 1)))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x28223BE20](v10);
      sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
      sub_2486877AC();
    }

    else
    {
      v4[19] = v9 != 1;
    }

    swift_getKeyPath();
    sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    sub_2486877AC();

    if (v4[18] == (a2 & 1))
    {
      v4[18] = a2 & 1;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_2486877AC();
    }

    v12 = sub_248683DD0();
    sub_24867BA04(v12, v13);
    if (v4[16])
    {
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      sub_2486877AC();
    }

    v4[16] = 0;
  }

  __break(1u);
  return result;
}

char *DateAndTimeSettingsState.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = *(*(v1 + 72) + 16);
  if (v6)
  {
    v17 = v2;

    v7 = 32;
    do
    {

      sub_248687A3C();

      v7 += 8;
      --v6;
    }

    while (v6);

    v2 = v17;
  }

  v8 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStreamContinuation, v2);
  sub_248687A0C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor;
  [*(v1 + OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_wifiMonitor) stopMonitoring];
  [*(v1 + v10) setHandler_];

  v11 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState_reloadStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v9((v1 + v8), v2);

  v13 = OBJC_IVAR____TtC18DateAndTimeSupport24DateAndTimeSettingsState___observationRegistrar;
  v14 = sub_2486877FC();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  return v1;
}

uint64_t DateAndTimeSettingsState.__deallocating_deinit()
{
  DateAndTimeSettingsState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_2486825A0(void *a1)
{
  swift_getKeyPath();
  sub_248685DA4(&qword_27EEA0D90, type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_2486877AC();

  sub_2486878DC();
  tzlink();

  return [objc_opt_self() resetSystemTimeZone];
}

void sub_2486826AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = [objc_opt_self() sharedManager];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24868788C();
      v6 = [v4 citiesMatchingName_];

      if (v6)
      {
        v7 = MEMORY[0x277D84F70];
        v8 = sub_24868793C();

        v9 = *(v8 + 16);
        if (!v9)
        {
          v12 = MEMORY[0x277D84F90];
          goto LABEL_29;
        }

        v10 = 0;
        v11 = v8 + 32;
        v35 = v9 - 1;
        v12 = MEMORY[0x277D84F90];
        v36 = v8 + 32;
        v39 = v8;
        while (1)
        {
          v37 = v12;
          v13 = v11 + 32 * v10;
          v14 = v10;
          while (1)
          {
            if (v14 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            sub_2486859CC(v13, v42);
            sub_24868799C();
            sub_24868798C();
            sub_24868794C();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            sub_2486859CC(v42, v41);
            sub_248685D5C(0, &qword_27EEA0E78, 0x277CEC580);
            if (swift_dynamicCast())
            {
              break;
            }

LABEL_10:
            ++v14;
            __swift_destroy_boxed_opaque_existential_0(v42);
            v13 += 32;
            if (v9 == v14)
            {
              goto LABEL_29;
            }
          }

          v15 = [v40 displayNameIncludingCountry_];
          if (!v15)
          {

            goto LABEL_10;
          }

          v16 = v15;
          v17 = sub_2486878BC();
          v19 = v18;

          v20 = [v40 timeZone];
          if (!v20)
          {

            goto LABEL_10;
          }

          v38 = v17;
          v21 = v9;
          v22 = v7;
          v23 = v20;
          v24 = sub_2486878BC();
          v26 = v25;

          v27 = [v40 classicIdentifier];
          if (!v27)
          {
            break;
          }

          v28 = v27;
          v29 = sub_2486878BC();
          v34 = v30;

          __swift_destroy_boxed_opaque_existential_0(v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_248682CDC(0, *(v12 + 16) + 1, 1, v12);
          }

          v32 = *(v37 + 2);
          v31 = *(v37 + 3);
          if (v32 >= v31 >> 1)
          {
            v37 = sub_248682CDC((v31 > 1), v32 + 1, 1, v37);
          }

          v10 = v14 + 1;
          *(v37 + 2) = v32 + 1;
          v33 = &v37[48 * v32];
          *(v33 + 4) = v38;
          *(v33 + 5) = v19;
          *(v33 + 6) = v24;
          *(v33 + 7) = v26;
          *(v33 + 8) = v29;
          *(v33 + 9) = v34;
          v11 = v36;
          v12 = v37;
          v7 = v22;
          v9 = v21;
          v8 = v39;
          if (v35 == v14)
          {
LABEL_29:

            sub_24867DA44(v12);
            return;
          }
        }

        v7 = v22;
        v9 = v21;
        v8 = v39;
        goto LABEL_10;
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_248682A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_248682AEC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248682BE4;

  return v6(a1);
}

uint64_t sub_248682BE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_248682CDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E80, &qword_248688888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_248682DFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E50, &qword_248688858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E58, &qword_248688860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_248682F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248682FFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2486859CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_248682FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248683108(a5, a6);
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
    result = sub_248687AEC();
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

void *sub_248683108(uint64_t a1, unint64_t a2)
{
  v3 = sub_248683154(a1, a2);
  sub_248683284(&unk_285B1D218);
  return v3;
}

void *sub_248683154(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_248683370(v5, 0);
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

  result = sub_248687AEC();
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
        v10 = sub_24868790C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248683370(v10, 0);
        result = sub_248687ACC();
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

uint64_t sub_248683284(uint64_t result)
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

  result = sub_2486833E4(result, v11, 1, v3);
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

void *sub_248683370(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E48, &qword_248688850);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2486833E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E48, &qword_248688850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2486834D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_248687B3C() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2486835F8()
{
  v0 = sub_24868773C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_24868775C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v30 - v17;
  if (qword_27EEA0D40 != -1)
  {
    swift_once();
  }

  v31 = v6;
  v18 = qword_27EEA0EC8;
  v19 = sub_24868788C();
  v20 = [v18 stringForKey_];

  if (v20)
  {
    sub_2486878BC();

    sub_24868771C();
  }

  else
  {
    sub_24868772C();
  }

  v21 = *(v13 + 32);
  v34 = v12;
  v21(v35, v16, v12);
  sub_24868774C();
  v22 = *MEMORY[0x277CC9768];
  v30 = *(v1 + 104);
  v30(v9, v22, v0);
  sub_248685DA4(&qword_27EEA0E88, MEMORY[0x277CC9778], MEMORY[0x277CC9780]);
  sub_24868792C();
  sub_24868792C();
  v33 = v13;
  if (v38 == v36 && v39 == v37)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_248687B3C();
  }

  v24 = *(v1 + 8);
  v24(v9, v0);
  v24(v11, v0);

  if (v23)
  {
    (*(v33 + 8))(v35, v34);
    v25 = 1;
  }

  else
  {
    v26 = v31;
    sub_24868774C();
    v27 = v32;
    v30(v32, *MEMORY[0x277CC9770], v0);
    sub_24868792C();
    sub_24868792C();
    if (v38 == v36 && v39 == v37)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_248687B3C();
    }

    v28 = v34;
    v24(v27, v0);
    v24(v26, v0);
    (*(v33 + 8))(v35, v28);
  }

  return v25 & 1;
}

uint64_t sub_248683D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 57) = v2;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_248683DD0()
{
  v0 = sub_24868779C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v71 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - v8;
  [objc_opt_self() resetSystemTimeZone];
  sub_24868778C();
  v10 = TMIsAutomaticTimeZoneEnabled();
  if (qword_27EEA0D50 != -1)
  {
    swift_once();
  }

  v11 = qword_27EEA0ED8;
  v12 = sub_24868788C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_248687ABC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v77, 0, sizeof(v77));
  }

  sub_248685BB8(v77, &v75, &qword_27EEA0E00, &qword_248688810);
  if (v76)
  {
    sub_248685C20(&v75, &v73);
    sub_24868799C();
    sub_24868798C();
    sub_24868794C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_project_boxed_opaque_existential_0(&v73, v74);
    v14 = sub_248687B2C();
    v15 = DTResolveCity(v14);
    swift_unknownObjectRelease();
    sub_248685B58(v77, &qword_27EEA0E00, &qword_248688810);

    __swift_destroy_boxed_opaque_existential_0(&v73);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_248685B58(v77, &qword_27EEA0E00, &qword_248688810);
    v15 = 0;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = sub_24868777C();
  v19 = [v17 defaultCityForTimeZone_];

  if (!v19 || (v20 = [v19 name], v19, !v20))
  {
LABEL_18:
    v72 = v4;
    if (!v15)
    {
LABEL_27:
      if (qword_27EEA0D38 != -1)
      {
        swift_once();
      }

      v33 = sub_24868784C();
      __swift_project_value_buffer(v33, qword_27EEA0EB0);
      (*(v1 + 16))(v7, v9, v0);
      v34 = sub_24868782C();
      v35 = sub_248687A6C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v77[0] = v37;
        *v36 = 141558275;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        v38 = sub_24868776C();
        v39 = v7;
        v40 = v15;
        v41 = v1;
        v43 = v42;
        (*(v41 + 8))(v39, v0);
        v44 = sub_248682F30(v38, v43, v77);
        v1 = v41;
        v15 = v40;

        *(v36 + 14) = v44;
        _os_log_impl(&dword_248677000, v34, v35, "Failed to find a city matching the current time zone identifier %{private,mask.hash}s", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1D53D0](v37, -1, -1);
        MEMORY[0x24C1D53D0](v36, -1, -1);
      }

      else
      {

        (*(v1 + 8))(v7, v0);
      }

      v4 = v72;
      v45 = sub_24868776C();
      goto LABEL_37;
    }

    v25 = v15;
    v26 = [v25 timeZone];
    if (v26)
    {
      v27 = v26;
      v28 = sub_2486878BC();
      v30 = v29;

      v31 = sub_24868776C();
      if (v30)
      {
        if (v28 == v31 && v30 == v32)
        {

LABEL_50:
          v68 = [v25 name];
          if (v68)
          {
            v69 = v68;
            v21 = sub_2486878BC();
            v23 = v70;
          }

          else
          {

            v21 = 0;
            v23 = 0xE000000000000000;
          }

          v4 = v72;
          goto LABEL_38;
        }

        v67 = sub_248687B3C();

        if (v67)
        {
          goto LABEL_50;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_24868776C();
    }

LABEL_26:

    goto LABEL_27;
  }

  v72 = v15;
  v21 = sub_2486878BC();
  v23 = v22;

  if (sub_24868776C() == 0x6168532F61697341 && v24 == 0xED0000696168676ELL)
  {
  }

  else
  {
    v47 = sub_248687B3C();

    if ((v47 & 1) == 0)
    {
      v15 = v72;
      goto LABEL_38;
    }
  }

  v15 = v72;
  if (qword_27EEA0D30 != -1)
  {
    swift_once();
  }

  v45 = sub_2486876CC();
LABEL_37:
  v21 = v45;
  v23 = v46;
LABEL_38:
  v48 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v48 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    (*(v1 + 8))(v9, v0);
  }

  else
  {

    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v49 = sub_24868784C();
    __swift_project_value_buffer(v49, qword_27EEA0EB0);
    (*(v1 + 16))(v4, v9, v0);
    v50 = sub_24868782C();
    v51 = sub_248687A6C();
    v52 = v0;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v72 = v0;
      v54 = v53;
      v55 = v4;
      v56 = swift_slowAlloc();
      *&v77[0] = v56;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v57 = sub_24868776C();
      v71 = v9;
      v58 = v15;
      v59 = v57;
      v60 = v1;
      v62 = v61;
      v63 = *(v60 + 8);
      v63(v55, v72);
      v64 = v59;
      v15 = v58;
      v9 = v71;
      v65 = sub_248682F30(v64, v62, v77);

      *(v54 + 14) = v65;
      _os_log_impl(&dword_248677000, v50, v51, "Failed to find a city matching the current time zone identifier (empty name) %{private,mask.hash}s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1D53D0](v56, -1, -1);
      v66 = v54;
      v52 = v72;
      MEMORY[0x24C1D53D0](v66, -1, -1);
    }

    else
    {

      v63 = *(v1 + 8);
      v63(v4, v0);
    }

    v21 = sub_24868776C();

    v63(v9, v52);
  }

  return v21;
}

uint64_t sub_248684720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2486847B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);

  return sub_24867ECA4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248684858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248684930(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248684A34;

  return sub_24867EDE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_248684A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248684B28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248685E48;

  return sub_248682AEC(a1, v4);
}

uint64_t sub_248684BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248684CB8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248685E48;

  return sub_24867F838(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_248684DC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248684E00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248684E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248685E48;

  return sub_248680370(a1, v4, v5, v6);
}

uint64_t sub_248684EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_248684FD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_248685E48;

  return sub_248680C34(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_248685118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24867C2BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_24868516C(uint64_t a1)
{
  sub_2486858C0(319, &qword_27EEA0DF0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2486858C0(319, &qword_27EEA0DF8, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_2486877FC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2486858C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2486859CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_248685B1C()
{
  TMSetAutomaticTimeEnabled();
  sub_2486876DC();
  return TMSetManualTime();
}

uint64_t sub_248685B58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248685BB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_248685C20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_248685C30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248685C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248684A34;

  return sub_248682AEC(a1, v4);
}

uint64_t sub_248685D20()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_248685D5C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_248685DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248685EF8()
{
  v0 = sub_24868784C();
  __swift_allocate_value_buffer(v0, qword_27EEA0EB0);
  __swift_project_value_buffer(v0, qword_27EEA0EB0);
  return sub_24868783C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_248685FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v43 = a3;
  v41 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA0, &qword_248688890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v39 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v40 = v14;
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85768], v5);
  sub_2486879CC();
  (*(v6 + 8))(v8, v5);
  out_token = 0;
  sub_248686618(v16, v13);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v19 = v18 + v17;
  v20 = v42;
  sub_2486867C4(v13, v19);
  v50 = sub_248686834;
  v51 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2486868B0;
  v49 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);

  v22 = sub_2486878DC();
  v23 = notify_register_dispatch((v22 + 32), &out_token, v43, v21);

  _Block_release(v21);
  if (v23)
  {
    aBlock = 0;
    v47 = 0xE000000000000000;
    sub_248687ADC();

    aBlock = 0xD00000000000001ELL;
    v47 = 0x8000000248688E10;
    v44 = v20;
    v45 = a2;

    v24 = sub_2486878CC();
    MEMORY[0x24C1D4C10](v24);

    MEMORY[0x24C1D4C10](0x746C75736572202CLL, 0xE900000000000020);
    LODWORD(v44) = v23;
    v25 = sub_248687B1C();
    MEMORY[0x24C1D4C10](v25);

    v26 = aBlock;
    v27 = v47;
    sub_24868691C();
    swift_allocError();
    *v28 = v26;
    v28[1] = v27;
    swift_willThrow();
    return sub_248686970(v16);
  }

  else
  {
    sub_248686618(v16, v13);
    v30 = v40;
    v31 = *(v40 + 48);
    v32 = out_token;
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v20;
    *(v33 + 32) = a2;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
    sub_2486879DC();
    v35 = *(*(v34 - 8) + 8);
    v35(&v13[v31], v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
    v37 = *(v36 - 8);
    (*(v37 + 8))(v13, v36);
    sub_2486867C4(v16, v13);
    v38 = *(v30 + 48);
    (*(v37 + 32))(v41, v13, v36);
    return (v35)(&v13[v38], v34);
  }
}

uint64_t sub_248686510()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E30, &qword_248688840);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  sub_2486879FC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_248686618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248686688()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DB0, &qword_2486888A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0DA8, &unk_248688690);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2486867C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248686834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);

  return sub_248686510();
}

uint64_t sub_2486868B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24868691C()
{
  result = qword_27EEA0E98;
  if (!qword_27EEA0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA0E98);
  }

  return result;
}

uint64_t sub_248686970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E90, &qword_248688898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2486869D8(int a1, int token, uint64_t a3, uint64_t a4)
{
  v4 = notify_cancel(token);
  if (v4)
  {
    v5 = v4;
    if (qword_27EEA0D38 != -1)
    {
      swift_once();
    }

    v6 = sub_24868784C();
    __swift_project_value_buffer(v6, qword_27EEA0EB0);

    oslog = sub_24868782C();
    v7 = sub_248687A6C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446466;

      v10 = sub_2486878CC();
      v12 = sub_248682F30(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1026;
      *(v8 + 14) = v5;
      _os_log_impl(&dword_248677000, oslog, v7, "Failed to cancel stream for %{public}s, result %{public}u", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D53D0](v9, -1, -1);
      MEMORY[0x24C1D53D0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248686B90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248686BF0(uint64_t a1, int a2)
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

uint64_t sub_248686C38(uint64_t result, int a2, int a3)
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

uint64_t TimeZonePayload.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimeZonePayload.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TimeZonePayload.timeZone.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TimeZonePayload.timeZone.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TimeZonePayload.classicIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TimeZonePayload.classicIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static TimeZonePayload.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_248687B3C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_248687B3C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_248687B3C();
}

uint64_t TimeZonePayload.hash(into:)(uint64_t a1)
{
  sub_2486878EC();
  sub_2486878EC();

  return sub_2486878EC();
}

uint64_t TimeZonePayload.hashValue.getter()
{
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

uint64_t sub_248687004()
{
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

uint64_t sub_248687088(uint64_t a1)
{
  sub_2486878EC();
  sub_2486878EC();

  return sub_2486878EC();
}

uint64_t sub_2486870F4(uint64_t a1)
{
  sub_248687B9C();
  sub_2486878EC();
  sub_2486878EC();
  sub_2486878EC();
  return sub_248687BAC();
}

unint64_t sub_248687178()
{
  result = qword_27EEA0EA0;
  if (!qword_27EEA0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA0EA0);
  }

  return result;
}

uint64_t sub_2486871CC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_248687B3C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_248687B3C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_248687B3C();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2486872D8(uint64_t a1, int a2)
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

uint64_t sub_248687320(uint64_t result, int a2, int a3)
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

void sub_24868737C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24868764C(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_248687B2C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_24868788C();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_2486874DC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0EC8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_248687554()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0ED0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_2486875D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24868788C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EEA0ED8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24868764C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA0E00, &qword_248688810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}
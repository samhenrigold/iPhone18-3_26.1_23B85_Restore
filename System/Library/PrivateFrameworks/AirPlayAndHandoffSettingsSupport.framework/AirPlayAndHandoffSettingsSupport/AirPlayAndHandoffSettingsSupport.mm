void AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.getter(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  sub_23E868CEC(a1);
}

void sub_23E868A54(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  type metadata accessor for AirPlayAndHandoffSettingsState(0);
  sub_23E868CEC(&v3);
  *a2 = v3;
}

uint64_t sub_23E868B0C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t type metadata accessor for AirPlayAndHandoffSettingsState(uint64_t a1)
{
  result = qword_27E35D4B0;
  if (!qword_27E35D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.setter(char *a1)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E868CEC(char *a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v2 = sub_23E87585C();
  v3 = sub_23E87585C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  v11 = 0;
  v7 = sub_23E87585C();
  v8 = sub_23E87585C();
  v9 = CFPreferencesGetAppBooleanValue(v7, v8, &v11);

  if (v9)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      if (v11)
      {
        v10 = 1;
        goto LABEL_15;
      }

LABEL_9:
      v10 = 2;
LABEL_15:
      *a1 = v10;
      return;
    }

    if (v11)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  sub_23E875A6C();
  __break(1u);
}

void sub_23E868E94(unsigned __int8 a1)
{
  v1 = sub_23E87585C();
  v2 = sub_23E87591C();
  v3 = sub_23E87585C();
  CFPreferencesSetAppValue(v1, v2, v3);

  v4 = sub_23E87585C();
  v5 = sub_23E87591C();
  v6 = sub_23E87585C();
  CFPreferencesSetAppValue(v4, v5, v6);
}

uint64_t (*AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.modify(char **a1))()
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
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  sub_23E868CEC((v4 + 32));
  return sub_23E8690B0;
}

void sub_23E8690B0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.transferToHomePodEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled);
}

uint64_t sub_23E869220@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *a2 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled);
  return result;
}

unsigned __int8 *sub_23E8692D0(unsigned __int8 *result, uint64_t *a2)
{
  if (*result != *(*a2 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

uint64_t AirPlayAndHandoffSettingsState.transferToHomePodEnabled.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled) != (result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

void sub_23E8694F4(uint64_t a1, int a2)
{
  *(a1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled) = a2;
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v3 = qword_27E35D3D8;
  if (!qword_27E35D3D8)
  {
    v11 = 0u;
    v12 = 0u;
    sub_23E874E78(&v11, &qword_27E35D410, &qword_23E876198);
    return;
  }

  v4 = sub_23E87585C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_23E8759EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  sub_23E874E78(&v11, &qword_27E35D410, &qword_23E876198);
  v6 = sub_23E87585C();
  v7 = [v3 BOOLForKey_];

  if (*(&v10 + 1))
  {
    if (((v7 ^ a2) & 1) == 0)
    {
      return;
    }
  }

  else if (a2)
  {
    return;
  }

  v8 = sub_23E87585C();
  [v3 setBool:a2 & 1 forKey:v8];
}

void (*AirPlayAndHandoffSettingsState.transferToHomePodEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled;
  *(v4 + 32) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled;
  *(v4 + 40) = *(v1 + v5);
  return sub_23E8697D0;
}

void sub_23E8697D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 40);
  if (a2)
  {
    if ((v4 ^ *(v3 + *(*a1 + 32))))
    {
      goto LABEL_5;
    }
  }

  else if ((v4 ^ *(v3 + *(*a1 + 32))))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *v2 = v3;
    sub_23E8756BC();
  }

  free(v2);
}

id AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter()
{
  swift_getKeyPath();
  *&v15 = v0;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v2 = result;
    v3 = [result attributeForKey_];

    if (v3)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      sub_23E8748A0(0, &qword_27E35D418, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v4 = [v12 BOOLValue];

        return v4;
      }
    }

    else
    {
      sub_23E874E78(&v15, &qword_27E35D410, &qword_23E876198);
    }

    v5 = [objc_opt_self() standardUserDefaults];
    v6 = sub_23E87585C();
    v7 = [v5 valueForKey_];

    if (v7)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
      sub_23E874E78(&v15, &qword_27E35D410, &qword_23E876198);
    }

    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v8 = sub_23E8757EC();
    __swift_project_value_buffer(v8, qword_27E35DF00);
    v9 = sub_23E8757CC();
    v10 = sub_23E87598C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23E867000, v9, v10, "Key does not exist!", v11, 2u);
      MEMORY[0x23EF17140](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23E869C50@<X0>(_BYTE *a1@<X8>)
{
  result = AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter();
  *a1 = result & 1;
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

void sub_23E869D08(char a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 sharedAVSystemController];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *MEMORY[0x277D26C98];
  v6 = [v3 attributeForKey_];

  if (v6)
  {
    sub_23E8759EC();
    swift_unknownObjectRelease();
    sub_23E874E78(v24, &qword_27E35D410, &qword_23E876198);
    v7 = [v2 sharedAVSystemController];
    if (v7)
    {
      v8 = v7;
      v9 = sub_23E87591C();
      *&v24[0] = 0;
      v10 = [v8 setAttribute:v9 forKey:v5 error:v24];

      if (v10)
      {
        v11 = *&v24[0];
      }

      else
      {
        v18 = *&v24[0];
        v19 = sub_23E87548C();

        swift_willThrow();
        if (qword_27E35D3E8 != -1)
        {
          swift_once();
        }

        v20 = sub_23E8757EC();
        __swift_project_value_buffer(v20, qword_27E35DF00);
        v21 = sub_23E8757CC();
        v22 = sub_23E87598C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_23E867000, v21, v22, "Could not set attribute", v23, 2u);
          MEMORY[0x23EF17140](v23, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    sub_23E874E78(v24, &qword_27E35D410, &qword_23E876198);
    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v12 = sub_23E8757EC();
    __swift_project_value_buffer(v12, qword_27E35DF00);
    v13 = sub_23E8757CC();
    v14 = sub_23E87598C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23E867000, v13, v14, "Key does not exist", v15, 2u);
      MEMORY[0x23EF17140](v15, -1, -1);
    }

    v16 = [objc_opt_self() standardUserDefaults];
    v17 = sub_23E87585C();
    [v16 setBool:a1 & 1 forKey:v17];
  }
}

uint64_t (*AirPlayAndHandoffSettingsState.audioRoutingEnabled.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *(a1 + 16) = AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter() & 1;
  return sub_23E86A0D8;
}

uint64_t sub_23E86A0D8(void *a1)
{
  v2 = a1[1];
  swift_getKeyPath();
  *a1 = v2;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

id AirPlayAndHandoffSettingsState.handoffEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isActivityContinuationAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23E86A2B0(unsigned __int8 *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isActivityContinuationAllowed];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t AirPlayAndHandoffSettingsState.handoffEnabled.setter(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (swift_getKeyPath(), sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState), sub_23E8756CC(), , v3 = [objc_opt_self() sharedPreferences], v4 = objc_msgSend(v3, sel_enabled), v3, !v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  else
  {
    v5 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showTurnOffHandoffAlert;
    result = swift_beginAccess();
    if (*(v2 + v5) == 1)
    {
      *(v2 + v5) = 1;
    }

    else
    {
      v8 = swift_getKeyPath();
      MEMORY[0x28223BE20](v8);
      sub_23E8756BC();
    }
  }

  return result;
}

id AirPlayAndHandoffSettingsState.linkKeyboardAndMouseEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 enabled];

  return v1;
}

void sub_23E86A728(char a1)
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v3 = v2;
    [v2 setBoolValue:a1 & 1 forSetting:*MEMORY[0x277D25CD8]];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*AirPlayAndHandoffSettingsState.handoffEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isActivityContinuationAllowed];

    *(a1 + 16) = v5;
    return sub_23E86A89C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidTapDontAllowHandoff()()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E86A984()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    [v0 setBoolValue:0 forSetting:*MEMORY[0x277D25CD8]];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*AirPlayAndHandoffSettingsState.showTurnOffHandoffAlert.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86AB8C;
}

uint64_t AirPlayAndHandoffSettingsState.onenessDevices.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  swift_beginAccess();
}

uint64_t sub_23E86AC58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t AirPlayAndHandoffSettingsState.onenessDevices.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();

  v5 = sub_23E873768(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E86AE9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*AirPlayAndHandoffSettingsState.onenessDevices.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86B054;
}

uint64_t sub_23E86B060()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();
}

uint64_t sub_23E86B10C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *a2 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
}

uint64_t sub_23E86B1EC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

void sub_23E86B328(unsigned __int8 *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 enabled];

  *a2 = v4;
}

void sub_23E86B444(char a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setEnabled_];
}

uint64_t (*AirPlayAndHandoffSettingsState.linkKeyboardAndMouseEnabled.modify(uint64_t *a1))()
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
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 enabled];

  *(v4 + 32) = v6;
  return sub_23E86B5D4;
}

void sub_23E86B5D4(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.continuityCameraEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return FigContinuityCaptureGetUserPreferenceDisabled() ^ 1;
}

uint64_t sub_23E86B73C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = FigContinuityCaptureGetUserPreferenceDisabled();
  *a2 = result ^ 1;
  return result;
}

uint64_t (*AirPlayAndHandoffSettingsState.continuityCameraEnabled.modify(uint64_t *a1))()
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
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *(v4 + 32) = FigContinuityCaptureGetUserPreferenceDisabled() ^ 1;
  return sub_23E86B920;
}

void sub_23E86B920(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

id sub_23E86B9E8()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);

  return v1;
}

id sub_23E86BAA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  *a2 = v4;

  return v4;
}

void sub_23E86BB8C(void *a1)
{
  v3 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture;
  sub_23E87588C();
  v4 = sub_23E87585C();

  sub_23E87588C();
  v5 = sub_23E87585C();

  v6 = sub_23E87588C();
  v8 = v7;
  if (v6 == sub_23E87588C() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_23E875A9C();

    if ((v11 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
      sub_23E8756BC();

      return;
    }
  }

  v13 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AirPlayAndHandoffSettingsState.isContinuityCameraSupported.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return AVGestaltGetBoolAnswer();
}

id AirPlayAndHandoffSettingsState.airPlayReceiverEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return [objc_opt_self() listeningForAlternateBonjourBrowsing];
}

id sub_23E86BED8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  *a2 = result;
  return result;
}

uint64_t sub_23E86BFB4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t sub_23E86C090(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t (*AirPlayAndHandoffSettingsState.airPlayReceiverEnabled.modify(uint64_t *a1))()
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
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *(v4 + 32) = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  return sub_23E86C250;
}

void sub_23E86C250(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

id AirPlayAndHandoffSettingsState.accessMode.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return [objc_opt_self() getAdvertisingAccessMode];
}

id sub_23E86C3C8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() getAdvertisingAccessMode];
  *a2 = result;
  return result;
}

uint64_t sub_23E86C484(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t AirPlayAndHandoffSettingsState.accessMode.setter(uint64_t a1)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E86C640(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v3 = [objc_opt_self() setAdvertisingAccessMode:a1 withError:v8];
  v4 = v3;
  if (v3)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    v7 = sub_23E87548C();

    swift_willThrow();
  }

  *a2 = v4 ^ 1;
}

void (*AirPlayAndHandoffSettingsState.accessMode.modify(uint64_t *a1))(uint64_t **a1)
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
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  v4[1] = v1;
  v4[4] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = [objc_opt_self() getAdvertisingAccessMode];
  return sub_23E86C820;
}

void sub_23E86C820(uint64_t **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v1[1] = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.airPlayPassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = sub_23E873BC4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23E86C9B4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = sub_23E873BC4();
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23E86CA6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);

  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

uint64_t AirPlayAndHandoffSettingsState.airPlayPassword.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_23E86CC40(uint64_t a1, unint64_t a2)
{
  v5 = sub_23E8758AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v16 = sub_23E87585C();
    v17 = a1;
    v18 = a2;
    sub_23E87589C();
    sub_23E874ED8();
    sub_23E8759DC();
    v19 = v2;
    v10 = *(v6 + 8);
    v10(v8, v5);
    v17 = a1;
    v18 = a2;
    sub_23E87589C();
    sub_23E8759BC();
    v10(v8, v5);
    v11 = v16;
    APSSettingsSetCString();

    v12 = sub_23E87585C();
    v13 = *MEMORY[0x277CBED10];
    APSSettingsSetValue();

    v14 = sub_23E87585C();
    APSSettingsSetValue();
  }
}

void (*AirPlayAndHandoffSettingsState.airPlayPassword.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[3] = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  v4[2] = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = sub_23E873BC4();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  *v4 = v7;
  v4[1] = v8;
  return sub_23E86CF68;
}

void sub_23E86CF68(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_getKeyPath();
  v3[2] = v3[3];
  if (a2)
  {

    sub_23E8756BC();

    notify_post("com.apple.airplay.prefsChanged");
  }

  else
  {
    sub_23E8756BC();

    notify_post("com.apple.airplay.prefsChanged");
  }

  free(v3);
}

uint64_t AirPlayAndHandoffSettingsState.secureFieldPassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = (v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23E86D188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = (v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_23E86D254(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AirPlayAndHandoffSettingsState.secureFieldPassword.setter(v1, v2);
}

uint64_t AirPlayAndHandoffSettingsState.secureFieldPassword.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_23E875A9C() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E86D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*AirPlayAndHandoffSettingsState.secureFieldPassword.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86D5B0;
}

uint64_t (*AirPlayAndHandoffSettingsState.showPasswordAlert.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86D77C;
}

BOOL AirPlayAndHandoffSettingsState.requirePassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0 = sub_23E873BC4();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

BOOL sub_23E86D858@<W0>(_BYTE *a1@<X8>)
{
  result = AirPlayAndHandoffSettingsState.requirePassword.getter();
  *a1 = result;
  return result;
}

uint64_t AirPlayAndHandoffSettingsState.requirePassword.setter(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showPasswordAlert;
    result = swift_beginAccess();
    if (*(v1 + v2) == 1)
    {
      *(v1 + v2) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
      sub_23E8756BC();
    }
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();

    return notify_post("com.apple.airplay.prefsChanged");
  }

  return result;
}

void sub_23E86DAB0()
{
  AirPlayAndHandoffSettingsState.secureFieldPassword.setter(0, 0xE000000000000000);
  v0 = sub_23E87585C();
  APSSettingsRemoveValue();

  v1 = sub_23E87585C();
  APSSettingsSetValue();

  v2 = sub_23E87585C();
  APSSettingsSetValue();
}

uint64_t (*AirPlayAndHandoffSettingsState.requirePassword.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AirPlayAndHandoffSettingsState.requirePassword.getter();
  return sub_23E86DBBC;
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidTapCancelRequirePassword()()
{
  if (!AirPlayAndHandoffSettingsState.requirePassword.getter())
  {

    AirPlayAndHandoffSettingsState.secureFieldPassword.setter(0, 0xE000000000000000);
  }
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidOKRequirePassword()()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();

  notify_post("com.apple.airplay.prefsChanged");
}

uint64_t sub_23E86DCF0(uint64_t a1)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  swift_beginAccess();
  swift_getKeyPath();

  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

uint64_t sub_23E86DE5C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_23E86DF24@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_23E86E03C(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

uint64_t (*AirPlayAndHandoffSettingsState.isContinuityRestricted.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86E2A0;
}

void sub_23E86E2AC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_23E8756DC();

  free(v3);
}

id sub_23E86E330()
{
  result = [objc_allocWithZone(type metadata accessor for AirPlayAndHandoffSettingsState(0)) init];
  qword_27E35D3C8 = result;
  return result;
}

id AirPlayAndHandoffSettingsState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AirPlayAndHandoffSettingsState.shared.getter()
{
  if (qword_27E35D3C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D3C8;

  return v1;
}

void sub_23E86E3F4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23E87585C();
  v2 = [v0 initWithSuiteName_];

  qword_27E35D3D8 = v2;
}

uint64_t static AirPlayAndHandoffSettingsState.sharingUserDefaults.getter()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E35D3D8;
  v1 = qword_27E35D3D8;
  return v0;
}

id AirPlayAndHandoffSettingsState.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D458, &qword_23E8763B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showTurnOffHandoffAlert] = 0;
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices] = MEMORY[0x277D84F90];
  sub_23E8757BC();
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager] = sub_23E8757AC();
  v6 = *MEMORY[0x277CE59F0];
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture] = *MEMORY[0x277CE59F0];
  v7 = v6;
  v8 = sub_23E873BC4();
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  v12 = &v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword];
  *v12 = v10;
  v12[1] = v11;
  v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showPasswordAlert] = 0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v14 = result;
    v15 = [result isBoolSettingLockedDownByRestrictions_];

    v1[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__isContinuityRestricted] = v15;
    sub_23E8756FC();
    v1[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled] = sub_23E873A1C() & 1;
    v29.receiver = v1;
    v29.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v29, sel_init);
    v17 = sub_23E87595C();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v19 = v16;
    sub_23E86FB08(0, 0, v5, &unk_23E8763C0, v18);

    v20 = objc_opt_self();
    v21 = [v20 defaultCenter];
    v22 = sub_23E87585C();
    [v21 addObserver:v19 selector:sel_transferToHomePodEnabledDidChange name:v22 object:0];

    v23 = [v20 defaultCenter];
    v24 = v19;
    v25 = sub_23E87585C();
    [v23 addObserver:v24 selector:sel_profileNotification_ name:v25 object:0];

    v26 = [v20 defaultCenter];
    v27 = v24;
    v28 = sub_23E87585C();
    [v26 addObserver:v27 selector:sel_profileNotification_ name:v28 object:0];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E86E86C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E86E8FC;

  return sub_23E86E9F0();
}

uint64_t sub_23E86E8FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23E86E9F0()
{
  v1[7] = v0;
  v2 = sub_23E87573C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D540, &qword_23E8767B8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D548, &qword_23E8767C0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_23E87575C();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D550, &qword_23E8767C8);
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v5 = sub_23E87578C();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D558, &qword_23E8767D0);
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E86ECDC, 0, 0);
}

uint64_t sub_23E86ECDC()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0[30] = *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D560, &qword_23E8767D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23E8760E0;

  sub_23E87577C();
  sub_23E87576C();
  v0[3] = v2;
  sub_23E874050(&qword_27E35D568, MEMORY[0x277D4B7F0], MEMORY[0x277D4B7F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D570, &qword_23E8767E0);
  sub_23E874DC8(&qword_27E35D578, &qword_27E35D570, &qword_23E8767E0, MEMORY[0x277D83970]);
  sub_23E8759FC();
  sub_23E8757BC();
  sub_23E874050(&qword_27E35D580, MEMORY[0x277D4B808], MEMORY[0x277D4B810]);
  v4 = sub_23E87592C();

  return MEMORY[0x2822009F8](sub_23E86EF3C, v4, v3);
}

uint64_t sub_23E86EF3C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_23E87579C();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23E86EFD8, 0, 0);
}

uint64_t sub_23E86EFD8()
{
  if (qword_27E35D3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_23E8757EC();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27E35DF00);
  v2 = sub_23E8757CC();
  v3 = sub_23E87598C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23E867000, v2, v3, "Fetching for devices", v4, 2u);
    MEMORY[0x23EF17140](v4, -1, -1);
  }

  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);

  (*(v8 + 16))(v6, v5, v7);
  *(v0 + 256) = swift_getOpaqueTypeConformance2();
  sub_23E87596C();
  *(v0 + 272) = *MEMORY[0x277D4B7A0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_23E86F1E0;
  v11 = *(v0 + 160);

  return MEMORY[0x282200310](v0 + 32, 0, 0, v0 + 40, v11, AssociatedConformanceWitness);
}

uint64_t sub_23E86F1E0()
{

  if (v0)
  {
    v1 = sub_23E86F8F4;
  }

  else
  {
    v1 = sub_23E86F2F0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23E86F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v50 = MEMORY[0x277D84F90];
      v51 = *(v6 + 32);
      v52 = *(v7 + 16);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
        }

        v12 = *(v6 + 136);
        v13 = *(v12 + 16);
        v12 += 16;
        v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
        v15 = *(v12 + 56);
        v13(*(v6 + 152), v7 + v14 + v15 * v9, *(v6 + 128), a4, a5, a6);
        if ((sub_23E87572C() & 1) == 0)
        {
          goto LABEL_6;
        }

        v53 = v15;
        v54 = v14;
        v16 = *(v6 + 272);
        v18 = *(v6 + 112);
        v17 = *(v6 + 120);
        v19 = *(v6 + 88);
        v20 = *(v6 + 96);
        v21 = *(v6 + 64);
        v22 = *(v6 + 72);
        sub_23E87571C();
        (*(v22 + 104))(v18, v16, v21);
        (*(v22 + 56))(v18, 0, 1, v21);
        v23 = *(v19 + 48);
        sub_23E874E10(v17, v20, &qword_27E35D548, &qword_23E8767C0);
        sub_23E874E10(v18, v20 + v23, &qword_27E35D548, &qword_23E8767C0);
        v24 = *(v22 + 48);
        v25 = v24(v20, 1, v21);
        v26 = *(v6 + 64);
        if (v25 == 1)
        {
          break;
        }

        sub_23E874E10(*(v6 + 96), *(v6 + 104), &qword_27E35D548, &qword_23E8767C0);
        v28 = v24(v20 + v23, 1, v26);
        v29 = *(v6 + 112);
        v30 = *(v6 + 120);
        v31 = *(v6 + 104);
        if (v28 == 1)
        {
          v10 = *(v6 + 64);
          v11 = *(v6 + 72);
          sub_23E874E78(*(v6 + 112), &qword_27E35D548, &qword_23E8767C0);
          sub_23E874E78(v30, &qword_27E35D548, &qword_23E8767C0);
          (*(v11 + 8))(v31, v10);
          v7 = v51;
LABEL_5:
          sub_23E874E78(*(v6 + 96), &qword_27E35D540, &qword_23E8767B8);
          v8 = v52;
          goto LABEL_6;
        }

        v48 = *(v6 + 120);
        v49 = *(v6 + 96);
        v33 = *(v6 + 72);
        v32 = *(v6 + 80);
        v34 = *(v6 + 64);
        (*(v33 + 32))(v32, v20 + v23, v34);
        sub_23E874050(&qword_27E35D588, MEMORY[0x277D4B7B0], MEMORY[0x277D4B7B8]);
        v35 = sub_23E87584C();
        v36 = *(v33 + 8);
        v36(v32, v34);
        sub_23E874E78(v29, &qword_27E35D548, &qword_23E8767C0);
        sub_23E874E78(v48, &qword_27E35D548, &qword_23E8767C0);
        v36(v31, v34);
        sub_23E874E78(v49, &qword_27E35D548, &qword_23E8767C0);
        v7 = v51;
        v8 = v52;
        if (v35)
        {
          goto LABEL_15;
        }

LABEL_6:
        a1 = (*(*(v6 + 136) + 8))(*(v6 + 152), *(v6 + 128));
LABEL_7:
        if (v8 == ++v9)
        {
          goto LABEL_24;
        }
      }

      v27 = *(v6 + 120);
      sub_23E874E78(*(v6 + 112), &qword_27E35D548, &qword_23E8767C0);
      sub_23E874E78(v27, &qword_27E35D548, &qword_23E8767C0);
      v7 = v51;
      if (v24(v20 + v23, 1, v26) == 1)
      {
        sub_23E874E78(*(v6 + 96), &qword_27E35D548, &qword_23E8767C0);
        v8 = v52;
LABEL_15:
        v37 = *(*(v6 + 136) + 32);
        v37(*(v6 + 144), *(v6 + 152), *(v6 + 128));
        v38 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 48) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23E873464(0, *(v50 + 16) + 1, 1);
          v38 = *(v6 + 48);
        }

        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_23E873464((v40 > 1), v41 + 1, 1);
          v38 = *(v6 + 48);
          v8 = v52;
        }

        v42 = *(v6 + 144);
        v43 = *(v6 + 128);
        *(v38 + 16) = v41 + 1;
        v50 = v38;
        a1 = v37(v38 + v54 + v41 * v53, v42, v43);
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v50 = MEMORY[0x277D84F90];
LABEL_24:

    AirPlayAndHandoffSettingsState.onenessDevices.setter(v50);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = swift_task_alloc();
    *(v6 + 264) = v47;
    *v47 = v6;
    v47[1] = sub_23E86F1E0;
    a5 = *(v6 + 160);
    a4 = v6 + 40;
    a1 = v6 + 32;
    a2 = 0;
    a3 = 0;
    a6 = AssociatedConformanceWitness;

    return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
  }

  else
  {
    (*(*(v6 + 168) + 8))(*(v6 + 176), *(v6 + 160), a3, a4, a5, a6);
    (*(*(v6 + 216) + 8))(*(v6 + 232), *(v6 + 208));

    v44 = *(v6 + 8);

    return v44();
  }
}

uint64_t sub_23E86F8F4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[5];
  v2 = v1;
  v3 = sub_23E8757CC();
  v4 = sub_23E87597C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23E867000, v3, v4, "Could not fetch devices %@", v5, 0xCu);
    sub_23E874E78(v6, &qword_27E35D468, &qword_23E8763F8);
    MEMORY[0x23EF17140](v6, -1, -1);
    MEMORY[0x23EF17140](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[27] + 8))(v0[29], v0[26]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E86FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D458, &qword_23E8763B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23E874E10(a3, v25 - v10, &qword_27E35D458, &qword_23E8763B0);
  v12 = sub_23E87595C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23E874E78(v11, &qword_27E35D458, &qword_23E8763B0);
  }

  else
  {
    sub_23E87594C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23E87592C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E8758BC() + 32;
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

      sub_23E874E78(a3, &qword_27E35D458, &qword_23E8763B0);

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

  sub_23E874E78(a3, &qword_27E35D458, &qword_23E8763B0);
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

void sub_23E86FE2C()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D3D8;
  if (!qword_27E35D3D8)
  {
    v9 = 0u;
    v10 = 0u;
    sub_23E874E78(&v9, &qword_27E35D410, &qword_23E876198);
    goto LABEL_11;
  }

  v2 = sub_23E87585C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_23E8759EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  sub_23E874E78(&v9, &qword_27E35D410, &qword_23E876198);
  v4 = sub_23E87585C();
  v5 = [v1 BOOLForKey_];

  if (!*(&v8 + 1))
  {
LABEL_11:
    if (*(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 != *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
  {
LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v9 = v0;
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E8700BC(uint64_t a1)
{
  v2 = sub_23E87580C();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E87582C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E87545C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_23E8748A0(0, &qword_27E35D500, 0x277D85C78);
  v11 = sub_23E87599C();
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = v18;
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_23E874984;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8707B4;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  sub_23E87581C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E874050(&qword_27E35D508, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D510, &qword_23E876780);
  sub_23E874DC8(&qword_27E35D518, &qword_27E35D510, &qword_23E876780, MEMORY[0x277D83970]);
  sub_23E8759FC();
  MEMORY[0x23EF16B40](0, v7, v4, v15);
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  return (*(v19 + 8))(v7, v20);
}

void sub_23E870484(uint64_t a1, _BYTE *a2)
{
  v3 = sub_23E87544C();
  if (v3)
  {
    v4 = v3;
    *&v19[0] = sub_23E87588C();
    *(&v19[0] + 1) = v5;
    sub_23E875A2C();
    if (*(v4 + 16))
    {
      v6 = sub_23E87365C(v16);
      if (v7)
      {
        sub_23E874AD4(*(v4 + 56) + 32 * v6, v19);
        sub_23E874A80(v16);

        goto LABEL_7;
      }
    }

    sub_23E874A80(v16);
  }

  memset(v19, 0, sizeof(v19));
LABEL_7:
  sub_23E874E10(v19, v16, &qword_27E35D410, &qword_23E876198);
  if (!v17)
  {
    sub_23E874E78(v19, &qword_27E35D410, &qword_23E876198);
    v10 = v16;
LABEL_13:
    sub_23E874E78(v10, &qword_27E35D410, &qword_23E876198);
    return;
  }

  sub_23E8748A0(0, &qword_27E35D418, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v19;
    goto LABEL_13;
  }

  v8 = v18;
  v9 = [v18 intValue];
  if (v9 == getpid())
  {
    sub_23E874E78(v19, &qword_27E35D410, &qword_23E876198);
  }

  else
  {
    v11 = [objc_opt_self() sharedConnection];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 isBoolSettingLockedDownByRestrictions_];

      v14 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__isContinuityRestricted;
      swift_beginAccess();
      if (v13 == a2[v14])
      {

        sub_23E874E78(v19, &qword_27E35D410, &qword_23E876198);
        a2[v14] = v13;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v18 = a2;
        sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
        sub_23E8756BC();

        sub_23E874E78(v19, &qword_27E35D410, &qword_23E876198);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23E8707B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t AirPlayAndHandoffSettingsState.unpair(device:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23E87564C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8709A0, 0, 0);
}

uint64_t sub_23E8709A0()
{
  if (qword_27E35D3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_23E8757EC();
  v0[8] = __swift_project_value_buffer(v1, qword_27E35DF00);
  v2 = sub_23E8757CC();
  v3 = sub_23E87598C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23E867000, v2, v3, "Trying to unpair device", v4, 2u);
    MEMORY[0x23EF17140](v4, -1, -1);
  }

  v5 = v0[4];

  swift_getKeyPath();
  v0[2] = v5;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0[9] = *(v5 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);

  sub_23E87574C();
  v9 = (*MEMORY[0x277D4B7D8] + MEMORY[0x277D4B7D8]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23E870BB4;
  v7 = v0[7];

  return v9(v7);
}

uint64_t sub_23E870BB4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E870D8C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23E870D8C()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_23E8757CC();
  v4 = sub_23E87597C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23E867000, v3, v4, "Error while trying to unpair device %@", v7, 0xCu);
    sub_23E874E78(v8, &qword_27E35D468, &qword_23E8763F8);
    MEMORY[0x23EF17140](v8, -1, -1);
    MEMORY[0x23EF17140](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t AirPlayAndHandoffSettingsState.durationOf(start:end:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E87563C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-v9];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v11 setAllowedUnits_];
  [v11 setUnitsStyle_];
  v12 = sub_23E87560C();
  v13 = sub_23E87560C();
  v14 = [v11 stringFromDate:v12 toDate:v13];

  if (v14)
  {
    v15 = sub_23E87588C();
  }

  else
  {
    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v16 = sub_23E8757EC();
    __swift_project_value_buffer(v16, qword_27E35DF00);
    v17 = *(v5 + 16);
    v17(v10, a1, v4);
    v17(v8, a2, v4);
    v18 = sub_23E8757CC();
    v19 = sub_23E87597C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v20 = 136315394;
      sub_23E874050(&qword_27E35D470, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v36 = v18;
      v21 = sub_23E875A8C();
      v23 = v22;
      v35 = v19;
      v24 = *(v5 + 8);
      v24(v10, v4);
      v25 = sub_23E872EBC(v21, v23, &v38);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = sub_23E875A8C();
      v28 = v27;
      v24(v8, v4);
      v29 = sub_23E872EBC(v26, v28, &v38);

      *(v20 + 14) = v29;
      v30 = v36;
      _os_log_impl(&dword_23E867000, v36, v35, "Dates are invalid. Start: %s End: %s", v20, 0x16u);
      v31 = v37;
      swift_arrayDestroy();
      MEMORY[0x23EF17140](v31, -1, -1);
      MEMORY[0x23EF17140](v20, -1, -1);
    }

    else
    {

      v32 = *(v5 + 8);
      v32(v8, v4);
      v32(v10, v4);
    }

    return 0;
  }

  return v15;
}

uint64_t AirPlayAndHandoffSettingsState.formatStartDate(start:)(uint64_t a1)
{
  v93 = sub_23E87554C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E87558C();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x28223BE20](v3);
  v127 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23E87551C();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v119 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_23E87552C();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_23E8754EC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23E87556C();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_23E8755AC();
  v108 = *(v126 - 8);
  v9 = MEMORY[0x28223BE20](v126);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v89 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v112 = &v89 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v115 = &v89 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v89 - v18;
  MEMORY[0x28223BE20](v17);
  v121 = &v89 - v19;
  v20 = sub_23E87568C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v105 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_23E8755CC();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v99 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_23E8755EC();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_23E8755FC();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v97 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23E87547C();
  v137 = *(v26 - 8);
  v138 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23E87563C();
  v134 = *(v29 - 8);
  v135 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v89 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v89 - v36;
  v38 = sub_23E8756AC();
  v132 = *(v38 - 8);
  v133 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E87567C();
  sub_23E87561C();
  v136 = v37;
  sub_23E87565C();
  v139 = a1;
  sub_23E87565C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D478, &qword_23E876400);
  v41 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23E8760F0;
  v43 = *MEMORY[0x277CC9968];
  v95 = *(v21 + 104);
  v95(v42 + v41, v43, v20);
  sub_23E874098(v42);
  swift_setDeallocating();
  v44 = *(v21 + 8);
  v107 = v20;
  v106 = v21 + 8;
  v94 = v44;
  v44((v42 + v41), v20);
  swift_deallocClassInstance();
  v130 = v32;
  v131 = v35;
  sub_23E87566C();

  v45 = sub_23E87546C();
  v47 = v46;
  result = (*(v137 + 8))(v28, v138);
  if (v47)
  {
    goto LABEL_12;
  }

  v49 = v136;
  if (v45 < 0)
  {
    v50 = __OFSUB__(0, v45);
    v45 = -v45;
    if (v50)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }
  }

  if (v45 <= 1)
  {
    v69 = v96;
    sub_23E8755DC();
    v70 = v99;
    sub_23E8755BC();
    v71 = v97;
    sub_23E8753FC();
    (*(v103 + 8))(v70, v104);
    (*(v98 + 8))(v69, v100);
    sub_23E874050(&qword_27E35D480, MEMORY[0x277CC94C0], MEMORY[0x277CC94B8]);
    v72 = v102;
    sub_23E87562C();
    (*(v101 + 8))(v71, v72);
    v73 = v135;
    v74 = v49;
    v75 = *(v134 + 8);
    v75(v130, v135);
    v75(v131, v73);
    v75(v74, v73);
    (*(v132 + 8))(v40, v133);
  }

  else
  {
    v51 = *MEMORY[0x277CC9988];
    v52 = v105;
    v53 = v107;
    v54 = v95;
    v95(v105, v51, v107);
    v55 = v40;
    v56 = sub_23E87569C();
    v57 = v49;
    v58 = v94;
    v94(v52, v53);
    v54(v52, v51, v53);
    v59 = sub_23E87569C();
    v60 = v58(v52, v53);
    v61 = (v108 + 8);
    v62 = v55;
    v63 = v57;
    if (v56 == v59)
    {
      v64 = v109;
      MEMORY[0x23EF165A0](v60);
      v65 = v110;
      sub_23E87555C();
      v66 = v112;
      sub_23E8754CC();
      (*(v111 + 8))(v65, v113);
      v67 = *v61;
      v68 = v126;
      (*v61)(v64, v126);
    }

    else
    {
      v76 = v90;
      MEMORY[0x23EF165A0](v60);
      v77 = v91;
      sub_23E87553C();
      v78 = v109;
      sub_23E8754BC();
      (*(v92 + 8))(v77, v93);
      v67 = *v61;
      v68 = v126;
      (*v61)(v76, v126);
      v79 = v110;
      sub_23E87555C();
      v66 = v112;
      sub_23E8754CC();
      (*(v111 + 8))(v79, v113);
      v67(v78, v68);
    }

    v80 = v114;
    sub_23E8754DC();
    v81 = v115;
    sub_23E87549C();
    (*(v116 + 8))(v80, v117);
    v67(v66, v68);
    v82 = v119;
    sub_23E87550C();
    v83 = v120;
    sub_23E8754FC();
    (*(v122 + 8))(v82, v124);
    v84 = v118;
    sub_23E8754AC();
    (*(v123 + 8))(v83, v125);
    v67(v81, v68);
    v85 = v127;
    sub_23E87557C();
    v86 = v121;
    sub_23E87559C();
    (*(v128 + 8))(v85, v129);
    v67(v84, v68);
    sub_23E874050(&qword_27E35D488, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_23E87562C();
    v67(v86, v68);
    v87 = v135;
    v88 = *(v134 + 8);
    v88(v130, v135);
    v88(v131, v87);
    v88(v63, v87);
    (*(v132 + 8))(v62, v133);
  }

  return v140;
}

id AirPlayAndHandoffSettingsState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AirPlayMode.hashValue.getter()
{
  v1 = *v0;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v1);
  return sub_23E875ACC();
}

uint64_t sub_23E8723A4()
{
  v1 = *v0;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v1);
  return sub_23E875ACC();
}

uint64_t sub_23E872418(uint64_t a1)
{
  v2 = *v1;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v2);
  return sub_23E875ACC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E8724C8(uint64_t a1, id *a2)
{
  result = sub_23E87586C();
  *a2 = 0;
  return result;
}

uint64_t sub_23E872540(uint64_t a1, id *a2)
{
  v3 = sub_23E87587C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23E8725C0(void *a1, uint64_t *a2)
{
  sub_23E87588C();
  v2 = sub_23E87585C();

  sub_23E87588C();
  v3 = sub_23E87585C();

  v4 = sub_23E87588C();
  v6 = v5;
  if (v4 == sub_23E87588C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E875A9C();
  }

  return v9 & 1;
}

uint64_t sub_23E87269C@<X0>(uint64_t *a2@<X8>)
{
  sub_23E87588C();
  v3 = sub_23E87585C();

  *a2 = v3;
  return result;
}

uint64_t sub_23E8726EC@<X0>(uint64_t *a1@<X8>)
{
  sub_23E87588C();
  v2 = sub_23E87585C();

  *a1 = v2;
  return result;
}

uint64_t sub_23E872734(void *a1, uint64_t *a2)
{
  v2 = sub_23E87588C();
  v4 = v3;
  if (v2 == sub_23E87588C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23E875A9C();
  }

  return v7 & 1;
}

uint64_t sub_23E8727BC(uint64_t a1)
{
  v2 = sub_23E874050(&qword_27E35D4E8, type metadata accessor for AVGestaltBoolQuestion, &unk_23E8766F4);
  v3 = sub_23E874050(&qword_27E35D4F0, type metadata accessor for AVGestaltBoolQuestion, &unk_23E87669C);
  v4 = sub_23E874050(&qword_27E35D4F8, type metadata accessor for AVGestaltQuestion, &unk_23E876908);

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E8728AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23E87585C();

  *a2 = v3;
  return result;
}

uint64_t sub_23E8728F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E87588C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E872920()
{
  sub_23E87588C();
  v0 = sub_23E87585C();

  v1 = sub_23E87588C();
  v2 = MEMORY[0x23EF16A90](v1);

  return v2;
}

uint64_t sub_23E872984(uint64_t a1)
{
  sub_23E87588C();
  v1 = sub_23E87585C();

  sub_23E87588C();
  sub_23E8758DC();
}

uint64_t sub_23E872A00(uint64_t a1)
{
  sub_23E87588C();
  v1 = sub_23E87585C();

  sub_23E87588C();
  sub_23E875AAC();
  sub_23E8758DC();
  v2 = sub_23E875ACC();

  return v2;
}

uint64_t sub_23E872AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_23E87588C();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_23E872AF0(uint64_t a1)
{
  sub_23E87588C();
  sub_23E8758DC();
}

uint64_t sub_23E872B44(uint64_t a1)
{
  sub_23E87588C();
  sub_23E875AAC();
  sub_23E8758DC();
  v1 = sub_23E875ACC();

  return v1;
}

uint64_t sub_23E872BB8(uint64_t a1)
{
  v2 = sub_23E874050(&qword_27E35D4F8, type metadata accessor for AVGestaltQuestion, &unk_23E876908);
  v3 = sub_23E874050(&qword_27E35D5C8, type metadata accessor for AVGestaltQuestion, &unk_23E876868);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E872CCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23E872DC4;

  return v6(a1);
}

uint64_t sub_23E872DC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23E872EBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E872F88(v11, 0, 0, 1, a1, a2);
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
    sub_23E874AD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23E872F88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23E873094(a5, a6);
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
    result = sub_23E875A5C();
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

void *sub_23E873094(uint64_t a1, unint64_t a2)
{
  v3 = sub_23E8730E0(a1, a2);
  sub_23E873210(&unk_28511A570);
  return v3;
}

void *sub_23E8730E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_23E8732FC(v5, 0);
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

  result = sub_23E875A5C();
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
        v10 = sub_23E8758EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E8732FC(v10, 0);
        result = sub_23E875A4C();
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

uint64_t sub_23E873210(uint64_t result)
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

  result = sub_23E873370(result, v11, 1, v3);
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

void *sub_23E8732FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D538, &qword_23E876790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E873370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D538, &qword_23E876790);
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

void *sub_23E873464(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E873484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E873484(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D590, &qword_23E8767E8);
  v10 = *(sub_23E87575C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23E87575C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_23E87365C(uint64_t a1)
{
  v2 = sub_23E875A0C();

  return sub_23E8736A0(a1, v2);
}

unint64_t sub_23E8736A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23E874B30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF16BB0](v9, a1);
      sub_23E874A80(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23E873768(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E87575C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_23E874050(&qword_27E35D5A0, MEMORY[0x277D4B7C0], MEMORY[0x277D4B7C8]);
    v21 = sub_23E87584C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E873A1C()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E35D3D8;
  if (qword_27E35D3D8)
  {
    v1 = sub_23E87585C();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    sub_23E874E78(&v8, &qword_27E35D410, &qword_23E876198);
    v3 = sub_23E87585C();
    v4 = [v0 BOOLForKey_];

    if (*(&v7 + 1))
    {
      return v4;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    sub_23E874E78(&v8, &qword_27E35D410, &qword_23E876198);
  }

  return 1;
}

uint64_t sub_23E873B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_23E873BC4()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = sub_23E87542C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E87590C();
  *(v4 + 16) = 64;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  v22 = sub_23E8757FC();
  v5 = sub_23E87585C();
  APSSettingsGetCString();

  v6 = v22;
  if (v6 == sub_23E8757FC())
  {

    v9 = sub_23E873B78(v7, v8);
    v11 = v10;

    v21[0] = v9;
    v21[1] = v11;

    sub_23E87541C();
    sub_23E874ED8();
    v12 = sub_23E8759CC();
    v14 = v13;
    (*(v1 + 8))(v3, v0);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v9;
    }
  }

  else
  {
    if (qword_27E35D3F0 != -1)
    {
      swift_once();
    }

    v17 = sub_23E8757EC();
    __swift_project_value_buffer(v17, qword_27E35DF18);
    v18 = sub_23E8757CC();
    v19 = sub_23E87597C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23E867000, v18, v19, "Could not get AirPlay Receiver password", v20, 2u);
      MEMORY[0x23EF17140](v20, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_23E873F5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E873F9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E86E8FC;

  return sub_23E86E86C();
}

uint64_t sub_23E874050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E874098(uint64_t a1)
{
  v2 = sub_23E87568C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D520, &qword_23E876788);
    v9 = sub_23E875A3C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23E874050(&qword_27E35D528, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_23E87583C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23E874050(&qword_27E35D530, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_23E87584C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_23E8743BC()
{
  result = qword_27E35D490;
  if (!qword_27E35D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D490);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E8744A0()
{
  result = qword_27E35D4A8;
  if (!qword_27E35D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D4A8);
  }

  return result;
}

uint64_t sub_23E8744FC(uint64_t a1)
{
  result = sub_23E87570C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPlayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPlayMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23E874854(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_23E8748A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23E8748E8()
{
  v1 = sub_23E87545C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23E874984()
{
  v1 = *(sub_23E87545C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23E870484(v0 + v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E874A28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_23E874AD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23E874BDC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager) = *(v0 + 24);
}

uint64_t sub_23E874C20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E874C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E875120;

  return sub_23E872CCC(a1, v4);
}

uint64_t sub_23E874D10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E86E8FC;

  return sub_23E872CCC(a1, v4);
}

uint64_t sub_23E874DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E874E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E874E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23E874ED8()
{
  result = qword_27E35D598;
  if (!qword_27E35D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D598);
  }

  return result;
}

void sub_23E874F70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture) = v2;
  v4 = v2;
}

id sub_23E8751AC()
{
  type metadata accessor for FindAirPlayAndHandoffSettingsSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E35D5D0 = result;
  return result;
}

id static NSBundle.airPlayAndHandoffSettingsSupport.getter()
{
  if (qword_27E35D3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D5D0;

  return v1;
}

uint64_t sub_23E875284()
{
  v0 = sub_23E8757EC();
  __swift_allocate_value_buffer(v0, qword_27E35DF00);
  __swift_project_value_buffer(v0, qword_27E35DF00);

  return sub_23E8757DC();
}

uint64_t sub_23E87530C()
{
  v0 = sub_23E8757EC();
  __swift_allocate_value_buffer(v0, qword_27E35DF18);
  __swift_project_value_buffer(v0, qword_27E35DF18);

  return sub_23E8757DC();
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
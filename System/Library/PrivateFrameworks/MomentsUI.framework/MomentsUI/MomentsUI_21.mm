void static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.modify(void ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    (*(v2[2] + 2))(v2[3], v2[4], v2[1]);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v3 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v5 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216581090);
      [v3 setObject:isa forKey:v5];
    }

    v7 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v9 = *v2;
    v10 = *(v2[2] + 1);
    v10(v7, v8);
    v10(v6, v8);
  }

  else
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v11 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v12 = Date._bridgeToObjectiveC()().super.isa;
      v13 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216581090);
      [v11 setObject:v12 forKey:v13];
    }

    v7 = v2[3];
    v6 = v2[4];
    v9 = *v2;
    (*(v2[2] + 1))(v6, v2[1]);
  }

  free(v6);
  free(v7);
  free(v9);

  free(v2);
}

double static DefaultsManager.Cloud.stalePrimaryWarningThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 604800.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x80000002165810B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 604800.0;
}

double static DefaultsManager.Cloud.timeBetweenStalePrimaryAlerts.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 86400.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x80000002165810D0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 86400.0;
}

uint64_t static DefaultsManager.Cloud.lastStalePrimaryAlertDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path getter for static DefaultsManager.Cloud.lastStalePrimaryAlertDate : DefaultsManager.Cloud.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path setter for static DefaultsManager.Cloud.lastStalePrimaryAlertDate : DefaultsManager.Cloud.Type(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v6 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165810F0);
    [v6 setObject:isa forKey:v8];
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t static DefaultsManager.Cloud.lastStalePrimaryAlertDate.setter(uint64_t a1)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v4 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165810F0);
    [v2 setObject:isa forKey:v4];
  }

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*static DefaultsManager.Cloud.lastStalePrimaryAlertDate.modify(uint64_t *a1))(void ***a1, char a2)
{
  v2 = MEMORY[0x277D84FD8];
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v2)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *v4 = v6;
  v8 = type metadata accessor for Date();
  v4[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[2] = v9;
  v11 = *(v9 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[4] = v12;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v7);
  v14 = *(v10 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    static Date.distantPast.getter();
    if (v14(v7, 1, v8) != 1)
    {
      outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return static DefaultsManager.Cloud.lastStalePrimaryAlertDate.modify;
}

void static DefaultsManager.Cloud.lastStalePrimaryAlertDate.modify(void ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    (*(v2[2] + 2))(v2[3], v2[4], v2[1]);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v3 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v5 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165810F0);
      [v3 setObject:isa forKey:v5];
    }

    v7 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v9 = *v2;
    v10 = *(v2[2] + 1);
    v10(v7, v8);
    v10(v6, v8);
  }

  else
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v11 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v12 = Date._bridgeToObjectiveC()().super.isa;
      v13 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165810F0);
      [v11 setObject:v12 forKey:v13];
    }

    v7 = v2[3];
    v6 = v2[4];
    v9 = *v2;
    (*(v2[2] + 1))(v6, v2[1]);
  }

  free(v6);
  free(v7);
  free(v9);

  free(v2);
}

uint64_t static DefaultsManager.Cloud.forceCommonAssetWorkoutRouteBLOB.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216581110);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Cloud.registrationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Cloud.setRegistrationDate(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Cloud.onboardingDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Cloud.setOnboardingDate(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Cloud.lastInformedOfNewlyOnboardedDevices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Cloud.setLastInformedOfNewlyOnboardedDevices(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Cloud.becamePrimaryDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Cloud.setBecamePrimaryDate(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Cloud.declinedPrimaryDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Cloud.setDeclinedPrimaryDate(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Cloud.disableBadRecordChangeInfiniteLoopFix.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x80000002165811D0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

void static DefaultsManager.MomentsUIDomain.deleteObject(forKey:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0]();
    [v0 removeObjectForKey_];
  }
}

void static DefaultsManager.Cloud.capabilitiesMock.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v3);
  }

  else
  {
    v4 = *a1;

    a3(v4);
  }
}

uint64_t static DefaultsManager.Cloud.showFatalErrorPopups.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216581200);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216581220);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Database.debugInflateWorkoutRoutes.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216581240);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double static DefaultsManager.Database.classBAssertionDuration.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 86400.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x80000002165802E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 86400.0;
}

MomentsUI::DefaultsManager::Analytics::Keys_optional __swiftcall DefaultsManager.Analytics.Keys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultsManager.Analytics.Keys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_DefaultsManager_Analytics_Keys_dbSnapshotWeeklyAnalyticsSubmissionBlackoutPeriodInSeconds;
  }

  else
  {
    v4.value = MomentsUI_DefaultsManager_Analytics_Keys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t DefaultsManager.Analytics.Keys.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000003ALL;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DefaultsManager.Analytics.Keys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000003ALL;
  }

  else
  {
    v3 = 0xD00000000000002BLL;
  }

  if (v2)
  {
    v4 = "motionTypeRawValue";
  }

  else
  {
    v4 = "eklyAnalyticsSubmissionDate";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000003ALL;
  }

  else
  {
    v6 = 0xD00000000000002BLL;
  }

  if (*a2)
  {
    v7 = "eklyAnalyticsSubmissionDate";
  }

  else
  {
    v7 = "motionTypeRawValue";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultsManager.Analytics.Keys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DefaultsManager.Analytics.Keys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultsManager.Analytics.Keys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance DefaultsManager.Analytics.Keys(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultsManager.Analytics.Keys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DefaultsManager.Analytics.Keys(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000003ALL;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "eklyAnalyticsSubmissionDate";
  }

  else
  {
    v3 = "motionTypeRawValue";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t static DefaultsManager.Analytics.lastDBSnapshotWeeklyAnalyticsSubmissionDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000002BLL, 0x80000002165764E0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Analytics.setLastDBSnapshotWeeklyAnalyticsSubmissionDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v12[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  outlined init with copy of Any?(v12, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v4 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
      v6 = MEMORY[0x21CE91FC0](0xD00000000000002BLL, 0x80000002165764E0);
      [v4 setObject:v5 forKey:v6];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v12, &_sypSgMd, &_sypSgMR);
}

uint64_t static DefaultsManager.Analytics.dbSnapshotWeeklyAnalyticsSubmissionBlackoutPeriodInSeconds.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    v3 = 604800;
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    return v3;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000003ALL, 0x8000000216576510);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 604800;
  }
}

uint64_t static DefaultsManager.Analytics.setDBSnapshotWeeklyAnalyticsSubmissionBlackoutPeriodInSeconds(_:)(uint64_t a1)
{
  v9[3] = MEMORY[0x277D83B88];
  v9[0] = a1;
  outlined init with copy of Any?(v9, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, &v7);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v1 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v7, v8);
      v2 = _bridgeAnythingToObjectiveC<A>(_:)();
      v3 = MEMORY[0x21CE91FC0](0xD00000000000003ALL, 0x8000000216576510);
      [v1 setObject:v2 forKey:v3];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    outlined destroy of UTType?(&v5, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v9, &_sypSgMd, &_sypSgMR);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DefaultsManager.SheetTransfer.TransferUIMode@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static DefaultsManager.SheetTransfer.interstitialTransferMode.getter()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v0;
  }

  if (v2 >= 5)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void static DefaultsManager.getUserDefaults(_:userDefaultsUnavailable:)(void (*a1)(void), uint64_t a2, void (*a3)(void))
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v9 = static DefaultsManager.momentsUI;
    a1();
  }

  else
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.onboarding);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21607C000, v6, v7, "[User Defaults] User Defaults are not available", v8, 2u);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    a3();
  }
}

uint64_t DefaultsManager.SyncOnboarding.Status.description.getter()
{
  v1 = 0x7261745320746F4ELL;
  v2 = 0x64656873696E6946;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 0x6465727265666544;
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

MomentsUI::DefaultsManager::SyncOnboarding::Status_optional __swiftcall DefaultsManager.SyncOnboarding.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DefaultsManager.SyncOnboarding.Status()
{
  v1 = 0x7261745320746F4ELL;
  v2 = 0x64656873696E6946;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 0x6465727265666544;
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

uint64_t static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v0 = static DefaultsManager.momentsUI;
    v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165806B0);
    v2 = [v0 BOOLForKey_];

    if (v2)
    {
      return 1;
    }

    static DefaultsManager.SyncOnboarding.status.getter(&v11);
    if (v11 == 2)
    {
      v3 = v0;
      closure #3 in static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter(v3, MEMORY[0x277D85B38], "[User Defaults] Already onboarded, setting flag", 1);
LABEL_16:

      return 1;
    }
  }

  else
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static CommonLogger.onboarding);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21607C000, v5, v6, "[User Defaults] User Defaults are not available", v7, 2u);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    static DefaultsManager.SyncOnboarding.status.getter(&v11);
    if (v11 == 2)
    {
      if (one-time initialization token for onboarding != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, static CommonLogger.onboarding);
      v3 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_21607C000, v3, v8, "[User Defaults] User Defaults are not available", v9, 2u);
        MEMORY[0x21CE94770](v9, -1, -1);
      }

      goto LABEL_16;
    }
  }

  return 0;
}

void static DefaultsManager.SyncOnboarding.status.getter(_BYTE *a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (!static DefaultsManager.momentsUI)
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static CommonLogger.onboarding);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21607C000, v10, v11, "[User Defaults] User Defaults are not available", v12, 2u);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    closure #2 in static DefaultsManager.SyncOnboarding.deferralCount.setter("[User Defaults] Unable to get the default for status");
    goto LABEL_15;
  }

  v2 = static DefaultsManager.momentsUI;
  v3 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165806E0);
  v4 = [v2 integerForKey_];

  if (v4 >= 4)
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.onboarding);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_21607C000, v6, v7, "[User Defaults] Unable to create status with the stored value of %ld, returning unknown status", v8, 0xCu);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

LABEL_15:
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
}

void static DefaultsManager.SyncOnboarding.status.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  static DefaultsManager.SyncOnboarding.status.getter(&v27);
  v2 = v27;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.onboarding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315394;
    v8 = 0xE800000000000000;
    v9 = 0x64656873696E6946;
    if (v2 != 2)
    {
      v9 = 0x6E776F6E6B6E55;
      v8 = 0xE700000000000000;
    }

    v10 = 0xE800000000000000;
    v11 = 0x6465727265666544;
    if (!v2)
    {
      v11 = 0x7261745320746F4ELL;
      v10 = 0xEB00000000646574;
    }

    if (v2 <= 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v2 <= 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2080;
    v15 = 0xE800000000000000;
    v16 = 0x64656873696E6946;
    if (v1 != 2)
    {
      v16 = 0x6E776F6E6B6E55;
      v15 = 0xE700000000000000;
    }

    v17 = 0xE800000000000000;
    v18 = 0x6465727265666544;
    if (!v1)
    {
      v18 = 0x7261745320746F4ELL;
      v17 = 0xEB00000000646574;
    }

    if (v1 <= 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (v1 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v15;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v26);

    *(v6 + 14) = v21;
    _os_log_impl(&dword_21607C000, v4, v5, "[User Defaults] Setting the default for status; current status: %s, new status: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v25 = static DefaultsManager.momentsUI;
    closure #1 in static DefaultsManager.SyncOnboarding.status.setter(v25, v1);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[User Defaults] User Defaults are not available", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    closure #2 in static DefaultsManager.SyncOnboarding.deferralCount.setter("[User Defaults] Unable to set the default for status");
  }
}

void closure #1 in static DefaultsManager.SyncOnboarding.status.setter(void *a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165806E0);
  [a1 setInteger:a2 forKey:v5];

  if (v4 == 2)
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.onboarding);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, "[User Defaults] Setting hasOnboardedBefore", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    v10 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165806B0);
    [a1 setBool:1 forKey:v10];
  }

  v11 = MEMORY[0x21CE91FC0](0xD00000000000002CLL, 0x80000002165812F0);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v12, v11, 0, 0, 1u);
}

BOOL static DefaultsManager.SyncOnboarding.needsOnboarding.getter()
{
  static DefaultsManager.SyncOnboarding.status.getter(&v17);
  v0 = v17;
  if (v17 == 2)
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.onboarding);
    v2 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21607C000, v2, v13, "[User Defaults] Sync Onboarding finished", v14, 2u);
      v11 = v14;
LABEL_18:
      MEMORY[0x21CE94770](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.onboarding);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16 = v5;
      *v4 = 136315138;
      v6 = 0xE800000000000000;
      v7 = 0x6465727265666544;
      if (v0 != 1)
      {
        v7 = 0x6E776F6E6B6E55;
        v6 = 0xE700000000000000;
      }

      if (v0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x7261745320746F4ELL;
      }

      if (v0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0xEB00000000646574;
      }

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

      *(v4 + 4) = v10;
      _os_log_impl(&dword_21607C000, v2, v3, "[User Defaults] Sync Onboarding needed, Status: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CE94770](v5, -1, -1);
      v11 = v4;
      goto LABEL_18;
    }
  }

  return v0 != 2;
}

void static DefaultsManager.SyncOnboarding.resetOnboardingStatus(_:)(uint64_t a1)
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_21607C000, v3, v4, "[User Defaults] Resetting onboarding status to raw value %ld", v5, 0xCu);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  if (a1 <= 0)
  {
    if (a1 == -1)
    {
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      if (static DefaultsManager.momentsUI)
      {
        v8 = static DefaultsManager.momentsUI;
        closure #3 in static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter(v8, MEMORY[0x277D85B48], "[User Defaults] DEBUG: Resetting hasOnboardedBefore", 0);
      }

      else
      {
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_21607C000, v8, v9, "[User Defaults] User Defaults are not available", v10, 2u);
          MEMORY[0x21CE94770](v10, -1, -1);
        }
      }

      v11 = 0;
      v7 = &v11;
      goto LABEL_16;
    }

    if (a1)
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    switch(a1)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      default:
        return;
    }
  }

  v12 = v6;
  v7 = &v12;
LABEL_16:
  static DefaultsManager.SyncOnboarding.status.setter(v7);
}

void closure #3 in static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter(void *a1, uint64_t (*a2)(void), const char *a3, char a4)
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.onboarding);
  v9 = Logger.logObject.getter();
  v10 = a2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21607C000, v9, v10, a3, v11, 2u);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  v12 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165806B0);
  [a1 setBool:a4 & 1 forKey:v12];
}

void static DefaultsManager.SyncOnboarding.resetDefaults()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.onboarding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[User Defaults] Resetting defaults", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = 0;
  static DefaultsManager.SyncOnboarding.status.setter(&v4);

  specialized static DefaultsManager.SyncOnboarding.deferralCount.setter(0);
}

void static DefaultsManager.SyncOnboarding.finishOnboarding()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.onboarding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[User Defaults] Setting status to finished", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = 2;
  static DefaultsManager.SyncOnboarding.status.setter(&v4);
}

void static DefaultsManager.SyncOnboarding.deferOnboarding()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.onboarding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[User Defaults] Increasing deferralCount by 1 and setting status to deferred", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = specialized static DefaultsManager.SyncOnboarding.deferralCount.getter();
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    specialized static DefaultsManager.SyncOnboarding.deferralCount.setter(v6);
    v7 = 1;
    static DefaultsManager.SyncOnboarding.status.setter(&v7);
  }
}

void closure #2 in static DefaultsManager.SyncOnboarding.deferralCount.setter(const char *a1)
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, oslog, v3, a1, v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }
}

void static DefaultsManager.Onboarding.increaseDeferralCount()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.onboarding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[User Defaults] Increasing deferralCount by 1", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = specialized static DefaultsManager.Onboarding.deferralCount.getter();
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {

    specialized static DefaultsManager.Onboarding.deferralCount.setter(v6);
  }
}

uint64_t static DefaultsManager.SyncOnboarding.resetDeferralCount(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.onboarding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_21607C000, v4, v5, "[User Defaults] Resetting deferralCount to %ld", v6, 0xCu);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  return a2(a1);
}

uint64_t static DefaultsManager.Onboarding.privacyAlertDismissed.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x800000021657DAB0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Onboarding.privacyAlertDismissed(bundleID:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x21CE92100](a1, a2);
  v2 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();

  return v2 & 1;
}

void static DefaultsManager.Onboarding.setOnboardingApp(clientBundleID:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0]();
    v2 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216581280);
    [v0 setValue:v1 forKey:v2];
  }
}

uint64_t static DefaultsManager.Onboarding.onboardedAppBundleID.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216581280);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_198:
    v9 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_237;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_231:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    v117 = v5;
    v134 = v11;
    v118 = *(v11 + 2);
    if (v118 >= 2)
    {
      while (*v9)
      {
        v5 = v118 - 1;
        v119 = *&v11[16 * v118];
        v120 = *&v11[16 * v118 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v9 + v119), (*v9 + *&v11[16 * v118 + 16]), (*v9 + v120), v6);
        if (v117)
        {
          goto LABEL_208;
        }

        if (v120 < v119)
        {
          goto LABEL_224;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
        }

        if (v118 - 2 >= *(v11 + 2))
        {
          goto LABEL_225;
        }

        v121 = &v11[16 * v118];
        *v121 = v119;
        *(v121 + 1) = v120;
        v134 = v11;
        specialized Array.remove(at:)(v118 - 1);
        v11 = v134;
        v118 = *(v134 + 2);
        if (v118 <= 1)
        {
          goto LABEL_208;
        }
      }

      goto LABEL_235;
    }

LABEL_208:

    return;
  }

  v8 = 0;
  v9 = 0xEF656761726F7453;
  v10 = 0xEE0064656472616FLL;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v8;
    v13 = v8 + 1;
    if ((v8 + 1) < v7)
    {
      v14 = v6;
      v15 = *v6;
      v16 = (v8 + 1);
      v17 = v13[v15];
      v18 = v8[v15];
      v133 = v17;
      v132 = v18;
      __dst = specialized static CloudDevice.Capability.< infix(_:_:)(&v133, &v132);
      v124 = v8;
      v19 = (v8 + 2);
      if (v19 < v7)
      {
        v16 = v7 - 1;
        while (1)
        {
          v22 = *(v15 + v19);
          if (v22 > 3)
          {
            v23 = 0x626E4F726576656ELL;
            if (*(v15 + v19) > 5u)
            {
              if (v22 == 6)
              {
                v24 = 0x756F527465737361;
                v10 = 0xEE00626F6C426574;
              }

              else
              {
                v24 = 0x6174536775626564;
                v10 = 0xEA0000000000656CLL;
              }
            }

            else if (v22 == 4)
            {
              v10 = 0xE400000000000000;
              v24 = 1280328553;
            }

            else
            {
              v10 = 0xE600000000000000;
              v24 = 0x68746C616548;
            }
          }

          else
          {
            v23 = 0x626E4F726576656ELL;
            if (*(v15 + v19) > 1u)
            {
              if (v22 == 2)
              {
                v24 = 0x64756F6C43776F6CLL;
                v10 = 0xEF656761726F7453;
              }

              else
              {
                v24 = 0x6469766F72506F6ELL;
                v10 = 0xEB00000000737265;
              }
            }

            else
            {
              v24 = 0x626E4F726576656ELL;
              if (*(v15 + v19))
              {
                v24 = 0x6C61636F4C776F6CLL;
                v10 = 0xEF656761726F7453;
              }
            }
          }

          v25 = *(v15 + v19 - 1);
          v26 = 0x756F527465737361;
          if (v25 != 6)
          {
            v26 = 0x6174536775626564;
          }

          v27 = 0xEE00626F6C426574;
          if (v25 != 6)
          {
            v27 = 0xEA0000000000656CLL;
          }

          v28 = 0x68746C616548;
          if (v25 == 4)
          {
            v28 = 1280328553;
          }

          v29 = 0xE400000000000000;
          if (v25 != 4)
          {
            v29 = 0xE600000000000000;
          }

          if (*(v15 + v19 - 1) <= 5u)
          {
            v26 = v28;
            v27 = v29;
          }

          if (v25 == 2)
          {
            v30 = 0x64756F6C43776F6CLL;
          }

          else
          {
            v30 = 0x6469766F72506F6ELL;
          }

          if (v25 == 2)
          {
            v31 = 0xEF656761726F7453;
          }

          else
          {
            v31 = 0xEB00000000737265;
          }

          if (*(v15 + v19 - 1))
          {
            v23 = 0x6C61636F4C776F6CLL;
          }

          v32 = 0xEE0064656472616FLL;
          if (*(v15 + v19 - 1))
          {
            v32 = 0xEF656761726F7453;
          }

          if (*(v15 + v19 - 1) <= 1u)
          {
            v30 = v23;
            v31 = v32;
          }

          if (*(v15 + v19 - 1) <= 3u)
          {
            v33 = v30;
          }

          else
          {
            v33 = v26;
          }

          if (*(v15 + v19 - 1) <= 3u)
          {
            v34 = v31;
          }

          else
          {
            v34 = v27;
          }

          if (v24 == v33 && v10 == v34)
          {

            if (__dst)
            {
              v35 = v19 - 1;
              v9 = 0xEF656761726F7453;
              v6 = v14;
              v12 = v124;
              goto LABEL_58;
            }
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v21 = __dst ^ v20;
            v14 = a3;
            if (v21)
            {
              v16 = v19 - 1;
              v9 = 0xEF656761726F7453;
              break;
            }
          }

          ++v19;
          v9 = 0xEF656761726F7453;
          v10 = 0xEE0064656472616FLL;
          if (v7 == v19)
          {
            v19 = v7;
            break;
          }
        }
      }

      v35 = v16;
      v13 = v19;
      v6 = v14;
      v12 = v124;
      if (__dst)
      {
LABEL_58:
        if (v19 < v12)
        {
          goto LABEL_228;
        }

        if (v12 <= v35)
        {
          v65 = v19 - 1;
          v66 = v12;
          do
          {
            if (v66 != v65)
            {
              v68 = *v6;
              if (!*v6)
              {
                goto LABEL_234;
              }

              v69 = v66[v68];
              v66[v68] = *(v68 + v65);
              *(v68 + v65) = v69;
            }
          }

          while (++v66 < v65--);
        }

        v13 = v19;
      }
    }

    v36 = v6[1];
    v8 = v13;
    if (v13 < v36)
    {
      v37 = v13 - v12;
      if (__OFSUB__(v8, v12))
      {
        goto LABEL_227;
      }

      if (v37 < a4)
      {
        v38 = &v12[a4];
        if (__OFADD__(v12, a4))
        {
          goto LABEL_229;
        }

        if (v38 >= v36)
        {
          v38 = v6[1];
        }

        if (v38 < v12)
        {
LABEL_230:
          __break(1u);
          goto LABEL_231;
        }

        if (v8 != v38)
        {
          break;
        }
      }
    }

LABEL_147:
    if (v8 < v12)
    {
      goto LABEL_226;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v71 = *(v11 + 2);
    v70 = *(v11 + 3);
    v9 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v11);
    }

    *(v11 + 2) = v9;
    v72 = &v11[16 * v71];
    *(v72 + 4) = v12;
    *(v72 + 5) = v8;
    __dstb = *a1;
    if (!*a1)
    {
      goto LABEL_236;
    }

    if (v71)
    {
      while (1)
      {
        v73 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v74 = *(v11 + 4);
          v75 = *(v11 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_167:
          if (v77)
          {
            goto LABEL_215;
          }

          v90 = &v11[16 * v9];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_218;
          }

          v96 = &v11[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_221;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_222;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v9 - 2;
            }

            goto LABEL_188;
          }

          goto LABEL_181;
        }

        v100 = &v11[16 * v9];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_181:
        if (v95)
        {
          goto LABEL_217;
        }

        v103 = &v11[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_220;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_188:
        v111 = v73 - 1;
        if (v73 - 1 >= v9)
        {
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        v112 = *v6;
        if (!*v6)
        {
          goto LABEL_233;
        }

        v113 = v8;
        v114 = v6;
        v115 = *&v11[16 * v111 + 32];
        v6 = *&v11[16 * v73 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v112 + v115), (v112 + *&v11[16 * v73 + 32]), v6 + v112, __dstb);
        if (v5)
        {
          goto LABEL_208;
        }

        if (v6 < v115)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
        }

        if (v111 >= *(v11 + 2))
        {
          goto LABEL_212;
        }

        v116 = &v11[16 * v111];
        *(v116 + 4) = v115;
        *(v116 + 5) = v6;
        v134 = v11;
        specialized Array.remove(at:)(v73);
        v11 = v134;
        v9 = *(v134 + 2);
        v8 = v113;
        v6 = v114;
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v11[16 * v9 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_213;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_214;
      }

      v85 = &v11[16 * v9];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_216;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_219;
      }

      if (v89 >= v81)
      {
        v107 = &v11[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_223;
        }

        if (v76 < v110)
        {
          v73 = v9 - 2;
        }

        goto LABEL_188;
      }

      goto LABEL_167;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEF656761726F7453;
    v10 = 0xEE0064656472616FLL;
    if (v8 >= v7)
    {
      goto LABEL_198;
    }
  }

  v122 = v5;
  v39 = v12;
  v40 = *v6;
  v41 = &v8[*v6];
  v125 = v39;
  v42 = v39 - v8;
  v128 = v38;
LABEL_72:
  __dsta = v8;
  v43 = v8[v40];
  v44 = v42;
  v45 = v41;
  while (1)
  {
    if (v43 > 3u)
    {
      if (v43 > 5u)
      {
        if (v43 == 6)
        {
          v50 = 0x756F527465737361;
          v51 = 0xEE00626F6C426574;
        }

        else
        {
          v50 = 0x6174536775626564;
          v51 = 0xEA0000000000656CLL;
        }
      }

      else
      {
        if (v43 == 4)
        {
          v50 = 1280328553;
        }

        else
        {
          v50 = 0x68746C616548;
        }

        if (v43 == 4)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v51 = 0xE600000000000000;
        }
      }
    }

    else
    {
      if (v43 == 2)
      {
        v46 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v46 = 0x6469766F72506F6ELL;
      }

      if (v43 == 2)
      {
        v47 = 0xEF656761726F7453;
      }

      else
      {
        v47 = 0xEB00000000737265;
      }

      if (v43)
      {
        v48 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v48 = 0x626E4F726576656ELL;
      }

      if (v43)
      {
        v49 = 0xEF656761726F7453;
      }

      else
      {
        v49 = 0xEE0064656472616FLL;
      }

      if (v43 <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      if (v43 <= 1u)
      {
        v51 = v49;
      }

      else
      {
        v51 = v47;
      }
    }

    v52 = *(v45 - 1);
    v53 = 0x756F527465737361;
    if (v52 != 6)
    {
      v53 = 0x6174536775626564;
    }

    v54 = 0xEE00626F6C426574;
    if (v52 != 6)
    {
      v54 = 0xEA0000000000656CLL;
    }

    v55 = 0x68746C616548;
    if (v52 == 4)
    {
      v55 = 1280328553;
    }

    v56 = 0xE400000000000000;
    if (v52 != 4)
    {
      v56 = 0xE600000000000000;
    }

    if (*(v45 - 1) <= 5u)
    {
      v53 = v55;
      v54 = v56;
    }

    if (v52 == 2)
    {
      v57 = 0x64756F6C43776F6CLL;
    }

    else
    {
      v57 = 0x6469766F72506F6ELL;
    }

    if (v52 == 2)
    {
      v58 = 0xEF656761726F7453;
    }

    else
    {
      v58 = 0xEB00000000737265;
    }

    if (*(v45 - 1))
    {
      v59 = 0x6C61636F4C776F6CLL;
    }

    else
    {
      v59 = 0x626E4F726576656ELL;
    }

    if (*(v45 - 1))
    {
      v60 = 0xEF656761726F7453;
    }

    else
    {
      v60 = 0xEE0064656472616FLL;
    }

    if (*(v45 - 1) <= 1u)
    {
      v57 = v59;
      v58 = v60;
    }

    if (*(v45 - 1) <= 3u)
    {
      v61 = v57;
    }

    else
    {
      v61 = v53;
    }

    if (*(v45 - 1) <= 3u)
    {
      v62 = v58;
    }

    else
    {
      v62 = v54;
    }

    if (v50 == v61 && v51 == v62)
    {

LABEL_71:
      v8 = __dsta + 1;
      ++v41;
      --v42;
      if (__dsta + 1 != v128)
      {
        goto LABEL_72;
      }

      v8 = v128;
      v5 = v122;
      v6 = a3;
      v12 = v125;
      goto LABEL_147;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      v9 = 0xEF656761726F7453;
      goto LABEL_71;
    }

    if (!v40)
    {
      break;
    }

    v43 = *v45;
    *v45 = *(v45 - 1);
    *--v45 = v43;
    v64 = __CFADD__(v44++, 1);
    v9 = 0xEF656761726F7453;
    if (v64)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__src, _BYTE *a2, _BYTE *a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 3)
          {
            if (*v6 > 5u)
            {
              if (v11 == 6)
              {
                v12 = 0x756F527465737361;
                v13 = 0xEE00626F6C426574;
              }

              else
              {
                v12 = 0x6174536775626564;
                v13 = 0xEA0000000000656CLL;
              }
            }

            else if (v11 == 4)
            {
              v13 = 0xE400000000000000;
              v12 = 1280328553;
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x68746C616548;
            }
          }

          else
          {
            if (*v6 <= 1u)
            {
              v12 = 0x626E4F726576656ELL;
              v13 = 0xEE0064656472616FLL;
              if (!*v6)
              {
                goto LABEL_22;
              }

              v12 = 0x6C61636F4C776F6CLL;
              goto LABEL_16;
            }

            if (v11 == 2)
            {
              v12 = 0x64756F6C43776F6CLL;
LABEL_16:
              v13 = 0xEF656761726F7453;
              goto LABEL_22;
            }

            v12 = 0x6469766F72506F6ELL;
            v13 = 0xEB00000000737265;
          }

LABEL_22:
          v14 = *v4;
          if (v14 > 3)
          {
            if (*v4 > 5u)
            {
              if (v14 == 6)
              {
                v16 = 0xEE00626F6C426574;
                if (v12 != 0x756F527465737361)
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v16 = 0xEA0000000000656CLL;
                if (v12 != 0x6174536775626564)
                {
                  goto LABEL_44;
                }
              }
            }

            else if (v14 == 4)
            {
              v16 = 0xE400000000000000;
              if (v12 != 1280328553)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v16 = 0xE600000000000000;
              if (v12 != 0x68746C616548)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
            if (*v4 > 1u)
            {
              if (v14 == 2)
              {
                v17 = 0x64756F6C43776F6CLL;
LABEL_32:
                v16 = 0xEF656761726F7453;
                if (v12 != v17)
                {
                  goto LABEL_44;
                }

                goto LABEL_41;
              }

              v15 = 0x6469766F72506F6ELL;
              v16 = 0xEB00000000737265;
            }

            else
            {
              v15 = 0x626E4F726576656ELL;
              v16 = 0xEE0064656472616FLL;
              if (*v4)
              {
                v17 = 0x6C61636F4C776F6CLL;
                goto LABEL_32;
              }
            }

            if (v12 != v15)
            {
              goto LABEL_44;
            }
          }

LABEL_41:
          if (v13 == v16)
          {

            goto LABEL_48;
          }

LABEL_44:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            v19 = v6 + 1;
            v20 = v6;
            if (v7 >= v6 && v7 < v19)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

LABEL_48:
          v21 = v4 + 1;
          v20 = v4;
          v19 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v21)
            {
              goto LABEL_53;
            }
          }

LABEL_52:
          *v7 = *v20;
LABEL_53:
          ++v7;
          if (v4 < v10)
          {
            v6 = v19;
            if (v19 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_119;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_126;
      }

LABEL_125:
      if (v6 >= v10)
      {
        goto LABEL_126;
      }

      return 1;
    }

    v6 = v7;
LABEL_124:
    if (v6 != v4)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_124;
  }

LABEL_61:
  v22 = v6 - 1;
  --v5;
  v23 = v10;
  __dsta = v6 - 1;
  do
  {
    v25 = *--v23;
    v24 = v25;
    if (v25 > 3)
    {
      if (v24 > 5)
      {
        if (v24 == 6)
        {
          v26 = 0x756F527465737361;
          v27 = 0xEE00626F6C426574;
        }

        else
        {
          v26 = 0x6174536775626564;
          v27 = 0xEA0000000000656CLL;
        }
      }

      else if (v24 == 4)
      {
        v27 = 0xE400000000000000;
        v26 = 1280328553;
      }

      else
      {
        v27 = 0xE600000000000000;
        v26 = 0x68746C616548;
      }
    }

    else
    {
      if (v24 <= 1)
      {
        v26 = 0x626E4F726576656ELL;
        v27 = 0xEE0064656472616FLL;
        if (!v24)
        {
          goto LABEL_79;
        }

        v26 = 0x6C61636F4C776F6CLL;
        goto LABEL_73;
      }

      if (v24 == 2)
      {
        v26 = 0x64756F6C43776F6CLL;
LABEL_73:
        v27 = 0xEF656761726F7453;
        goto LABEL_79;
      }

      v26 = 0x6469766F72506F6ELL;
      v27 = 0xEB00000000737265;
    }

LABEL_79:
    v28 = *v22;
    if (v28 > 3)
    {
      v31 = 0x756F527465737361;
      if (v28 != 6)
      {
        v31 = 0x6174536775626564;
      }

      v32 = 0xEE00626F6C426574;
      if (v28 != 6)
      {
        v32 = 0xEA0000000000656CLL;
      }

      v33 = 0x68746C616548;
      if (v28 == 4)
      {
        v33 = 1280328553;
      }

      v34 = 0xE400000000000000;
      if (v28 != 4)
      {
        v34 = 0xE600000000000000;
      }

      if (v28 <= 5)
      {
        v29 = v33;
      }

      else
      {
        v29 = v31;
      }

      if (v28 <= 5)
      {
        v30 = v34;
      }

      else
      {
        v30 = v32;
      }
    }

    else if (*v22 > 1u)
    {
      if (v28 == 2)
      {
        v29 = 0x64756F6C43776F6CLL;
        v30 = 0xEF656761726F7453;
      }

      else
      {
        v29 = 0x6469766F72506F6ELL;
        v30 = 0xEB00000000737265;
      }
    }

    else
    {
      if (*v22)
      {
        v29 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v29 = 0x626E4F726576656ELL;
      }

      if (*v22)
      {
        v30 = 0xEF656761726F7453;
      }

      else
      {
        v30 = 0xEE0064656472616FLL;
      }
    }

    if (v26 == v29 && v27 == v30)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        if (v5 + 1 < v6 || v5 >= v6)
        {
          *v5 = *__dsta;
        }

        if (v10 > v4)
        {
          --v6;
          if (__dsta > v7)
          {
            goto LABEL_61;
          }
        }

        v6 = __dsta;
        if (__dsta == v4)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    v22 = v6 - 1;
    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *v23;
    }

    --v5;
    v10 = v23;
  }

  while (v23 > v4);
  v10 = v23;
LABEL_119:
  if (v6 == v4)
  {
    goto LABEL_125;
  }

LABEL_126:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

char *specialized static DefaultsManager.Cloud.capabilitiesMock.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v36 = 0u;
    v37 = 0u;
LABEL_23:
    outlined destroy of UTType?(&v36, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v5 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581360);
  v6 = [v4 objectForKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;

  (*(v1 + 8))(v3, v0);
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v36 = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:&v36];

  if (!v12)
  {
    v30 = v36;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v7, v9);

    return 0;
  }

  v13 = v36;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data?(v7, v9);
    return 0;
  }

  v14 = 0;
  v32[1] = 0;
  v15 = v34;
  v16 = *(v34 + 16);
  v17 = v34 + 40;
  v18 = MEMORY[0x277D84F90];
  v33 = v34 + 40;
LABEL_14:
  v19 = (v17 + 16 * v14);
  while (v16 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
    }

    ++v14;
    v20 = v19 + 2;
    v21 = *(v19 - 1);
    v22 = *v19;

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v23);

    v19 = v20;
    if (v24 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v32[0] = v26 + 1;
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v18);
        v27 = v32[0];
        v18 = v28;
      }

      *(v18 + 2) = v27;
      v18[v26 + 32] = v24;
      v17 = v33;
      goto LABEL_14;
    }
  }

  outlined consume of Data?(v7, v9);

  return v18;
}

char *specialized static DefaultsManager.Cloud.capabilitiesBlock.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v36 = 0u;
    v37 = 0u;
LABEL_23:
    outlined destroy of UTType?(&v36, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v5 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581320);
  v6 = [v4 objectForKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;

  (*(v1 + 8))(v3, v0);
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v36 = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:&v36];

  if (!v12)
  {
    v30 = v36;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v7, v9);

    return 0;
  }

  v13 = v36;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data?(v7, v9);
    return 0;
  }

  v14 = 0;
  v32[1] = 0;
  v15 = v34;
  v16 = *(v34 + 16);
  v17 = v34 + 40;
  v18 = MEMORY[0x277D84F90];
  v33 = v34 + 40;
LABEL_14:
  v19 = (v17 + 16 * v14);
  while (v16 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
    }

    ++v14;
    v20 = v19 + 2;
    v21 = *(v19 - 1);
    v22 = *v19;

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v23);

    v19 = v20;
    if (v24 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v32[0] = v26 + 1;
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v18);
        v27 = v32[0];
        v18 = v28;
      }

      *(v18 + 2) = v27;
      v18[v26 + 32] = v24;
      v17 = v33;
      goto LABEL_14;
    }
  }

  outlined consume of Data?(v7, v9);

  return v18;
}

char *specialized static DefaultsManager.Cloud.capabilitiesForce.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v36 = 0u;
    v37 = 0u;
LABEL_23:
    outlined destroy of UTType?(&v36, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v5 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581340);
  v6 = [v4 objectForKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;

  (*(v1 + 8))(v3, v0);
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v36 = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:&v36];

  if (!v12)
  {
    v30 = v36;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v7, v9);

    return 0;
  }

  v13 = v36;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data?(v7, v9);
    return 0;
  }

  v14 = 0;
  v32[1] = 0;
  v15 = v34;
  v16 = *(v34 + 16);
  v17 = v34 + 40;
  v18 = MEMORY[0x277D84F90];
  v33 = v34 + 40;
LABEL_14:
  v19 = (v17 + 16 * v14);
  while (v16 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
    }

    ++v14;
    v20 = v19 + 2;
    v21 = *(v19 - 1);
    v22 = *v19;

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v23);

    v19 = v20;
    if (v24 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v32[0] = v26 + 1;
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v18);
        v27 = v32[0];
        v18 = v28;
      }

      *(v18 + 2) = v27;
      v18[v26 + 32] = v24;
      v17 = v33;
      goto LABEL_14;
    }
  }

  outlined consume of Data?(v7, v9);

  return v18;
}

uint64_t specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581380);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

void specialized static DefaultsManager.Cloud.clearUserData()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
    [v0 removeObjectForKey_];

    v2 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
    [v0 removeObjectForKey_];

    v3 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
    [v0 removeObjectForKey_];

    v4 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    [v0 removeObjectForKey_];
  }
}

double specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 86400.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000027, 0x8000000216580500);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 86400.0;
}

double specialized static DefaultsManager.Processing.assetSizeDifferenceTolerance.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0.005;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x8000000216580560);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.005;
}

uint64_t specialized static DefaultsManager.MomentsUIDomain.arrayValueFor(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double specialized static DefaultsManager.Processing.assetRenderSingleTimeout.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 15.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216580530);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 15.0;
}

unint64_t specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t specialized static DefaultsManager.Notifications.lastNotificationClientBundleID.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216581520);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static DefaultsManager.Notifications.lastNotificationClientURL.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216581500);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, &v9);
  if (!v10)
  {
    return outlined destroy of UTType?(&v9, &_sypSgMd, &_sypSgMR);
  }

  outlined init with take of Any(&v9, &v11);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v5 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    v7 = MEMORY[0x21CE91FC0](a2, a3);
    [v5 setObject:v6 forKey:v7];
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

uint64_t specialized static DefaultsManager.Notifications.lastDeliveredNotificationID.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165814E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static DefaultsManager.Notifications.lastDeliveredGenericNotificationID.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x80000002165814B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static DefaultsManager.Notifications.weeklyResetDayThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581480);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD000000000000023, 0x8000000216581480);
  if (v4)
  {
    return 6;
  }

  return result;
}

double specialized static DefaultsManager.Notifications.holdoffFireHours.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x80000002165813F0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD00000000000001CLL, 0x80000002165813F0);
  result = 20.0;
  if ((v5 & 1) == 0)
  {
    return *&v4;
  }

  return result;
}

uint64_t specialized static DefaultsManager.Notifications.smartNotificationWeeklyMax.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216581460);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001ALL, 0x8000000216581460);
  if (v4)
  {
    return 4;
  }

  return result;
}

uint64_t specialized static DefaultsManager.Notifications.adaptiveGoodnessScoreSuggestionCountThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000039, 0x80000002165813B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD000000000000039, 0x80000002165813B0);
  if (v4)
  {
    return 2;
  }

  return result;
}

double specialized static DefaultsManager.Notifications.lookbackFetchIntervalInDays.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x8000000216581410);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000025, 0x8000000216581410);
  result = 2.0;
  if ((v5 & 1) == 0)
  {
    return *&v4;
  }

  return result;
}

void specialized static DefaultsManager.Notifications.incrementSuggestionNotificationWeeklyCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    return;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  v3 = 0;
LABEL_13:
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
    [v0 setValue:isa forKey:v5];
  }
}

void specialized static DefaultsManager.Notifications.incrementGenericNotificationWeeklyCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    return;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  v3 = 0;
LABEL_13:
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
    [v0 setValue:isa forKey:v5];
  }
}

uint64_t specialized static DefaultsManager.Notifications.genericNotificationWeeklyMax.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216581440);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001CLL, 0x8000000216581440);
  if (v4)
  {
    return 1;
  }

  return result;
}

uint64_t specialized static DefaultsManager.Processing.draftBatchSaveCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x800000021657D100);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 5;
}

void specialized static DefaultsManager.Notifications.incrementNotificationTCCDelayCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    return;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657DB00);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  v3 = 0;
LABEL_13:
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657DB00);
    [v0 setValue:isa forKey:v5];
  }
}

double specialized static DefaultsManager.Processing.deferralMaximumThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000028, 0x80000002165805C0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000028, 0x80000002165805C0);
  if (v5)
  {
    return 3628800.0;
  }

  else
  {
    return *&v4;
  }
}

uint64_t specialized static DefaultsManager.Notifications.notificationRetryCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void specialized static DefaultsManager.Notifications.incrementRetryCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    return;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  v3 = 0;
LABEL_13:
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
    [v0 setValue:isa forKey:v5];
  }
}

void specialized static DefaultsManager.Cloud.capabilitiesMock.setter(char *a1)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_42;
  }

  v38[0] = a1;

  specialized MutableCollection<>.sort(by:)(v38);

  v5 = v38[0];
  v6 = *(v38[0] + 2);
  if (v6)
  {
    v37[1] = v4;
    v38[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = 32;
    v8 = v38[0];
    do
    {
      v9 = v5[v7];
      if (v9 == 6)
      {
        v10 = 0x756F527465737361;
      }

      else
      {
        v10 = 0x6174536775626564;
      }

      if (v9 == 6)
      {
        v11 = 0xEE00626F6C426574;
      }

      else
      {
        v11 = 0xEA0000000000656CLL;
      }

      if (v9 == 4)
      {
        v12 = 1280328553;
      }

      else
      {
        v12 = 0x68746C616548;
      }

      if (v9 == 4)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (v5[v7] <= 5u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6469766F72506F6ELL;
      if (v9 == 2)
      {
        v14 = 0x64756F6C43776F6CLL;
        v15 = 0xEF656761726F7453;
      }

      else
      {
        v15 = 0xEB00000000737265;
      }

      if (v5[v7])
      {
        v16 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v16 = 0x626E4F726576656ELL;
      }

      if (v5[v7])
      {
        v17 = 0xEF656761726F7453;
      }

      else
      {
        v17 = 0xEE0064656472616FLL;
      }

      if (v5[v7] <= 1u)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v5[v7] <= 3u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v10;
      }

      if (v5[v7] <= 3u)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      v38[0] = v8;
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v8 = v38[0];
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v23 = objc_opt_self();
  v24 = MEMORY[0x277D837D0];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38[0] = 0;
  v26 = [v23 dataWithJSONObject:isa options:0 error:v38];

  v27 = v38[0];
  if (!v26)
  {
    v33 = v27;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    a1 = 0;
LABEL_42:
    v29 = 0xF000000000000000;
    goto LABEL_43;
  }

  a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  outlined copy of Data._Representation(a1, v29);
  static String.Encoding.utf8.getter();
  v30 = String.init(data:encoding:)();
  v32 = v31;
  outlined consume of Data._Representation(a1, v29);
  if (v32)
  {
    v38[3] = v24;
    v38[0] = v30;
    v38[1] = v32;
    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v38, 0xD000000000000010, 0x8000000216581360);
    outlined consume of Data._Representation(a1, v29);
    outlined destroy of UTType?(v38, &_sypSgMd, &_sypSgMR);
    return;
  }

LABEL_43:
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v35 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v36 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581360);
    [v35 removeObjectForKey_];
    outlined consume of Data?(a1, v29);
  }

  else
  {
    outlined consume of Data?(a1, v29);
  }
}

void specialized static DefaultsManager.Cloud.capabilitiesForce.setter(char *a1)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_42;
  }

  v38[0] = a1;

  specialized MutableCollection<>.sort(by:)(v38);

  v5 = v38[0];
  v6 = *(v38[0] + 2);
  if (v6)
  {
    v37[1] = v4;
    v38[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = 32;
    v8 = v38[0];
    do
    {
      v9 = v5[v7];
      if (v9 == 6)
      {
        v10 = 0x756F527465737361;
      }

      else
      {
        v10 = 0x6174536775626564;
      }

      if (v9 == 6)
      {
        v11 = 0xEE00626F6C426574;
      }

      else
      {
        v11 = 0xEA0000000000656CLL;
      }

      if (v9 == 4)
      {
        v12 = 1280328553;
      }

      else
      {
        v12 = 0x68746C616548;
      }

      if (v9 == 4)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (v5[v7] <= 5u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6469766F72506F6ELL;
      if (v9 == 2)
      {
        v14 = 0x64756F6C43776F6CLL;
        v15 = 0xEF656761726F7453;
      }

      else
      {
        v15 = 0xEB00000000737265;
      }

      if (v5[v7])
      {
        v16 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v16 = 0x626E4F726576656ELL;
      }

      if (v5[v7])
      {
        v17 = 0xEF656761726F7453;
      }

      else
      {
        v17 = 0xEE0064656472616FLL;
      }

      if (v5[v7] <= 1u)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v5[v7] <= 3u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v10;
      }

      if (v5[v7] <= 3u)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      v38[0] = v8;
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v8 = v38[0];
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v23 = objc_opt_self();
  v24 = MEMORY[0x277D837D0];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38[0] = 0;
  v26 = [v23 dataWithJSONObject:isa options:0 error:v38];

  v27 = v38[0];
  if (!v26)
  {
    v33 = v27;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    a1 = 0;
LABEL_42:
    v29 = 0xF000000000000000;
    goto LABEL_43;
  }

  a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  outlined copy of Data._Representation(a1, v29);
  static String.Encoding.utf8.getter();
  v30 = String.init(data:encoding:)();
  v32 = v31;
  outlined consume of Data._Representation(a1, v29);
  if (v32)
  {
    v38[3] = v24;
    v38[0] = v30;
    v38[1] = v32;
    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v38, 0xD000000000000011, 0x8000000216581340);
    outlined consume of Data._Representation(a1, v29);
    outlined destroy of UTType?(v38, &_sypSgMd, &_sypSgMR);
    return;
  }

LABEL_43:
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v35 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v36 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581340);
    [v35 removeObjectForKey_];
    outlined consume of Data?(a1, v29);
  }

  else
  {
    outlined consume of Data?(a1, v29);
  }
}

void specialized static DefaultsManager.Cloud.capabilitiesBlock.setter(char *a1)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_42;
  }

  v38[0] = a1;

  specialized MutableCollection<>.sort(by:)(v38);

  v5 = v38[0];
  v6 = *(v38[0] + 2);
  if (v6)
  {
    v37[1] = v4;
    v38[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = 32;
    v8 = v38[0];
    do
    {
      v9 = v5[v7];
      if (v9 == 6)
      {
        v10 = 0x756F527465737361;
      }

      else
      {
        v10 = 0x6174536775626564;
      }

      if (v9 == 6)
      {
        v11 = 0xEE00626F6C426574;
      }

      else
      {
        v11 = 0xEA0000000000656CLL;
      }

      if (v9 == 4)
      {
        v12 = 1280328553;
      }

      else
      {
        v12 = 0x68746C616548;
      }

      if (v9 == 4)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (v5[v7] <= 5u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6469766F72506F6ELL;
      if (v9 == 2)
      {
        v14 = 0x64756F6C43776F6CLL;
        v15 = 0xEF656761726F7453;
      }

      else
      {
        v15 = 0xEB00000000737265;
      }

      if (v5[v7])
      {
        v16 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v16 = 0x626E4F726576656ELL;
      }

      if (v5[v7])
      {
        v17 = 0xEF656761726F7453;
      }

      else
      {
        v17 = 0xEE0064656472616FLL;
      }

      if (v5[v7] <= 1u)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v5[v7] <= 3u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v10;
      }

      if (v5[v7] <= 3u)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      v38[0] = v8;
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v8 = v38[0];
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v23 = objc_opt_self();
  v24 = MEMORY[0x277D837D0];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38[0] = 0;
  v26 = [v23 dataWithJSONObject:isa options:0 error:v38];

  v27 = v38[0];
  if (!v26)
  {
    v33 = v27;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    a1 = 0;
LABEL_42:
    v29 = 0xF000000000000000;
    goto LABEL_43;
  }

  a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  outlined copy of Data._Representation(a1, v29);
  static String.Encoding.utf8.getter();
  v30 = String.init(data:encoding:)();
  v32 = v31;
  outlined consume of Data._Representation(a1, v29);
  if (v32)
  {
    v38[3] = v24;
    v38[0] = v30;
    v38[1] = v32;
    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v38, 0xD000000000000011, 0x8000000216581320);
    outlined consume of Data._Representation(a1, v29);
    outlined destroy of UTType?(v38, &_sypSgMd, &_sypSgMR);
    return;
  }

LABEL_43:
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v35 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v36 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581320);
    [v35 removeObjectForKey_];
    outlined consume of Data?(a1, v29);
  }

  else
  {
    outlined consume of Data?(a1, v29);
  }
}

id specialized static DefaultsManager.SyncOnboarding.deferralCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v0 = static DefaultsManager.momentsUI;
    v1 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580700);
    v2 = [v0 integerForKey:v1];
  }

  else
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static CommonLogger.onboarding);
    v0 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v0, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21607C000, v0, v4, "[User Defaults] User Defaults are not available", v5, 2u);
      MEMORY[0x21CE94770](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

void specialized static DefaultsManager.SyncOnboarding.deferralCount.setter(uint64_t a1)
{
  v2 = specialized static DefaultsManager.SyncOnboarding.deferralCount.getter();
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.onboarding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v2;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_21607C000, v4, v5, "[User Defaults] Setting the default for deferralCount; current count: %ld, new count: %ld", v6, 0x16u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v7 = static DefaultsManager.momentsUI;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v12 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580700);
    [v7 setValue:isa forKey:v12];
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[User Defaults] User Defaults are not available", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    closure #2 in static DefaultsManager.SyncOnboarding.deferralCount.setter("[User Defaults] Unable to set the default for deferralCount");
  }
}

id specialized static DefaultsManager.Onboarding.deferralCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v0 = static DefaultsManager.momentsUI;
    v1 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216580720);
    v2 = [v0 integerForKey:v1];
  }

  else
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static CommonLogger.onboarding);
    v0 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v0, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21607C000, v0, v4, "[User Defaults] User Defaults are not available", v5, 2u);
      MEMORY[0x21CE94770](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

void specialized static DefaultsManager.Onboarding.deferralCount.setter(uint64_t a1)
{
  v2 = specialized static DefaultsManager.Onboarding.deferralCount.getter();
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.onboarding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v2;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_21607C000, v4, v5, "[User Defaults] Setting the default for deferralCount; current count: %ld, new count: %ld", v6, 0x16u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  if (static DefaultsManager.momentsUI)
  {
    v7 = static DefaultsManager.momentsUI;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v12 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216580720);
    [v7 setValue:isa forKey:v12];
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[User Defaults] User Defaults are not available", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    closure #2 in static DefaultsManager.SyncOnboarding.deferralCount.setter("[User Defaults] Unable to set the default for Onboarding Deferral Count");
  }
}

unint64_t lazy protocol witness table accessor for type DefaultsManager.Analytics.Keys and conformance DefaultsManager.Analytics.Keys()
{
  result = lazy protocol witness table cache variable for type DefaultsManager.Analytics.Keys and conformance DefaultsManager.Analytics.Keys;
  if (!lazy protocol witness table cache variable for type DefaultsManager.Analytics.Keys and conformance DefaultsManager.Analytics.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultsManager.Analytics.Keys and conformance DefaultsManager.Analytics.Keys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultsManager.SheetTransfer.TransferUIMode and conformance DefaultsManager.SheetTransfer.TransferUIMode()
{
  result = lazy protocol witness table cache variable for type DefaultsManager.SheetTransfer.TransferUIMode and conformance DefaultsManager.SheetTransfer.TransferUIMode;
  if (!lazy protocol witness table cache variable for type DefaultsManager.SheetTransfer.TransferUIMode and conformance DefaultsManager.SheetTransfer.TransferUIMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultsManager.SheetTransfer.TransferUIMode and conformance DefaultsManager.SheetTransfer.TransferUIMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status()
{
  result = lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status;
  if (!lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultsManager.SyncOnboarding.Status and conformance DefaultsManager.SyncOnboarding.Status);
  }

  return result;
}

MomentsUI::DBSuggestion::SuggestionSubType_optional __swiftcall DBSuggestion.SuggestionSubType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 800)
  {
    v2 = 47;
    switch(rawValue)
    {
      case 301:
        *v1 = 15;
        break;
      case 302:
        *v1 = 16;
        break;
      case 303:
        *v1 = 17;
        break;
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 406:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
        goto LABEL_26;
      case 401:
        *v1 = 18;
        break;
      case 402:
        *v1 = 19;
        break;
      case 403:
        *v1 = 20;
        break;
      case 404:
        *v1 = 21;
        break;
      case 405:
        *v1 = 22;
        break;
      case 407:
        *v1 = 23;
        break;
      case 408:
        *v1 = 24;
        break;
      case 409:
        *v1 = 25;
        break;
      case 410:
        *v1 = 26;
        break;
      case 501:
        *v1 = 27;
        break;
      case 502:
        *v1 = 28;
        break;
      case 503:
        *v1 = 29;
        break;
      case 504:
        *v1 = 30;
        break;
      case 601:
        *v1 = 31;
        break;
      case 602:
        *v1 = 32;
        break;
      case 603:
        *v1 = 33;
        break;
      case 604:
        *v1 = 34;
        break;
      case 605:
        *v1 = 35;
        break;
      case 606:
        *v1 = 36;
        break;
      case 607:
        *v1 = 37;
        break;
      case 608:
        *v1 = 38;
        break;
      case 609:
        *v1 = 39;
        break;
      case 610:
        *v1 = 40;
        break;
      case 611:
        *v1 = 41;
        break;
      case 612:
        *v1 = 42;
        break;
      case 613:
        *v1 = 43;
        break;
      case 614:
        *v1 = 44;
        break;
      case 615:
        *v1 = 45;
        break;
      case 616:
        *v1 = 46;
        break;
      case 617:
LABEL_23:
        *v1 = v2;
        break;
      case 701:
        *v1 = 48;
        break;
      case 702:
        *v1 = 49;
        break;
      case 703:
        *v1 = 50;
        break;
      case 704:
        *v1 = 51;
        break;
      case 705:
        *v1 = 52;
        break;
      case 706:
        *v1 = 53;
        break;
      case 707:
        *v1 = 54;
        break;
      case 708:
        *v1 = 55;
        break;
      case 709:
        *v1 = 56;
        break;
      default:
        switch(rawValue)
        {
          case 101:
            v2 = 1;
            goto LABEL_23;
          case 102:
            *v1 = 2;
            break;
          case 103:
            *v1 = 3;
            break;
          case 104:
            *v1 = 4;
            break;
          case 105:
            *v1 = 5;
            break;
          case 106:
            *v1 = 6;
            break;
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
          case 129:
          case 130:
          case 131:
          case 132:
          case 133:
          case 134:
          case 135:
          case 136:
          case 137:
          case 138:
          case 139:
          case 140:
          case 141:
          case 142:
          case 143:
          case 144:
          case 145:
          case 146:
          case 147:
          case 148:
          case 149:
          case 150:
          case 151:
          case 152:
          case 153:
          case 154:
          case 155:
          case 156:
          case 157:
          case 158:
          case 159:
          case 160:
          case 161:
          case 162:
          case 163:
          case 164:
          case 165:
          case 166:
          case 167:
          case 168:
          case 169:
          case 170:
          case 171:
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 178:
          case 179:
          case 180:
          case 181:
          case 182:
          case 183:
          case 184:
          case 185:
          case 186:
          case 187:
          case 188:
          case 189:
          case 190:
          case 191:
          case 192:
          case 193:
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
            goto LABEL_26;
          case 201:
            *v1 = 7;
            break;
          case 202:
            *v1 = 8;
            break;
          case 203:
            *v1 = 9;
            break;
          case 204:
            *v1 = 10;
            break;
          case 205:
            *v1 = 11;
            break;
          case 206:
            *v1 = 12;
            break;
          case 207:
            *v1 = 13;
            break;
          case 208:
            *v1 = 14;
            break;
          default:
            if (rawValue)
            {
              goto LABEL_26;
            }

            *v1 = 0;
            break;
        }

        break;
    }
  }

  else if (rawValue > 1002)
  {
    if (rawValue > 1004)
    {
      if (rawValue == 1005)
      {
        *v1 = 63;
        return rawValue;
      }

      if (rawValue == 1006)
      {
        *v1 = 64;
        return rawValue;
      }

      goto LABEL_26;
    }

    if (rawValue == 1003)
    {
      *v1 = 61;
    }

    else
    {
      *v1 = 62;
    }
  }

  else
  {
    if (rawValue <= 1000)
    {
      if (rawValue == 801)
      {
        *v1 = 57;
        return rawValue;
      }

      if (rawValue == 802)
      {
        *v1 = 58;
        return rawValue;
      }

LABEL_26:
      *v1 = 65;
      return rawValue;
    }

    if (rawValue == 1001)
    {
      *v1 = 59;
    }

    else
    {
      *v1 = 60;
    }
  }

  return rawValue;
}

MomentsUI::DBSuggestion::VisibilityCategory_optional __swiftcall DBSuggestion.VisibilityCategory.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double DBSuggestion.rankingScore.getter()
{
  result = COERCE_DOUBLE((*(*v0 + 872))());
  if (v2)
  {
    return -1.0;
  }

  return result;
}

MomentsUI::DBSuggestion::SuggestionType DBSuggestion.type.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = (*(*v1 + 440))();
  if (v4)
  {
    result = (*(*v1 + 392))(&v8, v3);
    v6 = v8;
    if (v8 == 13)
    {
      *a1 = 0;
      return result;
    }
  }

  else
  {
    result = DBSuggestion.SuggestionType.init(rawValue:)(v3).value;
    v6 = v7;
    if (v7 == 13)
    {
      v6 = 0;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t DBSuggestion.modifiedDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7[-v4];
  outlined init with copy of DateInterval?(a1, &v7[-v4], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = v1;
  swift_getKeyPath();
  v8 = v1;
  v9 = v5;
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return outlined destroy of UTType?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t key path setter for DBSuggestion.id : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 304))(v6);
}

uint64_t key path getter for DBSuggestion.assetsLoaded : DBSuggestion@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1208))();
  *a2 = result;
  return result;
}

uint64_t DBSuggestion.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v16 = MEMORY[0x21CE92100](0x203A4449555509, 0xE700000000000000);
  (*(*v0 + 296))(v16);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v17);

  (*(v13 + 8))(v15, v12);
  MEMORY[0x21CE92100](0x3A656C746954090ALL, 0xE900000000000020);
  v45 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  if (v46)
  {
    v18 = v45;
  }

  else
  {
    v18 = 0;
  }

  if (v46)
  {
    v19 = v46;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  MEMORY[0x21CE92100](v18, v19);

  MEMORY[0x21CE92100](0x746974627553090ALL, 0xEC000000203A656CLL);
  v45 = v0;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v20 = v41;
  PersistentModel.getValue<A>(forKey:)();

  if (v46)
  {
    v21 = v45;
  }

  else
  {
    v21 = 0;
  }

  if (v46)
  {
    v22 = v46;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = v40;
  MEMORY[0x21CE92100](v21, v22);

  v24 = MEMORY[0x21CE92100](0x3A7472617453090ALL, 0xE900000000000020);
  (*(*v0 + 728))(v24);
  v25 = *(v20 + 48);
  if (v25(v6, 1, v23) == 1)
  {
    v26 = v42;
    static Date.distantPast.getter();
    v27 = v6;
    v28 = v25(v6, 1, v23);
    v29 = v23;
    v30 = v26;
    if (v28 != 1)
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v31 = v42;
    (*(v20 + 32))(v42, v6, v23);
    v29 = v23;
    v30 = v31;
  }

  v42 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v32);

  v33 = *(v20 + 8);
  v33(v30, v29);
  v34 = MEMORY[0x21CE92100](0x203A646E45090ALL, 0xE700000000000000);
  v35 = v44;
  (*(*v1 + 776))(v34);
  if (v25(v35, 1, v29) == 1)
  {
    v36 = v43;
    static Date.distantFuture.getter();
    if (v25(v35, 1, v29) != 1)
    {
      outlined destroy of UTType?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v36 = v43;
    (*(v20 + 32))(v43, v35, v29);
  }

  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v37);

  v33(v36, v29);
  return v47;
}

uint64_t DBSuggestion.copyWithReuseAndNewMetadata(newReference:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v220 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v235 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v232 = &v220 - v13;
  MEMORY[0x28223BE20](v12);
  v231 = &v220 - v14;
  v15 = type metadata accessor for Date();
  v246 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v245 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v244 = &v220 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v234 = &v220 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v220 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v233 = &v220 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v242 = &v220 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v243 = &v220 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v220 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v250 = &v220 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v253 = &v220 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v252 = &v220 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v220 - v42;
  (*(*a1 + 344))(v41);
  if ((*(v25 + 6))(v23, 1, v24) == 1)
  {
    outlined destroy of UTType?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    v238 = v25;
    v45 = (*(v25 + 4))(v43, v23, v24);
    v46 = MEMORY[0x277D84F90];
    v266 = MEMORY[0x277D84F90];
    v47 = *(*a1 + 1112);
    v225 = a1;
    v48 = v47(v45);
    v226 = a2;
    v237 = v15;
    v49 = v24;
    v259 = v43;
    v260 = v24;
    v247 = v48;
    v230 = v8;
    if (!v48)
    {
      v255 = v46;
      goto LABEL_67;
    }

    v50 = (*(*v3 + 1112))();
    if (v50)
    {
      v52 = v50;
      v53 = v247 & 0xFFFFFFFFFFFFFF8;
      v54 = v238;
      if (v247 >> 62)
      {
        goto LABEL_120;
      }

      for (i = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v56 = v52 & 0xFFFFFFFFFFFFFF8;
        if (v52 >> 62)
        {
          v54 = __CocoaSet.count.getter();
        }

        else
        {
          v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = 0;
        v251 = v247 & 0xC000000000000001;
        v229 = (v247 + 32);
        v256 = (v238 + 8);
        v257 = (v238 + 16);
        v255 = MEMORY[0x277D84F90];
        *&v51 = 136315394;
        v239 = v51;
        *&v51 = 134218754;
        v224 = v51;
        v254 = v52 & 0xFFFFFFFFFFFFFF8;
        v249 = v53;
        v248 = i;
        while (1)
        {
          if (v251)
          {
            v68 = MEMORY[0x21CE93180](v57, v247);
          }

          else
          {
            if (v57 >= *(v53 + 16))
            {
              goto LABEL_119;
            }

            v68 = *&v229[8 * v57];
          }

          v258 = (v57 + 1);
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (!v54)
          {
LABEL_55:

            MEMORY[0x21CE92260](v117);
            if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v255 = v266;
            if (one-time initialization token for processing != -1)
            {
              swift_once();
            }

            v118 = type metadata accessor for Logger();
            __swift_project_value_buffer(v118, static CommonLogger.processing);
            v119 = v250;
            (*v257)(v250, v43, v49);

            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v120, v121))
            {
              v58 = v119;
              v59 = swift_slowAlloc();
              v241 = swift_slowAlloc();
              v261 = v241;
              *v59 = v239;
              v60 = UUID.uuidString.getter();
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v261);

              *(v59 + 4) = v62;
              *(v59 + 12) = 2080;
              v63 = UUID.uuidString.getter();
              v65 = v64;
              (*v256)(v58, v260);
              v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v261);
              v49 = v260;

              *(v59 + 14) = v66;
              _os_log_impl(&dword_21607C000, v120, v121, "[copyWithReuseAndNewMetadata] using new asset, id=%s for suggestionID=%s", v59, 0x16u);
              v67 = v241;
              swift_arrayDestroy();
              v43 = v259;
              MEMORY[0x21CE94770](v67, -1, -1);
              MEMORY[0x21CE94770](v59, -1, -1);
            }

            else
            {

              (*v256)(v119, v49);
            }

            v53 = v249;
            v56 = v254;
            goto LABEL_12;
          }

          v69 = 0;
          v43 = 0;
LABEL_20:
          v53 = v43;
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              v70 = MEMORY[0x21CE93180](v53, v52);
              v43 = (v53 + 1);
              if (__OFADD__(v53, 1))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (v53 >= *(v56 + 16))
              {
                goto LABEL_117;
              }

              v70 = *(v52 + 8 * v53 + 32);

              v43 = (v53 + 1);
              if (__OFADD__(v53, 1))
              {
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }
            }

            specialized static DBAsset.== infix(_:_:)(v68, v70);
            if (v71)
            {
              v72 = (*v70 + 112);
              v241 = *v72;
              v240 = v72;
              v73 = COERCE_DOUBLE(v241());
              v75 = v74;
              v255 = *(*v68 + 112);
              v76 = COERCE_DOUBLE(v255());
              if (v75)
              {
                if (v77)
                {
                  goto LABEL_44;
                }

LABEL_35:
                v78 = (v255)(*&v76);
                (*(*v70 + 120))(v78, v79 & 1);
                if (one-time initialization token for processing != -1)
                {
                  swift_once();
                }

                v80 = type metadata accessor for Logger();
                __swift_project_value_buffer(v80, static CommonLogger.processing);
                v81 = v260;
                (*v257)(v252, v259, v260);

                v82 = Logger.logObject.getter();
                v83 = static os_log_type_t.debug.getter();

                LODWORD(v236) = v83;
                if (os_log_type_enabled(v82, v83))
                {
                  v84 = swift_slowAlloc();
                  v228 = swift_slowAlloc();
                  v261 = v228;
                  *v84 = v224;
                  v227 = v82;
                  v85 = COERCE_DOUBLE(v241());
                  if (v86)
                  {
                    v85 = -1.0;
                  }

                  *(v84 + 4) = v85;
                  *(v84 + 12) = 2048;
                  v87 = COERCE_DOUBLE(v255());
                  if (v88)
                  {
                    v87 = -1.0;
                  }

                  *(v84 + 14) = v87;
                  *(v84 + 22) = 2080;
                  v89 = UUID.uuidString.getter();
                  v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v261);
                  v92 = v252;
                  v93 = v91;

                  *(v84 + 24) = v93;
                  *(v84 + 32) = 2080;
                  v94 = UUID.uuidString.getter();
                  v96 = v95;
                  (*v256)(v92, v260);
                  v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v261);

                  *(v84 + 34) = v97;
                  v98 = v227;
                  _os_log_impl(&dword_21607C000, v227, v236, "[copyWithReuseAndNewMetadata] updating priorityScore, savedAsset=%f, referenceAsset=%f, savedId=%s for suggestionID=%s", v84, 0x2Au);
                  v99 = v228;
                  swift_arrayDestroy();
                  MEMORY[0x21CE94770](v99, -1, -1);
                  MEMORY[0x21CE94770](v84, -1, -1);
                }

                else
                {

                  (*v256)(v252, v81);
                }
              }

              else if ((v77 & 1) != 0 || v73 != v76)
              {
                goto LABEL_35;
              }

LABEL_44:

              MEMORY[0x21CE92260](v100);
              if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v255 = v266;
              v49 = v260;
              if (one-time initialization token for processing != -1)
              {
                swift_once();
              }

              v101 = type metadata accessor for Logger();
              __swift_project_value_buffer(v101, static CommonLogger.processing);
              v102 = v253;
              (*v257)(v253, v259, v49);

              v103 = Logger.logObject.getter();
              v104 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v103, v104))
              {
                v105 = swift_slowAlloc();
                v241 = swift_slowAlloc();
                v261 = v241;
                *v105 = v239;
                LODWORD(v240) = v104;
                v106 = UUID.uuidString.getter();
                v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v261);

                *(v105 + 4) = v108;
                *(v105 + 12) = 2080;
                v109 = v253;
                v110 = UUID.uuidString.getter();
                v236 = v103;
                v111 = v110;
                v113 = v112;
                (*v256)(v109, v260);
                v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v261);
                v49 = v260;

                *(v105 + 14) = v114;
                v115 = v236;
                _os_log_impl(&dword_21607C000, v236, v240, "[copyWithReuseAndNewMetadata] reusing asset id=%s for suggestionID=%s", v105, 0x16u);
                v116 = v241;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v116, -1, -1);
                MEMORY[0x21CE94770](v105, -1, -1);
              }

              else
              {

                (*v256)(v102, v49);
              }

              v69 = 1;
              v56 = v254;
              if (v43 == v54)
              {

                v43 = v259;
                v53 = v249;
                goto LABEL_12;
              }

              goto LABEL_20;
            }

            ++v53;
          }

          while (v43 != v54);
          v43 = v259;
          if ((v69 & 1) == 0)
          {
            goto LABEL_55;
          }

          v53 = v249;
LABEL_12:
          v57 = v258;
          if (v258 == v248)
          {

            v15 = v237;
LABEL_67:
            v54 = v238;
            goto LABEL_68;
          }
        }

LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        ;
      }

      v255 = MEMORY[0x277D84F90];
      v15 = v237;
      goto LABEL_68;
    }

    v122 = v238;
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, static CommonLogger.processing);
    v122[2](v34, v43, v24);
    v124 = v122;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    v127 = os_log_type_enabled(v125, v126);
    v15 = v237;
    if (v127)
    {
      v128 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v261 = v258;
      *v128 = 136315138;
      v129 = v124;
      v130 = UUID.uuidString.getter();
      v132 = v131;
      (*(v129 + 8))(v34, v260);
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v261);

      *(v128 + 4) = v133;
      _os_log_impl(&dword_21607C000, v125, v126, "[copyWithReuseAndNewMetadata] no assets to re-use, suggestionID=%s", v128, 0xCu);
      v134 = v258;
      __swift_destroy_boxed_opaque_existential_1(v258);
      v49 = v260;
      MEMORY[0x21CE94770](v134, -1, -1);
      MEMORY[0x21CE94770](v128, -1, -1);

      v255 = v247;
      goto LABEL_67;
    }

    (*(v124 + 8))(v34, v24);
    v255 = v247;
    v54 = v124;
LABEL_68:
    v135 = *(v54 + 16);
    v136 = v135(v243, v43, v49);
    v137 = v225;
    v138 = (*(*v225 + 440))(v136);
    v222 = v54 + 16;
    v221 = v135;
    if (v139)
    {
      (*(*v137 + 392))(&v261, v138);
    }

    else
    {
      DBSuggestion.SuggestionType.init(rawValue:)(v138);
    }

    v140 = v261;
    if (v261 == 13)
    {
      v140 = 0;
    }

    v223 = v140;
    v261 = v137;
    swift_getKeyPath();
    v141 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v142 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    PersistentModel.getValue<A>(forKey:)();

    v143 = v261;
    if (!v262)
    {
      v143 = 0;
    }

    *&v224 = v143;
    if (v262)
    {
      v144 = v262;
    }

    else
    {
      v144 = 0xE000000000000000;
    }

    v229 = v144;
    v261 = v137;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v145 = v261;
    if (!v262)
    {
      v145 = 0;
    }

    v227 = v145;
    if (v262)
    {
      v146 = v262;
    }

    else
    {
      v146 = 0xE000000000000000;
    }

    v236 = v146;
    v261 = v137;
    swift_getKeyPath();
    v258 = v141;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v148 = v261;
    if (!v262)
    {
      v148 = 0;
    }

    v228 = v148;
    if (v262)
    {
      v149 = v262;
    }

    else
    {
      v149 = 0xE000000000000000;
    }

    v150 = v231;
    (*(*v137 + 728))(v147);
    v151 = v246;
    v152 = *(v246 + 48);
    if (v152(v150, 1, v15) == 1)
    {
      static Date.distantPast.getter();
      v153 = v152(v150, 1, v15);
      v154 = v232;
      if (v153 != 1)
      {
        v153 = outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v153 = (*(v151 + 32))(v244, v150, v15);
      v154 = v232;
    }

    (*(*v137 + 776))(v153);
    v155 = v152(v154, 1, v15);
    v156 = v230;
    if (v155 == 1)
    {
      static Date.distantFuture.getter();
      v157 = v152(v154, 1, v15);
      if (v157 != 1)
      {
        v157 = outlined destroy of UTType?(v154, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v157 = (*(v246 + 32))(v245, v154, v15);
    }

    v240 = (*(*v137 + 872))(v157);
    LODWORD(v232) = v158;
    v261 = v137;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type Double? and conformance <A> A?();
    PersistentModel.getValue<A>(forKey:)();

    v160 = v261;
    LODWORD(v239) = v262;
    v161 = (*(*v137 + 968))(v159);
    v163 = v162;
    v164 = DBSuggestion.visibilityCategory.getter(&v265);
    v165 = v265;
    v166 = (*(*v137 + 1064))(v164);
    if (v167)
    {
      v168 = -1;
    }

    else
    {
      v168 = v166;
    }

    v169 = (*(*v137 + 488))();
    v252 = v165;
    v253 = v168;
    v249 = v161;
    LODWORD(v248) = v163;
    v247 = v149;
    v241 = v160;
    if (v170)
    {
      v220 = 0;
    }

    else
    {
      DBSuggestion.SuggestionSubType.init(rawValue:)(v169);
      v171 = v261;
      if (v261 == 65)
      {
        v171 = 0;
      }

      v220 = v171;
    }

    v172 = v238;
    v173 = type metadata accessor for URL();
    v174 = (*(*(v173 - 8) + 56))(v156, 1, 1, v173);
    LOBYTE(v250) = (*(*v137 + 1016))(v174) & 1;
    LODWORD(v250) = v250;
    UUID.init()();
    v175 = type metadata accessor for DBSuggestion(0);
    v44 = swift_allocObject();
    *(v44 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_MR);
    v261 = v175;
    v262 = v175;
    v263 = v142;
    v264 = v142;
    *(v44 + 80) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v44 + 48));
    v251 = v175;
    static PersistentModel.createBackingData<A>()();
    v176 = v233;
    UUID.init()();
    __swift_project_boxed_opaque_existential_1((v44 + 48), *(v44 + 72));
    swift_getKeyPath();
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v177 = v260;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v178 = *(v172 + 1);
    v254 = (v172 + 8);
    v256 = v178;
    v178(v176, v177);
    *(v44 + 16) = 0x101010101010101;
    *(v44 + 24) = 0x101010101010101;
    __swift_project_boxed_opaque_existential_1((v44 + 48), *(v44 + 72));
    swift_getKeyPath();
    v179 = MEMORY[0x277D84F90];
    v261 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGSgMd, &_sSay9MomentsUI7DBAssetCGSgMR);
    lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v44 + 32) = 0;
    __swift_project_boxed_opaque_existential_1((v44 + 48), *(v44 + 72));
    swift_getKeyPath();
    v261 = v179;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11DBAssetDataCGSgMd, &_sSay9MomentsUI11DBAssetDataCGSgMR);
    type metadata accessor for DBAssetData(0);
    v231 = v142;
    v180 = v172;
    lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

    *(v44 + 33) = 256;
    __swift_project_boxed_opaque_existential_1((v44 + 48), *(v44 + 72));
    swift_getKeyPath();
    v261 = v179;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGSgMd, &_sSay9MomentsUI10DBSnapshotCGSgMR);
    type metadata accessor for DBSnapshot(0);
    lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

    *(v44 + 35) = 0;
    *(v44 + 40) = 0;
    v257 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
    ObservationRegistrar.init()();
    v181 = v260;
    v182 = v221;
    v221(v176, v242, v260);
    v261 = v44;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v220 - 2) = v44;
    *(&v220 - 1) = v176;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v184 = v181;
    v256(v176, v181);
    v185 = v234;
    v182(v234, v243, v184);
    (*(v180 + 7))(v185, 0, 1, v184);
    v261 = v44;
    v186 = swift_getKeyPath();
    MEMORY[0x28223BE20](v186);
    *(&v220 - 2) = v44;
    *(&v220 - 1) = v185;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v185, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v187 = v223 - 1;
    v261 = v44;
    v188 = swift_getKeyPath();
    MEMORY[0x28223BE20](v188);
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v187;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v189 = qword_21659CD30[v220];
    v261 = v44;
    v190 = swift_getKeyPath();
    MEMORY[0x28223BE20](v190);
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v189;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v191 = swift_getKeyPath();
    MEMORY[0x28223BE20](v191);
    v192 = v224;
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v192;
    *(&v220 - 2) = v229;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v193 = swift_getKeyPath();
    MEMORY[0x28223BE20](v193);
    v194 = v227;
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v194;
    *(&v220 - 2) = v236;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v195 = swift_getKeyPath();
    MEMORY[0x28223BE20](v195);
    v196 = v228;
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v196;
    *(&v220 - 2) = v247;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v197 = v246;
    v247 = *(v246 + 16);
    v198 = v235;
    v199 = v237;
    (v247)(v235, v244, v237);
    v238 = *(v197 + 56);
    (v238)(v198, 0, 1, v199);
    v261 = v44;
    v200 = swift_getKeyPath();
    MEMORY[0x28223BE20](v200);
    *(&v220 - 2) = v44;
    *(&v220 - 1) = v198;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v198, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (v247)(v198, v245, v199);
    (v238)(v198, 0, 1, v199);
    v261 = v44;
    v201 = swift_getKeyPath();
    MEMORY[0x28223BE20](v201);
    *(&v220 - 2) = v44;
    *(&v220 - 1) = v198;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v198, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v232)
    {
      v202 = 0xBFF0000000000000;
    }

    else
    {
      v202 = v240;
    }

    v261 = v44;
    v203 = swift_getKeyPath();
    MEMORY[0x28223BE20](v203);
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v202;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v239)
    {
      v204 = 0xBFF0000000000000;
    }

    else
    {
      v204 = v241;
    }

    v261 = v44;
    v205 = swift_getKeyPath();
    MEMORY[0x28223BE20](v205);
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v204;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v248)
    {
      v206 = 0xBFF0000000000000;
    }

    else
    {
      v206 = v249;
    }

    v261 = v44;
    v207 = swift_getKeyPath();
    MEMORY[0x28223BE20](v207);
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v206;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v208 = swift_getKeyPath();
    MEMORY[0x28223BE20](v208);
    v209 = v252;
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v209;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v210 = swift_getKeyPath();
    MEMORY[0x28223BE20](v210);
    *(&v220 - 2) = v44;
    *(&v220 - 8) = v250;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v261 = v44;
    v211 = swift_getKeyPath();
    MEMORY[0x28223BE20](v211);
    v212 = v253;
    *(&v220 - 4) = v44;
    *(&v220 - 3) = v212;
    *(&v220 - 16) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v213 = v226;

    dispatch thunk of ModelContext.insert<A>(_:)();

    v214 = v230;
    DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:)(0, v255, v230, v213);

    v215 = v260;
    v216 = v256;
    v256(v242, v260);
    outlined destroy of UTType?(v214, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v217 = *(v246 + 8);
    v218 = v237;
    v217(v245, v237);
    v217(v244, v218);
    v216(v243, v215);
    v216(v259, v215);
  }

  return v44;
}

uint64_t DBSuggestion.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  (*(*v1 + 728))(v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  static Date.distantPast.getter();
  result = (v9)(v6, 1, v7);
  if (result != 1)
  {
    return outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path setter for DBSuggestion._suggestionID : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + 352))(v6);
}

uint64_t key path setter for DBSuggestion._endDate : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 784))(v6);
}

uint64_t key path getter for DBSuggestion._suggestionType : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for DBSuggestion._suggestionSubType : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for DBSuggestion._visibilityCategory : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for PersistentModel.persistentModelID : DBAssetData()
{
  type metadata accessor for DBAssetData(0);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
  return PersistentModel.persistentModelID.getter();
}

uint64_t static DBSuggestion.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBSuggestion.Class = a1;
  unk_27CA91660 = a2;
  byte_27CA91668 = a3;
  return result;
}

uint64_t DBSuggestion.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBSuggestion.Log);
}

uint64_t static DBSuggestion.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBSuggestion.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBSuggestion.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static DBSuggestion.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBSuggestion@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

MomentsUI::DBSuggestion::SuggestionType_optional __swiftcall DBSuggestion.SuggestionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if ((rawValue + 1) < 0xD)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DBSuggestion.SuggestionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    DBSuggestion.SuggestionType.init(rawValue:)(v5);
    if (v8 == 13)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSuggestion.SuggestionSubType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_21659CD30[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSuggestion.SuggestionSubType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_21659CD30[v2]);
  return Hasher._finalize()();
}

uint64_t DBSuggestion.SuggestionSubType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    DBSuggestion.SuggestionSubType.init(rawValue:)(v5);
    if (v8 == 65)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DBSuggestion.VisibilityCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double DBSuggestion.id.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t DBSuggestion.id.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = type metadata accessor for UUID();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

double closure #1 in DBSuggestion.id.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSuggestion.id.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion.id.modify;
}

void DBSuggestion.id.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    v2[1] = v7;
    KeyPath = swift_getKeyPath();
    v11[0] = v11;
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v2[2] = v7;
    v10 = swift_getKeyPath();
    v11[0] = v11;
    MEMORY[0x28223BE20](v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);
  free(v2);
}

double closure #1 in DBSuggestion._modifiedDate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSuggestion._suggestionID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._suggestionID.modify;
}

void DBSuggestion._suggestionID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of DateInterval?(*(*a1 + 40), v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v2[1] = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v2[2] = v5;
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  outlined destroy of UTType?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  free(v4);
  free(v3);
  free(v2);
}

void *key path getter for DBSuggestion._type : DBSuggestion@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBSuggestion._type : DBSuggestion(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 400))(&v4);
}

double DBSuggestion._type.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion.SuggestionType? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

double DBSuggestion._type.setter(char *a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void (*DBSuggestion._type.modify(void *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion.SuggestionType? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._type.modify;
}

void DBSuggestion._type.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void (*DBSuggestion._suggestionType.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._suggestionType.modify;
}

void DBSuggestion._suggestionType.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBSuggestion._suggestionType.getter(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

double DBSuggestion._suggestionType.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSuggestion._suggestionType.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  a5(v6, v7);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSuggestion._suggestionSubType.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._suggestionSubType.modify;
}

void DBSuggestion._suggestionSubType.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void (*DBSuggestion._visibilityCategory.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type UInt? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._visibilityCategory.modify;
}

void DBSuggestion._visibilityCategory.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

double key path getter for DBSuggestion._title : DBSuggestion@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v5;
  *a3 = v5;
  return result;
}

double key path setter for DBSuggestion._title : DBSuggestion(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t DBSuggestion._title.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

double closure #1 in DBSuggestion._title.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

uint64_t key path setter for DBSuggestion._startDate : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 736))(v6);
}

uint64_t DBSuggestion._suggestionID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of UTType?(a1, a4, a5);
}

void (*DBSuggestion._startDate.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._startDate.modify;
}

void (*DBSuggestion._endDate.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._endDate.modify;
}

void DBSuggestion._startDate.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of DateInterval?(v5[5], v5[4], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5[1] = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v5[2] = v8;
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  free(v7);
  free(v6);
  free(v5);
}

double DBSuggestion.modifiedDate.getter(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t type metadata accessor for DBSuggestion(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBSuggestion;
  if (!type metadata singleton initialization cache for DBSuggestion)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for DBSuggestion._rankingScore : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._rankingScore.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._rankingScore.modify;
}

void DBSuggestion._rankingScore.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void key path getter for DBSuggestion._baseScore : DBSuggestion(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for DBSuggestion._baseScore : DBSuggestion(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t key path getter for DBSuggestion._goodnessScore : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._goodnessScore.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._goodnessScore.modify;
}

void DBSuggestion._goodnessScore.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion._isSensitive : DBSuggestion@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1016))();
  *a2 = result;
  return result;
}

double closure #1 in DBSuggestion._type.setter(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSuggestion._isSensitive.modify(void *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return DBSuggestion._isSensitive.modify;
}

void DBSuggestion._isSensitive.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion._ordinalRankInRecommendedTab : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._ordinalRankInRecommendedTab.modify(void *a1))(void **a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Int64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._ordinalRankInRecommendedTab.modify;
}

void DBSuggestion._ordinalRankInRecommendedTab.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion.assets : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion.assets : DBSuggestion(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1120);

  return v2(v3);
}

uint64_t DBSuggestion.assets.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double closure #1 in DBSuggestion.assets.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSuggestion.assets.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSuggestion.assets.modify;
}

uint64_t key path getter for DBSuggestion._assetData : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion._assetData : DBSuggestion(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1168);

  return v2(v3);
}

double DBSuggestion.assets.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void (*DBSuggestion._assetData.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBAssetData(0);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBSuggestion._assetData.modify;
}

uint64_t DBSuggestion._isSensitive.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

double DBSuggestion._isSensitive.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void (*DBSuggestion.assetsLoaded.modify(void *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return DBSuggestion.assetsLoaded.modify;
}

void DBSuggestion.assetsLoaded.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBSuggestion.refreshLoadedAssets(deep:context:)(char a1, uint64_t a2)
{
  v53 = type metadata accessor for PersistentIdentifier();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(*v2 + 440))(v16);
  v60 = v2;
  if (v19)
  {
    (*(*v2 + 392))(v64, v18);
  }

  else
  {
    DBSuggestion.SuggestionType.init(rawValue:)(v18);
  }

  if (v64[0] != 8)
  {
    v57 = v15;
    if (a2)
    {
      v62 = v7;
      v63 = a2;
      v49 = v5;
      v55 = v14;
      v22 = v13;
    }

    else
    {
      type metadata accessor for DBSuggestion(0);
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
      result = PersistentModel.modelContext.getter();
      if (!result)
      {
        return result;
      }

      v62 = v7;
      v49 = v5;
      v55 = v14;
      v22 = v13;
      dispatch thunk of ModelContext.container.getter();

      type metadata accessor for ModelContext();
      swift_allocObject();
      v63 = ModelContext.init(_:)();
    }

    v23 = *(*v60 + 296);

    v23(v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
    v26 = *(v25 - 8);
    v27 = v58;
    v56 = *(v26 + 56);
    v28 = v26 + 56;
    v56(v58, 1, 1, v25);
    v29 = type metadata accessor for DBAssetData(0);
    v30 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
    v31 = v22;
    FetchDescriptor.init(predicate:sortBy:)();
    v32 = FetchDescriptor.includePendingChanges.setter();
    v54 = v29;
    if (a1)
    {
      v61 = &v45;
      MEMORY[0x28223BE20](v32);
      *(&v45 - 2) = v59;
      *v64 = v29;
      Predicate.init(_:)();
      v56(v27, 0, 1, v25);
      FetchDescriptor.predicate.setter();
      v33 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
      v35 = v33;
      v50 = v30;
      v51 = v28;
      v52 = v25;
      v46 = v22;
      v47 = v11;
      v48 = v10;
      v31 = *(v33 + 16);
      if (v31)
      {
        v34 = 0;
        v36 = v49;
        v10 = (v49 + 16);
        v11 = (v49 + 8);
        v37 = v53;
        while (v34 < v35[2])
        {
          v28 = v62;
          v38 = v36[2](v62, v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v36[9] * v34, v37);
          v39 = MEMORY[0x21CE93DB0](v38);
          closure #1 in closure #2 in DBSuggestion.refreshLoadedAssets(deep:context:)(v28, v63);
          ++v34;
          objc_autoreleasePoolPop(v39);
          (*v11)(v28, v37);
          if (v31 == v34)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_19:

      v11 = v47;
      v10 = v48;
      v34 = v57;
      v31 = v46;
    }

    else
    {
      v50 = v30;
      v51 = v28;
      v52 = v25;
      v34 = v57;
    }

    MEMORY[0x28223BE20](v32);
    v40 = v58;
    v36 = v59;
    *(&v45 - 2) = v59;
    *v64 = v54;
    Predicate.init(_:)();
    v56(v40, 0, 1, v52);
    FetchDescriptor.predicate.setter();
    v41 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
    v35 = v60;
    v28 = v41;
    v42 = (*(*v60 + 1160))();
    if (!v42)
    {
      v43 = 0;
      v44 = v55;
      goto LABEL_25;
    }

    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
      v44 = v55;

LABEL_25:
      (*(*v35 + 1216))(v28 >= v43);

      v11[1](v31, v10);
      return (*(v34 + 8))(v36, v44);
    }

LABEL_28:
    v43 = __CocoaSet.count.getter();
    goto LABEL_23;
  }

  v20 = *(*v60 + 1216);

  return v20(1);
}

uint64_t closure #4 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMR);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *a1;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v34 = v27;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd, &_sSay9MomentsUI12DBSuggestionCGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMR, MEMORY[0x277CC8F18]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v12 + 8))(v14, v11);
  v36 = 0;
  v20 = v30;
  static PredicateExpressions.build_Arg<A>(_:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConjunctionVy_AVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGA_y_AIy_AOSbSgGAC0D7LiteralVy_SbGGGA_y_AIy_AoA0O0VSgGA12_y_A17_GGGSbGA5_y_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConjunctionVy_AVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGA_y_AIy_AOSbSgGAC0D7LiteralVy_SbGGGA_y_AIy_AoA0O0VSgGA12_y_A17_GGGSbGA5_y_SbGGMR);
  v22 = v31;
  v31[3] = v21;
  v22[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v22);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v23 = v28;
  v24 = v32;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v33 + 8))(v20, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t closure #1 in closure #4 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMR);
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  MEMORY[0x28223BE20](v5);
  v75 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMR);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  MEMORY[0x28223BE20](v8);
  v73 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMR);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  MEMORY[0x28223BE20](v11);
  v74 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMR);
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  MEMORY[0x28223BE20](v14);
  v64 = &v53 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR);
  v84 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = &v53 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMR);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMR);
  v21 = *(v20 - 8);
  v67 = v20;
  v68 = v21;
  MEMORY[0x28223BE20](v20);
  v61 = &v53 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMR);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v53 - v25;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMR);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v53 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMR);
  v29 = *(v28 - 8);
  v71 = v28;
  v72 = v29;
  MEMORY[0x28223BE20](v28);
  v58 = &v53 - v30;
  v31 = MEMORY[0x277CC90F8];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMR);
  v57 = MEMORY[0x277CC9070];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMR, MEMORY[0x277CC9070]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A], &_sSay9MomentsUI12DBSuggestionCGMd, &_sSay9MomentsUI12DBSuggestionCGMR, MEMORY[0x277D83970]);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  (*(v24 + 8))(v26, v23);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, v31);
  v32 = v60;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v33 = v59;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v34 = *(v84 + 8);
  v84 += 8;
  v55 = v34;
  v34(v18, v32);
  v35 = v64;
  static PredicateExpressions.build_NilLiteral<A>()();
  v54 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMR, MEMORY[0x277CC90C0]);
  v53 = MEMORY[0x277CC8EC0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Bool> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMR, MEMORY[0x277CC8EC0]);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v36 = v61;
  v37 = v65;
  v38 = v69;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v70 + 8))(v35, v38);
  (*(v66 + 8))(v33, v37);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMR, MEMORY[0x277CC9010]);
  v39 = v57;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMR, v57);
  v40 = v58;
  v41 = v56;
  v42 = v36;
  v43 = v62;
  v44 = v67;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v68 + 8))(v42, v44);
  (*(v63 + 8))(v41, v43);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v45 = v73;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v55(v18, v32);
  v46 = v75;
  static PredicateExpressions.build_NilLiteral<A>()();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMR, v54);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Data> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMR, v53);
  lazy protocol witness table accessor for type Data? and conformance <A> A?();
  v47 = v74;
  v48 = v76;
  v49 = v80;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v81 + 8))(v46, v49);
  (*(v77 + 8))(v45, v48);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMR, MEMORY[0x277CC8F18]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMR, v39);
  v50 = v71;
  v51 = v78;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v79 + 8))(v47, v51);
  return (*(v72 + 8))(v40, v50);
}
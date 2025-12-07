uint64_t sub_1D31685DC()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  v1 = v0[53];
  [v1 setInvalidationHandler_];
  [v1 invalidate];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D3168698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5B0, &unk_1D328C300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D3168720()
{
  result = qword_1EC75CA58;
  if (!qword_1EC75CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA58);
  }

  return result;
}

unint64_t sub_1D31687A0()
{
  result = qword_1EC75CA60;
  if (!qword_1EC75CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA60);
  }

  return result;
}

uint64_t sub_1D3168838()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760740);
  __swift_project_value_buffer(v0, qword_1EC760740);
  return sub_1D3276F70();
}

uint64_t sub_1D31688E4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760870);
  __swift_project_value_buffer(v0, qword_1EC760870);
  return sub_1D3276F70();
}

uint64_t sub_1D3168964()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760888);
  __swift_project_value_buffer(v0, qword_1EC760888);
  return sub_1D3276F70();
}

uint64_t sub_1D31689E4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608A0);
  __swift_project_value_buffer(v0, qword_1EC7608A0);
  return sub_1D3276F70();
}

uint64_t sub_1D3168A64()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760728);
  __swift_project_value_buffer(v0, qword_1EC760728);
  return sub_1D3276F70();
}

uint64_t sub_1D3168AE4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608B8);
  __swift_project_value_buffer(v0, qword_1EC7608B8);
  return sub_1D3276F70();
}

uint64_t sub_1D3168B64()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608D0);
  __swift_project_value_buffer(v0, qword_1EC7608D0);
  return sub_1D3276F70();
}

uint64_t sub_1D3168C04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D3276F80();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D3276F70();
}

uint64_t sub_1D3168C7C()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760758);
  __swift_project_value_buffer(v0, qword_1EC760758);
  return sub_1D3276F70();
}

uint64_t sub_1D3168CF8()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760710);
  __swift_project_value_buffer(v0, qword_1EC760710);
  return sub_1D3276F70();
}

id static NavigationLocationManager.shared.getter()
{
  if (qword_1EC75BF68 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75BF70;

  return v1;
}

Swift::Void __swiftcall NavigationLocationManager.push(_:)(MNLocation *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA70, &qword_1D328C428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v11 = sub_1D3276F80();
  __swift_project_value_buffer(v11, qword_1EC760770);
  v12 = a1;
  v13 = sub_1D3276F60();
  v14 = sub_1D32773B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138477827;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1D311E000, v13, v14, "Pushing external location: %{private}@", v15, 0xCu);
    sub_1D3125FBC(v16, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v16, -1, -1);
    MEMORY[0x1D38B6000](v15, -1, -1);
  }

  v18 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  v19 = 1;
  if (!(*(v5 + 48))(v2 + v18, 1, v4))
  {
    (*(v5 + 16))(v7, v2 + v18, v4);
    v22 = v12;
    v20 = v12;
    sub_1D32772A0();
    (*(v5 + 8))(v7, v4);
    v19 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA80, &unk_1D328C430);
  (*(*(v21 - 8) + 56))(v10, v19, 1, v21);
  sub_1D3125FBC(v10, &unk_1EC75CA70, &qword_1D328C428);
}

uint64_t LocationProviderType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736270;
    }

    if (a1 == 1)
    {
      return 5460039;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x646972627948;
      case 3:
        return 0x6563617254;
      case 4:
        return 0x6974616C756D6953;
    }
  }

  result = sub_1D3277900();
  __break(1u);
  return result;
}

uint64_t sub_1D31691E0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 > 1)
  {
    switch(v2)
    {
      case 2:
        return 0x646972627948;
      case 3:
        return 0x6563617254;
      case 4:
        return 0x6974616C756D6953;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
    return 1701736270;
  }

  if (v2 != 1)
  {
LABEL_13:
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  return 5460039;
}

id sub_1D3169304()
{
  result = [objc_allocWithZone(type metadata accessor for NavigationLocationManager(0)) init];
  qword_1EC75BF70 = result;
  return result;
}

id NavigationLocationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *NavigationLocationManager.lastLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
  v2 = v1;
  return v1;
}

void *NavigationLocationManager.lastHeading.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
  v2 = v1;
  return v1;
}

double sub_1D3169410(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *(a1 + OBJC_IVAR___MNLocationManager__locationProvider);
  if (!v3)
  {
    return 1.0;
  }

  [v3 *a3];
  return result;
}

double sub_1D316943C(SEL *a1)
{
  if (!*(v1 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    return 1.0;
  }

  [*(v1 + OBJC_IVAR___MNLocationManager__locationProvider) *a1];
  return result;
}

id NavigationLocationManager.registerObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D316E9EC(a1, v1);
}

id NavigationLocationManager.unregisterObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D316EA08(a1, v1);
}

Swift::Void __swiftcall NavigationLocationManager.updateDeviceOrientation(_:)(CLDeviceOrientation a1)
{
  v2 = *&a1;
  v3 = *(v1 + OBJC_IVAR___MNLocationManager__locationProvider);
  if (v3)
  {
    [v3 setHeadingOrientation_];
  }
}

Swift::Void __swiftcall NavigationLocationManager.useGPSLocationProvider(with:)(MNLocationProviderCLParameters *with)
{
  v3 = *(v1 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v1 + OBJC_IVAR___MNLocationManager__locationProviderType) = 1;
  sub_1D316B40C(v3);
  sub_1D32770C0();
  v4 = objc_allocWithZone(MNCoreLocationProvider);
  v5 = sub_1D32770B0();

  v6 = [v4 initWithEffectiveBundleIdentifier_];

  v7 = OBJC_IVAR___MNLocationManager__locationProvider;
  v8 = *(v1 + OBJC_IVAR___MNLocationManager__locationProvider);
  *(v1 + OBJC_IVAR___MNLocationManager__locationProvider) = v6;
  v9 = *(v1 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v1 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  swift_unknownObjectRetain();
  v12 = v6;

  v10 = *(v1 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v1 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v8)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v8 stopUpdatingHeading];
    [v8 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v11 = *(v1 + v7);
  if (v11)
  {
    [v11 setDelegate_];
  }

  swift_unknownObjectRelease();
  if (v6)
  {
    [v12 setCLParameters_];
  }
}

Swift::Void __swiftcall NavigationLocationManager.useHybridLocationProvider()()
{
  sub_1D32770C0();
  v1 = objc_allocWithZone(MNHybridLocationProvider);
  v2 = sub_1D32770B0();

  v3 = [v1 initWithEffectiveBundleIdentifier_];

  if (v3)
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType);
      *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType) = 2;
      sub_1D316B40C(v6);
      v7 = OBJC_IVAR___MNLocationManager__locationProvider;
      v8 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
      *(v0 + OBJC_IVAR___MNLocationManager__locationProvider) = v5;
      v9 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
      *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
      v10 = v3;

      v11 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
      *(v0 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

      if (v8)
      {
        [swift_unknownObjectRetain() setDelegate_];
        [v8 stopUpdatingHeading];
        [v8 stopUpdatingLocation];
        swift_unknownObjectRelease();
      }

      v12 = *(v0 + v7);
      if (v12)
      {
        [v12 setDelegate_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D3169968(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v2 + OBJC_IVAR___MNLocationManager__locationProviderType) = a2;
  sub_1D316B40C(v4);
  v5 = OBJC_IVAR___MNLocationManager__locationProvider;
  v6 = *(v2 + OBJC_IVAR___MNLocationManager__locationProvider);
  *(v2 + OBJC_IVAR___MNLocationManager__locationProvider) = a1;
  v7 = *(v2 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v2 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  swift_unknownObjectRetain();

  v8 = *(v2 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v2 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v6)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v6 stopUpdatingHeading];
    [v6 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v9 = *(v2 + v5);
  if (v9)
  {
    [v9 setDelegate_];
  }

  return swift_unknownObjectRelease();
}

void sub_1D3169A70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NavigationLocationManager.stopAllUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = OBJC_IVAR___MNLocationManager__locationStreamTask;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask))
  {

    sub_1D32772E0();
  }

  *(v0 + v4) = 0;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  sub_1D316F558(v3, v0 + v6, &unk_1EC75CA90, &qword_1D328C440);
  swift_endAccess();
  v7 = OBJC_IVAR___MNLocationManager__locationProvider;
  v8 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
  if (v8 && ([v8 stopUpdatingLocation], (v9 = *(v0 + v7)) != 0))
  {
    [v9 stopUpdatingHeading];
    v10 = *(v0 + v7);
  }

  else
  {
    v10 = 0;
  }

  *(v0 + v7) = 0;
  v11 = OBJC_IVAR___MNLocationManager__lastLocation;
  v12 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

  v13 = OBJC_IVAR___MNLocationManager__lastHeading;
  v14 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v0 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v10)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v10 stopUpdatingHeading];
    [v10 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + v7);
  if (v15)
  {
    [v15 setDelegate_];
  }

  swift_unknownObjectRelease();
  v16 = *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType) = 0;
  sub_1D316B40C(v16);
  v17 = *(v0 + v11);
  *(v0 + v11) = 0;

  v18 = *(v0 + v13);
  *(v0 + v13) = 0;

  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v19 = sub_1D3276F80();
  __swift_project_value_buffer(v19, qword_1EC760770);
  v20 = sub_1D3276F60();
  v21 = sub_1D32773B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D311E000, v20, v21, "Stopped updating all updates.", v22, 2u);
    MEMORY[0x1D38B6000](v22, -1, -1);
  }
}

Swift::Void __swiftcall NavigationLocationManager.startUpdatingLocation()()
{
  if (!*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask) || (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    v2 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = @"com.apple.Maps";
      swift_unknownObjectRetain();
      v5 = sub_1D32770B0();
      v6 = [v3 newAssertionForBundleIdentifier:@"com.apple.Maps" withReason:v5 level:1];

      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion);
      *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion) = v6;

      [v2 startUpdatingLocation];
      if ([v2 isAuthorized])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EC75BE68 != -1)
        {
          swift_once();
        }

        v8 = sub_1D3276F80();
        __swift_project_value_buffer(v8, qword_1EC760770);
        v9 = sub_1D3276F60();
        v10 = sub_1D3277390();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_1D311E000, v9, v10, "Can't start location updates because location authorization is not granted.", v11, 2u);
          MEMORY[0x1D38B6000](v11, -1, -1);
        }

        swift_unknownObjectRelease();
      }
    }

    sub_1D316A108();
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v12 = sub_1D3276F80();
    __swift_project_value_buffer(v12, qword_1EC760770);
    oslog = sub_1D3276F60();
    v13 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D311E000, oslog, v13, "Started updating locations with async stream.", v14, 2u);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }
  }
}

double sub_1D316A108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v23 = &v22 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB38, &qword_1D328C5F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v24 = v0;
  sub_1D3123910();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  sub_1D32772D0();
  v14 = sub_1D3277280();
  v15 = v23;
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  *(v18 + v17) = v0;
  v19 = v0;
  v20 = sub_1D314F750(0, 0, v15, &unk_1D328C610, v18);
  (*(v8 + 8))(v13, v7);
  *&v19[OBJC_IVAR___MNLocationManager__locationStreamTask] = v20;

  return result;
}

Swift::Void __swiftcall NavigationLocationManager.stopUpdatingLocation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = OBJC_IVAR___MNLocationManager__locationStreamTask;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask))
  {

    isCancelled = swift_task_isCancelled();

    if ((isCancelled & 1) == 0)
    {
      if (*(v0 + v4))
      {

        sub_1D32772E0();
      }

      *(v0 + v4) = 0;

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
      swift_beginAccess();
      sub_1D316F558(v3, v0 + v7, &unk_1EC75CA90, &qword_1D328C440);
      swift_endAccess();
      v8 = OBJC_IVAR___MNLocationManager__inUseAssertion;
      v9 = *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion);
      if (v9)
      {
        [v9 invalidate];
        v10 = *(v0 + v8);
      }

      else
      {
        v10 = 0;
      }

      *(v0 + v8) = 0;

      v11 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
      if (v11)
      {
        [v11 stopUpdatingLocation];
      }

      v12 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
      *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

      if (qword_1EC75BE68 != -1)
      {
        swift_once();
      }

      v13 = sub_1D3276F80();
      __swift_project_value_buffer(v13, qword_1EC760770);
      v14 = sub_1D3276F60();
      v15 = sub_1D32773B0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D311E000, v14, v15, "Stopped updating locations.", v16, 2u);
        MEMORY[0x1D38B6000](v16, -1, -1);
      }
    }
  }
}

uint64_t NavigationLocationManager.locationCorrector.getter()
{
  v1 = (v0 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v2 = *v1;
  sub_1D313B234(*v1, v1[1]);
  return v2;
}

id sub_1D316A89C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double NavigationLocationManager.locationCorrector.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1D316EA24(v6, v7);
}

uint64_t sub_1D316AA24@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D316F524;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D313B234(v4, v5);
}

double sub_1D316AAC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D316F4E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D313B234(v3, v4);
  return sub_1D316EA24(v8, v9);
}

uint64_t NavigationLocationManager.locationRecorder.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NavigationLocationManager.startUpdatingHeading()()
{
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    [swift_unknownObjectRetain() startUpdatingHeading];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v1 = sub_1D3276F80();
    __swift_project_value_buffer(v1, qword_1EC760770);
    oslog = sub_1D3276F60();
    v2 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1D311E000, oslog, v2, "Started updating heading.", v3, 2u);
      MEMORY[0x1D38B6000](v3, -1, -1);
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall NavigationLocationManager.stopUpdatingHeading()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    [swift_unknownObjectRetain() stopUpdatingHeading];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v2 = sub_1D3276F80();
    __swift_project_value_buffer(v2, qword_1EC760770);
    v3 = sub_1D3276F60();
    v4 = sub_1D32773B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v3, v4, "Stopped updating heading.", v5, 2u);
      MEMORY[0x1D38B6000](v5, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v6 = *(v1 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v1 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;
}

void sub_1D316B1FC(void *a1, SEL *a2, const char *a3, ...)
{
  if (*(v3 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    [swift_unknownObjectRetain() *a2];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v6 = sub_1D3276F80();
    __swift_project_value_buffer(v6, qword_1EC760770);
    v7 = a1;
    oslog = sub_1D3276F60();
    v8 = sub_1D32773B0();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = a1;
      v11 = v7;
      _os_log_impl(&dword_1D311E000, oslog, v8, a3, v9, 0xCu);
      sub_1D3125FBC(v10, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v10, -1, -1);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1D316B40C(uint64_t a1)
{
  v2 = OBJC_IVAR___MNLocationManager__locationProviderType;
  if (*&v1[OBJC_IVAR___MNLocationManager__locationProviderType] != a1)
  {
    v3 = v1;
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D3276F80();
    __swift_project_value_buffer(v4, qword_1EC760770);
    v5 = v1;
    oslog = sub_1D3276F60();
    v6 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = *&v3[v2];

      if (v9 <= 1)
      {
        if (!v9)
        {
          v10 = 0xE400000000000000;
          v11 = 1701736270;
          goto LABEL_19;
        }

        if (v9 == 1)
        {
          v10 = 0xE300000000000000;
          v11 = 5460039;
          goto LABEL_19;
        }
      }

      else
      {
        switch(v9)
        {
          case 2:
            v10 = 0xE600000000000000;
            v11 = 0x646972627948;
            goto LABEL_19;
          case 3:
            v10 = 0xE500000000000000;
            v11 = 0x6563617254;
LABEL_19:
            v12 = sub_1D312BA30(v11, v10, &v14);

            *(v7 + 4) = v12;
            _os_log_impl(&dword_1D311E000, oslog, v6, "LocationManager set provider type to %s.", v7, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v8);
            MEMORY[0x1D38B6000](v8, -1, -1);
            MEMORY[0x1D38B6000](v7, -1, -1);

            return;
          case 4:
            v10 = 0xEA00000000006E6FLL;
            v11 = 0x6974616C756D6953;
            goto LABEL_19;
        }
      }

      sub_1D3277900();
      __break(1u);
      return;
    }
  }
}

id sub_1D316B650()
{
  v1 = OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter;
  v2 = *(v0 + OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id NavigationLocationManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___MNLocationManager__lastHeadingDate;
  v3 = sub_1D3276D30();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR___MNLocationManager_locationCorrector];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR___MNLocationManager_mapMatchingProvider];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v0[OBJC_IVAR___MNLocationManager_locationRecorder] = 0;
  *&v0[OBJC_IVAR___MNLocationManager__lastLocation] = 0;
  *&v0[OBJC_IVAR___MNLocationManager__lastHeading] = 0;
  v6 = &unk_1F4EFAF50;
  result = MNNavigationQueue();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR___MNLocationManager__observers;
    v10 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:result];

    *&v0[v9] = v10;
    *&v0[OBJC_IVAR___MNLocationManager__locationProvider] = 0;
    v11 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
    (*(*(v12 - 8) + 56))(&v0[v11], 1, 1, v12);
    *&v0[OBJC_IVAR___MNLocationManager__locationStreamTask] = 0;
    *&v0[OBJC_IVAR___MNLocationManager__locationProviderType] = 0;
    *&v0[OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter] = 0;
    *&v0[OBJC_IVAR___MNLocationManager__inUseAssertion] = 0;
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NavigationLocationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D316BA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  sub_1D316F558(v6, a2 + v9, &unk_1EC75CA90, &qword_1D328C440);
  swift_endAccess();
  return sub_1D3277290();
}

void sub_1D316BB88()
{
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC760770);
  oslog = sub_1D3276F60();
  v1 = sub_1D3277380();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v1, "AsyncStream continuation terminated.", v2, 2u);
    MEMORY[0x1D38B6000](v2, -1, -1);
  }
}

uint64_t sub_1D316BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB50, &qword_1D328C618);
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D316BD3C, 0, 0);
}

uint64_t sub_1D316BD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  sub_1D32772B0();
  v1 = OBJC_IVAR___MNLocationManager_locationCorrector;
  v0[34] = OBJC_IVAR___MNLocationManager_mapMatchingProvider;
  v0[35] = v1;
  v2 = OBJC_IVAR___MNLocationManager__lastLocation;
  v0[36] = OBJC_IVAR___MNLocationManager_locationRecorder;
  v0[37] = v2;
  v0[38] = OBJC_IVAR___MNLocationManager__observers;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_1D316BE80;
  v4 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v4);
}

uint64_t sub_1D316BE80()
{

  return MEMORY[0x1EEE6DFA0](sub_1D316BF7C, 0, 0);
}

uint64_t sub_1D316BF7C()
{
  v1 = v0[27];
  v0[40] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_1D316C070;

    return sub_1D316CBB4(v1);
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D316C070(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D316C170, 0, 0);
}

uint64_t sub_1D316C170()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[42];
  sub_1D312601C(v2 + v1, (v0 + 13), &unk_1EC75CB28, &qword_1D328CFC0);
  if (v0[16])
  {
    sub_1D3152AD0((v0 + 13), (v0 + 8));
    v4 = v0[11];
    v5 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
    v34 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[43] = v6;
    *v6 = v0;
    v6[1] = sub_1D316C5BC;
    v7 = v0[42];
    v8 = v0[30];

    return v34(v8, v7, v4, v5);
  }

  else
  {
    v10 = v0[35];
    v11 = v0[30];
    sub_1D3125FBC((v0 + 13), &unk_1EC75CB28, &qword_1D328CFC0);
    v12 = *(v11 + v10);
    v0[45] = v12;
    v13 = v0[30];
    if (v12)
    {
      v14 = v0[42];
      v15 = *(v13 + v0[35] + 8);
      v0[46] = v15;
      v16 = swift_task_alloc();
      v0[47] = v16;
      v16[2] = v12;
      v16[3] = v15;
      v16[4] = v14;

      v17 = swift_task_alloc();
      v0[48] = v17;
      v18 = sub_1D3123910();
      *v17 = v0;
      v17[1] = sub_1D316C8AC;

      return MEMORY[0x1EEE6DDE0](v0 + 28, 0, 0, 0xD000000000000018, 0x80000001D328FCA0, sub_1D316F784, v16, v18);
    }

    else
    {
      v19 = v0[42];
      v20 = v0[36];

      [v19 _navigation_setGtLog_];
      v21 = *(v13 + v20);
      if (v21)
      {
        [v21 recordLocation:v19 rawLocation:v0[40]];
      }

      v22 = v0[40];
      v23 = v0[37];
      v24 = v0[38];
      v25 = v0[30];
      v26 = *&v25[v23];
      *&v25[v23] = v19;
      v27 = v19;

      v28 = *&v25[v24];
      v29 = swift_allocObject();
      *(v29 + 16) = v25;
      *(v29 + 24) = v27;
      v0[6] = sub_1D316F774;
      v0[7] = v29;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D316D240;
      v0[5] = &block_descriptor_53;
      v30 = _Block_copy(v0 + 2);
      v31 = v25;

      [v28 enumerateObserversWithGroup:0 visitor:v30];
      _Block_release(v30);

      v32 = swift_task_alloc();
      v0[39] = v32;
      *v32 = v0;
      v32[1] = sub_1D316BE80;
      v33 = v0[31];

      return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v33);
    }
  }
}

uint64_t sub_1D316C5BC(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D316C6BC, 0, 0);
}

uint64_t sub_1D316C6BC()
{
  v1 = v0[42];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  v2 = v0[44];
  v3 = v0[36];
  v4 = v0[30];

  [v2 _navigation_setGtLog_];
  v5 = *(v4 + v3);
  if (v5)
  {
    [v5 recordLocation:v2 rawLocation:v0[40]];
  }

  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[30];
  v10 = *&v9[v7];
  *&v9[v7] = v2;
  v11 = v2;

  v12 = *&v9[v8];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  v0[6] = sub_1D316F774;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D316D240;
  v0[5] = &block_descriptor_53;
  v14 = _Block_copy(v0 + 2);
  v15 = v9;

  [v12 enumerateObserversWithGroup:0 visitor:v14];
  _Block_release(v14);

  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_1D316BE80;
  v17 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v17);
}

uint64_t sub_1D316C8AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D316C9C4, 0, 0);
}

uint64_t sub_1D316C9C4()
{
  v1 = v0[42];
  sub_1D316EA24(v0[45], v0[46]);

  v2 = v0[28];
  v3 = v0[36];
  v4 = v0[30];

  [v2 _navigation_setGtLog_];
  v5 = *(v4 + v3);
  if (v5)
  {
    [v5 recordLocation:v2 rawLocation:v0[40]];
  }

  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[30];
  v10 = *&v9[v7];
  *&v9[v7] = v2;
  v11 = v2;

  v12 = *&v9[v8];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  v0[6] = sub_1D316F774;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D316D240;
  v0[5] = &block_descriptor_53;
  v14 = _Block_copy(v0 + 2);
  v15 = v9;

  [v12 enumerateObserversWithGroup:0 visitor:v14];
  _Block_release(v14);

  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_1D316BE80;
  v17 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v17);
}

uint64_t sub_1D316CBB4(uint64_t a1)
{
  *(v2 + 1376) = v1;
  *(v2 + 1368) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D316CBD8, 0, 0);
}

uint64_t sub_1D316CBD8()
{
  if (sub_1D316DBDC())
  {
    v1 = *(v0 + 1376);
    v2 = *(v0 + 1368);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v0 + 1384) = v4;
    *(v4 + 16) = &unk_1D328C640;
    *(v4 + 24) = v3;
    v5 = v1;
    v6 = v2;
    type metadata accessor for CLLocationCoordinate2D(0);
    swift_asyncLet_begin();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v0 + 1392) = v8;
    *(v8 + 16) = &unk_1D328C660;
    *(v8 + 24) = v7;
    v9 = v5;
    v10 = v6;
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1336, sub_1D316CDBC, v0 + 1296);
  }

  else
  {
    v13 = *(v0 + 8);
    v11 = *(v0 + 1368);

    return v13(v11);
  }
}

uint64_t sub_1D316CDBC()
{
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D316D1D4, 0, 0);
  }

  else
  {
    v1[175] = v1[167];
    v1[176] = v1[168];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 169, sub_1D316CE74, v1 + 162);
  }
}

uint64_t sub_1D316CE74()
{
  if (v0)
  {

    v1 = sub_1D316FEA0;
  }

  else
  {
    v1 = sub_1D316CEF0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D316CEF0()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1360);
  [*(v0 + 1368) clientLocation];
  *(v0 + 1612) = v12;
  *(v0 + 1628) = v13;
  *(v0 + 1644) = v14;
  *(v0 + 1580) = v10;
  *(v0 + 1596) = v11;
  *(v0 + 1660) = v15;
  *(v0 + 1676) = v16;
  v5 = objc_allocWithZone(MNLocation);
  *(v0 + 1424) = v9;
  *(v0 + 1428) = v2;
  *(v0 + 1436) = v1;
  v6 = *(v0 + 1628);
  *(v0 + 1476) = *(v0 + 1612);
  *(v0 + 1492) = v6;
  *(v0 + 1508) = *(v0 + 1644);
  v7 = *(v0 + 1596);
  *(v0 + 1444) = *(v0 + 1580);
  *(v0 + 1460) = v7;
  *(v0 + 1524) = v3;
  *(v0 + 1532) = v4;
  *(v0 + 1540) = *(v0 + 1660);
  *(v0 + 1556) = 0x200000002;
  *(v0 + 1564) = *(v0 + 1676);
  *(v0 + 1416) = [v5 initWithClientLocation_];

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1D316D044, v0 + 1296);
}

uint64_t sub_1D316D09C()
{

  v1 = *(v0 + 1416);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D316D164()
{

  v1 = *(v0 + 1368);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D316D1D4()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1D316D10C, v0 + 1296);
}

uint64_t sub_1D316D240(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1D316D2A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a4;
  v23 = sub_1D3276FB0();
  v27 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D3276FD0();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = MNNavigationQueue();
  if (v15)
  {
    v16 = v15;
    (*(v12 + 16))(v14, a1, v11);
    v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a2;
    *(v18 + 3) = a3;
    v19 = v25;
    *(v18 + 4) = v25;
    (*(v12 + 32))(&v18[v17], v14, v11);
    aBlock[4] = sub_1D316F790;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3122E0C;
    aBlock[3] = &block_descriptor_61;
    v20 = _Block_copy(aBlock);

    v21 = v19;
    sub_1D3276FC0();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D3122E64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
    sub_1D3122EBC();
    v22 = v23;
    sub_1D3277630();
    MEMORY[0x1D38B42B0](0, v10, v8, v20);
    _Block_release(v20);

    (*(v27 + 8))(v8, v22);
    (*(v24 + 8))(v10, v26);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D316D660(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(v8);
  swift_unknownObjectRelease();
}

void NavigationLocationManager.locationProviderDidChangeAuthorizationStatus(_:)(void *a1)
{
  if (([a1 isAuthorized] & 1) == 0)
  {
    NavigationLocationManager.stopUpdatingLocation()();
    v2 = *(v1 + OBJC_IVAR___MNLocationManager__lastLocation);
    *(v1 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  }
}

void sub_1D316D8D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *&v5[OBJC_IVAR___MNLocationManager__observers];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a2;
  v14[4] = a4;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D316D240;
  v14[3] = a5;
  v11 = _Block_copy(v14);
  v12 = v5;
  v13 = a2;

  [v9 enumerateObserversWithGroup:0 visitor:v11];
  _Block_release(v11);
}

void sub_1D316D9DC(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *&a1[OBJC_IVAR___MNLocationManager__observers];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a4;
  v17[4] = a6;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D316D240;
  v17[3] = a7;
  v13 = _Block_copy(v17);
  v14 = a4;
  v15 = a1;
  v16 = v14;

  [v11 enumerateObserversWithGroup:0 visitor:v13];

  _Block_release(v13);
}

uint64_t sub_1D316DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D3276D30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3276D00();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D316DBDC()
{
  [v0 coordinate];
  v2 = v1;
  v4 = v3;
  [v0 clientLocation];
  if (v12 != 2)
  {
    v5 = objc_opt_self();
    MEMORY[0x1D38B43D0](v2, v4);
    if ([v5 isLocationShiftRequiredForCoordinate_])
    {
      return 1;
    }
  }

  [v0 rawCoordinate];
  v8 = v7;
  v10 = v9;
  [v0 clientLocation];
  if (v13 == 2)
  {
    return 0;
  }

  v11 = objc_opt_self();
  MEMORY[0x1D38B43D0](v8, v10);
  return [v11 isLocationShiftRequiredForCoordinate_];
}

uint64_t sub_1D316DCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316DD08, 0, 0);
}

uint64_t sub_1D316DD08()
{
  v1 = *(v0 + 24);
  [v1 coordinate];
  v3 = v2;
  v5 = v4;
  [v1 horizontalAccuracy];
  v7 = v6;
  v8 = [v1 referenceFrame];
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_1D316FEA8;

  return sub_1D316DDFC(v8, v3, v5, v7);
}

uint64_t sub_1D316DDFC(int a1, double a2, double a3, double a4)
{
  *(v5 + 56) = v4;
  *(v5 + 88) = a1;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316DE28, 0, 0);
}

uint64_t sub_1D316DE28(__n128 a1, __n128 a2)
{
  if (*(v2 + 88) == 2 || (v4 = *(v2 + 32), v3 = *(v2 + 40), v5 = objc_opt_self(), MEMORY[0x1D38B43D0](v4, v3), ![v5 isLocationShiftRequiredForCoordinate_]))
  {
    a1.n128_u64[0] = *(v2 + 32);
    a2.n128_u64[0] = *(v2 + 40);
    v11 = *(v2 + 8);

    return v11(a1, a2);
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 48);
    v13 = *(v2 + 32);
    v8 = swift_task_alloc();
    *(v2 + 64) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v13;
    *(v8 + 40) = v7;
    v9 = swift_task_alloc();
    *(v2 + 72) = v9;
    type metadata accessor for GEOLocationCoordinate2D(0);
    *v9 = v2;
    v9[1] = sub_1D316DFC4;

    return MEMORY[0x1EEE6DE38](v2 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001D328FCC0, sub_1D316FBF0, v8, v10);
  }
}

uint64_t sub_1D316DFC4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D316E0FC;
  }

  else
  {

    v2 = sub_1D316E0E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D316E0FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D316E160(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D316E24C;

  return v5();
}

uint64_t sub_1D316E24C(double a1, double a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1D316E368(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316E388, 0, 0);
}

uint64_t sub_1D316E388()
{
  v1 = *(v0 + 24);
  [v1 rawCoordinate];
  v3 = v2;
  v5 = v4;
  [v1 horizontalAccuracy];
  v7 = v6;
  [v1 clientLocation];
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_1D316E488;

  return sub_1D316DDFC(v10, v3, v5, v7);
}

uint64_t sub_1D316E488(double a1, double a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6.n128_f64[0] = a1;
    v7.n128_f64[0] = a2;
  }

  return v8(v6, v7);
}

void sub_1D316E598(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v24[1] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  v13 = *(v10 + 16);
  v13(v24 - v11, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24[0] = swift_allocObject();
  v15 = *(v10 + 32);
  v15(v24[0] + v14, v12, v9);
  v13(v12, a1, v9);
  v16 = swift_allocObject();
  v15(v16 + v14, v12, v9);
  global_queue = geo_get_global_queue();
  v18 = sub_1D316B650();
  v19 = MEMORY[0x1D38B43D0](a3, a4);
  v21 = v20;
  v29 = sub_1D316FC00;
  v30 = v24[0];
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D316E914;
  v28 = &block_descriptor_97;
  v22 = _Block_copy(&aBlock);

  v29 = sub_1D316FD3C;
  v30 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D316E980;
  v28 = &block_descriptor_100;
  v23 = _Block_copy(&aBlock);

  [v18 shiftCoordinate:v22 accuracy:0 withCompletionHandler:v23 mustGoToNetworkCallback:global_queue errorHandler:v19 callbackQueue:{v21, a5}];
  _Block_release(v23);
  _Block_release(v22);
}

uint64_t sub_1D316E890(void *a1)
{
  if (!a1)
  {
    sub_1D316FDB8();
    swift_allocError();
    a1 = 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  return sub_1D3277220();
}

double sub_1D316E914(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);

  return result;
}

void sub_1D316E980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_1D316EA24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D316EA34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA70, &qword_1D328C428);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  v11 = 1;
  if (!(*(v4 + 48))(v1 + v10, 1, v3))
  {
    (*(v4 + 16))(v6, v1 + v10, v3);
    v15 = a1;
    v12 = a1;
    sub_1D32772A0();
    (*(v4 + 8))(v6, v3);
    v11 = 0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA80, &unk_1D328C430);
  (*(*(v13 - 8) + 56))(v9, v11, 1, v13);
  return sub_1D3125FBC(v9, &unk_1EC75CA70, &qword_1D328C428);
}

void sub_1D316EC40(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = sub_1D3276D30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = OBJC_IVAR___MNLocationManager__lastHeadingDate;
  swift_beginAccess();
  sub_1D312601C(&v2[v16], v8, &qword_1EC75C4F0, &qword_1D328B580);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D3125FBC(v8, &qword_1EC75C4F0, &qword_1D328B580);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_1D3276D10();
    sub_1D3276CC0();
    v18 = v17;
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v15, v9);
    if (v18 <= 0.05)
    {
      return;
    }
  }

  v20 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v21 = *&v2[v20];
  if (v21)
  {
    swift_unknownObjectRetain();
    [a1 trueHeading];
    v23 = v22;
    [a1 magneticHeading];
    v25 = v24;
    [a1 headingAccuracy];
    v27 = v26;
    v28 = [a1 timestamp];
    sub_1D3276D00();

    v29 = sub_1D3276CD0();
    (*(v10 + 8))(v13, v9);
    [v21 recordCompassHeading:v29 magneticHeading:v23 accuracy:v25 timestamp:v27];

    swift_unknownObjectRelease();
  }

  v30 = *&v2[OBJC_IVAR___MNLocationManager__lastHeading];
  *&v2[OBJC_IVAR___MNLocationManager__lastHeading] = a1;

  v31 = a1;
  v32 = v39;
  sub_1D3276D10();
  (*(v10 + 56))(v32, 0, 1, v9);
  swift_beginAccess();
  sub_1D316F558(v32, &v2[v16], &qword_1EC75C4F0, &qword_1D328B580);
  swift_endAccess();
  v33 = *&v2[OBJC_IVAR___MNLocationManager__observers];
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = v31;
  aBlock[4] = sub_1D316F5C0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D316D240;
  aBlock[3] = &block_descriptor_41;
  v35 = _Block_copy(aBlock);
  v36 = v31;
  v37 = v2;

  [v33 enumerateObserversWithGroup:0 visitor:v35];
  _Block_release(v35);
}

uint64_t sub_1D316F0B4(void *a1)
{
  v2 = v1;
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v4 = sub_1D3276F80();
  __swift_project_value_buffer(v4, qword_1EC760770);
  v5 = a1;
  v6 = sub_1D3276F60();
  v7 = sub_1D3277390();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v6, v7, "Received an error from location provider: %@", v8, 0xCu);
    sub_1D3125FBC(v9, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  v12 = OBJC_IVAR___MNLocationManager_locationRecorder;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_1D3276BE0();
    [v14 recordError_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D316F280()
{
  result = qword_1EC75CAB0;
  if (!qword_1EC75CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CAB0);
  }

  return result;
}

uint64_t type metadata accessor for NavigationLocationManager(uint64_t a1)
{
  result = qword_1EC75BF00;
  if (!qword_1EC75BF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D316F338(uint64_t a1)
{
  sub_1D314A874(319);
  if (v1 <= 0x3F)
  {
    sub_1D316F444(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D316F444(uint64_t a1)
{
  if (!qword_1EC75BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75CA68, &qword_1D328C420);
    v1 = sub_1D3277600();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC75BDE8);
    }
  }
}

id sub_1D316F4A8()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1D316F4E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1D316F524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D316F558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_1D316F5CC(void *a1, const char **a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = [a1 respondsToSelector_];
  if (result)
  {
    v8 = *a2;

    return [a1 v8];
  }

  return result;
}

uint64_t sub_1D316F648(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D3125778;

  return sub_1D316BC70(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D316F790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  (*(v0 + 16))(*(v0 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  return sub_1D3277230();
}

uint64_t sub_1D316F844()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D316FED0;

  return sub_1D316DCE8(v2, v3);
}

uint64_t sub_1D316F8DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3152F1C;

  return sub_1D316E160(a1, v4);
}

uint64_t sub_1D316F994()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D316FA2C;

  return sub_1D316E368(v2, v3);
}

uint64_t sub_1D316FA2C(double a1, double a2)
{
  v9 = *v2;

  v5 = *(v9 + 8);
  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v5(v6, v7);
}

uint64_t sub_1D316FB38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3125778;

  return sub_1D316E160(a1, v4);
}

uint64_t sub_1D316FC00(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  return sub_1D3277230();
}

uint64_t objectdestroy_90Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D316FD3C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);

  return sub_1D316E890(a1);
}

unint64_t sub_1D316FDB8()
{
  result = qword_1EC75CB70;
  if (!qword_1EC75CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CB70);
  }

  return result;
}

unint64_t sub_1D316FE20()
{
  result = qword_1EC75CB78;
  if (!qword_1EC75CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CB78);
  }

  return result;
}

id sub_1D316FEDC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DestinationArrivalInfoUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D31700A0()
{
  result = geo_dispatch_queue_create();
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(MEMORY[0x1E69A2198]) initWithQueue_];

    [v2 setAllowNetworkTileLoad_];
    [v2 setAllowStaleData_];
    [v2 setFlipNegativeTravelDirectionRoads_];
    [v2 setVisitDoubleTravelDirectionRoadsTwice_];
    result = [v2 setAllowOfflineData_];
    qword_1EC75CB98 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D3170164(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a3;
  *(v4 + 776) = a2;
  *(v4 + 768) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3170190, 0, 0);
}

uint64_t sub_1D3170190()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  *(v0 + 736) = *(v0 + 776);
  *(v0 + 728) = v1;
  v3 = *(v2 + 16);
  *(v0 + 800) = v3;
  if (!v3)
  {
    return sub_1D32777B0("Fatal error", 11, 2, 0xD00000000000001ELL, 0x80000001D328FDF0, "Navigation/ConnectedRoadSimilaritySearch.swift", 46, 2, 62, 0);
  }

  v4 = v3;
  v5 = 1;
  v169 = (v0 + 728);
  swift_beginAccess();
  v6 = 0;
  v7 = *(v0 + 784);
  v8 = 1.79769313e308;
  v9 = *(v0 + 776);
  v10 = -180.0;
  v172 = -180.0;
  v173 = 1.79769313e308;
  v11 = -180.0;
  v12 = -180.0;
  v170 = (v0 + 736);
  v171 = v2;
  while (1)
  {
    *(v0 + 824) = v9;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    *(v0 + 816) = v9;
    *(v0 + 808) = v6;
    v14 = v9 >> 62;
LABEL_4:
    v15 = v11;
    v16 = v12;
    v17 = v8;
    v18 = v5 - 1;
    v19 = __OFSUB__(v5, 1);
    do
    {
      while (1)
      {
        *(v0 + 888) = v5;
        *(v0 + 880) = v17;
        *(v0 + 872) = v16;
        *(v0 + 864) = v15;
        *(v0 + 856) = v173;
        *(v0 + 848) = v172;
        *(v0 + 840) = v10;
        *(v0 + 832) = v7;
        if (v14)
        {
          if (sub_1D3277660() < 1)
          {
            goto LABEL_77;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_77;
        }

        v20 = v4;
        v21 = [v20 coordinateCount];
        if ((v5 & 0x8000000000000000) == 0 && v5 >= v21)
        {

LABEL_77:
          v80 = swift_allocObject();
          *(v0 + 896) = v80;
          v81 = type metadata accessor for ConnectedSearchNode();
          *(v0 + 904) = v81;
          v82 = sub_1D3177870();
          *(v0 + 912) = v82;
          v83 = MEMORY[0x1D38B41E0](1, v81, v82);
          *(v0 + 920) = v83;
          *(v80 + 16) = v83;
          swift_retain_n();
          v84 = [v4 coordinateCount];
          if ((v5 & 0x8000000000000000) == 0 && v5 >= v84)
          {
            v18 = v171;
            v85 = *(v171 + 16);
            if (v85)
            {
              [v85 lastCoordinate];
              v87 = v86;
              v89 = v88;
              v91 = v90;
              v92 = v9 >> 62;
              if (v9 >> 62)
              {
                v93 = sub_1D3277660();
                if (!v93)
                {
                  goto LABEL_91;
                }

LABEL_82:
                if (v93 < 1)
                {
                  __break(1u);
                  goto LABEL_142;
                }

                v94 = 0;
                v95 = 0.0;
                do
                {
                  if ((v9 & 0xC000000000000001) != 0)
                  {
                    v96 = MEMORY[0x1D38B45D0](v94, v9);
                    v19 = v96;
                  }

                  else
                  {
                    v19 = *(v9 + 8 * v94 + 32);
                  }

                  ++v94;
                  v95 = v95 + GEOCoordinateGet3DDistance(v87, v89, v91, *(v19 + 16), *(v19 + 24), *(v19 + 32), v96, v97);
                  v87 = *(v19 + 16);
                  v89 = *(v19 + 24);
                  v91 = *(v19 + 32);
                }

                while (v93 != v94);
              }

              else
              {
                v93 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v93)
                {
                  goto LABEL_82;
                }

LABEL_91:
                v95 = 0.0;
              }

              *(*(v0 + 768) + 72) = v95;
              v98 = *(v171 + 16);
              if (v98)
              {
                v99 = *(v0 + 768);
                v100 = [v98 lastCoordinate];
                *(v99 + 11) = v101;
                *(v99 + 12) = v102;
                *(v99 + 13) = v103;
                v104 = MEMORY[0x1D38B43F0](v100, v15, v16, v17);
                v106 = v105;
                MEMORY[0x1D38B43F0](v10, v172, v173);
                GEOBearingFromCoordinateToCoordinate();
                *(v99 + 14) = v107;
                if (*(v99 + 5) <= 100)
                {
                  if (qword_1EC75C040 != -1)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_97;
                }

                if (v92)
                {
                  v108 = sub_1D3277660();
                }

                else
                {
                  v108 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v108)
                {
                  v29 = __OFSUB__(v108, 1);
                  v113 = v108 - 1;
                  if (v29)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v19 = v9 & 0xC000000000000001;
                    if ((v9 & 0xC000000000000001) == 0)
                    {
                      if ((v113 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v113 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {

                        goto LABEL_108;
                      }

                      __break(1u);
LABEL_148:
                      v99 = sub_1D31412B0(0, *(v99 + 2) + 1, 1, v99);
                      *(v171 + 64) = v99;
LABEL_110:
                      v125 = *(v99 + 2);
                      v124 = *(v99 + 3);
                      if (v125 >= v124 >> 1)
                      {
                        v99 = sub_1D31412B0((v124 > 1), v125 + 1, 1, v99);
                      }

                      *(v99 + 2) = v125 + 1;
                      *&v99[8 * v125 + 32] = v104;
                      *(v171 + 64) = v99;
                      if (v92)
                      {
                        v126 = sub_1D3277660();
                      }

                      else
                      {
                        v126 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v126)
                      {
                        v29 = __OFSUB__(v126, 1);
                        v127 = v126 - 1;
                        if (v29)
                        {
                          __break(1u);
                          goto LABEL_150;
                        }

                        if (v19)
                        {
                          v128 = MEMORY[0x1D38B45D0](v127, v9);
                          goto LABEL_122;
                        }

                        if ((v127 & 0x8000000000000000) == 0)
                        {
                          if (v127 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {

LABEL_122:
                            v106 = *(v128 + 104);

                            MEMORY[0x1D38B43F0](v129, v15, v16, v17);
                            MEMORY[0x1D38B43F0](v10, v172, v173);
                            GEOBearingFromCoordinateToCoordinate();
                            v95 = v130;
                            v9 = *(v171 + 80);
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *(v171 + 80) = v9;
                            if (isUniquelyReferenced_nonNull_native)
                            {
LABEL_123:
                              v133 = *(v9 + 16);
                              v132 = *(v9 + 24);
                              if (v133 >= v132 >> 1)
                              {
                                v9 = sub_1D31412B0((v132 > 1), v133 + 1, 1, v9);
                              }

                              v134 = *(v0 + 768);
                              *(v9 + 16) = v133 + 1;
                              *(v9 + 8 * v133 + 32) = v106 - v95;
                              *(v171 + 80) = v9;
                              sub_1D31730AC(v134, v80);
                              goto LABEL_126;
                            }

LABEL_150:
                            v9 = sub_1D31412B0(0, *(v9 + 16) + 1, 1, v9);
                            *(v171 + 80) = v9;
                            goto LABEL_123;
                          }

LABEL_153:
                          __break(1u);
LABEL_154:
                          __break(1u);
                          goto LABEL_155;
                        }

LABEL_152:
                        __break(1u);
                        goto LABEL_153;
                      }

LABEL_168:

                      __break(1u);
                      return MEMORY[0x1EEE0B8E8](v112);
                    }
                  }

                  v114 = MEMORY[0x1D38B45D0](v113, v9);
LABEL_108:
                  v115 = *(v114 + 16);
                  v106 = *(v114 + 24);
                  v116 = *(v114 + 32);

                  v117 = *(v171 + 16);
                  if (v117)
                  {
                    v118 = [v117 lastCoordinate];
                    v104 = GEOCoordinateGet3DDistance(v115, v106, v116, v120, v121, v122, v118, v119);
                    v99 = *(v171 + 64);
                    v123 = swift_isUniquelyReferenced_nonNull_native();
                    *(v171 + 64) = v99;
                    if ((v123 & 1) == 0)
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_110;
                  }

LABEL_167:

                  __break(1u);
                  goto LABEL_168;
                }

LABEL_166:

                __break(1u);
                goto LABEL_167;
              }

LABEL_164:

              __break(1u);
LABEL_165:

              __break(1u);
              goto LABEL_166;
            }

LABEL_163:

            __break(1u);
            goto LABEL_164;
          }

LABEL_126:
          swift_beginAccess();
          if (*v170 >> 62)
          {
            if (!sub_1D3277660())
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (*((*v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_128;
            }

LABEL_134:
            v139 = [*(v0 + 800) coordinates3d];
            if (v139)
            {
              v140 = *(v0 + 888);
              v29 = __OFSUB__(v140, 1);
              v141 = v140 - 1;
              if (v29)
              {
                __break(1u);
                goto LABEL_152;
              }

              v142 = *(v0 + 800);
              v143 = &v139[24 * v141];
              v144 = *v143;
              v145 = v143[1];
              v146 = v143[2];
              v147 = [v142 coordinates3d];

              v150 = *(v0 + 896);
              if (v147)
              {
                v151 = *(v0 + 768);
                v152 = &v147[24 * *(v0 + 888)];
                v153 = *v152;
                v154 = v152[1];
                v155 = v152[2];
                v156 = GEOCoordinateGet3DDistance(v144, v145, v146, *v152, v154, v155, v148, v149);
                v157 = *(v0 + 728);
                v158 = v157 / v156;
                *(v151 + 48) = v157 + *(v151 + 48);
                *(v151 + 72) = 0;
                *(v151 + 88) = v144 + (v153 - v144) * v158;
                *(v151 + 96) = v145 + (v154 - v145) * v158;
                *(v151 + 104) = v146 + (v155 - v146) * v158;
                MEMORY[0x1D38B43F0](v144, v145, v146);
                MEMORY[0x1D38B43F0](v153, v154, v155);
                GEOBearingFromCoordinateToCoordinate();
                *(v151 + 112) = v159;
                sub_1D31730AC(v151, v150);
                v160 = *(v0 + 896);
                v161 = *(v0 + 800);
                if (*(v151 + 24))
                {

                  sub_1D31730AC(v162, v160);
                }

                else
                {
                }

                goto LABEL_130;
              }

              v135 = *(v0 + 800);

LABEL_129:

LABEL_130:
              v136 = *(v0 + 896);
              swift_beginAccess();
              v137 = *(v136 + 16);

              v138 = *(v0 + 8);

              return v138(v137);
            }
          }

LABEL_128:
          v135 = *(v0 + 800);

          goto LABEL_129;
        }

        v22 = [v20 coordinates3d];
        if (v22)
        {
          break;
        }
      }

      if (v19)
      {
        __break(1u);
LABEL_89:
        swift_endAccess();

        return sub_1D32777B0("Fatal error", 11, 2, 0xD00000000000004FLL, 0x80000001D328FE10, "Navigation/ConnectedRoadSimilaritySearch.swift", 46, 2, 99, 0);
      }

      v23 = &v22[24 * v18];
      v11 = *v23;
      v12 = v23[1];
      v8 = v23[2];
      v24 = [v20 coordinates3d];
    }

    while (!v24);
    v27 = &v24[24 * v5];
    v10 = *v27;
    v172 = v27[1];
    v173 = v27[2];
    v28 = GEOCoordinateGet3DDistance(v11, v12, v8, *v27, v172, v173, v25, v26);
    if (v28 < v7)
    {
      break;
    }

    v30 = v28;
    v31 = (v0 + 736);
    swift_beginAccess();
    if (v14)
    {
      v32 = sub_1D3277660();
    }

    else
    {
      v32 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v32)
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v9 = sub_1D3180EE8(v9);
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = *(v13 + 16);
    if (!v34)
    {
      goto LABEL_158;
    }

    v167 = v11 + (v10 - v11) * (v7 / v30);
    v35 = v34 - 1;
    v6 = *(v13 + 8 * v35 + 32);
    v163 = v8 + (v173 - v8) * (v7 / v30);
    v164 = v12 + (v172 - v12) * (v7 / v30);
    *(v13 + 16) = v35;
    *v170 = v9;
    swift_endAccess();

    v36 = v6[2];
    v37 = v6[3];
    v38 = v6[4];

    v41 = GEOCoordinateGet3DDistance(v36, v37, v38, v167, v164, v163, v39, v40);
    v42 = *(v171 + 64);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *(v171 + 64) = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1D31412B0(0, *(v42 + 2) + 1, 1, v42);
      *(v171 + 64) = v42;
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v60 = sub_1D31412B0((v44 > 1), v45 + 1, 1, v42);
      v46 = v45 + 1;
      v42 = v60;
    }

    *(v42 + 2) = v46;
    *&v42[8 * v45 + 32] = v41;
    *(v171 + 64) = v42;
    v47 = v6[13];
    MEMORY[0x1D38B43F0](v11, v12, v8);
    MEMORY[0x1D38B43F0](v10, v172, v173);
    GEOBearingFromCoordinateToCoordinate();
    v49 = v48;
    v50 = *(v171 + 80);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v171 + 80) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_1D31412B0(0, *(v50 + 2) + 1, 1, v50);
      *(v171 + 80) = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v61 = sub_1D31412B0((v52 > 1), v53 + 1, 1, v50);
      v54 = v53 + 1;
      v50 = v61;
    }

    *(v50 + 2) = v54;
    *&v50[8 * v53 + 32] = v47 - v49;
    *(v171 + 80) = v50;
    if (v9 >> 62)
    {
      if (sub_1D3277660() > 0)
      {
        v62 = v6[2];
        v63 = v6[3];
        v64 = v6[4];
        v65 = sub_1D3277660();
        if (!v65)
        {
          goto LABEL_159;
        }

        v31 = (v0 + 736);
        v56 = v62;
        v57 = v63;
        v58 = v64;
        v29 = __OFSUB__(v65, 1);
        v59 = v65 - 1;
        if (!v29)
        {
          goto LABEL_40;
        }

LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }
    }

    else
    {
      v55 = *(v13 + 16);
      if (v55)
      {
        v56 = v6[2];
        v57 = v6[3];
        v58 = v6[4];
        v29 = __OFSUB__(v55, 1);
        v59 = v55 - 1;
        if (v29)
        {
          goto LABEL_160;
        }

LABEL_40:
        v166 = v57;
        v168 = v56;
        v165 = v58;
        if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_161;
          }

          if (v59 < *(v13 + 16))
          {
            goto LABEL_50;
          }

          goto LABEL_162;
        }

LABEL_68:
        v66 = MEMORY[0x1D38B45D0](v59, v9);
LABEL_51:
        v67 = v66[2];
        v68 = v66[3];
        v69 = v66[4];

        v72 = GEOCoordinateGet3DDistance(v168, v166, v165, v67, v68, v69, v70, v71);
        if (v72 != 0.0)
        {
LABEL_72:

          v7 = v7 + v72;
          *v169 = v7;
          continue;
        }

        swift_beginAccess();
        if (v9 >> 62)
        {
          if (sub_1D3277660())
          {
            goto LABEL_54;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
          v73 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v9 >> 62 || (v73 & 1) == 0)
          {
            v9 = sub_1D3180EE8(v9);
          }

          v74 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v74)
          {
            goto LABEL_157;
          }

          *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v74 - 1;

          *v31 = v9;
        }

        swift_endAccess();
        if (v9 >> 62)
        {
          if (sub_1D3277660() < 1)
          {
            goto LABEL_72;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_72;
        }

        v75 = v6[2];
        v76 = v6[3];
        v77 = v6[4];
        if (v9 >> 62)
        {
          v78 = sub_1D3277660();
          if (!v78)
          {
LABEL_74:
            __break(1u);
            return sub_1D32777B0("Fatal error", 11, 2, 0xD00000000000001ELL, 0x80000001D328FDF0, "Navigation/ConnectedRoadSimilaritySearch.swift", 46, 2, 62, 0);
          }
        }

        else
        {
          v78 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v78)
          {
            goto LABEL_74;
          }
        }

        v29 = __OFSUB__(v78, 1);
        v59 = v78 - 1;
        if (v29)
        {
          goto LABEL_154;
        }

        v166 = v76;
        v168 = v75;
        v165 = v77;
        if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v59 & 0x8000000000000000) == 0)
          {
            if (v59 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_156;
            }

LABEL_50:

            goto LABEL_51;
          }

LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        goto LABEL_68;
      }
    }
  }

  v7 = v7 - v28;
  *v169 = v7;
  v29 = __OFADD__(v5++, 1);
  if (!v29)
  {
    *(v171 + 48) = v28 + *(v171 + 48);
    goto LABEL_4;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  swift_once();
LABEL_97:
  v109 = *(v18 + 16);
  *(v0 + 928) = v109;
  if (!v109)
  {
    goto LABEL_165;
  }

  v110 = v109;
  v111 = swift_task_alloc();
  *(v0 + 936) = v111;
  *v111 = v0;
  v111[1] = sub_1D317107C;
  v112 = v110;

  return MEMORY[0x1EEE0B8E8](v112);
}

uint64_t sub_1D317107C(uint64_t a1)
{
  v2 = *(*v1 + 928);
  *(*v1 + 944) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3171198, 0, 0);
}

uint64_t sub_1D3171198()
{
  v4 = (v0 + 736);
  v5 = *(v0 + 944);
  if (v5 >> 62)
  {
    if (sub_1D3277660() >= 1)
    {
      goto LABEL_3;
    }

LABEL_23:
    v42 = *(v0 + 824);
    if (v42 >> 62)
    {
      v43 = sub_1D3277660();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v43)
    {
      goto LABEL_78;
    }

    v44 = __OFSUB__(v43, 1);
    v45 = v43 - 1;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      v46 = *(v0 + 824);
      v1 = v46 & 0xC000000000000001;
      if ((v46 & 0xC000000000000001) == 0)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v45 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_69;
      }
    }

    v47 = MEMORY[0x1D38B45D0](v45);
LABEL_32:
    v48 = *(v0 + 768);
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];

    v52 = *(v48 + 16);
    if (!v52)
    {
LABEL_79:

      __break(1u);
LABEL_80:

      __break(1u);
      goto LABEL_81;
    }

    v53 = *(v0 + 768);
    v54 = [v52 lastCoordinate];
    v2 = GEOCoordinateGet3DDistance(v49, v50, v51, v56, v57, v58, v54, v55);
    v5 = *(v53 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 64) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_34:
      v61 = *(v5 + 2);
      v60 = *(v5 + 3);
      if (v61 >= v60 >> 1)
      {
        v5 = sub_1D31412B0((v60 > 1), v61 + 1, 1, v5);
      }

      v62 = *(v0 + 824);
      v63 = *(v0 + 768);
      *(v5 + 2) = v61 + 1;
      *&v5[8 * v61 + 32] = v2;
      *(v63 + 64) = v5;
      if (v62 >> 62)
      {
        v64 = sub_1D3277660();
      }

      else
      {
        v64 = *((*(v0 + 824) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v64)
      {
        goto LABEL_80;
      }

      v65 = v64 - 1;
      if (__OFSUB__(v64, 1))
      {
        __break(1u);
      }

      else
      {
        if (v1)
        {
          v66 = MEMORY[0x1D38B45D0](v65, *(v0 + 824));
        }

        else
        {
          if ((v65 & 0x8000000000000000) != 0)
          {
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          if (v65 >= *((*(v0 + 824) & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }
        }

        v67 = *(v0 + 880);
        v68 = *(v0 + 872);
        v69 = *(v0 + 864);
        v70 = *(v0 + 856);
        v71 = *(v0 + 848);
        v72 = *(v0 + 840);
        v73 = *(v0 + 768);
        v3 = *(v66 + 104);

        MEMORY[0x1D38B43F0](v74, v69, v68, v67);
        MEMORY[0x1D38B43F0](v72, v71, v70);
        GEOBearingFromCoordinateToCoordinate();
        v2 = v75;
        v64 = *(v73 + 80);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *(v73 + 80) = v64;
        if (v76)
        {
          goto LABEL_47;
        }
      }

      v111 = *(v0 + 768);
      v64 = sub_1D31412B0(0, *(v64 + 16) + 1, 1, v64);
      *(v111 + 80) = v64;
LABEL_47:
      v78 = *(v64 + 16);
      v77 = *(v64 + 24);
      if (v78 >= v77 >> 1)
      {
        v64 = sub_1D31412B0((v77 > 1), v78 + 1, 1, v64);
      }

      v79 = *(v0 + 896);
      v80 = *(v0 + 768);
      *(v64 + 16) = v78 + 1;
      *(v64 + 8 * v78 + 32) = v3 - v2;
      *(v80 + 80) = v64;
      sub_1D31730AC(v80, v79);
      goto LABEL_50;
    }

LABEL_69:
    v110 = *(v0 + 768);
    v5 = sub_1D31412B0(0, *(v5 + 2) + 1, 1, v5);
    *(v110 + 64) = v5;
    goto LABEL_34;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = *(v0 + 768);
  if (*(v6 + 40) <= 3)
  {
    v8 = *(v0 + 944);
    v9 = *(v0 + 896);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v4;
    v10[5] = v0 + 728;
    v10[6] = sub_1D31778C8;
    v10[7] = v9;
    v11 = swift_task_alloc();
    *(v0 + 960) = v11;
    *v11 = v0;
    v11[1] = sub_1D3171A88;

    return MEMORY[0x1EEE6DBF8]();
  }

  if (v5 >> 62)
  {
    v7 = sub_1D3277660();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 968) = v7;
  v12 = *(v0 + 944);
  if (v7)
  {
    *(v0 + 976) = *(v0 + 920);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1D38B45D0](0);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;
    *(v0 + 984) = v13;
    *(v0 + 992) = 1;
    v15 = *(v0 + 768);
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_81:

      __break(1u);
      goto LABEL_82;
    }

    [v16 length];
    v18 = *(v15 + 16);
    if (!v18)
    {
LABEL_82:

      __break(1u);
      goto LABEL_83;
    }

    v19 = v17;
    v20 = *(v0 + 768);
    v21 = [v18 speedLimit];
    v22 = *(v20 + 16);
    if (!v22)
    {
LABEL_83:

      __break(1u);
      return MEMORY[0x1EEE6DBF8]();
    }

    v23 = *(v0 + 768);
    sub_1D3148240([v22 speedLimitIsMPH], v19, v21);
    v25 = *(v23 + 40);
    v26 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      v27 = *(v0 + 768);
      v28 = *(v27 + 48);
      v29 = v24 + *(v27 + 56);
      v30 = *(v27 + 112);
      v32 = *(v27 + 64);
      v31 = *(v27 + 80);
      *(v0 + 440) = *(v27 + 96);
      *(v0 + 456) = v30;
      *(v0 + 408) = v32;
      *(v0 + 424) = v31;
      v33 = swift_allocObject();
      *(v0 + 1000) = v33;
      *(v33 + 16) = v14;
      *(v33 + 24) = v27;
      *(v33 + 32) = v27;
      *(v33 + 40) = v26;
      *(v33 + 48) = v28;
      *(v33 + 56) = v29;
      v34 = *(v27 + 64);
      v35 = *(v27 + 80);
      v36 = *(v27 + 112);
      *(v33 + 96) = *(v27 + 96);
      *(v33 + 112) = v36;
      *(v33 + 64) = v34;
      *(v33 + 80) = v35;
      swift_retain_n();
      v37 = v14;
      sub_1D314B39C(v0 + 408, v0 + 88);
      v38 = swift_task_alloc();
      *(v0 + 1008) = v38;
      *v38 = v0;
      v38[1] = sub_1D3171E70;
      v39 = *(v0 + 832);
      v40 = *(v0 + 816);

      return sub_1D3170164(v33, v40, v39);
    }

    goto LABEL_74;
  }

LABEL_50:
  swift_beginAccess();
  v81 = *v4;
  if (v81 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_52;
    }
  }

  else if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    v82 = *(v0 + 800);

    goto LABEL_53;
  }

  v86 = [*(v0 + 800) coordinates3d];
  if (!v86)
  {
    goto LABEL_52;
  }

  v87 = *(v0 + 888);
  v44 = __OFSUB__(v87, 1);
  v88 = v87 - 1;
  if (v44)
  {
LABEL_77:
    __break(1u);
LABEL_78:

    __break(1u);
    goto LABEL_79;
  }

  v89 = *(v0 + 800);
  v90 = &v86[24 * v88];
  v91 = *v90;
  v92 = v90[1];
  v93 = v90[2];
  v94 = [v89 coordinates3d];

  v97 = *(v0 + 896);
  if (v94)
  {
    v98 = *(v0 + 768);
    v99 = &v94[24 * *(v0 + 888)];
    v100 = *v99;
    v101 = v99[1];
    v102 = v99[2];
    v103 = GEOCoordinateGet3DDistance(v91, v92, v93, *v99, v101, v102, v95, v96);
    v104 = *(v0 + 728);
    v105 = v104 / v103;
    *(v98 + 48) = v104 + *(v98 + 48);
    *(v98 + 72) = 0;
    *(v98 + 88) = v91 + (v100 - v91) * v105;
    *(v98 + 96) = v92 + (v101 - v92) * v105;
    *(v98 + 104) = v93 + (v102 - v93) * v105;
    MEMORY[0x1D38B43F0](v91, v92, v93);
    MEMORY[0x1D38B43F0](v100, v101, v102);
    GEOBearingFromCoordinateToCoordinate();
    *(v98 + 112) = v106;
    sub_1D31730AC(v98, v97);
    v107 = *(v0 + 896);
    v108 = *(v0 + 800);
    if (*(v98 + 24))
    {

      sub_1D31730AC(v109, v107);
    }

    else
    {
    }

    goto LABEL_54;
  }

  v82 = *(v0 + 800);

LABEL_53:

LABEL_54:
  v83 = *(v0 + 896);
  swift_beginAccess();
  v84 = *(v83 + 16);

  v85 = *(v0 + 8);

  return v85(v84);
}

uint64_t sub_1D3171A88()
{

  return MEMORY[0x1EEE6DFA0](sub_1D3171BBC, 0, 0);
}

char *sub_1D3171BBC()
{
  swift_beginAccess();
  v1 = *(v0 + 736);
  if (v1 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 800);

LABEL_4:
    goto LABEL_5;
  }

  result = [*(v0 + 800) coordinates3d];
  if (!result)
  {
    goto LABEL_3;
  }

  v7 = *(v0 + 888);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    return result;
  }

  v10 = *(v0 + 800);
  v11 = &result[24 * v9];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = [v10 coordinates3d];

  v18 = *(v0 + 896);
  if (!v15)
  {
    v2 = *(v0 + 800);

    goto LABEL_4;
  }

  v19 = *(v0 + 768);
  v20 = &v15[24 * *(v0 + 888)];
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = GEOCoordinateGet3DDistance(v12, v13, v14, *v20, v22, v23, v16, v17);
  v25 = *(v0 + 728);
  v26 = v25 / v24;
  *(v19 + 48) = v25 + *(v19 + 48);
  *(v19 + 72) = 0;
  *(v19 + 88) = v12 + (v21 - v12) * v26;
  *(v19 + 96) = v13 + (v22 - v13) * v26;
  *(v19 + 104) = v14 + (v23 - v14) * v26;
  MEMORY[0x1D38B43F0](v12, v13, v14);
  MEMORY[0x1D38B43F0](v21, v22, v23);
  GEOBearingFromCoordinateToCoordinate();
  *(v19 + 112) = v27;
  sub_1D31730AC(v19, v18);
  v28 = *(v0 + 896);
  v29 = *(v0 + 800);
  if (*(v19 + 24))
  {

    sub_1D31730AC(v30, v28);
  }

  else
  {
  }

LABEL_5:
  v3 = *(v0 + 896);
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1D3171E70(uint64_t a1)
{
  *(*v1 + 1016) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3171F70, 0, 0);
}

void sub_1D3171F70(uint64_t a1)
{
  v2 = v1;
  v3 = v1[127];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1D3277650();
    sub_1D3277330();
    v3 = v1[59];
    v4 = v1[60];
    v5 = v1[61];
    v6 = v1[62];
    v7 = v1[63];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
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

    v7 = v10 & *(v3 + 56);
  }

  v212 = v1 + 43;
  v213 = v1 + 35;
  v200 = v1 + 85;
  v203 = v1 + 90;
  v204 = v1 + 89;
  v201 = v1 + 93;
  v202 = v1 + 51;
  v11 = (v5 + 64) >> 6;
  v12 = v1[122];
  v207 = v1;
  v208 = v4;
  v209 = v3;
  v206 = v11;
LABEL_8:
  v210 = v12 & 0xC000000000000001;
  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 < 0)
  {
    v13 = v12;
  }

  v205 = v13;
  v214 = v12;
  v216 = v12 + 56;
  v14 = v6;
  if (v3 < 0)
  {
LABEL_11:
    v15 = sub_1D3277680();
    if (v15)
    {
      *(v2 + 95) = v15;
      swift_dynamicCast();
      v16 = *(v2 + 94);
      v6 = v14;
      v211 = v7;
      if (v16)
      {
        goto LABEL_19;
      }
    }

LABEL_131:
    v139 = *(v2 + 124);
    v140 = *(v2 + 123);
    v141 = *(v2 + 121);
    sub_1D31779AC(v209);

    if (v139 == v141)
    {

      swift_beginAccess();
      v142 = *(v2 + 92);
      if (v142 >> 62)
      {
        goto LABEL_157;
      }

      if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_158;
      }

      goto LABEL_134;
    }

    v147 = *(v2 + 124);
    *(v2 + 122) = v12;
    v148 = *(v2 + 118);
    if ((v148 & 0xC000000000000001) != 0)
    {
      v149 = MEMORY[0x1D38B45D0](v147);
    }

    else
    {
      if (v147 >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_167;
      }

      v149 = *(v148 + 8 * v147 + 32);
    }

    v150 = v149;
    *(v2 + 123) = v149;
    *(v2 + 124) = v147 + 1;
    if (!__OFADD__(v147, 1))
    {
      v151 = *(v2 + 96);
      v152 = *(v151 + 16);
      if (!v152)
      {
        goto LABEL_172;
      }

      [v152 length];
      v154 = *(v151 + 16);
      if (!v154)
      {
        goto LABEL_173;
      }

      v155 = v153;
      v156 = *(v2 + 96);
      v157 = [v154 speedLimit];
      v158 = *(v156 + 16);
      if (!v158)
      {
        goto LABEL_174;
      }

      v159 = *(v2 + 96);
      sub_1D3148240([v158 speedLimitIsMPH], v155, v157);
      v161 = *(v159 + 40);
      v162 = v161 + 1;
      if (!__OFADD__(v161, 1))
      {
        v163 = *(v2 + 96);
        v164 = *(v163 + 48);
        v165 = v160 + *(v163 + 56);
        v166 = *(v163 + 112);
        v168 = *(v163 + 64);
        v167 = *(v163 + 80);
        v202[2] = *(v163 + 96);
        v202[3] = v166;
        *v202 = v168;
        v202[1] = v167;
        v169 = swift_allocObject();
        *(v2 + 125) = v169;
        *(v169 + 16) = v150;
        *(v169 + 24) = v163;
        *(v169 + 32) = v163;
        *(v169 + 40) = v162;
        *(v169 + 48) = v164;
        *(v169 + 56) = v165;
        v170 = *(v163 + 64);
        v171 = *(v163 + 80);
        v172 = *(v163 + 112);
        *(v169 + 96) = *(v163 + 96);
        *(v169 + 112) = v172;
        *(v169 + 64) = v170;
        *(v169 + 80) = v171;
        swift_retain_n();
        v173 = v150;
        sub_1D314B39C(v202, (v2 + 11));
        v174 = swift_task_alloc();
        *(v2 + 126) = v174;
        *v174 = v2;
        v174[1] = sub_1D3171E70;
        v175 = v2[104];
        v176 = *(v2 + 102);

        sub_1D3170164(v169, v176, v175);
        return;
      }

      goto LABEL_168;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

LABEL_14:
  v17 = v14;
  v18 = v7;
  v6 = v14;
  if (!v7)
  {
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_131;
      }

      v18 = *(v4 + 8 * v6);
      ++v17;
      if (v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_18:
  v211 = (v18 - 1) & v18;
  v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v18)))));

  if (!v16)
  {
    goto LABEL_131;
  }

LABEL_19:
  swift_beginAccess();
  if (v210)
  {
    swift_retain_n();

    v19 = sub_1D3277670();

    if (v19)
    {

      *(v2 + 87) = v19;
      swift_dynamicCast();
      v20 = *(v2 + 86);
      goto LABEL_45;
    }

    v125 = sub_1D3277660();
    if (__OFADD__(v125, 1))
    {
      goto LABEL_170;
    }

    v105 = sub_1D3175A30(v205, v125 + 1);
    *v200 = v105;
    v126 = *(v105 + 16);
    if (*(v105 + 24) <= v126)
    {
      sub_1D3176094(v126 + 1);
      v105 = *v200;
    }

    sub_1D3277980();

    sub_1D314AC84();
    v127 = sub_1D32779B0();
    v128 = v105 + 56;
    v129 = -1 << *(v105 + 32);
    v130 = v127 & ~v129;
    v131 = v130 >> 6;
    if (((-1 << v130) & ~*(v105 + 56 + 8 * (v130 >> 6))) != 0)
    {
      v132 = __clz(__rbit64((-1 << v130) & ~*(v105 + 56 + 8 * (v130 >> 6)))) | v130 & 0x7FFFFFFFFFFFFFC0;
LABEL_130:
      v138 = *(v2 + 112);
      *(v128 + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v132;
      *(*(v105 + 48) + 8 * v132) = v16;
      ++*(v105 + 16);

      *(v138 + 16) = v105;
      goto LABEL_110;
    }

    v134 = 0;
    v135 = (63 - v129) >> 6;
    while (++v131 != v135 || (v134 & 1) == 0)
    {
      v136 = v131 == v135;
      if (v131 == v135)
      {
        v131 = 0;
      }

      v134 |= v136;
      v137 = *(v128 + 8 * v131);
      if (v137 != -1)
      {
        v132 = __clz(__rbit64(~v137)) + (v131 << 6);
        goto LABEL_130;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    if (!sub_1D3277660())
    {
LABEL_158:
      v177 = [*(v2 + 100) coordinates3d];
      if (v177)
      {
        v178 = *(v2 + 111);
        v120 = __OFSUB__(v178, 1);
        v179 = v178 - 1;
        if (!v120)
        {
          v180 = *(v2 + 100);
          v181 = &v177[24 * v179];
          v182 = *v181;
          v183 = v181[1];
          v184 = v181[2];
          v185 = [v180 coordinates3d];

          v188 = *(v2 + 112);
          if (v185)
          {
            v189 = *(v2 + 96);
            v190 = &v185[24 * *(v2 + 111)];
            v191 = *v190;
            v192 = v190[1];
            v193 = v190[2];
            v194 = GEOCoordinateGet3DDistance(v182, v183, v184, *v190, v192, v193, v186, v187);
            v195 = v2[91];
            v196 = v195 / v194;
            *(v189 + 48) = v195 + *(v189 + 48);
            *(v189 + 72) = 0;
            *(v189 + 88) = v182 + (v191 - v182) * v196;
            *(v189 + 96) = v183 + (v192 - v183) * v196;
            *(v189 + 104) = v184 + (v193 - v184) * v196;
            MEMORY[0x1D38B43F0](v182, v183, v184);
            MEMORY[0x1D38B43F0](v191, v192, v193);
            GEOBearingFromCoordinateToCoordinate();
            *(v189 + 112) = v197;
            sub_1D31730AC(v189, v188);
            v198 = *(v2 + 112);
            v143 = *(v2 + 100);
            if (*(v189 + 24))
            {

              sub_1D31730AC(v199, v198);

              goto LABEL_136;
            }
          }

          else
          {
            v143 = *(v2 + 100);
          }

LABEL_135:

LABEL_136:
          v144 = *(v2 + 112);
          swift_beginAccess();
          v145 = *(v144 + 16);

          v146 = *(v2 + 1);

          v146(v145);
          return;
        }

LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }
    }

LABEL_134:
    v143 = *(v2 + 100);

    goto LABEL_135;
  }

  sub_1D3277980();
  v21 = *(v16 + 16);
  if (v21)
  {

    MEMORY[0x1D38B4860]([v21 muid]);
  }

  else
  {
    v22 = qword_1EC75C000;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1D3276F80();
    __swift_project_value_buffer(v23, qword_1EC760870);
    v24 = sub_1D3276F60();
    v25 = sub_1D3277390();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D311E000, v24, v25, "Tried to hash a MapMatcherConnectivityNode with no road", v26, 2u);
      MEMORY[0x1D38B6000](v26, -1, -1);
    }
  }

  v27 = sub_1D32779B0();
  v28 = ~(-1 << *(v12 + 32));
  for (i = v27 & v28; ((*(v216 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v28)
  {
    v34 = *(*(*(v12 + 48) + 8 * i) + 16);
    if (v34)
    {

      v35 = [v34 muid];
      v36 = *(v16 + 16);
      if (!v36)
      {

        continue;
      }

      v30 = v35;
    }

    else
    {
      v36 = *(v16 + 16);

      if (!v36)
      {

LABEL_44:

        v20 = *(*(v12 + 48) + 8 * i);

LABEL_45:
        swift_endAccess();
        v37 = v20[7];
        v39 = v20[4];
        v38 = v20[5];
        v212[2] = v20[6];
        v212[3] = v37;
        *v212 = v39;
        v212[1] = v38;
        v40 = *v212;
        v41 = *(*v212 + 16);
        if (v41)
        {
          if (v41 <= 3)
          {
            v42 = 0;
            v43 = 0.0;
            goto LABEL_53;
          }

          v42 = v41 & 0x7FFFFFFFFFFFFFFCLL;
          v50 = (v40 + 48);
          v43 = 0.0;
          v51 = v41 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v43 = v43 + *(v50 - 2) + *(v50 - 1) + *v50 + v50[1];
            v50 += 4;
            v51 -= 4;
          }

          while (v51);
          if (v41 != v42)
          {
LABEL_53:
            v52 = v41 - v42;
            v53 = (v40 + 8 * v42 + 32);
            do
            {
              v54 = *v53++;
              v43 = v43 + v54;
              --v52;
            }

            while (v52);
          }

          v55 = (v40 + 32);
          v56 = v43 / v41;
          sub_1D314B39C(v212, (v2 + 19));
          v57 = v203;
          *v203 = MEMORY[0x1E69E7CC0];
          sub_1D314B424(0, v41, 0);
          v58 = *v203;
          v59 = *(*v203 + 16);
          v60 = v59 + 1;
          v61 = v41;
          v62 = v59;
          do
          {
            v63 = v60;
            v64 = *v55;
            *v57 = v58;
            v65 = *(v58 + 24);
            if (v62 >= v65 >> 1)
            {
              sub_1D314B424((v65 > 1), v62 + 1, 1);
              v57 = v203;
              v58 = *v203;
            }

            *(v58 + 16) = v62 + 1;
            *(v58 + 8 * v62 + 32) = (v64 - v56) * (v64 - v56);
            ++v55;
            v60 = v63 + 1;
            ++v62;
            --v61;
          }

          while (v61);
          v66 = v41 + v59;
          if (v41 + v59 <= 3)
          {
            v67 = 0;
            v68 = 0.0;
            v2 = v207;
            v12 = v214;
            goto LABEL_64;
          }

          v67 = v66 & 0xFFFFFFFFFFFFFFFCLL;
          v69 = (v58 + 48);
          v68 = 0.0;
          v70 = v66 & 0xFFFFFFFFFFFFFFFCLL;
          v12 = v214;
          do
          {
            v68 = v68 + *(v69 - 2) + *(v69 - 1) + *v69 + v69[1];
            v69 += 4;
            v70 -= 4;
          }

          while (v70);
          v2 = v207;
          if (v66 != v67)
          {
LABEL_64:
            v71 = v63 - v67;
            v72 = (v58 + 8 * v67 + 32);
            do
            {
              v73 = *v72++;
              v68 = v68 + v73;
              --v71;
            }

            while (v71);
          }

          sub_1D314B3D4(v212);
          v49 = v68 / v41 + v2[44];
          v74 = *(v16 + 64);
          v75 = *(v16 + 80);
          v76 = *(v16 + 112);
          v213[2] = *(v16 + 96);
          v213[3] = v76;
          *v213 = v74;
          v213[1] = v75;
          v47 = *(v2 + 35);
          v48 = *(v47 + 16);
          if (v48)
          {
LABEL_67:
            if (v48 <= 3)
            {
              v77 = 0;
              v78 = 0.0;
              goto LABEL_72;
            }

            v77 = v48 & 0x7FFFFFFFFFFFFFFCLL;
            v79 = (v47 + 48);
            v78 = 0.0;
            v80 = v48 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v78 = v78 + *(v79 - 2) + *(v79 - 1) + *v79 + v79[1];
              v79 += 4;
              v80 -= 4;
            }

            while (v80);
            if (v48 != v77)
            {
LABEL_72:
              v81 = v48 - v77;
              v82 = (v47 + 8 * v77 + 32);
              do
              {
                v83 = *v82++;
                v78 = v78 + v83;
                --v81;
              }

              while (v81);
            }

            v84 = (v47 + 32);
            v85 = v78 / v48;
            sub_1D314B39C(v213, (v2 + 27));
            v86 = v204;
            *v204 = MEMORY[0x1E69E7CC0];
            sub_1D314B424(0, v48, 0);
            v87 = *v204;
            v88 = *(*v204 + 16);
            v89 = v88 + 1;
            v90 = v48;
            v91 = v88;
            do
            {
              v92 = v89;
              v93 = *v84;
              *v86 = v87;
              v94 = *(v87 + 24);
              if (v91 >= v94 >> 1)
              {
                sub_1D314B424((v94 > 1), v91 + 1, 1);
                v86 = v204;
                v87 = *v204;
              }

              *(v87 + 16) = v91 + 1;
              *(v87 + 8 * v91 + 32) = (v93 - v85) * (v93 - v85);
              ++v84;
              v89 = v92 + 1;
              ++v91;
              --v90;
            }

            while (v90);
            v95 = v48 + v88;
            if (v48 + v88 <= 3)
            {
              v96 = 0;
              v97 = 0.0;
              v2 = v207;
              v12 = v214;
              goto LABEL_83;
            }

            v96 = v95 & 0xFFFFFFFFFFFFFFFCLL;
            v98 = (v87 + 48);
            v97 = 0.0;
            v99 = v95 & 0xFFFFFFFFFFFFFFFCLL;
            v2 = v207;
            v12 = v214;
            do
            {
              v97 = v97 + *(v98 - 2) + *(v98 - 1) + *v98 + v98[1];
              v98 += 4;
              v99 -= 4;
            }

            while (v99);
            if (v95 != v96)
            {
LABEL_83:
              v100 = v92 - v96;
              v101 = (v87 + 8 * v96 + 32);
              do
              {
                v102 = *v101++;
                v97 = v97 + v102;
                --v100;
              }

              while (v100);
            }

            sub_1D314B3D4(v213);
            if (v49 > v97 / v48 + v2[36])
            {
              swift_beginAccess();
              if (v210)
              {

                v123 = sub_1D3277660();
                if (!__OFADD__(v123, 1))
                {
                  v124 = *(v2 + 112);
                  *(v2 + 88) = sub_1D3175A30(v205, v123 + 1);
                  sub_1D3175D20(v16, 1);

                  v12 = *(v2 + 88);
                  goto LABEL_121;
                }

LABEL_171:
                __break(1u);
LABEL_172:

                __break(1u);
LABEL_173:

                __break(1u);
LABEL_174:

                __break(1u);
                return;
              }

              v124 = *(v2 + 112);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v217 = *(v124 + 16);
              sub_1D3175D20(v16, isUniquelyReferenced_nonNull_native);

              v12 = v217;
LABEL_121:
              *(v124 + 16) = v12;
              swift_endAccess();

LABEL_111:
              v4 = v208;
              v3 = v209;
              v11 = v206;
              v7 = v211;
              goto LABEL_8;
            }
          }
        }

        else
        {
          v44 = *(v16 + 112);
          v46 = *(v16 + 64);
          v45 = *(v16 + 80);
          v213[2] = *(v16 + 96);
          v213[3] = v44;
          *v213 = v46;
          v213[1] = v45;
          v47 = *v213;
          v48 = *(*v213 + 16);
          if (v48)
          {
            v49 = INFINITY;
            goto LABEL_67;
          }
        }

        v14 = v6;
        v7 = v211;
        v4 = v208;
        v3 = v209;
        v11 = v206;
        if (v209 < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }

      v30 = 0;
    }

    v31 = v36;
    v32 = [v31 muid];

    if (v34)
    {
      v33 = v30 == v32;
    }

    else
    {
      v33 = 0;
    }

    v12 = v214;
    if (v33)
    {
      goto LABEL_44;
    }
  }

  v103 = *(v2 + 112);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v103 + 16);
  *(v2 + 93) = v105;
  v106 = *(v105 + 16);
  v107 = *(v105 + 24);

  if (v107 > v106)
  {
    if ((v104 & 1) == 0)
    {
      sub_1D317645C();
      v105 = *v201;
    }

    goto LABEL_108;
  }

  v108 = v106 + 1;
  if (v104)
  {
    v109 = v201;
    sub_1D3176094(v108);
  }

  else
  {
    v109 = v201;
    sub_1D31765AC(v108);
  }

  v105 = *v109;
  sub_1D3277980();
  sub_1D314AC84();
  v110 = sub_1D32779B0();
  v111 = -1 << *(v105 + 32);
  i = v110 & ~v111;
  if (((*(v105 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
  {
LABEL_108:
    *(v105 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
    *(*(v105 + 48) + 8 * i) = v16;
    v119 = *(v105 + 16);
    v120 = __OFADD__(v119, 1);
    v121 = v119 + 1;
    if (!v120)
    {
      v122 = *(v2 + 112);
      *(v105 + 16) = v121;
      *(v122 + 16) = v105;
LABEL_110:
      swift_endAccess();

      v12 = v105;
      goto LABEL_111;
    }

    goto LABEL_155;
  }

  v215 = ~v111;
  while (2)
  {
    v116 = *(*(*(v105 + 48) + 8 * i) + 16);
    if (v116)
    {

      v117 = [v116 muid];
      v118 = *(v16 + 16);
      if (!v118)
      {

LABEL_102:
        i = (i + 1) & v215;
        if (((*(v105 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
          goto LABEL_108;
        }

        continue;
      }

      v112 = v117;
LABEL_98:
      v113 = v118;
      v114 = [v113 muid];

      if (v116)
      {
        v115 = v112 == v114;
      }

      else
      {
        v115 = 0;
      }

      if (v115)
      {
        goto LABEL_151;
      }

      goto LABEL_102;
    }

    break;
  }

  v118 = *(v16 + 16);

  if (v118)
  {
    v112 = 0;
    goto LABEL_98;
  }

LABEL_151:

  sub_1D3277910();
}

void sub_1D31730AC(_OWORD *a1, uint64_t a2)
{
  swift_beginAccess();

  v3 = sub_1D31756DC(v14, a1);
  swift_endAccess();
  if ((v3 & 1) == 0)
  {
    v4 = *(*&v14[0] + 80);
    v15[0] = *(*&v14[0] + 64);
    v15[1] = v4;
    v5 = *(*&v14[0] + 112);
    v15[2] = *(*&v14[0] + 96);
    v15[3] = v5;
    sub_1D314B39C(v15, v14);
    sub_1D314A9DC();
    v7 = v6;
    sub_1D314B3D4(v15);
    v8 = a1[5];
    v14[0] = a1[4];
    v14[1] = v8;
    v9 = a1[7];
    v14[2] = a1[6];
    v14[3] = v9;
    sub_1D314B39C(v14, &v13);
    sub_1D314A9DC();
    v11 = v10;
    sub_1D314B3D4(v14);
    if (v7 > v11)
    {
      swift_beginAccess();

      sub_1D3175990(v12);
      swift_endAccess();
    }
  }
}

uint64_t sub_1D31731E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a7;
  v8[53] = a8;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a3;
  v8[49] = a4;
  v8[47] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB8, &qword_1D328C7E0);
  v8[56] = v9;
  v8[57] = *(v9 - 8);
  v8[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D31732FC, 0, 0);
}

uint64_t sub_1D31732FC()
{
  v1 = *(v0 + 384);
  if (v1 >> 62)
  {
LABEL_28:
    v2 = sub_1D3277660();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 392);
  swift_beginAccess();
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v48 = v1 & 0xFFFFFFFFFFFFFF8;
    v49 = v1 & 0xC000000000000001;
    v45 = *(v0 + 392);
    v46 = v2;
    v47 = *(v0 + 384) + 32;
    do
    {
      if (v49)
      {
        v5 = MEMORY[0x1D38B45D0](v4, *(v0 + 384));
      }

      else
      {
        if (v4 >= *(v48 + 16))
        {
          goto LABEL_26;
        }

        v5 = *(v47 + 8 * v4);
      }

      v9 = v5;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v10 = *(v3 + 16);
      if (!v10)
      {
        goto LABEL_30;
      }

      [v10 length];
      v10 = *(v3 + 16);
      if (!v10)
      {
LABEL_31:
        __break(1u);
        return MEMORY[0x1EEE6D8A8](v10, v6, v7, v8);
      }

      v12 = v11;
      v13 = [v10 speedLimit];
      v10 = *(v3 + 16);
      if (!v10)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1D3148240([v10 speedLimitIsMPH], v12, v13);
      v15 = *(v3 + 40);
      v1 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_27;
      }

      v52 = v4 + 1;
      v53 = v4;
      v17 = *(v0 + 432);
      v16 = *(v0 + 440);
      v19 = *(v0 + 400);
      v18 = *(v0 + 408);
      v20 = *(v3 + 48);
      v21 = v14 + *(v3 + 56);
      v22 = *(v3 + 112);
      v24 = *(v3 + 64);
      v23 = *(v3 + 80);
      *(v0 + 48) = *(v3 + 96);
      *(v0 + 64) = v22;
      *(v0 + 16) = v24;
      *(v0 + 32) = v23;
      type metadata accessor for ConnectedSearchNode();
      v25 = swift_allocObject();
      *(v25 + 16) = v9;
      *(v25 + 24) = v45;
      *(v25 + 32) = v45;
      *(v25 + 40) = v1;
      *(v25 + 48) = v20;
      *(v25 + 56) = v21;
      v26 = *(v3 + 112);
      v28 = *(v3 + 64);
      v27 = *(v3 + 80);
      *(v25 + 96) = *(v3 + 96);
      *(v25 + 112) = v26;
      *(v25 + 64) = v28;
      *(v25 + 80) = v27;
      v29 = *v19;
      v30 = *v18;
      v50 = v9;
      v31 = sub_1D3277280();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v16, 1, 1, v31);
      v33 = swift_allocObject();
      v33[2] = 0;
      v34 = v33 + 2;
      v33[3] = 0;
      v33[4] = v25;
      v33[5] = v29;
      v33[6] = v30;
      sub_1D31528F4(v16, v17);
      LODWORD(v17) = (*(v32 + 48))(v17, 1, v31);
      swift_retain_n();
      v51 = v50;
      v35 = *(v0 + 432);
      v36 = v0 + 16;
      if (v17 == 1)
      {
        sub_1D314B39C(v36, v0 + 80);

        sub_1D3123330(v35);
        if (!*v34)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1D314B39C(v36, v0 + 144);

        sub_1D3277270();
        (*(v32 + 8))(v35, v31);
        if (!*v34)
        {
LABEL_18:
          v37 = 0;
          v39 = 0;
          goto LABEL_19;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v37 = sub_1D3277200();
      v39 = v38;
      swift_unknownObjectRelease();
LABEL_19:
      v40 = **(v0 + 376);
      v41 = swift_allocObject();
      *(v41 + 16) = &unk_1D328C7F0;
      *(v41 + 24) = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
      v42 = v39 | v37;
      if (v39 | v37)
      {
        v42 = v0 + 248;
        *(v0 + 248) = 0;
        *(v0 + 256) = 0;
        *(v0 + 264) = v37;
        *(v0 + 272) = v39;
      }

      v1 = *(v0 + 440);
      *(v0 + 328) = 1;
      *(v0 + 336) = v42;
      *(v0 + 344) = v40;
      swift_task_create();

      sub_1D3123330(v1);
      v4 = v53 + 1;
    }

    while (v52 != v46);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
  sub_1D3277240();
  v43 = swift_task_alloc();
  *(v0 + 472) = v43;
  *v43 = v0;
  v43[1] = sub_1D3173818;
  v8 = *(v0 + 448);
  v10 = (v0 + 352);
  v6 = 0;
  v7 = 0;

  return MEMORY[0x1EEE6D8A8](v10, v6, v7, v8);
}

uint64_t sub_1D3173818()
{

  return MEMORY[0x1EEE6DFA0](sub_1D3173914, 0, 0);
}

uint64_t sub_1D3173914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 352);
  if (v5)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1D3277650();
      type metadata accessor for ConnectedSearchNode();
      sub_1D3177870();
      a1 = sub_1D3277330();
      v5 = *(v4 + 208);
      v6 = *(v4 + 216);
      v7 = *(v4 + 224);
      v8 = *(v4 + 232);
      v9 = *(v4 + 240);
    }

    else
    {
      v8 = 0;
      v12 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v7 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v9 = v14 & *(v5 + 56);
    }

    v15 = (v7 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v16 = v8;
      v17 = v9;
      v18 = v8;
      if (!v9)
      {
        break;
      }

LABEL_16:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v5 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      if (!v20)
      {
LABEL_22:
        sub_1D31779AC(v5);
        v22 = swift_task_alloc();
        *(v4 + 472) = v22;
        *v22 = v4;
        v22[1] = sub_1D3173818;
        a4 = *(v4 + 448);
        a1 = v4 + 352;
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
      }

      while (1)
      {
        (*(v4 + 416))(v20);

        v8 = v18;
        v9 = v19;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v21 = sub_1D3277680();
        if (v21)
        {
          *(v4 + 368) = v21;
          type metadata accessor for ConnectedSearchNode();
          swift_dynamicCast();
          v20 = *(v4 + 360);
          v18 = v8;
          v19 = v9;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v6 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
  }

  else
  {
    (*(*(v4 + 456) + 8))(*(v4 + 464), *(v4 + 448), a3, a4);

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1D3173BD8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  type metadata accessor for ConnectedRoadSimilaritySearch();
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D3173C94;

  return sub_1D3170164(a5, a6, a2);
}

uint64_t sub_1D3173C94(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3173D94, 0, 0);
}

uint64_t sub_1D3173DD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D3176A8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D3173E54(v6);
  return sub_1D3277760();
}

void sub_1D3173E54(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D3277880();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ConnectedSearchNode();
        v6 = sub_1D32771C0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D317443C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D3173F58(0, v2, 1, a1);
  }
}

void sub_1D3173F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v67 = *a4;
LABEL_5:
    v5 = *(v4 + 8 * a3);
    v65 = a3;
    while (1)
    {
      v6 = *(v4 + 8 * (a3 - 1));
      v7 = v5[7];
      v72[2] = v5[6];
      v72[3] = v7;
      v8 = v5[5];
      v72[0] = v5[4];
      v72[1] = v8;
      v9 = *(*&v72[0] + 16);
      v68 = a3 - 1;
      v69 = a3;
      v73 = v6;
      if (!v9)
      {

        v12 = INFINITY;
        goto LABEL_27;
      }

      if (v9 > 3)
      {
        v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
        v13 = (*&v72[0] + 48);
        v11 = 0.0;
        v14 = v9 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v11 = v11 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
          v13 += 4;
          v14 -= 4;
        }

        while (v14);
        if (v9 == v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0.0;
      }

      v15 = v9 - v10;
      v16 = (*&v72[0] + 8 * v10 + 32);
      do
      {
        v17 = *v16++;
        v11 = v11 + v17;
        --v15;
      }

      while (v15);
LABEL_15:
      v18 = (*&v72[0] + 32);
      v19 = v11 / v9;

      sub_1D314B39C(v72, v71);
      *&v71[0] = MEMORY[0x1E69E7CC0];
      sub_1D314B424(0, v9, 0);
      v20 = *&v71[0];
      v21 = *(*&v71[0] + 16);
      v22 = v21 + 1;
      v23 = v9;
      v24 = v21;
      do
      {
        v25 = v22;
        v26 = *v18;
        *&v71[0] = v20;
        v27 = *(v20 + 24);
        if (v24 >= v27 >> 1)
        {
          sub_1D314B424((v27 > 1), v24 + 1, 1);
          v20 = *&v71[0];
        }

        *(v20 + 16) = v24 + 1;
        *(v20 + 8 * v24 + 32) = (v26 - v19) * (v26 - v19);
        ++v18;
        v22 = v25 + 1;
        ++v24;
        --v23;
      }

      while (v23);
      v28 = v9 + v21;
      if (v9 + v21 > 3)
      {
        v29 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        v31 = (v20 + 48);
        v30 = 0.0;
        v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        v6 = v73;
        do
        {
          v30 = v30 + *(v31 - 2) + *(v31 - 1) + *v31 + v31[1];
          v31 += 4;
          v32 -= 4;
        }

        while (v32);
        if (v28 == v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0.0;
        v6 = v73;
      }

      v33 = v25 - v29;
      v34 = (v20 + 8 * v29 + 32);
      do
      {
        v35 = *v34++;
        v30 = v30 + v35;
        --v33;
      }

      while (v33);
LABEL_26:

      sub_1D314B3D4(v72);
      v12 = v30 / v9 + *(v72 + 1);
LABEL_27:
      v36 = v6[7];
      v71[2] = v6[6];
      v71[3] = v36;
      v37 = v6[5];
      v71[0] = v6[4];
      v71[1] = v37;
      v38 = *(*&v71[0] + 16);
      if (!v38)
      {

        v4 = v67;
        if (v12 == INFINITY)
        {
          goto LABEL_4;
        }

        goto LABEL_49;
      }

      if (v38 > 3)
      {
        v39 = v38 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (*&v71[0] + 48);
        v40 = 0.0;
        v42 = v38 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v40 = v40 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v38 == v39)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v39 = 0;
        v40 = 0.0;
      }

      v43 = v38 - v39;
      v44 = (*&v71[0] + 8 * v39 + 32);
      do
      {
        v45 = *v44++;
        v40 = v40 + v45;
        --v43;
      }

      while (v43);
LABEL_37:
      v46 = (*&v71[0] + 32);
      v47 = v40 / v38;
      sub_1D314B39C(v71, v70);
      v70[0] = MEMORY[0x1E69E7CC0];
      sub_1D314B424(0, v38, 0);
      v48 = v70[0];
      v49 = *(v70[0] + 16);
      v50 = v49 + 1;
      v51 = v38;
      v52 = v49;
      do
      {
        v53 = v50;
        v54 = *v46;
        v70[0] = v48;
        v55 = *(v48 + 24);
        if (v52 >= v55 >> 1)
        {
          sub_1D314B424((v55 > 1), v52 + 1, 1);
          v48 = v70[0];
        }

        *(v48 + 16) = v52 + 1;
        *(v48 + 8 * v52 + 32) = (v54 - v47) * (v54 - v47);
        ++v46;
        v50 = v53 + 1;
        ++v52;
        --v51;
      }

      while (v51);
      v56 = v38 + v49;
      if (v38 + v49 <= 3)
      {
        v57 = 0;
        v58 = 0.0;
LABEL_46:
        v61 = v53 - v57;
        v62 = (v48 + 8 * v57 + 32);
        do
        {
          v63 = *v62++;
          v58 = v58 + v63;
          --v61;
        }

        while (v61);
        goto LABEL_48;
      }

      v57 = v56 & 0xFFFFFFFFFFFFFFFCLL;
      v59 = (v48 + 48);
      v58 = 0.0;
      v60 = v56 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v58 = v58 + *(v59 - 2) + *(v59 - 1) + *v59 + v59[1];
        v59 += 4;
        v60 -= 4;
      }

      while (v60);
      if (v56 != v57)
      {
        goto LABEL_46;
      }

LABEL_48:

      sub_1D314B3D4(v71);

      v4 = v67;
      if (v12 >= v58 / v38 + *(v71 + 1))
      {
        goto LABEL_4;
      }

LABEL_49:
      if (!v4)
      {
        __break(1u);
        return;
      }

      a3 = v68;
      v5 = *(v4 + 8 * v69);
      *(v4 + 8 * v69) = *(v4 + 8 * v68);
      *(v4 + 8 * v68) = v5;
      if (v68 == a1)
      {
LABEL_4:
        a3 = v65 + 1;
        if (v65 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_1D317443C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_213;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_207:
      v7 = sub_1D31756C8(v7);
    }

    v231 = v7;
    v201 = *(v7 + 2);
    if (v201 >= 2)
    {
      while (*a3)
      {
        v202 = *&v7[16 * v201];
        v203 = *&v7[16 * v201 + 24];
        sub_1D31752F4((*a3 + 8 * v202), (*a3 + 8 * *&v7[16 * v201 + 16]), (*a3 + 8 * v203), v5);
        if (v213)
        {
          goto LABEL_185;
        }

        if (v203 < v202)
        {
          goto LABEL_200;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D31756C8(v7);
        }

        if (v201 - 2 >= *(v7 + 2))
        {
          goto LABEL_201;
        }

        v204 = &v7[16 * v201];
        *v204 = v202;
        *(v204 + 1) = v203;
        v231 = v7;
        sub_1D317563C(v201 - 1);
        v7 = v231;
        v201 = *(v231 + 2);
        if (v201 <= 1)
        {
          goto LABEL_185;
        }
      }

      goto LABEL_211;
    }

LABEL_185:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v215 = v6;
    if (v6 + 1 < v4)
    {
      v206 = v7;
      v10 = *(*a3 + 8 * v9);
      v218 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = v10[5];
      v230[0] = v10[4];
      v230[1] = v12;
      v13 = v10[7];
      v230[2] = v10[6];
      v230[3] = v13;

      sub_1D314B39C(v230, &v225);
      sub_1D314A9DC();
      v15 = v14;
      sub_1D314B3D4(v230);
      v16 = v11[5];
      v229[0] = v11[4];
      v229[1] = v16;
      v17 = v11[7];
      v229[2] = v11[6];
      v229[3] = v17;
      sub_1D314B39C(v229, &v225);
      sub_1D314A9DC();
      v19 = v18;
      sub_1D314B3D4(v229);

      v20 = v6 + 2;
      if (v6 + 2 < v4)
      {
        v21 = v6 + 1;
        v216 = v4;
        while (1)
        {
          v22 = *(v218 + 8 * v21);
          v211 = v20;
          v23 = *(v218 + 8 * v20);
          v24 = v23[7];
          v227 = v23[6];
          v228 = v24;
          v25 = v23[5];
          v225 = v23[4];
          v226 = v25;
          v26 = *(v225 + 16);
          if (!v26)
          {

            v29 = INFINITY;
            goto LABEL_28;
          }

          if (v26 > 3)
          {
            v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
            v30 = (v225 + 48);
            v28 = 0.0;
            v31 = v26 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v28 = v28 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
              v30 += 4;
              v31 -= 4;
            }

            while (v31);
            if (v26 == v27)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0.0;
          }

          v32 = v26 - v27;
          v33 = (v225 + 8 * v27 + 32);
          do
          {
            v34 = *v33++;
            v28 = v28 + v34;
            --v32;
          }

          while (v32);
LABEL_16:
          v35 = (v225 + 32);
          v36 = v28 / v26;

          sub_1D314B39C(&v225, &v221);
          *&v221 = v5;
          sub_1D314B424(0, v26, 0);
          v37 = v221;
          v38 = *(v221 + 16);
          v39 = v38 + 1;
          v40 = v26;
          v41 = v38;
          do
          {
            v42 = v39;
            v43 = *v35;
            *&v221 = v37;
            v44 = *(v37 + 24);
            if (v41 >= v44 >> 1)
            {
              sub_1D314B424((v44 > 1), v41 + 1, 1);
              v37 = v221;
            }

            *(v37 + 16) = v41 + 1;
            *(v37 + 8 * v41 + 32) = (v43 - v36) * (v43 - v36);
            ++v35;
            v39 = v42 + 1;
            ++v41;
            --v40;
          }

          while (v40);
          v45 = v26 + v38;
          if (v26 + v38 > 3)
          {
            v46 = v45 & 0xFFFFFFFFFFFFFFFCLL;
            v48 = (v37 + 48);
            v47 = 0.0;
            v49 = v45 & 0xFFFFFFFFFFFFFFFCLL;
            v5 = MEMORY[0x1E69E7CC0];
            do
            {
              v47 = v47 + *(v48 - 2) + *(v48 - 1) + *v48 + v48[1];
              v48 += 4;
              v49 -= 4;
            }

            while (v49);
            if (v45 == v46)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v46 = 0;
            v47 = 0.0;
            v5 = MEMORY[0x1E69E7CC0];
          }

          v50 = v42 - v46;
          v51 = (v37 + 8 * v46 + 32);
          do
          {
            v52 = *v51++;
            v47 = v47 + v52;
            --v50;
          }

          while (v50);
LABEL_27:

          sub_1D314B3D4(&v225);
          v29 = v47 / v26 + *(&v225 + 1);
LABEL_28:
          v53 = v22[7];
          v223 = v22[6];
          v224 = v53;
          v54 = v22[5];
          v221 = v22[4];
          v222 = v54;
          v55 = *(v221 + 16);
          if (!v55)
          {

            v58 = INFINITY;
            v8 = v215;
            v59 = v216;
            goto LABEL_49;
          }

          if (v55 > 3)
          {
            v56 = v55 & 0x7FFFFFFFFFFFFFFCLL;
            v60 = (v221 + 48);
            v57 = 0.0;
            v61 = v55 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v57 = v57 + *(v60 - 2) + *(v60 - 1) + *v60 + v60[1];
              v60 += 4;
              v61 -= 4;
            }

            while (v61);
            if (v55 == v56)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v56 = 0;
            v57 = 0.0;
          }

          v62 = v55 - v56;
          v63 = (v221 + 8 * v56 + 32);
          do
          {
            v64 = *v63++;
            v57 = v57 + v64;
            --v62;
          }

          while (v62);
LABEL_37:
          v65 = (v221 + 32);
          v66 = v55;
          v67 = v57 / v55;
          sub_1D314B39C(&v221, v220);
          v220[0] = v5;
          sub_1D314B424(0, v55, 0);
          v68 = v220[0];
          v69 = *(v220[0] + 16);
          v70 = v69 + 1;
          v71 = v55;
          v72 = v69;
          do
          {
            v73 = v70;
            v74 = *v65;
            v220[0] = v68;
            v75 = *(v68 + 24);
            if (v72 >= v75 >> 1)
            {
              sub_1D314B424((v75 > 1), v72 + 1, 1);
              v68 = v220[0];
            }

            *(v68 + 16) = v72 + 1;
            *(v68 + 8 * v72 + 32) = (v74 - v67) * (v74 - v67);
            ++v65;
            v70 = v73 + 1;
            ++v72;
            --v71;
          }

          while (v71);
          v76 = v55 + v69;
          if (v55 + v69 > 3)
          {
            v77 = v76 & 0xFFFFFFFFFFFFFFFCLL;
            v79 = (v68 + 48);
            v78 = 0.0;
            v80 = v76 & 0xFFFFFFFFFFFFFFFCLL;
            v5 = MEMORY[0x1E69E7CC0];
            v8 = v215;
            v59 = v216;
            do
            {
              v78 = v78 + *(v79 - 2) + *(v79 - 1) + *v79 + v79[1];
              v79 += 4;
              v80 -= 4;
            }

            while (v80);
            if (v76 == v77)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v77 = 0;
            v78 = 0.0;
            v5 = MEMORY[0x1E69E7CC0];
            v8 = v215;
            v59 = v216;
          }

          v81 = v73 - v77;
          v82 = (v68 + 8 * v77 + 32);
          do
          {
            v83 = *v82++;
            v78 = v78 + v83;
            --v81;
          }

          while (v81);
LABEL_48:

          sub_1D314B3D4(&v221);

          v58 = v78 / v66 + *(&v221 + 1);
LABEL_49:
          if (v15 < v19 == v29 >= v58)
          {
            v20 = v211;
            break;
          }

          v21 = v211;
          v20 = v211 + 1;
          if (v211 + 1 == v59)
          {
            v20 = v59;
            break;
          }
        }
      }

      v7 = v206;
      if (v15 < v19)
      {
        if (v20 < v8)
        {
          goto LABEL_204;
        }

        if (v8 < v20)
        {
          v84 = 8 * v20 - 8;
          v85 = 8 * v8;
          v86 = v20;
          v87 = v8;
          do
          {
            if (v87 != --v86)
            {
              v89 = *a3;
              if (!*a3)
              {
                goto LABEL_210;
              }

              v88 = *(v89 + v85);
              *(v89 + v85) = *(v89 + v84);
              *(v89 + v84) = v88;
            }

            ++v87;
            v84 -= 8;
            v85 += 8;
          }

          while (v87 < v86);
        }
      }

      v9 = v20;
    }

    v90 = a3[1];
    if (v9 >= v90)
    {
      v6 = v9;
      if (v9 < v8)
      {
        goto LABEL_202;
      }

      goto LABEL_74;
    }

    v91 = v9;
    v109 = __OFSUB__(v9, v8);
    v92 = v9 - v8;
    if (v109)
    {
      goto LABEL_203;
    }

    if (v92 < a4)
    {
      if (__OFADD__(v8, a4))
      {
        goto LABEL_205;
      }

      if (v8 + a4 < v90)
      {
        v90 = v8 + a4;
      }

      if (v90 < v8)
      {
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      if (v91 != v90)
      {
        break;
      }
    }

    v6 = v91;
    if (v91 < v8)
    {
      goto LABEL_202;
    }

LABEL_74:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D31414D0(0, *(v7 + 2) + 1, 1, v7);
    }

    v94 = *(v7 + 2);
    v93 = *(v7 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      v7 = sub_1D31414D0((v93 > 1), v94 + 1, 1, v7);
    }

    *(v7 + 2) = v95;
    v96 = &v7[16 * v94];
    *(v96 + 4) = v8;
    *(v96 + 5) = v6;
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_212;
    }

    if (v94)
    {
      while (1)
      {
        v98 = v95 - 1;
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v99 = *(v7 + 4);
          v100 = *(v7 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_93:
          if (v102)
          {
            goto LABEL_191;
          }

          v115 = &v7[16 * v95];
          v117 = *v115;
          v116 = *(v115 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_194;
          }

          v121 = &v7[16 * v98 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v109 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v109)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v119, v124))
          {
            goto LABEL_198;
          }

          if (v119 + v124 >= v101)
          {
            if (v101 < v124)
            {
              v98 = v95 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v125 = &v7[16 * v95];
        v127 = *v125;
        v126 = *(v125 + 1);
        v109 = __OFSUB__(v126, v127);
        v119 = v126 - v127;
        v120 = v109;
LABEL_107:
        if (v120)
        {
          goto LABEL_193;
        }

        v128 = &v7[16 * v98];
        v130 = *(v128 + 4);
        v129 = *(v128 + 5);
        v109 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v109)
        {
          goto LABEL_196;
        }

        if (v131 < v119)
        {
          goto LABEL_3;
        }

LABEL_114:
        v136 = v98 - 1;
        if (v98 - 1 >= v95)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if (!*a3)
        {
          goto LABEL_209;
        }

        v137 = *&v7[16 * v136 + 32];
        v138 = *&v7[16 * v98 + 40];
        sub_1D31752F4((*a3 + 8 * v137), (*a3 + 8 * *&v7[16 * v98 + 32]), (*a3 + 8 * v138), v97);
        if (v213)
        {
          goto LABEL_185;
        }

        if (v138 < v137)
        {
          goto LABEL_187;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D31756C8(v7);
        }

        if (v136 >= *(v7 + 2))
        {
          goto LABEL_188;
        }

        v139 = &v7[16 * v136];
        *(v139 + 4) = v137;
        *(v139 + 5) = v138;
        v231 = v7;
        sub_1D317563C(v98);
        v7 = v231;
        v95 = *(v231 + 2);
        if (v95 <= 1)
        {
          goto LABEL_3;
        }
      }

      v103 = &v7[16 * v95 + 32];
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_189;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_190;
      }

      v110 = &v7[16 * v95];
      v112 = *v110;
      v111 = *(v110 + 1);
      v109 = __OFSUB__(v111, v112);
      v113 = v111 - v112;
      if (v109)
      {
        goto LABEL_192;
      }

      v109 = __OFADD__(v101, v113);
      v114 = v101 + v113;
      if (v109)
      {
        goto LABEL_195;
      }

      if (v114 >= v106)
      {
        v132 = &v7[16 * v98 + 32];
        v134 = *v132;
        v133 = *(v132 + 1);
        v109 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v109)
        {
          goto LABEL_199;
        }

        if (v101 < v135)
        {
          v98 = v95 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

LABEL_3:
    v4 = a3[1];
    if (v6 >= v4)
    {
      goto LABEL_175;
    }
  }

  v207 = v7;
  v209 = v90;
  v140 = *a3;
  v214 = *a3;
LABEL_125:
  v212 = v91;
  while (1)
  {
    v141 = *(v140 + 8 * v91);
    v142 = *(v140 + 8 * (v91 - 1));
    v143 = v141[7];
    v227 = v141[6];
    v228 = v143;
    v144 = v141[5];
    v225 = v141[4];
    v226 = v144;
    v145 = *(v225 + 16);
    v217 = v91 - 1;
    v219 = v91;
    if (!v145)
    {

      v148 = INFINITY;
      goto LABEL_147;
    }

    if (v145 > 3)
    {
      v146 = v145 & 0x7FFFFFFFFFFFFFFCLL;
      v149 = (v225 + 48);
      v147 = 0.0;
      v150 = v145 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v147 = v147 + *(v149 - 2) + *(v149 - 1) + *v149 + v149[1];
        v149 += 4;
        v150 -= 4;
      }

      while (v150);
      if (v145 == v146)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v146 = 0;
      v147 = 0.0;
    }

    v151 = v145 - v146;
    v152 = (v225 + 8 * v146 + 32);
    do
    {
      v153 = *v152++;
      v147 = v147 + v153;
      --v151;
    }

    while (v151);
LABEL_135:
    v154 = (v225 + 32);
    v155 = v147 / v145;

    sub_1D314B39C(&v225, &v221);
    *&v221 = v5;
    sub_1D314B424(0, v145, 0);
    v156 = v221;
    v157 = *(v221 + 16);
    v158 = v157 + 1;
    v159 = v145;
    v160 = v157;
    do
    {
      v161 = v158;
      v162 = *v154;
      *&v221 = v156;
      v163 = *(v156 + 24);
      if (v160 >= v163 >> 1)
      {
        sub_1D314B424((v163 > 1), v160 + 1, 1);
        v156 = v221;
      }

      *(v156 + 16) = v160 + 1;
      *(v156 + 8 * v160 + 32) = (v162 - v155) * (v162 - v155);
      ++v154;
      v158 = v161 + 1;
      ++v160;
      --v159;
    }

    while (v159);
    v164 = v145 + v157;
    if (v145 + v157 > 3)
    {
      v165 = v164 & 0xFFFFFFFFFFFFFFFCLL;
      v167 = (v156 + 48);
      v166 = 0.0;
      v168 = v164 & 0xFFFFFFFFFFFFFFFCLL;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v166 = v166 + *(v167 - 2) + *(v167 - 1) + *v167 + v167[1];
        v167 += 4;
        v168 -= 4;
      }

      while (v168);
      if (v164 == v165)
      {
        goto LABEL_146;
      }
    }

    else
    {
      v165 = 0;
      v166 = 0.0;
      v5 = MEMORY[0x1E69E7CC0];
    }

    v169 = v161 - v165;
    v170 = (v156 + 8 * v165 + 32);
    do
    {
      v171 = *v170++;
      v166 = v166 + v171;
      --v169;
    }

    while (v169);
LABEL_146:

    sub_1D314B3D4(&v225);
    v148 = v166 / v145 + *(&v225 + 1);
LABEL_147:
    v172 = v142[7];
    v223 = v142[6];
    v224 = v172;
    v173 = v142[5];
    v221 = v142[4];
    v222 = v173;
    v174 = *(v221 + 16);
    if (!v174)
    {

      v140 = v214;
      v8 = v215;
      if (v148 == INFINITY)
      {
        goto LABEL_124;
      }

      goto LABEL_169;
    }

    if (v174 > 3)
    {
      v175 = v174 & 0x7FFFFFFFFFFFFFFCLL;
      v177 = (v221 + 48);
      v176 = 0.0;
      v178 = v174 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v176 = v176 + *(v177 - 2) + *(v177 - 1) + *v177 + v177[1];
        v177 += 4;
        v178 -= 4;
      }

      while (v178);
      if (v174 == v175)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v175 = 0;
      v176 = 0.0;
    }

    v179 = v174 - v175;
    v180 = (v221 + 8 * v175 + 32);
    do
    {
      v181 = *v180++;
      v176 = v176 + v181;
      --v179;
    }

    while (v179);
LABEL_157:
    v182 = (v221 + 32);
    v183 = v176 / v174;
    sub_1D314B39C(&v221, v220);
    v220[0] = v5;
    sub_1D314B424(0, v174, 0);
    v184 = v220[0];
    v185 = *(v220[0] + 16);
    v186 = v185 + 1;
    v187 = v174;
    v188 = v185;
    do
    {
      v189 = v186;
      v190 = *v182;
      v220[0] = v184;
      v191 = *(v184 + 24);
      if (v188 >= v191 >> 1)
      {
        sub_1D314B424((v191 > 1), v188 + 1, 1);
        v184 = v220[0];
      }

      *(v184 + 16) = v188 + 1;
      *(v184 + 8 * v188 + 32) = (v190 - v183) * (v190 - v183);
      ++v182;
      v186 = v189 + 1;
      ++v188;
      --v187;
    }

    while (v187);
    v192 = v174 + v185;
    if (v174 + v185 <= 3)
    {
      v193 = 0;
      v194 = 0.0;
      v5 = MEMORY[0x1E69E7CC0];
      v8 = v215;
LABEL_166:
      v197 = v189 - v193;
      v198 = (v184 + 8 * v193 + 32);
      do
      {
        v199 = *v198++;
        v194 = v194 + v199;
        --v197;
      }

      while (v197);
      goto LABEL_168;
    }

    v193 = v192 & 0xFFFFFFFFFFFFFFFCLL;
    v195 = (v184 + 48);
    v194 = 0.0;
    v196 = v192 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = MEMORY[0x1E69E7CC0];
    v8 = v215;
    do
    {
      v194 = v194 + *(v195 - 2) + *(v195 - 1) + *v195 + v195[1];
      v195 += 4;
      v196 -= 4;
    }

    while (v196);
    if (v192 != v193)
    {
      goto LABEL_166;
    }

LABEL_168:

    sub_1D314B3D4(&v221);

    v140 = v214;
    if (v148 >= v194 / v174 + *(&v221 + 1))
    {
      goto LABEL_124;
    }

LABEL_169:
    if (!v140)
    {
      break;
    }

    v200 = *(v140 + 8 * v219);
    *(v140 + 8 * v219) = *(v140 + 8 * v217);
    *(v140 + 8 * v217) = v200;
    if (v217 == v8)
    {
LABEL_124:
      v91 = v212 + 1;
      v6 = v209;
      if (v212 + 1 != v209)
      {
        goto LABEL_125;
      }

      v7 = v207;
      if (v209 < v8)
      {
        goto LABEL_202;
      }

      goto LABEL_74;
    }

    v91 = v217;
  }

  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}

uint64_t sub_1D31752F4(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;
      v20 = *(*v13 + 80);
      v51 = *(*v13 + 64);
      v52 = v20;
      v21 = *(v18 + 112);
      v53 = *(v18 + 96);
      v54 = v21;

      sub_1D314B39C(&v51, v46);
      sub_1D314A9DC();
      v23 = v22;
      sub_1D314B3D4(&v51);
      v24 = v19[5];
      v47 = v19[4];
      v48 = v24;
      v25 = v19[7];
      v49 = v19[6];
      v50 = v25;
      sub_1D314B39C(&v47, v46);
      sub_1D314A9DC();
      v27 = v26;
      sub_1D314B3D4(&v47);

      if (v23 < v27)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13;
    v13 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v28 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v28;
  }

  v15 = a2;
  v14 = &v4[8 * v12];
  if (v10 >= 8 && a2 > v6)
  {
    v55 = v4;
    do
    {
      v45 = v15;
      v29 = v15 - 8;
      v5 -= 8;
      v30 = v14;
      while (1)
      {
        v31 = v5 + 8;
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = v29;
        v34 = *v29;
        v35 = v32[5];
        v51 = v32[4];
        v52 = v35;
        v36 = v32[7];
        v53 = v32[6];
        v54 = v36;

        sub_1D314B39C(&v51, v46);
        sub_1D314A9DC();
        v38 = v37;
        sub_1D314B3D4(&v51);
        v39 = v34[5];
        v47 = v34[4];
        v48 = v39;
        v40 = v34[7];
        v49 = v34[6];
        v50 = v40;
        sub_1D314B39C(&v47, v46);
        sub_1D314A9DC();
        v42 = v41;
        sub_1D314B3D4(&v47);

        if (v38 < v42)
        {
          break;
        }

        if (v31 != v14)
        {
          *v5 = *v30;
        }

        v5 -= 8;
        v14 = v30;
        v29 = v33;
        if (v30 <= v55)
        {
          v14 = v30;
          v15 = v45;
          v4 = v55;
          goto LABEL_36;
        }
      }

      v43 = v33;
      if (v31 != v45)
      {
        *v5 = *v33;
      }

      v4 = v55;
      if (v14 <= v55)
      {
        break;
      }

      v15 = v43;
    }

    while (v43 > v6);
    v15 = v43;
  }

LABEL_36:
  if (v15 != v4 || v15 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v15, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1D317563C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D31756C8(v3);
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

uint64_t sub_1D31756DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D3277670();

    if (v8)
    {

      type metadata accessor for ConnectedSearchNode();
      swift_dynamicCast();
      result = 0;
      *a1 = v27;
    }

    else
    {
      result = sub_1D3277660();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v23 = sub_1D3175A30(v7, result + 1);
        v24 = *(v23 + 16);
        if (*(v23 + 24) <= v24)
        {
          sub_1D3176094(v24 + 1);
        }

        sub_1D31763B8(v25, v23);

        *v3 = v23;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  sub_1D3277980();
  sub_1D314AC84();
  v10 = sub_1D32779B0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v2;

    sub_1D31768A8(v22, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v28;
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v18 = *(*(*(v6 + 48) + 8 * v12) + 16);
    if (!v18)
    {
      break;
    }

    v19 = [v18 muid];
    v20 = *(a2 + 16);
    if (!v20)
    {

      goto LABEL_14;
    }

    v14 = v19;
LABEL_10:
    v15 = v20;
    v16 = [v15 muid];

    if (v18)
    {
      v17 = v14 == v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_27;
    }

LABEL_14:
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v20 = *(a2 + 16);

  if (v20)
  {
    v14 = 0;
    goto LABEL_10;
  }

LABEL_27:

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1D3175990(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1D3277660();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_1D3175A30(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1D3175D20(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3175A30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
    v2 = sub_1D32776C0();
    v29 = v2;
    sub_1D3277650();
    if (sub_1D3277680())
    {
      v3 = type metadata accessor for ConnectedSearchNode();
      v4 = MEMORY[0x1E69E7C98];
      v5 = &qword_1EC75C000;
      v6 = qword_1EC760870;
      do
      {
        swift_dynamicCast();
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_1D3176094(v8 + 1);
        }

        v2 = v29;
        sub_1D3277980();
        v9 = *(v28 + 16);
        if (v9)
        {
          MEMORY[0x1D38B4860]([v9 muid]);
        }

        else
        {
          if (*v5 != -1)
          {
            swift_once();
          }

          v10 = sub_1D3276F80();
          __swift_project_value_buffer(v10, v6);
          v11 = sub_1D3276F60();
          v12 = sub_1D3277390();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = v3;
            v14 = v6;
            v15 = v4;
            v16 = v5;
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_1D311E000, v11, v12, "Tried to hash a MapMatcherConnectivityNode with no road", v17, 2u);
            v18 = v17;
            v5 = v16;
            v4 = v15;
            v6 = v14;
            v3 = v13;
            MEMORY[0x1D38B6000](v18, -1, -1);
          }
        }

        result = sub_1D32779B0();
        v20 = v29 + 56;
        v21 = -1 << *(v29 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v29 + 56 + 8 * (v22 >> 6))) != 0)
        {
          v7 = __clz(__rbit64((-1 << v22) & ~*(v29 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = 0;
          v25 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v25 && (v24 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            v27 = *(v20 + 8 * v23);
          }

          while (v27 == -1);
          v7 = __clz(__rbit64(~v27)) + (v23 << 6);
        }

        *(v20 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
        *(*(v29 + 48) + 8 * v7) = v28;
        ++*(v29 + 16);
      }

      while (sub_1D3277680());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D3175D20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1D3277980();
  sub_1D314AC84();
  v7 = sub_1D32779B0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v42 = v3;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    v18 = 0;
LABEL_16:
    v19 = 1;
    goto LABEL_19;
  }

  v40 = a2;
  v10 = ~v8;
  while (1)
  {
    v15 = *(*(*(v6 + 48) + 8 * v9) + 16);
    if (!v15)
    {
      break;
    }

    v16 = [v15 muid];
    v17 = *(a1 + 16);
    if (!v17)
    {

      goto LABEL_8;
    }

    v11 = v16;
LABEL_4:
    v12 = v17;
    v13 = [v12 muid];

    if (v15)
    {
      v14 = v11 == v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_8:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      v18 = 0;
      a2 = v40;
      goto LABEL_16;
    }
  }

  v17 = *(a1 + 16);

  if (v17)
  {
    v11 = 0;
    goto LABEL_4;
  }

LABEL_18:
  v19 = 0;
  v18 = 1;
  a2 = v40;
LABEL_19:
  v20 = *(v6 + 16);
  v21 = v20 + v19;
  if (__OFADD__(v20, v19))
  {
    __break(1u);
    goto LABEL_51;
  }

  v22 = *(v6 + 24);
  if (v22 >= v21 && (a2 & 1) != 0)
  {
    if (v18)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (a2)
  {
    v41 = v18;
    sub_1D3176094(v21);
  }

  else
  {
    if (v22 >= v21)
    {
      sub_1D317645C();
      if (v18)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    v41 = v18;
    sub_1D31765AC(v21);
  }

  v23 = *v3;
  sub_1D3277980();
  sub_1D314AC84();
  v24 = sub_1D32779B0();
  v25 = -1 << *(v23 + 32);
  v9 = v24 & ~v25;
  if (((*(v23 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_43:
    v3 = v42;
    if (v41)
    {
      goto LABEL_52;
    }

LABEL_44:
    v34 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v34 + 48) + 8 * v9) = a1;
    v35 = *(v34 + 16);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      result = 0;
      *(v34 + 16) = v37;
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v26 = ~v25;
  while (1)
  {
    v31 = *(*(*(v23 + 48) + 8 * v9) + 16);
    if (!v31)
    {
      break;
    }

    v32 = [v31 muid];
    v33 = *(a1 + 16);
    if (!v33)
    {

      goto LABEL_37;
    }

    v27 = v32;
LABEL_33:
    v28 = v33;
    v29 = [v28 muid];

    if (v31)
    {
      v30 = v27 == v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      goto LABEL_47;
    }

LABEL_37:
    v9 = (v9 + 1) & v26;
    if (((*(v23 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v33 = *(a1 + 16);

  if (v33)
  {
    v27 = 0;
    goto LABEL_33;
  }

LABEL_47:
  v3 = v42;
  if ((v41 & 1) == 0)
  {
LABEL_52:
    type metadata accessor for ConnectedSearchNode();
    result = sub_1D3277910();
    __break(1u);
    return result;
  }

LABEL_48:
  v39 = *(*v3 + 48);
  result = *(v39 + 8 * v9);
  *(v39 + 8 * v9) = a1;
  return result;
}

void sub_1D3176094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  v4 = sub_1D32776B0();
  v5 = v4;
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
    v12 = v4 + 56;
    v34 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D3277980();
      v18 = *(v17 + 16);
      if (v18)
      {
        MEMORY[0x1D38B4860]([v18 muid]);
      }

      else
      {
        if (qword_1EC75C000 != -1)
        {
          swift_once();
        }

        v19 = sub_1D3276F80();
        __swift_project_value_buffer(v19, qword_1EC760870);
        v20 = sub_1D3276F60();
        v21 = sub_1D3277390();
        if (os_log_type_enabled(v20, v21))
        {
          v33 = v2;
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1D311E000, v20, v21, "Tried to hash a MapMatcherConnectivityNode with no road", v22, 2u);
          v23 = v22;
          v2 = v33;
          MEMORY[0x1D38B6000](v23, -1, -1);
        }

        v3 = v34;
      }

      v24 = sub_1D32779B0();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1D31763B8(uint64_t a1, uint64_t a2)
{
  sub_1D3277980();
  sub_1D314AC84();
  sub_1D32779B0();
  result = sub_1D3277640();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D317645C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  v2 = *v0;
  v3 = sub_1D32776A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_1D31765AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  v4 = sub_1D32776B0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    v34 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D3277980();
      v18 = *(v17 + 16);
      if (v18)
      {

        MEMORY[0x1D38B4860]([v18 muid]);
      }

      else
      {
        v19 = qword_1EC75C000;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_1D3276F80();
        __swift_project_value_buffer(v20, qword_1EC760870);
        v21 = sub_1D3276F60();
        v22 = sub_1D3277390();
        if (os_log_type_enabled(v21, v22))
        {
          v33 = v2;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1D311E000, v21, v22, "Tried to hash a MapMatcherConnectivityNode with no road", v23, 2u);
          v24 = v23;
          v2 = v33;
          MEMORY[0x1D38B6000](v24, -1, -1);
        }

        v3 = v34;
      }

      v25 = sub_1D32779B0();
      v26 = -1 << *(v5 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
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

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_31:

    *v2 = v5;
  }
}

void sub_1D31768A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D3176094(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1D317645C();
        goto LABEL_21;
      }

      sub_1D31765AC(v6 + 1);
    }

    v8 = *v3;
    sub_1D3277980();
    sub_1D314AC84();
    v9 = sub_1D32779B0();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      type metadata accessor for ConnectedSearchNode();
      do
      {
        v16 = *(*(*(v8 + 48) + 8 * a2) + 16);
        if (v16)
        {

          v17 = [v16 muid];
          v18 = *(a1 + 16);
          if (!v18)
          {

            goto LABEL_15;
          }

          v12 = v17;
        }

        else
        {
          v18 = *(a1 + 16);

          if (!v18)
          {
            goto LABEL_24;
          }

          v12 = 0;
        }

        v13 = v18;
        v14 = [v13 muid];

        if (v16)
        {
          v15 = v12 == v14;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          goto LABEL_25;
        }

LABEL_15:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_24:

LABEL_25:
    sub_1D3277910();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

uint64_t sub_1D3176AA0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 336) = a3;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D3176AC4, 0, 0);
}

void sub_1D3176AC4()
{
  if (qword_1EC75C000 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v3 = sub_1D3276F80();
  *(v0 + 288) = __swift_project_value_buffer(v3, qword_1EC760870);

  v4 = sub_1D3276F60();
  v5 = sub_1D3277370();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (!v6)
  {
    goto LABEL_16;
  }

  v2 = swift_slowAlloc();
  *v2 = 134218240;
  if (v7 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_6;
    }

LABEL_14:
    *(v2 + 4) = 0xBFF0000000000000;
    *(v2 + 12) = 2048;
    v11 = -1.0;
    goto LABEL_15;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  v1 = v7 & 0xC000000000000001;
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  {
    v9 = *(i + 16);

    *(v2 + 4) = v9;
    *(v2 + 12) = 2048;
    if (v1)
    {
      v10 = MEMORY[0x1D38B45D0](0, *(v0 + 272));
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }
    }

    v11 = *(v10 + 24);

LABEL_15:
    *(v2 + 14) = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "%f, %f similarConnectedRoads", v2, 0x16u);
    MEMORY[0x1D38B6000](v2, -1, -1);
LABEL_16:

    *(v0 + 296) = v7;
    if (*(v0 + 272) >> 62)
    {
      break;
    }

    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_31;
    }

LABEL_18:
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    *(v0 + 304) = v14;
    if (v13)
    {
      goto LABEL_32;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_23;
    }

    __break(1u);
LABEL_36:
    ;
  }

  v12 = sub_1D3277660();
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v15 = MEMORY[0x1D38B45D0]();
LABEL_23:
  v16 = sub_1D314BA78(v15, *(v0 + 336));
  *(v0 + 312) = v16;
  if (*(v16 + 2))
  {
    v17 = v16;
    [*(v16 + 2) length];
    v19 = v18 - *(v17 + 48);
    *(v17 + 48) = -v19;
    v20 = MEMORY[0x1E69E7CC0];
    *(v17 + 56) = 0;
    *(v17 + 64) = v20;

    type metadata accessor for ConnectedRoadSimilaritySearch();
    v21 = swift_task_alloc();
    *(v0 + 320) = v21;
    *v21 = v0;
    v21[1] = sub_1D3176E2C;
    v22 = *(v0 + 272);

    sub_1D3170164(v17, v22, v19);
  }

  else
  {

    v23 = *(v0 + 8);

    v23(0, 0);
  }
}

uint64_t sub_1D3176E2C(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3176F2C, 0, 0);
}

void sub_1D3176F2C()
{
  v73 = v0;
  v72[0] = sub_1D3187AD4(*(v0 + 328));
  sub_1D3173DD8(v72);
  v2 = *(v0 + 280);
  v3 = *(v0 + 272);
  v4 = v72[0];

  swift_bridgeObjectRetain_n();

  v5 = sub_1D3276F60();
  v6 = sub_1D3277370();
  v71 = v2;

  swift_bridgeObjectRelease_n();

  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_15;
  }

  v7 = *(v0 + 280);
  v3 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *v3 = 138413058;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v71 + 72);
  if (!v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = [v8 road];
  v9 = v8;
LABEL_7:
  *(v3 + 4) = v8;
  *v1 = v9;
  *(v3 + 12) = 2048;
  v10 = *(v0 + 296);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1D38B45D0](*(v0 + 304), *(v0 + 272));
    v10 = *(v0 + 296);
  }

  else
  {
  }

  v12 = *(v11 + 16);

  *(v3 + 14) = v12;
  *(v3 + 22) = 2048;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1D38B45D0](*(v0 + 304), *(v0 + 272));
  }

  else
  {
  }

  v14 = *(v0 + 312);
  v15 = *(v13 + 24);

  *(v3 + 24) = v15;
  *(v3 + 32) = 2112;
  v16 = *(v14 + 16);
  if (!v16)
  {
    goto LABEL_106;
  }

  *(v3 + 34) = v16;
  *(v1 + 8) = v16;
  v17 = v16;
  _os_log_impl(&dword_1D311E000, v5, v6, "CSS: Connected Road 5 Top Paths when routeMatch is on %@ started from %f, %f %@", v3, 0x2Au);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5B0, &unk_1D328C300);
  swift_arrayDestroy();
  MEMORY[0x1D38B6000](v1, -1, -1);
  MEMORY[0x1D38B6000](v3, -1, -1);
LABEL_15:

  LODWORD(v18) = v4 < 0 || (v4 & 0x4000000000000000) != 0;
  if (v18 == 1)
  {
    goto LABEL_91;
  }

  v19 = *(v4 + 16);
  if (v19 >= 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = *(v4 + 16);
  }

  if (v19 >= v20)
  {
    goto LABEL_23;
  }

  while (2)
  {
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v38 = MEMORY[0x1D38B45D0](0, v4);
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D328B8F0;
    *(v39 + 32) = v38;
    v72[0] = v39;

    v40 = 0;
    while (v3)
    {
      v41 = MEMORY[0x1D38B45D0](v40, v4);
LABEL_55:
      v42 = v41[4];
      v43 = v41[5];
      v44 = v41[7];
      *(v0 + 48) = v41[6];
      *(v0 + 64) = v44;
      *(v0 + 16) = v42;
      *(v0 + 32) = v43;
      sub_1D314B39C(v0 + 16, v0 + 144);

      sub_1D314A9DC();
      v46 = v45;
      sub_1D314B3D4(v0 + 16);
      v47 = v38[7];
      v49 = v38[4];
      v48 = v38[5];
      *(v0 + 112) = v38[6];
      *(v0 + 128) = v47;
      *(v0 + 80) = v49;
      *(v0 + 96) = v48;
      sub_1D314B39C(v0 + 80, v0 + 208);
      sub_1D314A9DC();
      v51 = v50;
      sub_1D314B3D4(v0 + 80);
      if (v46 > v51 + v51)
      {
        goto LABEL_63;
      }

      if (v3)
      {
        v52 = MEMORY[0x1D38B45D0](0, v4);
        if (!v72[0])
        {
          goto LABEL_104;
        }
      }

      else
      {

        if (!v72[0])
        {
          goto LABEL_104;
        }
      }

      MEMORY[0x1D38B4040](v52);
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        LODWORD(v18) = v19;
        sub_1D32771B0();
      }

      sub_1D32771D0();
      if (v1 == ++v40)
      {
LABEL_63:

        if (!*(v0 + 280))
        {
          goto LABEL_84;
        }

        goto LABEL_66;
      }
    }

    if (v40 < *(v4 + 16))
    {
      v41 = *(v4 + 8 * v40 + 32);

      goto LABEL_55;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v19 = sub_1D3277660();
    if (sub_1D3277660() < 0)
    {
      goto LABEL_105;
    }

    if (v19 >= 5)
    {
      v66 = 5;
    }

    else
    {
      v66 = v19;
    }

    if (v19 >= 0)
    {
      v20 = v66;
    }

    else
    {
      v20 = 5;
    }

    if (sub_1D3277660() < v20)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v70 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v20)
    {
      type metadata accessor for ConnectedSearchNode();
      sub_1D3277700();
      if (v20 != 1)
      {
        sub_1D3277700();
        if (v20 != 2)
        {
          sub_1D3277700();
          if (v20 != 3)
          {
            sub_1D3277700();
            if (v20 != 4)
            {
              sub_1D3277700();
              if (v20 != 5)
              {
                sub_1D3277700();
                sub_1D3277700();
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (!v18)
  {
    v24 = 0;
    v22 = v4 + 32;
    v28 = v20;
    v27 = v20 <= 0;
    if (!v20)
    {
      goto LABEL_41;
    }

LABEL_34:
    v67 = v18;
    v68 = v19;
    v69 = v4;
    if (!v27)
    {
      swift_unknownObjectRetain();
      v29 = v22 + 8 * v24;
      do
      {
        swift_retain_n();
        v36 = sub_1D3276F60();
        v37 = sub_1D3277370();

        if (os_log_type_enabled(v36, v37))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v72[0] = v31;
          *v30 = 136315138;

          v32 = sub_1D314AD9C();
          v34 = v33;

          v35 = sub_1D312BA30(v32, v34, v72);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_1D311E000, v36, v37, "- %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1D38B6000](v31, -1, -1);
          MEMORY[0x1D38B6000](v30, -1, -1);
        }

        else
        {
        }

        v29 += 8;
        --v28;
      }

      while (v28);
      swift_unknownObjectRelease();
      v19 = v68;
      v4 = v69;
      LODWORD(v18) = v67;
      v72[0] = 0;
      if (v67)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  sub_1D32777E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v26 >>= 1;
  v28 = v26 - v24;
  v27 = v26 <= v24;
  if (v26 != v24)
  {
    goto LABEL_34;
  }

LABEL_41:
  v72[0] = 0;
  if (v18)
  {
LABEL_42:
    v1 = sub_1D3277660();
    goto LABEL_45;
  }

LABEL_44:
  v1 = *(v4 + 16);
LABEL_45:
  v3 = v70;
  if (v1 >= 1)
  {
    if (!v19)
    {
      goto LABEL_100;
    }

    if (!v70)
    {
      if (*(v4 + 16))
      {
        v38 = *(v4 + 32);

        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  if (!*(v0 + 280))
  {
LABEL_84:

    swift_unknownObjectRelease();
    v58 = 0;
    goto LABEL_85;
  }

LABEL_66:
  v53 = *(v71 + 72);
  if (!v53)
  {
    goto LABEL_84;
  }

  v54 = [v53 road];
  [v54 muid];

  if (!v19)
  {
    goto LABEL_84;
  }

  v55 = v19;
  v1 = 0;
  while (2)
  {
    if (v3)
    {
      v57 = v4;
      v58 = MEMORY[0x1D38B45D0](v1, v4);
      v59 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v1 >= *(v4 + 16))
      {
        goto LABEL_90;
      }

      v57 = v4;
      v58 = *(v4 + 8 * v1 + 32);

      v59 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v60 = *(v58 + 16);
    if (v60)
    {
      v61 = [*(v58 + 16) muid];
      v62 = *(v71 + 72);
      if (!v62)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v62 = *(v71 + 72);
      if (!v62)
      {
        break;
      }

      v61 = 0;
    }

    v18 = [v62 road];
    v63 = [v18 muid];

    if (!v60 || v61 != v63)
    {
LABEL_69:

      ++v1;
      v56 = v59 == v55;
      v4 = v57;
      v3 = v70;
      if (v56)
      {
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  swift_unknownObjectRelease();

LABEL_85:
  v64 = v72[0];
  v65 = *(v0 + 8);

  v65(v64, v58);
}

unint64_t sub_1D3177870()
{
  result = qword_1EC75CBA0;
  if (!qword_1EC75CBA0)
  {
    type metadata accessor for ConnectedSearchNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CBA0);
  }

  return result;
}

uint64_t sub_1D31778D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D3152F1C;

  return sub_1D31731E0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1D31779B4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D3125778;

  return sub_1D3173BD8(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1D3177A84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3125778;

  return sub_1D3151B40(a1, v4);
}

uint64_t sub_1D3177B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D314B444(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D314B444((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D317F7E4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D3177C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D314B444(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1D3166AC0(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D314B444((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D317F7E4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1D3177D44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D3277660();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D314B444(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1D38B45D0](i, a1);
        sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D314B444((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D317F7E4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D314B444((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D317F7E4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1D3177F40()
{
  v1 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Starting timed updates.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___MNETAUpdateRequester__initialRequestDelay);

  sub_1D313489C(v6);
}

void sub_1D3178038()
{
  v1 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Stopping timed updates.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  sub_1D31781A0();
  v6 = OBJC_IVAR___MNETAUpdateRequester__requestTimer;
  v7 = *(v1 + OBJC_IVAR___MNETAUpdateRequester__requestTimer);
  if (v7 && v7[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
  {
    v7[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
    v9 = v7;
    swift_getObjectType();
    v8 = v9;
    sub_1D3277440();

    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

void sub_1D31781A0()
{
  v1 = OBJC_IVAR___MNETAUpdateRequester__pendingRequest;
  v2 = *(v0 + OBJC_IVAR___MNETAUpdateRequester__pendingRequest);
  if (v2)
  {
    v3 = v2;
    if ([v3 hasXpcUuid])
    {
      v4 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *&v5[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = 0;
      v9.receiver = v5;
      v9.super_class = v4;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      [v7 cancelRequest_];
    }

    else
    {
    }
  }

  v8 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1D3178268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D317828C, 0, 0);
}

uint64_t sub_1D317828C()
{
  v15 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v1 = sub_1D3276F80();
  __swift_project_value_buffer(v1, qword_1EC760740);
  v2 = sub_1D3276F60();
  v3 = sub_1D32773B0();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_23;
  }

  v4 = v0[3];
  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v14 = v6;
  *v5 = 136315138;
  if (v4 <= 2)
  {
    switch(v4)
    {
      case 0:
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E55;
        goto LABEL_22;
      case 1:
        v7 = 0xED00006C61767265;
        v8 = 0x746E4964656D6954;
        goto LABEL_22;
      case 2:
        v8 = 0xD000000000000014;
        v7 = 0x80000001D32902E0;
LABEL_22:
        v10 = sub_1D312BA30(v8, v7, &v14);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_1D311E000, v2, v3, "Sending immediate update with reason: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x1D38B6000](v6, -1, -1);
        MEMORY[0x1D38B6000](v5, -1, -1);
LABEL_23:

        v11 = swift_task_alloc();
        v0[6] = v11;
        *v11 = v0;
        v11[1] = sub_1D31785B4;
        v12 = v0[4];
        v13 = v0[3];

        return sub_1D31786B0(v13, v12, 0, 1);
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v7 = 0x80000001D32902B0;
        v8 = 0xD000000000000020;
      }

      else
      {
        v7 = 0x80000001D3290280;
        v8 = 0xD000000000000027;
      }

      goto LABEL_22;
    }

    if (v4 == 5)
    {
      v7 = 0x80000001D3290260;
      v8 = 0xD000000000000017;
      goto LABEL_22;
    }

    if (v4 == 6)
    {
      v7 = 0xED00006B63616279;
      v8 = 0x616C506563617254;
      goto LABEL_22;
    }
  }

  v0[2] = v0[3];

  return sub_1D3277900();
}

uint64_t sub_1D31785B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D31786B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 600) = v4;
  *(v5 + 872) = a4;
  *(v5 + 592) = a3;
  *(v5 + 584) = a2;
  *(v5 + 576) = a1;
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  sub_1D3276A60();
  *(v5 + 608) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5C8, &unk_1D328B900);
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  v8 = sub_1D3276D30();
  *(v5 + 632) = v8;
  *(v5 + 640) = *(v8 - 8);
  *(v5 + 648) = swift_task_alloc();
  v9 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  *(v5 + 656) = v9;
  *(v5 + 664) = *(v9 - 8);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D312CEB4, 0, 0);
}

uint64_t sub_1D3178870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[65] = v4;
  v5[66] = a1;
  v5[67] = a2;
  v5[68] = a3;
  v5[69] = a4;
  v5[94] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D3178984, 0, 0);
}

uint64_t sub_1D3178984()
{
  v1 = v0[94];
  if (v1)
  {
    v2 = v0[66];
    v3 = v0[68];
    v4 = v0[69];
    v0[95] = v4;
    v0[96] = v3;
    v0[97] = v2;
    v5 = v1;

    v6 = v4;
    v7 = swift_task_alloc();
    v0[98] = v7;
    *v7 = v0;
    v7[1] = sub_1D3178DF4;
    v8 = v0[85];

    return sub_1D317CCB8(v8, v2, v5, v3, v6);
  }

  else
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v10 = sub_1D3276F80();
    __swift_project_value_buffer(v10, qword_1EC760740);
    v11 = sub_1D3276F60();
    v12 = sub_1D3277390();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D311E000, v11, v12, "Not sending ETA request because we were unable to create an ETA route.", v13, 2u);
      MEMORY[0x1D38B6000](v13, -1, -1);
    }

    v14 = v0[87];
    v15 = v0[85];
    v16 = v0[82];
    v17 = v0[72];

    sub_1D317EF40();
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 3;
    sub_1D3276D10();
    sub_1D3276A30();

    *v15 = v17;
    v20 = (v15 + v16[6]);
    *v20 = 0u;
    v20[1] = 0u;
    *(v15 + v16[7]) = 0;
    *(v15 + v16[8]) = v18;
    v21 = v0[85];
    v22 = v0[82];
    v23 = *(v21 + *(v22 + 32));
    v0[99] = v23;
    if (v23 && (v24 = (v21 + *(v22 + 24)), v25 = v24[1], (v0[100] = v25) != 0))
    {
      v26 = v24[3];
      v0[101] = v26;
      v27 = v24[2];
      v0[102] = v27;
      v28 = *v24;
      v29 = v23;
      sub_1D3130A0C(v28, v25, v27, v26);
      v30 = swift_task_alloc();
      v0[103] = v30;
      *v30 = v0;
      v30[1] = sub_1D31336A0;
      v31 = v0[78];

      return sub_1D317AEE8(v31, v28, v25, v27, v26, v23);
    }

    else
    {
      v32 = v0[75];
      v33 = sub_1D312F05C(v21);
      v0[104] = v33;
      v34 = swift_allocObject();
      v0[105] = v34;
      *(v34 + 16) = v32;
      *(v34 + 24) = v33;
      v35 = v33;
      v36 = v32;
      v37 = MNNavigationQueue();
      v0[106] = v37;
      if (v37)
      {
        v45 = v37;
        v46 = swift_task_alloc();
        v0[107] = v46;
        v46[2] = v45;
        v46[3] = sub_1D31311B0;
        v46[4] = v34;
        v37 = swift_task_alloc();
        v0[108] = v37;
        *v37 = v0;
        v37[1] = sub_1D317918C;
        v42 = sub_1D3130CE8;
        v41 = 0x80000001D32903A0;
        v44 = MEMORY[0x1E69E7CA8] + 8;
        v38 = 0;
        v39 = 0;
        v40 = 0xD000000000000010;
        v43 = v46;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DDE0](v37, v38, v39, v40, v41, v42, v43, v44);
    }
  }
}

uint64_t sub_1D3178DF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D3178EF0, 0, 0);
}

uint64_t sub_1D3178EF0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[87];

  sub_1D312E1FC(v1, v4, v2, v3);

  v6 = v0[85];
  v7 = v0[82];
  v8 = *(v6 + *(v7 + 32));
  v0[99] = v8;
  if (v8 && (v9 = (v6 + *(v7 + 24)), v10 = v9[1], (v0[100] = v10) != 0))
  {
    v11 = v9[3];
    v0[101] = v11;
    v12 = v9[2];
    v0[102] = v12;
    v13 = *v9;
    v14 = v8;
    sub_1D3130A0C(v13, v10, v12, v11);
    v15 = swift_task_alloc();
    v0[103] = v15;
    *v15 = v0;
    v15[1] = sub_1D31336A0;
    v16 = v0[78];

    return sub_1D317AEE8(v16, v13, v10, v12, v11, v8);
  }

  else
  {
    v18 = v0[75];
    v19 = sub_1D312F05C(v6);
    v0[104] = v19;
    v20 = swift_allocObject();
    v0[105] = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = v19;
    v22 = v18;
    v23 = MNNavigationQueue();
    v0[106] = v23;
    if (v23)
    {
      v31 = v23;
      v32 = swift_task_alloc();
      v0[107] = v32;
      v32[2] = v31;
      v32[3] = sub_1D31311B0;
      v32[4] = v20;
      v23 = swift_task_alloc();
      v0[108] = v23;
      *v23 = v0;
      v23[1] = sub_1D317918C;
      v28 = sub_1D3130CE8;
      v27 = 0x80000001D32903A0;
      v30 = MEMORY[0x1E69E7CA8] + 8;
      v24 = 0;
      v25 = 0;
      v26 = 0xD000000000000010;
      v29 = v32;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1D317918C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D31792A4, 0, 0);
}

uint64_t sub_1D31792A4()
{
  v1 = v0[106];
  v2 = v0[104];
  v3 = v0[86];
  v4 = v0[85];

  sub_1D3125FBC((v0 + 20), &qword_1EC75C5D8, &qword_1D328B950);
  sub_1D312EB88(v4);
  v5 = v0[104];

  v6 = v0[1];

  return v6(v5);
}

id ETAUpdateRequester.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___MNETAUpdateRequester__requestTimer];
  if (v2)
  {
    v3 = qword_1EC75BE50;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = sub_1D3276F60();
    v7 = sub_1D3277390();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      MEMORY[0x1D38B6000](v8, -1, -1);
    }

    if (v4[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
    {
      v4[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
      swift_getObjectType();
      sub_1D3277440();
    }
  }

  sub_1D31781A0();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ETAUpdateRequester();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

id ETAUpdateRequester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D3179654(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v6 = sub_1D3276F80();
    __swift_project_value_buffer(v6, qword_1EC760740);
    v7 = sub_1D3276F60();
    v8 = sub_1D3277380();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, v8, "Timer fired.", v9, 2u);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    v10 = sub_1D3277280();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v5;
    sub_1D314F750(0, 0, v3, &unk_1D328CCA0, v11);
  }

  else
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v12 = sub_1D3276F80();
    __swift_project_value_buffer(v12, qword_1EC760740);
    v13 = sub_1D3276F60();
    v14 = sub_1D32773B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, v13, v14, "Timer fired but ETAUpdateRequester was deinitialized already. Calling stopTimedUpdates() is recommended.", v15, 2u);
      MEMORY[0x1D38B6000](v15, -1, -1);
    }
  }
}

uint64_t sub_1D31798E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = a4;
  *(v4 + 16) = 0u;
  v5 = swift_task_alloc();
  *(v4 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_1D3133A3C;

  return sub_1D31786B0(1, v4 + 16, 0x4062C00000000000, 0);
}

uint64_t sub_1D31799A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 640) = a4;
  *(v4 + 632) = a3;
  *(v4 + 624) = a2;
  *(v4 + 616) = a1;
  *(v4 + 784) = *a3;
  *(v4 + 648) = *(a3 + 8);
  *(v4 + 664) = *(a3 + 24);
  *(v4 + 799) = *(a3 + 32);
  *(v4 + 792) = *(a3 + 33);
  *(v4 + 795) = *(a3 + 36);
  v5 = *(a3 + 56);
  *(v4 + 672) = *(a3 + 40);
  *(v4 + 688) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D3179A14, 0, 0);
}

uint64_t sub_1D3179A14()
{
  v37 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 704) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 648);
    if (v2)
    {
      v4 = *(v0 + 672);
      v3 = *(v0 + 688);
      v5 = *(v0 + 664);
      v6 = *(v0 + 656);
      v7 = *(v0 + 799);
      v8 = *(v0 + 784);
      *(v0 + 88) = v8;
      *(v0 + 96) = v2;
      *(v0 + 104) = v6;
      *(v0 + 112) = v5;
      *(v0 + 120) = v7;
      *(v0 + 121) = *(v0 + 792);
      *(v0 + 124) = *(v0 + 795);
      v9 = v8;
      *(v0 + 128) = v4;
      *(v0 + 144) = v3;
LABEL_4:
      v10 = *(v0 + 632);
      *(v0 + 376) = v9;
      *(v0 + 384) = v2;
      *(v0 + 392) = v6;
      *(v0 + 400) = v5;
      *(v0 + 408) = v7 & 1;
      *(v0 + 416) = v4;
      *(v0 + 432) = v3;
      v11 = *(v0 + 392);
      *(v0 + 16) = *(v0 + 376);
      *(v0 + 32) = v11;
      v12 = *(v0 + 424);
      *(v0 + 48) = *(v0 + 408);
      *(v0 + 64) = v12;
      *(v0 + 80) = *(v0 + 440);
      sub_1D312601C(v10, v0 + 448, &qword_1EC75C5D8, &qword_1D328B950);
      sub_1D312601C(v10, v0 + 520, &qword_1EC75C5D8, &qword_1D328B950);
      v13 = swift_task_alloc();
      *(v0 + 712) = v13;
      *v13 = v0;
      v13[1] = sub_1D3179DCC;
      v14 = *(v0 + 640);

      return sub_1D317A34C(v0 + 16, v14);
    }

    v16 = Strong;
    v17 = Strong + OBJC_IVAR___MNETAUpdateRequester_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v0 + 640);
      v19 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(&v34, v16, v18, ObjectType, v19);
      swift_unknownObjectRelease();
      v2 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        v32 = *&v36[8];
        v33 = *&v36[24];
        v5 = *(&v35 + 1);
        v6 = v35;
        v9 = v34;
        v7 = v36[0];
        v21 = v35;
        v22 = *&v36[16];
        *(v0 + 264) = *v36;
        *(v0 + 280) = v22;
        *(v0 + 296) = *&v36[32];
        *(v0 + 232) = v34;
        *(v0 + 248) = v21;
        sub_1D317F4C4(v0 + 232, v0 + 304);
        v23 = v34;
        *(v0 + 104) = v35;
        v24 = *&v36[16];
        *(v0 + 120) = *v36;
        *(v0 + 136) = v24;
        *(v0 + 152) = *&v36[32];
        *(v0 + 88) = v23;
        v4 = v32;
        v3 = v33;
        goto LABEL_4;
      }

      v25 = *&v36[16];
      *(v0 + 192) = *v36;
      *(v0 + 208) = v25;
      *(v0 + 224) = *&v36[32];
      v26 = v35;
      *(v0 + 160) = v34;
      *(v0 + 176) = v26;
    }

    else
    {
      *(v0 + 224) = 0;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v27 = sub_1D3276F80();
    __swift_project_value_buffer(v27, qword_1EC760740);
    v28 = sub_1D3276F60();
    v29 = sub_1D3277390();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D311E000, v28, v29, "Aborting ETA update request because we have no navigation info.", v30, 2u);
      MEMORY[0x1D38B6000](v30, -1, -1);
    }

    sub_1D3125FBC(v0 + 160, &qword_1EC75C5D8, &qword_1D328B950);
  }

  v31 = *(v0 + 8);

  return v31(0, 0, 0, 0);
}

uint64_t sub_1D3179DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[90] = a1;
  v5[91] = a2;
  v5[92] = a3;
  v5[93] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D3179ED8, 0, 0);
}

uint64_t sub_1D3179ED8()
{
  if (*(v0 + 728))
  {
    v1 = *(v0 + 704);
    v2 = *(v0 + 616);
    v3 = swift_allocObject();
    *(v0 + 752) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = v2;
    v5 = v1;
    v6 = MNNavigationQueue();
    *(v0 + 760) = v6;
    if (v6)
    {
      v14 = v6;
      v15 = swift_task_alloc();
      *(v0 + 768) = v15;
      v15[2] = v14;
      v15[3] = sub_1D317F52C;
      v15[4] = v3;
      v6 = swift_task_alloc();
      *(v0 + 776) = v6;
      *v6 = v0;
      v6[1] = sub_1D317A194;
      v11 = sub_1D317F9EC;
      v10 = 0x80000001D32903A0;
      v13 = MEMORY[0x1E69E7CA8] + 8;
      v7 = 0;
      v8 = 0;
      v9 = 0xD000000000000010;
      v12 = v15;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_1D3125FBC(v0 + 88, &qword_1EC75C5D8, &qword_1D328B950);
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v16 = sub_1D3276F80();
    __swift_project_value_buffer(v16, qword_1EC760740);
    v17 = sub_1D3276F60();
    v18 = sub_1D3277390();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 744);
      v20 = *(v0 + 736);
      v21 = *(v0 + 720);
      v22 = *(v0 + 704);
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D311E000, v17, v18, "Aborting ETA update request because we failed to create a valid request.", v23, 2u);
      MEMORY[0x1D38B6000](v23, -1, -1);

      sub_1D312E1FC(v21, 0, v20, v19);
    }

    else
    {
    }

    sub_1D317F4FC(v0 + 376);

    v24 = *(v0 + 8);

    return v24(0, 0, 0, 0);
  }
}

uint64_t sub_1D317A194()
{

  return MEMORY[0x1EEE6DFA0](sub_1D317A2AC, 0, 0);
}

uint64_t sub_1D317A2AC()
{
  v1 = v0[95];
  v2 = v0[88];

  sub_1D317F4FC((v0 + 47));
  sub_1D3125FBC((v0 + 11), &qword_1EC75C5D8, &qword_1D328B950);

  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[1];

  return v7(v6, v5, v4, v3);
}

uint64_t sub_1D317A34C(uint64_t a1, uint64_t a2)
{
  v3[169] = v2;
  v3[168] = a2;
  v3[167] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D317A374, 0, 0);
}

uint64_t sub_1D317A374()
{
  v1 = *(v0 + 1336);
  v2 = [objc_allocWithZone(MEMORY[0x1E69A1C50]) init];
  *(v0 + 1360) = v2;
  v3 = [*(v1 + 1) route];
  *(v0 + 1368) = v3;
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = [v5 routeMatch];
  *(v0 + 1376) = v7;
  if (!v7)
  {
    if (qword_1EC75BE50 == -1)
    {
LABEL_8:
      v20 = sub_1D3276F80();
      __swift_project_value_buffer(v20, qword_1EC760740);
      v21 = sub_1D3276F60();
      v22 = sub_1D3277390();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D311E000, v21, v22, "No route match was found in navigation info. Unable to send ETA update request because we don't know where on the route we are.", v23, 2u);
        MEMORY[0x1D38B6000](v23, -1, -1);
      }

      v8 = v2;
      goto LABEL_16;
    }

LABEL_35:
    swift_once();
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v7;
  if (![v2 prepareForRequest:*(v0 + 1352) route:v3 routeMatch:v7 targetLegIndex:v6 state:v4])
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v24 = sub_1D3276F80();
    __swift_project_value_buffer(v24, qword_1EC760740);
    v21 = sub_1D3276F60();
    v25 = sub_1D3277390();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D311E000, v21, v25, "Error creating GEOComposedETARoute from navigation info. Aborting ETA update request.", v26, 2u);
      MEMORY[0x1D38B6000](v26, -1, -1);
    }

    v3 = v2;
LABEL_16:

    v27 = *(v0 + 8);

    return v27(0, 0, 0, 0);
  }

  v9 = [v5 _navigation_geoLocation];
  *(v0 + 1384) = v9;
  if (!v9)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC0](v9, v10, v11, v12);
  }

  v13 = v9;
  [*(v0 + 1352) setCurrentUserLocation_];
  v14 = [v3 directionsResponseID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D3276C80();
    v18 = v17;

    v19 = sub_1D3276C70();
    sub_1D31422C8(v16, v18);
  }

  else
  {
    v19 = 0;
  }

  v29 = *(v0 + 1344);
  [*(v0 + 1352) setDirectionsResponseID_];

  if (v29 < 7)
  {
    v30 = dword_1D328CD84[v29];
    v31 = *(v0 + 1336);
    [*(v0 + 1352) setPurpose_];
    if (*(v31 + 48) >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1D3276C70();
    }

    v33 = *(v0 + 1336);
    [*(v0 + 1352) setSessionState_];

    if (*(v33 + 56))
    {
      [*(v0 + 1352) setRecentLocationHistory_];
    }

    v34 = *(*(v0 + 1336) + 64);
    if (v34)
    {
      v35 = *(v0 + 1352);
      sub_1D3177D44(v34);
      v36 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v37 = sub_1D3277190();

      v38 = [v36 initWithArray_];

      [v35 setUserIncidentReports_];
    }

    v39 = *(v0 + 1352);
    v40 = sub_1D317B864(v3, v13, v6);
    *(v0 + 1392) = v40;
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = v3;
    v41[4] = v40;
    v42 = swift_allocObject();
    *(v0 + 1400) = v42;
    *(v42 + 16) = &unk_1D328CC38;
    *(v42 + 24) = v41;
    v43 = v39;
    v44 = v3;

    swift_asyncLet_begin();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v0 + 1408) = v46;
    *(v46 + 16) = &unk_1D328CC58;
    *(v46 + 24) = v45;
    v47 = v43;

    swift_asyncLet_begin();
    v11 = sub_1D317A97C;
    v9 = (v0 + 16);
    v12 = v0 + 1296;

    return MEMORY[0x1EEE6DEC0](v9, v10, v11, v12);
  }

  *(v0 + 16) = *(v0 + 1344);

  return sub_1D3277900();
}

uint64_t sub_1D317A97C(uint64_t a1, uint64_t a2)
{
  *(v3 + 1416) = v2;
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D317AB9C, 0, 0);
  }

  else
  {

    return MEMORY[0x1EEE6DEB8](v3 + 656, a2, sub_1D317AA24, v3 + 1296);
  }
}

uint64_t sub_1D317AA40()
{
  v1 = *(v0 + 1352);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v2, sub_1D317AAA8, v0 + 1296);
}

uint64_t sub_1D317AAFC()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);

  v3 = *(v0 + 1392);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1344);
  v7 = *(v0 + 8);

  return v7(v6, v4, v3, v5);
}

uint64_t sub_1D317AB9C()
{
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1416);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D3277390();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1416);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "Aborting ETA update request because we failed to build route attributes. Error: %@", v8, 0xCu);
    sub_1D3125FBC(v9, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x1EEE6DEB0](v0 + 656, v12, sub_1D317AD48, v0 + 1296);
}

uint64_t sub_1D317AD9C()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);

  v4 = *(v0 + 8);

  return v4(0, 0, 0, 0);
}

uint64_t sub_1D317AE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D317AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  sub_1D3276D30();
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D317AF84, 0, 0);
}

uint64_t sub_1D317AF84()
{
  v1 = [v0[4].receiver routeAttributes];
  v0[6].receiver = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D3276BE0();
    v4 = [v2 shouldRetryForError_];

    if (v4)
    {
      v5 = *(v0[5].receiver + OBJC_IVAR___MNETAUpdateRequester__auditToken);
      v6 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *&v7[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = v5;
      v0[1].receiver = v7;
      v0[1].super_class = v6;
      v9 = v5;
      v0[6].super_class = objc_msgSendSuper2(v0 + 1, sel_init);

      v10 = swift_task_alloc();
      v0[7].receiver = v10;
      *v10 = v0;
      v10[1] = sub_1D317B1BC;

      return sub_1D317EC0C(v2);
    }

    receiver = v0[2].receiver;
    v15 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
    (*(*(v15 - 8) + 56))(receiver, 1, 1, v15);
  }

  else
  {
    v12 = v0[2].receiver;
    v13 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  super_class = v0->super_class;

  return super_class();
}
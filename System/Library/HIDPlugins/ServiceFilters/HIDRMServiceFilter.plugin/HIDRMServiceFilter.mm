Swift::Int sub_1188()
{
  sub_62C4();
  sub_62D4(0);
  return sub_62E4();
}

Swift::Int sub_11F4(uint64_t a1)
{
  sub_62C4();
  sub_62D4(0);
  return sub_62E4();
}

uint64_t sub_125C()
{
  v0 = sub_6024();
  sub_5F80(v0, qword_CB80);
  sub_2E18(v0, qword_CB80);
  return sub_6014();
}

uint64_t variable initialization expression of HIDRMServiceFilter.queue()
{
  v0 = sub_6234();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6224();
  __chkstk_darwin(v5, v6);
  v7 = sub_6044();
  __chkstk_darwin(v7 - 8, v8);
  sub_5ED8(0, &qword_C750, OS_dispatch_queue_ptr);
  sub_6034();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_5E90(&qword_C758, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1538(&qword_C760, &qword_6A40);
  sub_1580();
  sub_6264();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_6244();
}

uint64_t sub_1538(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1580()
{
  result = qword_C768;
  if (!qword_C768)
  {
    sub_15E4(&qword_C760, &qword_6A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C768);
  }

  return result;
}

uint64_t sub_15E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1674@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

void HIDRMServiceFilter.init(service:)(void *a1)
{
  v2 = v1;
  v54 = a1;
  v52 = sub_6234();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52, v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6224();
  __chkstk_darwin(v7, v8);
  v9 = sub_6044();
  __chkstk_darwin(v9 - 8, v10);
  v11 = &v1[OBJC_IVAR___HIDRMServiceFilter_cancelHandler];
  *v11 = 0;
  v11[1] = 0;
  v50[0] = v11;
  v50[1] = OBJC_IVAR___HIDRMServiceFilter_eventDispatcher;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_eventDispatcher] = 0;
  v53 = OBJC_IVAR___HIDRMServiceFilter_service;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_service] = 0;
  v12 = OBJC_IVAR___HIDRMServiceFilter_queue;
  v51 = sub_5ED8(0, &qword_C750, OS_dispatch_queue_ptr);
  sub_6034();
  *&v60 = &_swiftEmptyArrayStorage;
  sub_5E90(&qword_C758, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1538(&qword_C760, &qword_6A40);
  sub_1580();
  sub_6264();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
  *&v1[v12] = sub_6244();
  v13 = OBJC_IVAR___HIDRMServiceFilter_serviceID;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_serviceID] = 0;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_deviceService] = 0;
  *&v1[OBJC_IVAR___HIDRMServiceFilter_device] = 0;
  v51 = OBJC_IVAR___HIDRMServiceFilter_unregistered;
  v52 = v12;
  v1[OBJC_IVAR___HIDRMServiceFilter_unregistered] = 1;
  v14 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  v15 = enum case for HIDRMDevice.FilterState.Filter(_:);
  v16 = sub_6094();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v2[v14], v15, v16);
  v18 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
  v19 = enum case for HIDRMDevice.DeviceState.Inactive(_:);
  v20 = sub_6074();
  v21 = *(v20 - 8);
  (*(v21 + 104))(&v2[v18], v19, v20);
  *(&v61 + 1) = &type metadata for AppleHIDRM;
  v62 = sub_2CF8();
  LOBYTE(v19) = sub_5FF4();
  sub_5E44(&v60);
  if ((v19 & 1) == 0)
  {

    sub_2D4C(*v50[0], *(v50[0] + 8));
    swift_unknownObjectRelease();

    (*(v17 + 8))(&v2[v14], v16);
    (*(v21 + 8))(&v2[v18], v20);
    type metadata accessor for HIDRMServiceFilter(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v23 = v53;
  v22 = v54;
  v24 = *&v2[v53];
  *&v2[v53] = v54;
  v25 = v22;

  *&v2[v13] = [v25 serviceID];
  v26 = *&v2[v23];
  if (v26)
  {
    v27 = v26;
    v28 = sub_6184();
    v29 = [v27 propertyForKey:v28];

    if (v29)
    {
      sub_6254();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v60 = v58;
    v61 = v59;
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  sub_2DA8(&v60, &v58);
  if (!*(&v59 + 1))
  {
    sub_5400(&v58, &qword_C7B8, &qword_6A48);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v55 == 0x7265747369676552 && v56 == 0xE800000000000000)
  {
  }

  else
  {
    v30 = sub_62B4();

    if ((v30 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (qword_C960 != -1)
  {
    swift_once();
  }

  v31 = sub_6024();
  sub_2E18(v31, qword_CB80);
  v32 = sub_6004();
  v33 = sub_61E4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "HIDRMOverrideKey is set to Register, bypassing kIOHIDServiceUnregisteredKey and registering by default", v34, 2u);
  }

  v2[v51] = 0;
LABEL_21:
  v35 = type metadata accessor for HIDRMServiceFilter(0);
  v57.receiver = v2;
  v57.super_class = v35;
  v36 = objc_msgSendSuper2(&v57, "init");
  v37 = qword_C960;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_6024();
  sub_2E18(v39, qword_CB80);
  v40 = v38;
  v41 = sub_6004();
  v42 = sub_61E4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    v44 = *(&v40->isa + OBJC_IVAR___HIDRMServiceFilter_serviceID);

    *(v43 + 4) = v44;
    _os_log_impl(&dword_0, v41, v42, "%llx: init", v43, 0xCu);
  }

  else
  {

    v41 = v40;
  }

  v45 = OBJC_IVAR___HIDRMServiceFilter_service;
  v46 = *(&v40->isa + OBJC_IVAR___HIDRMServiceFilter_service);
  if (!v46)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  sub_6164();
  [v46 serviceID];
  sub_6124();
  v47 = sub_6144();
  if (v47)
  {
LABEL_30:
    *(&v40->isa + OBJC_IVAR___HIDRMServiceFilter_deviceService) = v47;
    sub_6154();
    v49 = sub_6134();

    sub_5400(&v60, &qword_C7B8, &qword_6A48);
    *(&v40->isa + OBJC_IVAR___HIDRMServiceFilter_device) = v49;

    return;
  }

  v48 = *(&v40->isa + v45);
  if (!v48)
  {
    goto LABEL_33;
  }

  [v48 serviceID];
  sub_6124();
  v47 = sub_6144();
  if (v47)
  {
    goto LABEL_30;
  }

  sub_5400(&v60, &qword_C7B8, &qword_6A48);
}

uint64_t HIDRMServiceFilter.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_6304();
}

Swift::Void __swiftcall HIDRMServiceFilter.activate()()
{
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v1 = sub_6024();
  sub_2E18(v1, qword_CB80);
  v2 = v0;
  v3 = sub_6004();
  v4 = sub_61E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR___HIDRMServiceFilter_service];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_0, v3, v4, "%@: activate", v5, 0xCu);
    sub_5400(v6, &qword_C7C8, &qword_6A50);
  }

  if (*&v2[OBJC_IVAR___HIDRMServiceFilter_device])
  {
    sub_5E90(&qword_C7C0, type metadata accessor for HIDRMServiceFilter, &protocol conformance descriptor for HIDRMServiceFilter);

    sub_60F4();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HIDRMServiceFilter.cancel()()
{
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v1 = sub_6024();
  sub_2E18(v1, qword_CB80);
  v2 = v0;
  v3 = sub_6004();
  v4 = sub_61E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR___HIDRMServiceFilter_serviceID);

    _os_log_impl(&dword_0, v3, v4, "%llx: cancel", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v6 = OBJC_IVAR___HIDRMServiceFilter_device;
  if (*(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_device))
  {
    sub_5E90(&qword_C7C0, type metadata accessor for HIDRMServiceFilter, &protocol conformance descriptor for HIDRMServiceFilter);

    sub_60E4();

    *(&v2->isa + v6) = 0;

    v7 = *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_service);
    *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_service) = 0;

    v8 = (v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
    v9 = *(&v2->isa + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
    if (v9)
    {
      v10 = v8[1];

      v9(v11);
      sub_2D4C(v9, v10);
      v12 = *v8;
      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;

      sub_2D4C(v12, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void HIDRMServiceFilter.property(forKey:client:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6074();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6094();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x8000000000006BF0 == a2 || (sub_62B4() & 1) != 0)
  {
    v54 = a3;
    sub_1538(&qword_C7D0, &qword_6A58);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_6A30;
    *(v16 + 32) = 0x7373616C43;
    *(v16 + 40) = 0xE500000000000000;
    *(v16 + 88) = &type metadata for String;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = 0xD000000000000012;
    *(v16 + 72) = 0x8000000000006A40;
    v53 = sub_5ED8(0, &qword_C7D8, NSMutableDictionary_ptr);
    v17 = sub_61D4();
    v18 = OBJC_IVAR___HIDRMServiceFilter_filterState;
    v19 = v6;
    v20 = v55;
    swift_beginAccess();
    (*(v12 + 16))(v15, v20 + v18, v11);
    sub_6084();
    (*(v12 + 8))(v15, v11);
    v21 = sub_6184();

    v22 = sub_6184();
    [v17 setValue:v21 forKey:v22];

    v23 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
    swift_beginAccess();
    (*(v7 + 16))(v10, v20 + v23, v19);
    sub_6064();
    (*(v7 + 8))(v10, v19);
    v24 = sub_6184();

    v25 = sub_6184();
    [v17 setValue:v24 forKey:v25];

    v26 = OBJC_IVAR___HIDRMServiceFilter_device;
    if (*(v20 + OBJC_IVAR___HIDRMServiceFilter_device))
    {

      sub_60A4();

      v27 = sub_6184();

      v28 = sub_6184();
      [v17 setValue:v27 forKey:v28];

      v29 = *(v20 + v26);
      v30 = v54;
      if (v29)
      {

        sub_6104();

        isa = sub_62F4().super.super.isa;
        v32 = sub_6184();
        [v17 setValue:isa forKey:v32];

        v30[3] = v53;
        *v30 = v17;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((a1 != 0xD000000000000016 || 0x8000000000006C10 != a2) && (sub_62B4() & 1) == 0)
  {
    if (a1 == 0xD000000000000010 && 0x8000000000006C30 == a2 || (sub_62B4() & 1) != 0)
    {
      v38 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
      v39 = v6;
      v40 = v55;
      swift_beginAccess();
      (*(v7 + 16))(v10, v40 + v38, v39);
      v41 = sub_6064();
      v43 = v42;
      (*(v7 + 8))(v10, v39);
      *(a3 + 24) = &type metadata for String;
      *a3 = v41;
      *(a3 + 8) = v43;
      return;
    }

    if (a1 == 0xD000000000000016 && 0x8000000000006C50 == a2 || (sub_62B4() & 1) != 0)
    {
      if (!*(v55 + OBJC_IVAR___HIDRMServiceFilter_device))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v44 = sub_60A4();
      v46 = v45;

LABEL_21:
      *(a3 + 24) = &type metadata for String;
      *a3 = v44;
      *(a3 + 8) = v46;
      return;
    }

    if (a1 == 0x7665444D52444948 && a2 == 0xED00004449656369 || (sub_62B4() & 1) != 0)
    {
      if (*(v55 + OBJC_IVAR___HIDRMServiceFilter_device))
      {

        v47 = sub_6104();

        *(a3 + 24) = &type metadata for UInt64;
        *a3 = v47;
        return;
      }

      goto LABEL_42;
    }

    if (a1 == 0x7665444D52444948 && a2 == 0xEF68736148656369 || (sub_62B4() & 1) != 0)
    {
      if (!*(v55 + OBJC_IVAR___HIDRMServiceFilter_device))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v44 = sub_60D4();
      v46 = v48;

      if (v46)
      {
        goto LABEL_21;
      }

LABEL_32:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    if (!kIOHIDServiceUnregisteredKey)
    {
LABEL_44:
      __break(1u);
      return;
    }

    if (sub_6194() == a1 && v49 == a2)
    {
    }

    else
    {
      v50 = sub_62B4();

      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v51 = *(v55 + OBJC_IVAR___HIDRMServiceFilter_unregistered);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v51;
    return;
  }

  v33 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  v34 = v55;
  swift_beginAccess();
  (*(v12 + 16))(v15, v34 + v33, v11);
  v35 = sub_6084();
  v37 = v36;
  (*(v12 + 8))(v15, v11);
  *(a3 + 24) = &type metadata for String;
  *a3 = v35;
  *(a3 + 8) = v37;
}

unint64_t sub_2CF8()
{
  result = qword_C7B0;
  if (!qword_C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7B0);
  }

  return result;
}

uint64_t sub_2D4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for HIDRMServiceFilter(uint64_t a1)
{
  result = qword_C9F0;
  if (!qword_C9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1538(&qword_C7B8, &qword_6A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void HIDRMServiceFilter.setProperty(_:forKey:client:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = sub_1538(&qword_C7E0, &qword_6A78);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_6074();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  __chkstk_darwin(v16, v17);
  if (a4)
  {
    v53 = v19;
    v54 = &v49 - v18;
    v20 = a4;
    v21 = sub_6184();
    HasEntitlement = IOHIDEventSystemConnectionHasEntitlement();

    if (!HasEntitlement)
    {
LABEL_41:

      return;
    }

    v52 = v4;
    v23 = a2;
    if (qword_C960 != -1)
    {
      swift_once();
    }

    v24 = sub_6024();
    sub_2E18(v24, qword_CB80);
    v55 = a1;
    sub_2DA8(a1, v58);

    v25 = sub_6004();
    v26 = sub_61E4();

    if (os_log_type_enabled(v25, v26))
    {
      v49 = v14;
      v50 = v13;
      v51 = v20;
      v27 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v27 = 136315394;
      if (v59)
      {
        sub_2DA8(v58, &v56);
        sub_1538(&qword_C7B8, &qword_6A48);
        v28 = sub_61A4();
        v30 = v29;
      }

      else
      {
        v30 = 0xE300000000000000;
        v28 = 7104878;
      }

      sub_5400(v58, &qword_C7B8, &qword_6A48);
      v31 = sub_5334(v28, v30, &v57);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_5334(v23, a3, &v57);
      _os_log_impl(&dword_0, v25, v26, "setProperty:%s forKey:%s", v27, 0x16u);
      swift_arrayDestroy();

      v13 = v50;
      v20 = v51;
      v14 = v49;
    }

    else
    {

      sub_5400(v58, &qword_C7B8, &qword_6A48);
    }

    v32 = v55;
    if (v23 == 0xD000000000000010 && 0x8000000000006C30 == a3 || (sub_62B4() & 1) != 0)
    {
      sub_2DA8(v32, v58);
      if (!v59)
      {
        v33 = &qword_C7B8;
        v34 = &qword_6A48;
        v35 = v58;
        goto LABEL_19;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:

        v36 = sub_6004();
        v37 = sub_6204();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v58[0] = swift_slowAlloc();
          *v38 = 136315394;
          *(v38 + 4) = sub_5334(v23, a3, v58);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_5334(v23, a3, v58);
          _os_log_impl(&dword_0, v36, v37, "Failed to setProperty:%s forKey:%s", v38, 0x16u);
          swift_arrayDestroy();
        }

        goto LABEL_41;
      }

      sub_6054();
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {

        v33 = &qword_C7E0;
        v34 = &qword_6A78;
        v35 = v12;
LABEL_19:
        sub_5400(v35, v33, v34);
        goto LABEL_20;
      }

      v43 = v54;
      (*(v14 + 32))(v54, v12, v13);
      if (*&v52[OBJC_IVAR___HIDRMServiceFilter_device])
      {

        sub_60B4();

        (*(v14 + 8))(v43, v13);
        goto LABEL_41;
      }
    }

    else
    {
      if ((v23 != 0xD000000000000012 || 0x8000000000006C70 != a3) && (sub_62B4() & 1) == 0)
      {
        if ((v23 != 0xD000000000000011 || 0x8000000000006C90 != a3) && (sub_62B4() & 1) == 0)
        {
          goto LABEL_41;
        }

        v44 = v52;
        v45 = sub_6004();
        v46 = sub_61E4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 134217984;
          *(v47 + 4) = *&v44[OBJC_IVAR___HIDRMServiceFilter_serviceID];

          _os_log_impl(&dword_0, v45, v46, "Revoking device approval for %llx", v47, 0xCu);
        }

        else
        {

          v45 = v44;
        }

        if (*&v44[OBJC_IVAR___HIDRMServiceFilter_device])
        {
          v48 = v53;
          (*(v14 + 104))(v53, enum case for HIDRMDevice.DeviceState.Denied(_:), v13);

          sub_60B4();

          (*(v14 + 8))(v48, v13);
          goto LABEL_41;
        }

LABEL_45:
        __break(1u);
        return;
      }

      v39 = v52;
      v40 = sub_6004();
      v41 = sub_61E4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = *&v39[OBJC_IVAR___HIDRMServiceFilter_serviceID];

        _os_log_impl(&dword_0, v40, v41, "Approving device: %llx", v42, 0xCu);
      }

      else
      {

        v40 = v39;
      }

      if (*&v39[OBJC_IVAR___HIDRMServiceFilter_device])
      {

        sub_60C4();

        goto LABEL_41;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }
}

NSObject *HIDRMServiceFilter.filterEvent(_:)(NSObject *a1)
{
  v2 = v1;
  v4 = sub_6094();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type]== 1 && [a1 integerValueForField:0x10000]== 65280 && [a1 integerValueForField:65537]== &stru_20.maxprot + 3 || ![a1 type])
  {
    goto LABEL_29;
  }

  if ([a1 type]== 3 && [a1 integerValueForField:196608]== &dword_4 + 3 && [a1 integerValueForField:196609]== &stru_20.filesize + 3)
  {
    if (qword_C960 != -1)
    {
      swift_once();
    }

    v9 = sub_6024();
    sub_2E18(v9, qword_CB80);
    v10 = sub_6004();
    v11 = sub_61F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "New numlock event, ignoring", v12, 2u);
    }

    HIDWORD(v22) = 1;
  }

  else
  {
    HIDWORD(v22) = 0;
  }

  if (qword_C960 != -1)
  {
    swift_once();
  }

  v13 = sub_6024();
  sub_2E18(v13, qword_CB80);
  a1 = a1;
  v14 = sub_6004();
  v15 = sub_61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = [a1 type];
    *(v16 + 8) = 1024;
    v17 = [a1 integerValueForField:196610]== &dword_0 + 1 && [a1 integerValueForField:196608]== &dword_4 + 3;
    *(v16 + 10) = v17;

    _os_log_impl(&dword_0, v14, v15, "New event with event type: %u and is keyboard down: %{BOOL}d", v16, 0xEu);
  }

  else
  {

    v14 = a1;
  }

  v18 = OBJC_IVAR___HIDRMServiceFilter_filterState;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v18, v4);
  v19 = (*(v5 + 88))(v8, v4);
  if (v19 == enum case for HIDRMDevice.FilterState.Filter(_:))
  {
    return 0;
  }

  if (v19 != enum case for HIDRMDevice.FilterState.Capture(_:))
  {
    if (v19 != enum case for HIDRMDevice.FilterState.Allow(_:))
    {
      goto LABEL_32;
    }

LABEL_29:
    v20 = a1;
    return a1;
  }

  if ((v22 & 0x100000000) != 0)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR___HIDRMServiceFilter_device))
  {

    sub_6114();

    return 0;
  }

  __break(1u);
LABEL_32:
  result = sub_6294();
  __break(1u);
  return result;
}

uint64_t HIDRMServiceFilter.setCancelHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
  v4 = *(v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler);
  v5 = *(v2 + OBJC_IVAR___HIDRMServiceFilter_cancelHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_2D4C(v4, v5);
}

void HIDRMServiceFilter.setDispatchQueue(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HIDRMServiceFilter_queue);
  *(v1 + OBJC_IVAR___HIDRMServiceFilter_queue) = a1;
  v2 = a1;
}

uint64_t HIDRMServiceFilter.setEventDispatcher(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___HIDRMServiceFilter_eventDispatcher) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t HIDRMServiceFilter.deviceStateUpdate(state:)(uint64_t a1)
{
  v3 = sub_6074();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v7 = *&v1[OBJC_IVAR___HIDRMServiceFilter_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5954;
  *(v10 + 24) = v9;
  aBlock[4] = sub_5990;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4B30;
  aBlock[3] = &unk_8618;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v1;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_4204(char *a1, char *a2)
{
  v4 = sub_6074();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v90 = &v81 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v91 = &v81 - v14;
  __chkstk_darwin(v13, v15);
  v17 = &v81 - v16;
  v18 = OBJC_IVAR___HIDRMServiceFilter_deviceState;
  swift_beginAccess();
  v19 = a1;
  v93 = *(v5 + 16);
  v93(v17, &a1[v18], v4);
  sub_5E90(&qword_C8D8, &type metadata accessor for HIDRMDevice.DeviceState, &protocol conformance descriptor for HIDRMDevice.DeviceState);
  LOBYTE(a1) = sub_6174();
  v92 = *(v5 + 8);
  v92(v17, v4);
  if (a1)
  {
    return;
  }

  v87 = v5;
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v20 = sub_6024();
  v21 = sub_2E18(v20, qword_CB80);
  v22 = v91;
  v93(v91, a2, v4);
  v23 = v19;
  v85 = v21;
  v24 = sub_6004();
  v86 = sub_6214();
  v25 = os_log_type_enabled(v24, v86);
  v88 = v23;
  if (v25)
  {
    v83 = v24;
    v84 = a2;
    v26 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v96[0] = v82;
    *v26 = 134218498;
    if (*&v23[OBJC_IVAR___HIDRMServiceFilter_device])
    {

      v27 = sub_6104();
    }

    else
    {
      v27 = 0;
    }

    v29 = v93;
    *(v26 + 4) = v27;

    *(v26 + 12) = 2080;
    v29(v17, &v19[v18], v4);
    v30 = sub_6064();
    v32 = v31;
    v33 = v92;
    v92(v17, v4);
    v34 = sub_5334(v30, v32, v96);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2080;
    v35 = v91;
    v36 = sub_6064();
    v81 = v26;
    v37 = v18;
    v38 = v36;
    v40 = v39;
    v33(v35, v4);
    v28 = v93;
    v41 = v38;
    v18 = v37;
    v42 = sub_5334(v41, v40, v96);

    v43 = v81;
    *(v81 + 24) = v42;
    v44 = v83;
    _os_log_impl(&dword_0, v83, v86, "HIDRM Device: %llx State: %s -> %s", v43, 0x20u);
    swift_arrayDestroy();

    v28(v17, v84, v4);
  }

  else
  {

    v92(v22, v4);
    v28 = v93;
    v93(v17, a2, v4);
  }

  swift_beginAccess();
  v45 = v28;
  v46 = v87;
  (*(v87 + 40))(&v19[v18], v17, v4);
  swift_endAccess();
  v47 = v90;
  v45(v90, &v19[v18], v4);
  v48 = v89;
  (*(v46 + 104))(v89, enum case for HIDRMDevice.DeviceState.Allowed(_:), v4);
  sub_5E90(&qword_C8E0, &type metadata accessor for HIDRMDevice.DeviceState, &protocol conformance descriptor for HIDRMDevice.DeviceState);
  sub_61C4();
  sub_61C4();
  if (v96[0] == v94 && v96[1] == v95)
  {
    v49 = v92;
    v92(v48, v4);
    v49(v47, v4);

    v50 = v88;
  }

  else
  {
    v51 = sub_62B4();
    v52 = v48;
    v53 = v92;
    v92(v52, v4);
    v53(v47, v4);

    v50 = v88;
    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v54 = OBJC_IVAR___HIDRMServiceFilter_unregistered;
  if (v50[OBJC_IVAR___HIDRMServiceFilter_unregistered] == 1)
  {
    v55 = OBJC_IVAR___HIDRMServiceFilter_service;
    if (*&v50[OBJC_IVAR___HIDRMServiceFilter_service])
    {
      v56 = v50;
      v57 = sub_6004();
      v58 = sub_61E4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134218240;
        *(v59 + 4) = *(v56 + OBJC_IVAR___HIDRMServiceFilter_serviceID);
        *(v59 + 12) = 2048;
        if (*(&v56->isa + OBJC_IVAR___HIDRMServiceFilter_device))
        {

          v60 = sub_6104();
        }

        else
        {
          v60 = 0;
        }

        *(v59 + 14) = v60;

        _os_log_impl(&dword_0, v57, v58, "Registering %llx for device: %llx with system", v59, 0x16u);

        v50 = v88;
      }

      else
      {

        v57 = v56;
      }

      v50[v54] = 0;
      v61 = *&v50[v55];
      if (!v61)
      {
        goto LABEL_38;
      }

      [v61 registerWithSystem];
      v62 = *&v50[v55];
      if (!v62)
      {
LABEL_39:
        __break(1u);
        return;
      }

      v63 = v62;
      v64 = sub_6184();
      v65 = sub_6184();
      [v63 setProperty:v64 forKey:v65];
    }
  }

LABEL_25:
  sub_1538(&qword_C7D0, &qword_6A58);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_6A30;
  *(v66 + 56) = &type metadata for String;
  *(v66 + 32) = 0xD000000000000010;
  *(v66 + 40) = 0x8000000000006C30;
  v67 = sub_6064();
  *(v66 + 88) = &type metadata for String;
  *(v66 + 64) = v67;
  *(v66 + 72) = v68;
  sub_5ED8(0, &qword_C8E8, NSDictionary_ptr);
  v69 = sub_61D4();
  v70 = IOCFSerialize(v69, 0);
  CFDataGetLength(v70);
  v71 = swift_slowAlloc();
  BytePtr = CFDataGetBytePtr(v70);
  if (!BytePtr)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v73 = BytePtr;
  Length = CFDataGetLength(v70);
  if (v71 != v73 || v71 >= &v73[Length])
  {
    memmove(v71, v73, Length);
  }

  v75 = objc_opt_self();
  v76 = mach_absolute_time();
  v77 = CFDataGetLength(v70);
  if ((v77 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v77))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  LODWORD(v80) = 0;
  v78 = [v75 vendorDefinedEvent:v76 usagePage:65280 usage:91 version:0 data:v71 length:v77 options:v80];
  v79 = *&v50[OBJC_IVAR___HIDRMServiceFilter_eventDispatcher];
  if (v79)
  {
    [v79 dispatchEvent:v78];
  }
}

uint64_t HIDRMServiceFilter.deviceFilterStateUpdate(state:)(uint64_t a1)
{
  v3 = sub_6094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v7 = *&v1[OBJC_IVAR___HIDRMServiceFilter_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5AB4;
  *(v10 + 24) = v9;
  aBlock[4] = sub_5FEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4B30;
  aBlock[3] = &unk_8690;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v1;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4D84(void *a1, uint64_t a2)
{
  v4 = sub_6094();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v37 - v11;
  if (qword_C960 != -1)
  {
    swift_once();
  }

  v13 = sub_6024();
  sub_2E18(v13, qword_CB80);
  v14 = *(v5 + 16);
  v14(v12, a2, v4);
  v15 = a1;
  v16 = sub_6004();
  v44 = sub_6214();
  v17 = &HIDRMServiceFilter__prots;
  if (os_log_type_enabled(v16, v44))
  {
    v39 = v16;
    v40 = v12;
    v42 = v14;
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45[0] = v38;
    *v18 = 134218498;
    v19 = *&v15[OBJC_IVAR___HIDRMServiceFilter_device];
    v43 = a2;
    if (v19)
    {

      v20 = sub_6104();
    }

    else
    {
      v20 = 0;
    }

    *(v18 + 4) = v20;

    *(v18 + 12) = 2080;
    v21 = OBJC_IVAR___HIDRMServiceFilter_filterState;
    swift_beginAccess();
    v22 = &v15[v21];
    v41 = v15;
    v23 = v42;
    v37 = v5 + 16;
    v42(v9, v22, v4);
    v24 = sub_6084();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v9, v4);
    v28 = sub_5334(v24, v26, v45);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = v40;
    v30 = sub_6084();
    v32 = v31;
    v27(v29, v4);
    v14 = v23;
    v15 = v41;
    v33 = sub_5334(v30, v32, v45);

    *(v18 + 24) = v33;
    v17 = &HIDRMServiceFilter__prots;
    v34 = v39;
    _os_log_impl(&dword_0, v39, v44, "HIDRM Device: %llx Filter State: %s -> %s", v18, 0x20u);
    swift_arrayDestroy();

    a2 = v43;
  }

  else
  {

    (*(v5 + 8))(v12, v4);
  }

  v14(v9, a2, v4);
  count = v17[371].count;
  swift_beginAccess();
  (*(v5 + 40))(&v15[count], v9, v4);
  return swift_endAccess();
}

id HIDRMServiceFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HIDRMServiceFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HIDRMServiceFilter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_5334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5460(v11, 0, 0, 1, a1, a2);
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
    sub_5F20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5E44(v11);
  return v7;
}

uint64_t sub_5400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_556C(a5, a6);
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
    result = sub_6284();
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

char *sub_556C(uint64_t a1, unint64_t a2)
{
  v3 = sub_55B8(a1, a2);
  sub_56E8(&off_85A0);
  return v3;
}

char *sub_55B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_57D4(v5, 0);
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

  result = sub_6284();
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
        v10 = sub_61B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_57D4(v10, 0);
        result = sub_6274();
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

uint64_t sub_56E8(uint64_t result)
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

  result = sub_5848(result, v11, 1, v3);
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

void *sub_57D4(uint64_t a1, uint64_t a2)
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

  sub_1538(&unk_C8F0, qword_6BB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_5848(char *result, int64_t a2, char a3, char *a4)
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
    sub_1538(&unk_C8F0, qword_6BB8);
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

uint64_t sub_59B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_59E8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_5AE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_5B68(uint64_t a1)
{
  result = sub_6094();
  if (v2 <= 0x3F)
  {
    result = sub_6074();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleHIDRM(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppleHIDRM(_WORD *result, int a2, int a3)
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

unint64_t sub_5D64()
{
  result = qword_C8D0;
  if (!qword_C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8D0);
  }

  return result;
}

uint64_t sub_5DB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_5E00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5E44(void *a1)
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

uint64_t sub_5E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5ED8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_5F20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_5F80(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}
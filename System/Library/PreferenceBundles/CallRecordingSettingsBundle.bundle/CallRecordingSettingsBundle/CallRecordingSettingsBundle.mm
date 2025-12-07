unint64_t GMAvailability.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_25B0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_25D8()
{
  v1 = *v0;
  sub_3B44();
  sub_3B54(v1);
  return sub_3B64();
}

Swift::Int sub_264C(uint64_t a1)
{
  v2 = *v1;
  sub_3B44();
  sub_3B54(v2);
  return sub_3B64();
}

uint64_t variable initialization expression of GenerativeModelAvailabilityControl.available()
{
  v0 = sub_3A54();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3A24();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A14();
  sub_3A44();
  (*(v5 + 8))(v7, v4);
  sub_3A34();
  return (*(v1 + 8))(v3, v0);
}

uint64_t GenerativeModelAvailabilityControl.getAvailability()()
{
  v1 = sub_3A04();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl_available, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (&enum case for GenerativeModelsAvailability.Availability.restricted(_:) && v5 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v6 = 1;
LABEL_7:
    (*(v2 + 8))(v4, v1);
    return v6;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.unavailable(_:) && v5 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v6 = 2;
    goto LABEL_7;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.available(_:) && v5 == enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    return 0;
  }

  result = sub_3B34();
  __break(1u);
  return result;
}

id GenerativeModelAvailabilityControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelAvailabilityControl.init()()
{
  v1 = v0;
  v2 = sub_3A54();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A24();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A14();
  sub_3A44();
  (*(v7 + 8))(v9, v6);
  sub_3A34();
  (*(v3 + 8))(v5, v2);
  v10 = type metadata accessor for GenerativeModelAvailabilityControl(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t type metadata accessor for GenerativeModelAvailabilityControl(uint64_t a1)
{
  result = qword_C988;
  if (!qword_C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GenerativeModelAvailabilityControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelAvailabilityControl(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2F1C()
{
  result = qword_C958;
  if (!qword_C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C958);
  }

  return result;
}

uint64_t sub_2FF4(uint64_t a1)
{
  result = sub_3A04();
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

uint64_t CallRecordingSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_3AE4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 traitCollection];
  sub_3B04();

  LOBYTE(a1) = sub_3AC4();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t CallRecordingSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_3AE4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B24();
  __chkstk_darwin();
  v7 = sub_3AB4();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B14();
  sub_3AA4();
  v11 = [a2 traitCollection];
  sub_3B04();

  sub_3498();
  sub_3AD4();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_3498()
{
  result = qword_C998;
  if (!qword_C998)
  {
    sub_3AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C998);
  }

  return result;
}

unint64_t sub_3748()
{
  result = qword_CA38;
  if (!qword_CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA38);
  }

  return result;
}

uint64_t sub_37B8()
{
  sub_3A94();
  __chkstk_darwin();
  sub_38F8();
  sub_3A84();
  return sub_3A64();
}

uint64_t sub_383C()
{
  v0 = sub_3A74();
  v1 = sub_38A0();

  return SettingsPane.init(makeContent:)(sub_37B8, 0, v0, v1);
}

unint64_t sub_38A0()
{
  result = qword_CA40;
  if (!qword_CA40)
  {
    sub_3A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA40);
  }

  return result;
}

unint64_t sub_38F8()
{
  result = qword_CA48;
  if (!qword_CA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CA48);
  }

  return result;
}

unint64_t sub_3958()
{
  result = qword_CA50;
  if (!qword_CA50)
  {
    sub_39BC(&qword_CA58, &qword_54D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA50);
  }

  return result;
}

uint64_t sub_39BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}
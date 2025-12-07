id sub_20BC(uint64_t a1)
{
  [*(a1 + 32) setExtensionSpecifiers:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_2360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "setting specifier %@ checked", &v8, 0xCu);
  }

  [*(a1 + 40) setProperty:*(a1 + 32) forKey:PSRadioGroupCheckedSpecifierKey];
  v6 = ILDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "setting extension %@ elected", &v8, 0xCu);
  }

  v7 = +[ILClassificationController sharedInstance];
  [v7 setElectedExtension:v3];

  [*(a1 + 48) reloadSpecifiers];
}

void sub_24A4(uint64_t a1, int a2)
{
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "completed electing extension (%@): %d", &v6, 0x12u);
  }

  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t ILClassificationAndReportingSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_3624();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 traitCollection];
  sub_3674();

  LOBYTE(a1) = sub_3604();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t ILClassificationAndReportingSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_3624();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3694();
  __chkstk_darwin();
  v7 = sub_35F4();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3684();
  sub_35E4();
  v11 = [a2 traitCollection];
  sub_3674();

  sub_2CF4();
  sub_3614();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2CF4()
{
  result = qword_C878;
  if (!qword_C878)
  {
    sub_35F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C878);
  }

  return result;
}

unint64_t sub_300C()
{
  result = qword_C918;
  if (!qword_C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C918);
  }

  return result;
}

uint64_t sub_307C@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_35A4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3664();
  sub_3654();
  sub_3644();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3458();
  sub_3594();
  sub_3574();
  sub_35B4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v14}];
  v8 = sub_35C4();
  v10 = v9;
  v12 = v11;
  sub_3400();
  sub_35D4();
  sub_34A4(v8, v10, v12 & 1);

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_3310()
{
  sub_33B8(&qword_C920, &qword_43D8);
  sub_3584();
  sub_3400();
  swift_getOpaqueTypeConformance2();
  return sub_3634();
}

uint64_t sub_33B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_3400()
{
  result = qword_C928;
  if (!qword_C928)
  {
    sub_3584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C928);
  }

  return result;
}

unint64_t sub_3458()
{
  result = qword_C930;
  if (!qword_C930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C930);
  }

  return result;
}

uint64_t sub_34A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_34C8()
{
  result = qword_C938;
  if (!qword_C938)
  {
    sub_352C(&unk_C940, qword_43F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C938);
  }

  return result;
}

uint64_t sub_352C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}
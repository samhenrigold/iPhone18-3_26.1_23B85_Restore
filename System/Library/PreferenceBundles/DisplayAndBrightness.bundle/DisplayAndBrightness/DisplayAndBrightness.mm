unint64_t sub_1F2C()
{
  result = qword_C290;
  if (!qword_C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C290);
  }

  return result;
}

uint64_t sub_1F9C(uint64_t a1)
{
  sub_3FAC();
  __chkstk_darwin();
  v2 = sub_3F7C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3DBC(0, &qword_C328, DBSSettingsController_ptr);
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3F8C();
  sub_3F6C();
  sub_3FDC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_3FEC();
  v11 = v10;
  LOBYTE(ObjCClassFromMetadata) = v12;
  sub_3D70(&qword_C2A8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_3FFC();
  sub_3E04(v9, v11, ObjCClassFromMetadata & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_3FAC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_3FCC();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_3F5C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_36C4(&qword_C2B8, &qword_46E0);
  v4[20] = swift_task_alloc();
  v8 = sub_3F4C();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  sub_408C();
  v4[24] = sub_407C();
  v10 = sub_406C();

  return _swift_task_switch(sub_2498, v10, v9);
}

void sub_2498()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  sub_402C();
  sub_3F1C();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);

    sub_39DC(v7);
    sub_401C();
    sub_403C();
    (*(v10 + 8))(v8, v9);
LABEL_67:

    v79 = *(v0 + 8);

    v79();
    return;
  }

  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  sub_401C();
  *(v0 + 16) = sub_3F2C();
  *(v0 + 24) = v11;
  *(v0 + 32) = 47;
  *(v0 + 40) = 0xE100000000000000;
  sub_3A44();
  v12 = sub_409C();

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = _swiftEmptyArrayStorage;
LABEL_4:
  v16 = (v12 + 40 + 16 * v13);
  while (1)
  {
    if (v14 == v13)
    {

      v23 = _swiftEmptyArrayStorage[2];
      if (v23)
      {
LABEL_16:
        v80 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
        v81 = (*(v0 + 88) + 8);
        while (1)
        {
          v25 = *(v15 + 4);
          v24 = *(v15 + 5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v23 - 1) > *(v15 + 3) >> 1)
          {
            v15 = sub_3BC4(isUniquelyReferenced_nonNull_native, v23, 1, v15);
          }

          sub_3D1C((v15 + 32));
          v27 = *(v15 + 2);
          memmove(v15 + 32, v15 + 48, 16 * v27 - 16);
          v28 = v27 - 1;
          *(v15 + 2) = v27 - 1;

          v29 = sub_3CD0(v25, v24);
          if (v29 == 9 || (v30 = v29, (sub_3178(v29) & 1) == 0))
          {

            goto LABEL_66;
          }

          v31 = [objc_allocWithZone(PSSpecifier) init];
          v32 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
          [v31 setProperty:v32 forKey:v80];
          if (v30 == 2)
          {
          }

          else
          {
            v33 = sub_40BC();

            if ((v33 & 1) == 0)
            {
              if (v27 != 1)
              {
                goto LABEL_32;
              }

              sub_3F3C();
              if (!v37)
              {
                goto LABEL_32;
              }

LABEL_31:
              v38 = sub_405C();

              [v32 setSpecifierIdentifierToScrollAndHighlight:v38];

              goto LABEL_32;
            }
          }

          v34 = [objc_opt_self() currentDevice];
          v35 = [v34 userInterfaceIdiom];

          if (v28)
          {
            goto LABEL_32;
          }

          sub_3F3C();
          if (!v36)
          {
            goto LABEL_32;
          }

          if (v35 != &dword_0 + 1)
          {
            goto LABEL_31;
          }

LABEL_32:
          v39 = v30;
          if (v30 <= 3u)
          {
            if (v30 <= 1u)
            {
              v48 = *(v0 + 96);
              v49 = *(v0 + 80);
              if (v39)
              {

                v50 = &unk_C308;
                v51 = DBSLargeTextController_ptr;
              }

              else
              {

                v50 = &unk_C318;
                v51 = DBSDeviceAppearanceScheduleController_ptr;
              }

              goto LABEL_56;
            }

            if (v30 != 2)
            {
              v48 = *(v0 + 96);
              v49 = *(v0 + 80);

              v50 = &unk_C2F8;
              v51 = DBSColorTemperatureController_ptr;
LABEL_56:
              sub_3DBC(0, v50, v51);
              v69 = v31;
              sub_3F8C();
              sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
              sub_3FBC();

              (*v81)(v48, v49);
              goto LABEL_57;
            }

            v52 = [objc_opt_self() currentDevice];
            v53 = [v52 userInterfaceIdiom];

            if (v53 != &dword_0 + 1)
            {
              v48 = *(v0 + 96);
              v49 = *(v0 + 80);
              v50 = &unk_C310;
              v51 = DBSDisplayZoomSelectionListController_ptr;
              goto LABEL_56;
            }

            v54 = [objc_opt_self() defaultManager];
            v55 = [v54 externalDisplayAvailable];

            v56 = sub_405C();
            if (v55)
            {
              v57 = *(v0 + 96);
              v58 = *(v0 + 80);
              [v32 setSpecifierIdentifierToScrollAndSelect:v56];

              sub_3DBC(0, &qword_C2D8, DBSMainDisplayPreferencesController_ptr);
              v59 = v31;
              sub_3F8C();
              sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
              sub_3FBC();

              (*v81)(v57, v58);
              goto LABEL_57;
            }

            [*(v0 + 72) setSpecifierIdentifierToScrollAndSelect:v56];

            v23 = *(v15 + 2);
            if (!v23)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v30 <= 5u)
            {
              if (v30 != 4)
              {
                v61 = *(v0 + 64);
                [v61 updateAutoLockSpecifier];
                v62 = sub_405C();
                v63 = [v61 specifierForID:v62];

                if (!v63)
                {
                  goto LABEL_71;
                }

                v64 = *(v0 + 96);
                v65 = *(v0 + 80);
                v66 = *(v0 + 64);

                v67 = sub_405C();
                [v63 setProperty:v66 forKey:v67];

                sub_3DBC(0, &qword_C2E8, DBSAutoLockViewController_ptr);
                v68 = v63;
                sub_3F8C();
                sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                sub_3FBC();

                (*v81)(v64, v65);
                goto LABEL_57;
              }

              v48 = *(v0 + 96);
              v49 = *(v0 + 80);

              v50 = &unk_C2F0;
              v51 = DBSColorScheduleController_ptr;
              goto LABEL_56;
            }

            if (v30 == 6)
            {
              v44 = *(v0 + 96);
              v45 = *(v0 + 80);

              v46 = &unk_C2E0;
              v47 = DBSAlwaysOnViewController_ptr;
            }

            else
            {
              if (v30 != 7)
              {
                v48 = *(v0 + 96);
                v49 = *(v0 + 80);

                v50 = &unk_C300;
                v51 = DBSLiquidGlassController_ptr;
                goto LABEL_56;
              }

              v40 = [objc_opt_self() defaultManager];
              v41 = [v40 externalDisplayAvailable];

              if (v41)
              {
                v42 = *(v0 + 96);
                v43 = *(v0 + 80);
                sub_3DBC(0, &qword_C2D8, DBSMainDisplayPreferencesController_ptr);
                sub_3F9C();
                sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                sub_3FBC();
                (*v81)(v42, v43);
              }

              v44 = *(v0 + 96);
              v45 = *(v0 + 80);
              v46 = &unk_C2C8;
              v47 = DBSReferenceAndCalibrationController_ptr;
            }

            sub_3DBC(0, v46, v47);
            v60 = v31;
            sub_3F8C();
            sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_3FBC();

            (*v81)(v44, v45);
LABEL_57:
            v23 = *(v15 + 2);
            if (!v23)
            {
              goto LABEL_65;
            }
          }
        }
      }

      sub_3F3C();
      if (v70)
      {
        v71 = *(v0 + 72);

        v72 = sub_405C();

        [v71 setSpecifierIdentifierToScrollAndHighlight:v72];
      }

      else
      {
        v23 = _swiftEmptyArrayStorage[2];
        if (v23)
        {
          goto LABEL_16;
        }

LABEL_65:
      }

LABEL_66:
      v74 = *(v0 + 176);
      v73 = *(v0 + 184);
      v75 = *(v0 + 168);
      v77 = *(v0 + 112);
      v76 = *(v0 + 120);
      v78 = *(v0 + 104);
      sub_403C();
      (*(v77 + 8))(v76, v78);
      (*(v74 + 8))(v73, v75);
      goto LABEL_67;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    ++v13;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_3A98(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_3A98((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v18;
      v22[5] = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

id sub_3178(unsigned __int8 a1)
{
  v1 = a1;
  result = &dword_0 + 1;
  if (v1 <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v5 = [objc_allocWithZone(UISUserInterfaceStyleMode) initWithDelegate:0];
        [v5 modeValue];

        return UISUserInterfaceStyleModeValueIsAutomatic();
      }

      return result;
    }

    if (v1 == 2)
    {
      v6 = [objc_opt_self() currentDevice];
      blueLightReductionSupported = [v6 sf_deviceSupportsDisplayZoom];
LABEL_25:
      v13 = blueLightReductionSupported;

      return v13;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      blueLightReductionSupported = MobileGestalt_get_blueLightReductionSupported();
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v1 <= 5)
  {
    if (v1 != 4)
    {
      result = [objc_opt_self() sharedConnection];
      if (result)
      {
        v14 = result;
        v15 = [result isAutoLockEnabled];

        if (v15)
        {
          v16 = [objc_opt_self() processInfo];
          v17 = [v16 isLowPowerModeEnabled];

          return (v17 ^ 1);
        }

        return 0;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      v9 = MobileGestalt_get_blueLightReductionSupported();

      if (v9)
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        if (qword_C330 != -1)
        {
          swift_once();
        }

        v10 = [qword_C338 blueLightClient];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 getBlueLightStatus:&v18];

          if (v12)
          {
            return (DWORD1(v18) == 2);
          }
        }
      }

      return 0;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v1 == 6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      blueLightReductionSupported = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      goto LABEL_25;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 == 7)
  {
    result = [objc_opt_self() mainDisplay];
    if (result)
    {
      v3 = result;
      v4 = [result availablePresets];

      if (v4)
      {

        return &dword_0 + 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_345C()
{
  v1 = sub_36C4(&qword_C298, &qword_46C0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v16 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  sub_36C4(&qword_C2A0, &qword_46C8);
  v10 = sub_3F7C();
  v11 = sub_3D70(&qword_C2A8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_404C();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  sub_38FC();
  v13 = v8;
  v14 = v9;
  sub_400C();
  return (*(v2 + 8))(v4, v1);
}

id sub_3668@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(DBSSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_36C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_370C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3754(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3808;

  return sub_2248(a1, a2, v7, v6);
}

uint64_t sub_3808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_38FC()
{
  result = qword_C2B0;
  if (!qword_C2B0)
  {
    sub_3960(&qword_C298, &qword_46C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2B0);
  }

  return result;
}

uint64_t sub_3960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_39A8()
{
  result = [objc_allocWithZone(CBClient) init];
  qword_C338 = result;
  return result;
}

uint64_t sub_39DC(uint64_t a1)
{
  v2 = sub_36C4(&qword_C2B8, &qword_46E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3A44()
{
  result = qword_C2C0;
  if (!qword_C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2C0);
  }

  return result;
}

char *sub_3A98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_3AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_36C4(&qword_C320, &qword_46E8);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_3BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_36C4(&qword_C320, &qword_46E8);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_3CD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_84A8;
  v6._object = a2;
  v4 = sub_40AC(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3DBC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_3E04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_3E14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3E20(uint64_t *a1, int a2)
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

uint64_t sub_3E68(uint64_t result, int a2, int a3)
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

uint64_t sub_3EB4()
{
  sub_3960(&qword_C298, &qword_46C0);
  sub_38FC();
  return swift_getOpaqueTypeConformance2();
}
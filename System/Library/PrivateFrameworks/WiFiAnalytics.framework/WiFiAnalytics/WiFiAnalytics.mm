id WALogCategoryDeviceStoreHandle()
{
  if (WALogCategoryDeviceStoreHandle_onceTokenDefault != -1)
  {
    dispatch_once(&WALogCategoryDeviceStoreHandle_onceTokenDefault, &__block_literal_global_13);
  }

  v1 = WALogCategoryDeviceStoreHandle_storeHandle;

  return v1;
}

id WALogCategoryDefaultHandle()
{
  if (WALogCategoryDefaultHandle_onceTokenDefault != -1)
  {
    dispatch_once(&WALogCategoryDefaultHandle_onceTokenDefault, &__block_literal_global_2);
  }

  v1 = WALogCategoryDefaultHandle_defaultHandle;

  return v1;
}

void sub_1C84624A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WALogCategoryDeviceStoreHandle_block_invoke()
{
  WALogCategoryDeviceStoreHandle_storeHandle = os_log_create("com.apple.wifi.analytics", "DeviceStore");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C846370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8463B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8463C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C8463D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8463D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8463DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C84646E0()
{
  sub_1C84822E4(0, &qword_1EDE5CA20, 0x1E69E9BF8);
  result = sub_1C8590E74();
  qword_1EDE5CB90 = result;
  return result;
}

id WANWActivityTransform.init(later:early:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
  v6 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  *&v2[v6] = MEMORY[0x1CCA77560](700, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v7 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev] = 0;
  v2[v7] = 0;
  *&v2[v5] = 0;
  if (*(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 0;
      *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a2;
      *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
      goto LABEL_7;
    }

    v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a2;
    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a2;
  }

  else
  {
    v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a1;
    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
  }

LABEL_7:
  v8 = sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    v10 = v8;
    swift_once();
    v8 = v10;
  }

  sub_1C8590CA4(v8, &dword_1C8460000, qword_1EDE5CB90, "Init complete", 13, 2, MEMORY[0x1E69E7CC0]);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v11, sel_init);
}

id WANWActivityTransform.init(single:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
  v4 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  *&v1[v4] = MEMORY[0x1CCA77560](700, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v5 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev] = 0;
  v1[v5] = 0;
  *&v1[v3] = 0;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a1;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

  v6 = sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  sub_1C8590CA4(v6, &dword_1C8460000, qword_1EDE5CB90, "single Init complete", 20, 2, MEMORY[0x1E69E7CC0]);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1C8464C0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early);
  v35[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v1, v35, 0, 0xE000000000000000);
  v2 = v35[0];
  *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations) = 1;
  v3 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment);
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  if (v3 == 1)
  {
    *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) = 1;
    swift_bridgeObjectRetain_n();
    v5 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      v30 = v5;
      swift_once();
      v5 = v30;
    }

    sub_1C8590CA4(v5, &dword_1C8460000, qword_1EDE5CB90, "Setting allowSingleFragmentDeltaCalculations true due to singleFragment", 71, 2, MEMORY[0x1E69E7CC0]);
    v6 = v2;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later);

    v35[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v7, v35, 0, 0xE000000000000000);

    v6 = v35[0];
  }

  v8 = sub_1C846E444(v2, v6);

  v9 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  *(v0 + v9) = v8;

  if (v3)
  {

    *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) = 0;
  }

  else
  {
    swift_beginAccess();
    v10 = sub_1C84665F8((v0 + v9));
    swift_endAccess();
    if (!v10)
    {
      v11 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        v34 = v11;
        swift_once();
        v11 = v34;
      }

      sub_1C8590CA4(v11, &dword_1C8460000, qword_1EDE5CB90, "Failed to add timeOffset", 24, 2, MEMORY[0x1E69E7CC0]);
      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) = 0;
    }

    v12 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
    if (*(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) < 0.0 || (v18 = *(v6 + 16)) != 0 && (v19 = *(v2 + 16)) != 0 && v19 < v18)
    {
      v13 = sub_1C8590E64();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v13))
      {

        v15 = swift_slowAlloc();
        v16 = *(v0 + v12);
        *v15 = 134218496;
        *(v15 + 4) = v16;
        *(v15 + 12) = 2048;
        *(v15 + 14) = *(v2 + 16);

        *(v15 + 22) = 2048;
        p_superclass = (&OBJC_METACLASS___PoliciesMO + 8);
        *(v15 + 24) = *(v6 + 16);

        _os_log_impl(&dword_1C8460000, v14, v13, "Setting allowSingleFragmentDeltaCalculations true due to negative timeOffset %f or growth in metrics from early %ld to late %ld, rerunning diff", v15, 0x20u);
        MEMORY[0x1CCA78470](v15, -1, -1);
      }

      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) = 1;
      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) = 0;
      v17 = sub_1C846E444(v2, v6);

      *(v0 + v9) = v17;

      *(v0 + v12) = 0;
    }

    else
    {
    }
  }

  swift_beginAccess();
  v20 = sub_1C8468260(v0 + v9);
  swift_endAccess();
  if ((v20 & 1) != 0 || *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) != 1) && ((swift_beginAccess(), v21 = sub_1C846CE84((v0 + v9)), swift_endAccess(), (v21) || *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) != 1))
  {
    swift_beginAccess();
    sub_1C847ADCC((v0 + v9));
    v25 = v24;
    swift_endAccess();
    if ((v25 & 1) == 0)
    {
      v26 = sub_1C8590E44();
      if (p_superclass[329] != -1)
      {
        v32 = v26;
        swift_once();
        v26 = v32;
      }

      sub_1C8590CA4(v26, &dword_1C8460000, qword_1EDE5CB90, "Failed to remove deprecated fields", 34, 2, MEMORY[0x1E69E7CC0]);
    }

    swift_beginAccess();
    sub_1C847B0A4((v0 + v9));
    v28 = v27;
    swift_endAccess();
    if ((v28 & 1) == 0)
    {
      v29 = sub_1C8590E44();
      if (p_superclass[329] != -1)
      {
        v33 = v29;
        swift_once();
        v29 = v33;
      }

      sub_1C8590CA4(v29, &dword_1C8460000, qword_1EDE5CB90, "Failed to remove dropNonPerPeerFields fields", 44, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v22 = sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      v31 = v22;
      swift_once();
      v22 = v31;
    }

    sub_1C8590CA4(v22, &dword_1C8460000, qword_1EDE5CB90, "Too many failures while computing stats, aborting", 49, 2, MEMORY[0x1E69E7CC0]);
    return 0;
  }
}

uint64_t sub_1C8465218()
{
  v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 1;
  v1 = *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v25[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v1, v25, 0, 0xE000000000000000);
  v2 = v25[0];
  v3 = v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment];
  if (v3 == 1)
  {

    v4 = v2;
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

    v25[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v5, v25, 0, 0xE000000000000000);

    v4 = v25[0];
  }

  v6 = sub_1C846E444(v2, v4);

  v7 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  *&v0[v7] = v6;

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    v8 = sub_1C84665F8(&v0[v7]);
    swift_endAccess();
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v24 = v9;
      swift_once();
      v9 = v24;
    }

    sub_1C8590CA4(v9, &dword_1C8460000, qword_1EDE5CB90, "Failed to add timeOffset", 24, 2, MEMORY[0x1E69E7CC0]);
  }

  *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
LABEL_10:
  swift_beginAccess();
  v10 = sub_1C8468260(&v0[v7]);
  swift_endAccess();
  if ((v10 & 1) != 0 || v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1) && ((swift_beginAccess(), v11 = sub_1C846CE84(&v0[v7]), swift_endAccess(), (v11) || v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1))
  {
    swift_beginAccess();
    sub_1C847ADCC(&v0[v7]);
    v15 = v14;
    swift_endAccess();
    if ((v15 & 1) == 0)
    {
      v16 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        v23 = v16;
        swift_once();
        v16 = v23;
      }

      sub_1C8590CA4(v16, &dword_1C8460000, qword_1EDE5CB90, "Failed to remove deprecated fields", 34, 2, MEMORY[0x1E69E7CC0]);
    }

    v17 = sub_1C8590E34();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v17))
    {

      v19 = v0;
      v20 = swift_slowAlloc();
      *v20 = 134218496;
      v21 = *(v2 + 16);
      *(v20 + 4) = v21;
      *(v20 + 12) = 2048;

      *(v20 + 14) = v21;

      *(v20 + 22) = 2048;
      *(v20 + 24) = *(*&v0[v7] + 16);

      _os_log_impl(&dword_1C8460000, v18, v17, "For Logging: Early Sample nKeys %ld Late Sample nKeys %ld Final %ld", v20, 0x20u);
      MEMORY[0x1CCA78470](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v12 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v22 = v12;
      swift_once();
      v12 = v22;
    }

    sub_1C8590CA4(v12, &dword_1C8460000, qword_1EDE5CB90, "Too many failures while computing stats, aborting", 49, 2, MEMORY[0x1E69E7CC0]);
    return 0;
  }
}

id sub_1C8465698(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6 = sub_1C8590CB4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C8465720(int a1)
{
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 1;
  v3 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v41[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v3, v41, 0, 0xE000000000000000);
  v4 = v41[0];
  v5 = v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment];
  if (v5 == 1)
  {
    v6 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v6))
    {

      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(v4 + 16);

      _os_log_impl(&dword_1C8460000, v7, v6, "WA Telemetry: singleFragment Early Sample nKeys %ld", v8, 0xCu);
      MEMORY[0x1CCA78470](v8, -1, -1);
    }

    v9 = v4;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

    v41[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v10, v41, 0, 0xE000000000000000);

    v9 = v41[0];
    v11 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v11))
    {

      v12 = swift_slowAlloc();
      *v12 = 134218240;
      v13 = *(v4 + 16);
      *(v12 + 4) = v13;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v13;

      _os_log_impl(&dword_1C8460000, v7, v11, "WA Telemetry: doubleFragment Early Sample nKeys %ld Late Sample nKeys %ld", v12, 0x16u);
      MEMORY[0x1CCA78470](v12, -1, -1);
    }
  }

  v14 = sub_1C846E444(v4, v9);

  v15 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  *&v1[v15] = v14;

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v16 = sub_1C84665F8(&v1[v15]);
    swift_endAccess();
    if (v16)
    {
      goto LABEL_17;
    }

    v17 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v39 = v17;
      swift_once();
      v17 = v39;
    }

    sub_1C8590CA4(v17, &dword_1C8460000, v7, "WA Telemetry: Failed to add timeOffset", 38, 2, MEMORY[0x1E69E7CC0]);
  }

  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
LABEL_17:
  swift_beginAccess();
  v18 = sub_1C8468260(&v1[v15]);
  swift_endAccess();
  if ((v18 & 1) != 0 || v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1) && ((swift_beginAccess(), v19 = sub_1C846CE84(&v1[v15]), swift_endAccess(), (v19) || v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1))
  {
    if (a1)
    {
    }

    else
    {
      swift_beginAccess();
      v22 = sub_1C8466E3C(&v1[v15], v4, v9);
      swift_endAccess();

      if ((v22 & 1) == 0)
      {
        v23 = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          v40 = v23;
          swift_once();
          v23 = v40;
        }

        sub_1C8590CA4(v23, &dword_1C8460000, v7, "WA Telemetry: Failed to add all Fields Sent only on first transform", 67, 2, MEMORY[0x1E69E7CC0]);
      }
    }

    swift_beginAccess();
    sub_1C847ADCC(&v1[v15]);
    v25 = v24;
    swift_endAccess();
    if ((v25 & 1) == 0)
    {
      v26 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        v38 = v26;
        swift_once();
        v26 = v38;
      }

      sub_1C8590CA4(v26, &dword_1C8460000, v7, "WA Telemetry: Failed to remove deprecated fields", 48, 2, MEMORY[0x1E69E7CC0]);
    }

    v28 = sub_1C847B388(v27);

    *&v1[v15] = v28;

    v29 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v30 = v1;

    v31 = v30;
    if (os_log_type_enabled(v7, v29))
    {

      v32 = v31;
      v33 = swift_slowAlloc();
      *v33 = 134219008;
      *(v33 + 4) = *(v4 + 16);

      *(v33 + 12) = 2048;
      v34 = *(v4 + 16);

      *(v33 + 14) = v34;

      *(v33 + 22) = 1024;

      *(v33 + 24) = v5;
      *(v33 + 28) = 1024;
      v35 = v32[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues];

      *(v33 + 30) = v35;
      *(v33 + 34) = 2048;
      v36 = *(*&v1[v15] + 16);

      *(v33 + 36) = v36;
      _os_log_impl(&dword_1C8460000, v7, v29, "WA Telemetry: Early Sample nKeys %ld Late Sample nKeys %ld wasSingle %{BOOL}d issues %{BOOL}d Final %ld", v33, 0x2Cu);
      MEMORY[0x1CCA78470](v33, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {

    v20 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v37 = v20;
      swift_once();
      v20 = v37;
    }

    sub_1C8590CA4(v20, &dword_1C8460000, v7, "WA Telemetry: Too many failures while computing stats, aborting", 63, 2, MEMORY[0x1E69E7CC0]);
    return 0;
  }
}

uint64_t sub_1C8465E54(int a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v4 = MEMORY[0x1E69E7CC0];
  v35[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v3, v35, 0, 0xE000000000000000);
  v5 = v35[0];
  v6 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

  v35[0] = sub_1C84778EC(v4);
  sub_1C8472F8C(v6, v35, 0, 0xE000000000000000);

  v7 = v35[0];
  v8 = sub_1C846E444(v5, v35[0]);
  v9 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  *&v1[v9] = v8;

  if (v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment])
  {
LABEL_6:
    *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v10 = sub_1C84665F8(&v1[v9]);
  swift_endAccess();
  if (!v10)
  {
    v11 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v31 = v11;
      swift_once();
      v11 = v31;
    }

    sub_1C8590CA4(v11, &dword_1C8460000, qword_1EDE5CB90, "Failed to add timeOffset", 24, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

LABEL_7:
  swift_beginAccess();
  v12 = sub_1C8468260(&v1[v9]);
  swift_endAccess();
  if ((v12 & 1) == 0 && v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] == 1)
  {

    v13 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v32 = v13;
      swift_once();
      v13 = v32;
    }

    sub_1C8590CA4(v13, &dword_1C8460000, qword_1EDE5CB90, "Too many failures while computing stats, aborting", 49, 2, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  swift_beginAccess();
  v14 = sub_1C847CA30(&v1[v9]);
  swift_endAccess();
  if ((v14 & 1) == 0)
  {
    v15 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v29 = v15;
      swift_once();
      v15 = v29;
    }

    sub_1C8590CA4(v15, &dword_1C8460000, qword_1EDE5CB90, "Failed to add KPI", 17, 2, MEMORY[0x1E69E7CC0]);
  }

  swift_beginAccess();
  v16 = sub_1C8467370(&v1[v9]);
  swift_endAccess();
  if ((v16 & 1) == 0)
  {

    v17 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v30 = v17;
      swift_once();
      v17 = v30;
    }

    sub_1C8590CA4(v17, &dword_1C8460000, qword_1EDE5CB90, "Failed to add TimeTransform", 27, 2, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  if (a1)
  {
  }

  else
  {
    swift_beginAccess();
    v19 = sub_1C8466E3C(&v1[v9], v5, v7);
    swift_endAccess();

    if ((v19 & 1) == 0)
    {
      v20 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        v34 = v20;
        swift_once();
        v20 = v34;
      }

      sub_1C8590CA4(v20, &dword_1C8460000, qword_1EDE5CB90, "Failed to add all Fields Sent only on first transform", 53, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_beginAccess();
  sub_1C847ADCC(&v1[v9]);
  v22 = v21;
  swift_endAccess();
  if ((v22 & 1) == 0)
  {
    v23 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      v33 = v23;
      swift_once();
      v23 = v33;
    }

    sub_1C8590CA4(v23, &dword_1C8460000, qword_1EDE5CB90, "Failed to remove deprecated fields", 34, 2, MEMORY[0x1E69E7CC0]);
  }

  v24 = sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDE5CB90;
  if (os_log_type_enabled(qword_1EDE5CB90, v24))
  {

    v26 = v1;
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    v28 = *(v5 + 16);
    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;

    *(v27 + 14) = v28;

    *(v27 + 22) = 2048;
    *(v27 + 24) = *(*&v1[v9] + 16);

    _os_log_impl(&dword_1C8460000, v25, v24, "Early Sample nKeys %ld Late Sample nKeys %ld Final %ld", v27, 0x20u);
    MEMORY[0x1CCA78470](v27, -1, -1);
  }

  else
  {
  }
}

id sub_1C8466464(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);

  if (v7)
  {
    v8 = sub_1C8590CB4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1C8466538(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_1C8590CC4();
  v7 = a1;
  a4(v6);

  v8 = sub_1C8590CB4();

  return v8;
}

BOOL sub_1C84665F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = (*(v2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v1 = *v12;
    v13 = v12[1];
    v6 &= v6 - 1;
    v31[0] = *v12;
    v31[1] = v13;
    *&v31[5] = 0x5F69737372;
    v31[6] = -3.24180904e178;
    sub_1C8481E28();

    if (sub_1C8590EE4())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1C84750E0(0, *(v10 + 16) + 1, 1);
        v10 = v32;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1C84750E0((v14 > 1), v15 + 1, 1);
        v16 = v15 + 1;
        v10 = v32;
      }

      *(v10 + 16) = v16;
      v17 = v10 + 16 * v15;
      *(v17 + 32) = v1;
      *(v17 + 40) = v13;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v1 = *(v10 + 16);
  if (v1 == 0.0)
  {

    isUniquelyReferenced_nonNull_native = sub_1C8590E44();
    if (qword_1EDE5CA48 == -1)
    {
LABEL_22:
      v24 = qword_1EDE5CB90;
      v25 = MEMORY[0x1E69E7CC0];
      sub_1C8590CA4(isUniquelyReferenced_nonNull_native, &dword_1C8460000, qword_1EDE5CB90, "Failed to find RSSI keys - timeOffset unknown", 45, 2, MEMORY[0x1E69E7CC0]);
      v26 = sub_1C8590E54();
      sub_1C8590CA4(v26, &dword_1C8460000, v24, "Failed to find RSSI keys - timeOffset unknown", 45, 2, v25);
      return *&v1 != 0;
    }

LABEL_25:
    v28 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v28;
    goto LABEL_22;
  }

  v18 = v29;

  v19 = sub_1C847809C(0, v10, a1, v10);

  v20 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v18[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = v19 / 1000.0;
  *&v31[3] = MEMORY[0x1E69E63B0];
  v31[0] = v19 / 1000.0;
  sub_1C8466D6C(v31, 0x7366664F656D6974, 0xEA00000000007465);
  if (*&v18[v20] < 0.0)
  {
    v21 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *&v18[v20];
      _os_log_impl(&dword_1C8460000, v22, v21, "Calculated timeOffset between samples is negative %f", v23, 0xCu);
      MEMORY[0x1CCA78470](v23, -1, -1);
    }
  }

  return *&v1 != 0;
}

double sub_1C84669B8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1C8474B54(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_1C8481CB4(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C8466A1C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = 0;
  v6 = a2 + 40;
  v15 = a2 + 40;
  do
  {
    v16 = result;
    for (i = (v6 + 16 * v5); ; i += 2)
    {
      if (v5 >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }

      v9 = *a3;
      if (*(*a3 + 16))
      {
        break;
      }

LABEL_5:
      ++v5;
      if (v8 == v3)
      {
        return v16;
      }
    }

    v10 = *(i - 1);
    v11 = *i;

    v12 = sub_1C8474B54(v10, v11);
    if ((v13 & 1) == 0 || (sub_1C8481CB4(*(v9 + 56) + 32 * v12, v17), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_5;
    }

    v14 = v18;

    result = v16;
    if (v16 <= v14)
    {
      result = v14;
    }

    ++v5;
    v6 = v15;
  }

  while (v8 != v3);
  return result;
}

uint64_t sub_1C8466B48(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 40;
    while (1)
    {
      v8 = (v7 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }

        v10 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }

LABEL_5:
        v8 += 2;
        if (v6 == v4)
        {
          return v3 & 1;
        }
      }

      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_1C8474B54(v11, v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_1C8481CB4(*(v10 + 56) + 32 * v13, v21);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      v19 = sub_1C8590E64();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v19))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v21[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_1C84741F0(v11, v12, v21);
        *(v17 + 12) = 2048;
        *(v17 + 14) = v15;
        _os_log_impl(&dword_1C8460000, v16, v19, "arrayStat contains negative %s val %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1CCA78470](v18, -1, -1);
        MEMORY[0x1CCA78470](v17, -1, -1);
      }

      v7 = v20;
      v3 = 1;
      if (v6 == v4)
      {
        return v3 & 1;
      }
    }

    goto LABEL_5;
  }

  return v3 & 1;
}

uint64_t sub_1C8466D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C8481D10(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C8475624(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1C8482178(a1, &qword_1EC2AADB8, &qword_1C85A10C0);
    sub_1C84753D0(a2, a3, v9);

    return sub_1C8482178(v9, &qword_1EC2AADB8, &qword_1C85A10C0);
  }

  return result;
}

uint64_t sub_1C8466E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment) == 1)
  {
    if (*(a2 + 16))
    {
      v5 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
      if (v6)
      {
        sub_1C8481CB4(*(a2 + 56) + 32 * v5, &v35);
        v7 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          *(&v36 + 1) = v7;
          v35 = v31;
LABEL_6:
          sub_1C8466D6C(&v35, 0x6C69666F72507061, 0xE900000000000065);
          return 1;
        }
      }
    }

    v15 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE5CB90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C85A0FF0;
    v18 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C8481E7C();
    *(v17 + 64) = v19;
    *(v17 + 32) = 0x6C69666F72507061;
    *(v17 + 40) = 0xE900000000000065;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    if (*(a2 + 16) && (v20 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v21 & 1) != 0))
    {
      sub_1C8481CB4(*(a2 + 56) + 32 * v20, &v35);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1C8482178(&v35, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 72) = v32;
    sub_1C8590CA4(v15, &dword_1C8460000, v16, "Unexpected type for early key %@ %s", 35, 2, v17);
  }

  else
  {
    if (*(a3 + 16))
    {
      v10 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
      if (v11)
      {
        sub_1C8481CB4(*(a3 + 56) + 32 * v10, &v35);
        if (swift_dynamicCast())
        {
          if (*(a2 + 16))
          {
            v12 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
            if (v13)
            {
              sub_1C8481CB4(*(a2 + 56) + 32 * v12, &v35);
              v14 = MEMORY[0x1E69E6158];
              if (swift_dynamicCast())
              {

                *(&v36 + 1) = v14;
                v35 = v31;
                goto LABEL_6;
              }
            }
          }
        }
      }
    }

    v22 = MEMORY[0x1E69E6158];
    v23 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDE5CB90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C85A0FE0;
    *(v25 + 56) = v22;
    v26 = sub_1C8481E7C();
    *(v25 + 64) = v26;
    *(v25 + 32) = 0x6C69666F72507061;
    *(v25 + 40) = 0xE900000000000065;
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    if (*(a2 + 16) && (v27 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v28 & 1) != 0))
    {
      sub_1C8481CB4(*(a2 + 56) + 32 * v27, &v35);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1C8482178(&v35, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v25 + 96) = v22;
    *(v25 + 104) = v26;
    *(v25 + 72) = v33;
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    if (*(a3 + 16) && (v29 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v30 & 1) != 0))
    {
      sub_1C8481CB4(*(a3 + 56) + 32 * v29, &v35);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1C8482178(&v35, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v25 + 136) = v22;
    *(v25 + 144) = v26;
    *(v25 + 112) = v34;
    sub_1C8590CA4(v23, &dword_1C8460000, v24, "Unexpected type for early key %@ %s late key %s", 47, 2, v25);
  }

  return 0;
}

uint64_t sub_1C8467370(void *a1)
{
  v90 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  v2 = *(v1 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset);
  if (v2 != 0.0)
  {
    v3 = 0;
LABEL_4:
    v87 = v3 + 1;
    v4 = *a1;
    v5 = *a1 + 64;
    v6 = 1 << *(*a1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(*a1 + 64);
    v9 = (v6 + 63) >> 6;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = v11;
      if (!v8)
      {
        break;
      }

LABEL_12:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = (v4[6] + ((v11 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];

      if (sub_1C8590DC4())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v94 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1C84750E0(0, v12[2] + 1, 1);
          v12 = v94;
        }

        v19 = v12[2];
        v18 = v12[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v22 = v19 + 1;
          v86 = v19;
          isUniquelyReferenced_nonNull_native = sub_1C84750E0((v18 > 1), v19 + 1, 1);
          v20 = v22;
          v19 = v86;
          v12 = v94;
        }

        v12[2] = v20;
        v21 = &v12[2 * v19];
        v21[4] = v17;
        v21[5] = v16;
      }

      else
      {
      }
    }

    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        v23 = v12[2];
        if (v23)
        {
          v24 = 0;
          v25 = v12 + 5;
          v88 = v12[2];
          while (1)
          {
            if (v24 >= v12[2])
            {
              goto LABEL_73;
            }

            v26 = *(v25 - 1);
            v27 = *v25;
            v28 = v4[2];

            if (v28)
            {
              v29 = sub_1C8474B54(v26, v27);
              if (v30)
              {
                sub_1C8481CB4(v4[7] + 32 * v29, &v94);
                if (swift_dynamicCast())
                {
                  break;
                }
              }
            }

            if (v4[2])
            {
              v46 = sub_1C8474B54(v26, v27);
              if (v47)
              {
                sub_1C8481CB4(v4[7] + 32 * v46, &v94);
                if (swift_dynamicCast())
                {
                  v48 = *v93 * 1000.0;
                  v49 = *(v91 + v90);
                  if (v49 != 0.0)
                  {
                    *&v94 = v26;
                    *(&v94 + 1) = v27;

                    MEMORY[0x1CCA775F0](0x6365737265705F3ALL, 0xE800000000000000);

                    v68 = v94;
                    v95 = MEMORY[0x1E69E63B0];
                    *&v94 = v48 / v49;
                    sub_1C8481D10(&v94, v93);
                    v69 = swift_isUniquelyReferenced_nonNull_native();
                    v70 = *a1;
                    v92 = v70;
                    isUniquelyReferenced_nonNull_native = sub_1C8474B54(v68, *(&v68 + 1));
                    v72 = v70[2];
                    v73 = (v71 & 1) == 0;
                    v64 = __OFADD__(v72, v73);
                    v74 = v72 + v73;
                    if (v64)
                    {
                      goto LABEL_75;
                    }

                    v75 = v71;
                    if (v70[3] >= v74)
                    {
                      if (v69)
                      {
                        goto LABEL_60;
                      }

                      v82 = isUniquelyReferenced_nonNull_native;
                      sub_1C8474BCC();
                      isUniquelyReferenced_nonNull_native = v82;
                      if ((v75 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

LABEL_61:
                      v79 = isUniquelyReferenced_nonNull_native;

                      v4 = v92;
                      v80 = (v92[7] + 32 * v79);
                      __swift_destroy_boxed_opaque_existential_0(v80);
                      isUniquelyReferenced_nonNull_native = sub_1C8481D10(v93, v80);
                    }

                    else
                    {
                      sub_1C8474D70(v74, v69);
                      isUniquelyReferenced_nonNull_native = sub_1C8474B54(v68, *(&v68 + 1));
                      if ((v75 & 1) != (v76 & 1))
                      {
LABEL_79:
                        result = sub_1C8591004();
                        __break(1u);
                        return result;
                      }

LABEL_60:
                      if (v75)
                      {
                        goto LABEL_61;
                      }

LABEL_65:
                      v4 = v70;
                      v70[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
                      *(v70[6] + 16 * isUniquelyReferenced_nonNull_native) = v68;
                      isUniquelyReferenced_nonNull_native = sub_1C8481D10(v93, (v70[7] + 32 * isUniquelyReferenced_nonNull_native));
                      v83 = v70[2];
                      v64 = __OFADD__(v83, 1);
                      v78 = v83 + 1;
                      if (v64)
                      {
                        goto LABEL_77;
                      }

LABEL_66:
                      v4[2] = v78;
                    }

                    *a1 = v4;
                    goto LABEL_22;
                  }

                  v50 = sub_1C8590E44();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  v51 = qword_1EDE5CB90;
                  if (os_log_type_enabled(qword_1EDE5CB90, v50))
                  {
                    v52 = swift_slowAlloc();
                    *v52 = 134218240;
                    *(v52 + 4) = v48;
                    *(v52 + 12) = 2048;
                    *(v52 + 14) = v49;
                    _os_log_impl(&dword_1C8460000, v51, v50, "safeDivideCalculation div by zero numerator %f denominator %f", v52, 0x16u);
                    MEMORY[0x1CCA78470](v52, -1, -1);
                  }

                  v53 = sub_1C8590E44();
                  if (!os_log_type_enabled(v51, v53))
                  {
                    goto LABEL_45;
                  }

                  v37 = swift_slowAlloc();
                  v38 = swift_slowAlloc();
                  *&v94 = v38;
                  *v37 = 136315394;
                  v54 = sub_1C84741F0(v26, v27, &v94);

                  *(v37 + 4) = v54;
                  *(v37 + 12) = 2080;
                  v55 = MEMORY[0x1CCA77690](v12, MEMORY[0x1E69E6158]);
                  v57 = sub_1C84741F0(v55, v56, &v94);

                  *(v37 + 14) = v57;
                  v43 = v53;
                  v44 = v51;
                  v45 = "addTimeTransformToDiffAndKPI safeDivideCalculation check: Double key %s keysInArray %s";
LABEL_44:
                  _os_log_impl(&dword_1C8460000, v44, v43, v45, v37, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1CCA78470](v38, -1, -1);
                  isUniquelyReferenced_nonNull_native = MEMORY[0x1CCA78470](v37, -1, -1);
                  v23 = v88;
                  goto LABEL_22;
                }
              }
            }

LABEL_22:
            ++v24;
            v25 += 2;
            if (v23 == v24)
            {
              goto LABEL_3;
            }
          }

          v31 = *&v93[0] * 1000.0;
          v32 = *(v91 + v90);
          if (v32 != 0.0)
          {
            *&v94 = v26;
            *(&v94 + 1) = v27;

            MEMORY[0x1CCA775F0](0x6365737265705F3ALL, 0xE800000000000000);

            v58 = v94;
            v95 = MEMORY[0x1E69E63B0];
            *&v94 = v31 / v32;
            sub_1C8481D10(&v94, v93);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v60 = *a1;
            v92 = v60;
            isUniquelyReferenced_nonNull_native = sub_1C8474B54(v58, *(&v58 + 1));
            v62 = v60[2];
            v63 = (v61 & 1) == 0;
            v64 = __OFADD__(v62, v63);
            v65 = v62 + v63;
            if (v64)
            {
              goto LABEL_74;
            }

            v66 = v61;
            if (v60[3] < v65)
            {
              sub_1C8474D70(v65, v59);
              isUniquelyReferenced_nonNull_native = sub_1C8474B54(v58, *(&v58 + 1));
              if ((v66 & 1) != (v67 & 1))
              {
                goto LABEL_79;
              }

              goto LABEL_55;
            }

            if (v59)
            {
LABEL_55:
              if (v66)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v81 = isUniquelyReferenced_nonNull_native;
              sub_1C8474BCC();
              isUniquelyReferenced_nonNull_native = v81;
              if (v66)
              {
                goto LABEL_61;
              }
            }

            v4 = v60;
            v60[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
            *(v60[6] + 16 * isUniquelyReferenced_nonNull_native) = v58;
            isUniquelyReferenced_nonNull_native = sub_1C8481D10(v93, (v60[7] + 32 * isUniquelyReferenced_nonNull_native));
            v77 = v60[2];
            v64 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v64)
            {
              goto LABEL_76;
            }

            goto LABEL_66;
          }

          v33 = sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v34 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v33))
          {
            v35 = swift_slowAlloc();
            *v35 = 134218240;
            *(v35 + 4) = v31;
            *(v35 + 12) = 2048;
            *(v35 + 14) = v32;
            _os_log_impl(&dword_1C8460000, v34, v33, "safeDivideCalculation div by zero numerator %f denominator %f", v35, 0x16u);
            MEMORY[0x1CCA78470](v35, -1, -1);
          }

          v36 = sub_1C8590E44();
          if (!os_log_type_enabled(v34, v36))
          {
LABEL_45:

            v23 = v88;
            goto LABEL_22;
          }

          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v94 = v38;
          *v37 = 136315394;
          v39 = sub_1C84741F0(v26, v27, &v94);

          *(v37 + 4) = v39;
          *(v37 + 12) = 2080;
          v40 = MEMORY[0x1CCA77690](v12, MEMORY[0x1E69E6158]);
          v42 = sub_1C84741F0(v40, v41, &v94);

          *(v37 + 14) = v42;
          v43 = v36;
          v44 = v34;
          v45 = "addTimeTransformToDiffAndKPI safeDivideCalculation check: Int key %s keysInArray %s";
          goto LABEL_44;
        }

LABEL_3:

        v3 = v87;
        if (v87 == 14)
        {
          swift_arrayDestroy();
          return v2 != 0.0;
        }

        goto LABEL_4;
      }

      v8 = *(v5 + 8 * v11);
      ++v13;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  isUniquelyReferenced_nonNull_native = sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
LABEL_78:
    v85 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v85;
  }

  sub_1C8590CA4(isUniquelyReferenced_nonNull_native, &dword_1C8460000, qword_1EDE5CB90, "timeOffset is 0 - producing timeTransform requires this", 55, 2, MEMORY[0x1E69E7CC0]);
  return v2 != 0.0;
}

char *sub_1C8467D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v1;
    v5 = sub_1C847416C(*(a1 + 16), 0);
    v6 = sub_1C8477780(&v10, v5 + 4, v2, a1);
    v7 = v10;

    result = sub_1C8463D10(v7);
    if (v6 != v2)
    {
      __break(1u);
      return result;
    }

    v1 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11 = v5;
  sub_1C84757E0(&v11);
  v9 = v11;
  if (v1)
  {
  }

  return v9;
}

unint64_t sub_1C8467E40(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C8590F64();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1C84762B8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_1C8468140(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(*(a1 + 16), 0);
  v4 = sub_1C8477628(&v6, v3 + 4, v2, a1);
  sub_1C8463D10(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1C84681D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(*(a1 + 16), 0);
  v4 = sub_1C8477780(&v6, v3 + 4, v2, a1);
  sub_1C8463D10(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C8468260(uint64_t a1)
{
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE0, &qword_1C85A10E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v438 = &v353 - v5;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C85A1000;
  v429 = 0x80000001C85A3B00;
  *(v6 + 40) = 0x80000001C85A3B00;
  *(v6 + 48) = 0xD000000000000029;
  v413 = 0x80000001C85A3B30;
  *(v6 + 56) = 0x80000001C85A3B30;
  *(v6 + 64) = 0xD000000000000029;
  v407 = 0x80000001C85A3B60;
  v408 = 0x80000001C85A3B90;
  *(v6 + 72) = 0x80000001C85A3B60;
  *(v6 + 80) = 0xD000000000000029;
  *(v6 + 88) = 0x80000001C85A3B90;
  *(v6 + 96) = 0xD000000000000028;
  v404 = 0x80000001C85A3BC0;
  v405 = 0x80000001C85A3BF0;
  *(v6 + 104) = 0x80000001C85A3BC0;
  *(v6 + 112) = 0xD000000000000028;
  v406 = 0xD000000000000028;
  *(v6 + 120) = 0x80000001C85A3BF0;
  *(v6 + 128) = 0xD000000000000025;
  v409 = 0xD000000000000025;
  v402 = 0x80000001C85A3C50;
  v403 = 0x80000001C85A3C20;
  *(v6 + 136) = 0x80000001C85A3C20;
  *(v6 + 144) = 0xD000000000000026;
  *(v6 + 152) = 0x80000001C85A3C50;
  *(v6 + 160) = 0xD000000000000026;
  v418 = 0xD000000000000026;
  v400 = 0x80000001C85A3CB0;
  v401 = 0x80000001C85A3C80;
  *(v6 + 168) = 0x80000001C85A3C80;
  *(v6 + 176) = 0xD000000000000029;
  *(v6 + 184) = 0x80000001C85A3CB0;
  *(v6 + 192) = 0xD000000000000029;
  v398 = 0x80000001C85A3D10;
  v399 = 0x80000001C85A3CE0;
  *(v6 + 200) = 0x80000001C85A3CE0;
  *(v6 + 208) = 0xD00000000000002ALL;
  *(v6 + 216) = 0x80000001C85A3D10;
  *(v6 + 224) = 0xD00000000000002ALL;
  v396 = 0xD00000000000001DLL;
  v397 = 0x80000001C85A3D40;
  *(v6 + 232) = 0x80000001C85A3D40;
  *(v6 + 240) = 0xD00000000000001DLL;
  v394 = 0x80000001C85A3D90;
  v395 = 0x80000001C85A3D70;
  *(v6 + 248) = 0x80000001C85A3D70;
  *(v6 + 256) = 0xD00000000000001CLL;
  *(v6 + 264) = 0x80000001C85A3D90;
  *(v6 + 272) = 0xD00000000000001CLL;
  v391 = 0x80000001C85A3DD0;
  v392 = 0x80000001C85A3DB0;
  *(v6 + 280) = 0x80000001C85A3DB0;
  *(v6 + 288) = 0xD000000000000024;
  *(v6 + 296) = 0x80000001C85A3DD0;
  *(v6 + 304) = 0xD000000000000024;
  v388 = 0x80000001C85A3E30;
  v389 = 0x80000001C85A3E00;
  *(v6 + 312) = 0x80000001C85A3E00;
  *(v6 + 320) = 0xD000000000000024;
  *(v6 + 328) = 0x80000001C85A3E30;
  *(v6 + 336) = 0xD000000000000024;
  v390 = 0xD000000000000024;
  v386 = 0x80000001C85A3E90;
  v387 = 0x80000001C85A3E60;
  *(v6 + 344) = 0x80000001C85A3E60;
  *(v6 + 352) = 0xD00000000000001CLL;
  *(v6 + 360) = 0x80000001C85A3E90;
  *(v6 + 368) = 0xD00000000000001CLL;
  *(v6 + 608) = 0xD000000000000030;
  *(v6 + 624) = 0xD000000000000031;
  *(v6 + 640) = 0xD000000000000038;
  *(v6 + 656) = 0xD000000000000039;
  *(v6 + 672) = 0xD000000000000036;
  *(v6 + 688) = 0xD000000000000037;
  v384 = 0x80000001C85A3ED0;
  v385 = 0x80000001C85A3EB0;
  *(v6 + 376) = 0x80000001C85A3EB0;
  *(v6 + 384) = 0xD00000000000001CLL;
  *(v6 + 392) = 0x80000001C85A3ED0;
  *(v6 + 400) = 0xD00000000000001CLL;
  v393 = 0xD00000000000001CLL;
  v382 = 0x80000001C85A3F10;
  v383 = 0x80000001C85A3EF0;
  *(v6 + 408) = 0x80000001C85A3EF0;
  *(v6 + 416) = 0xD00000000000001ALL;
  *(v6 + 424) = 0x80000001C85A3F10;
  *(v6 + 432) = 0xD00000000000001ALL;
  v379 = 0x80000001C85A3F50;
  v380 = 0x80000001C85A3F30;
  *(v6 + 440) = 0x80000001C85A3F30;
  *(v6 + 448) = 0xD00000000000001ALL;
  *(v6 + 456) = 0x80000001C85A3F50;
  *(v6 + 464) = 0xD00000000000001ALL;
  v377 = 0x80000001C85A3F90;
  v378 = 0x80000001C85A3F70;
  *(v6 + 472) = 0x80000001C85A3F70;
  *(v6 + 480) = 0xD00000000000001BLL;
  *(v6 + 488) = 0x80000001C85A3F90;
  *(v6 + 496) = 0xD00000000000001BLL;
  v374 = 0x80000001C85A3FD0;
  v375 = 0x80000001C85A3FB0;
  *(v6 + 504) = 0x80000001C85A3FB0;
  *(v6 + 512) = 0xD00000000000001BLL;
  *(v6 + 520) = 0x80000001C85A3FD0;
  v376 = 0xD00000000000001BLL;
  *(v6 + 528) = 0xD00000000000001BLL;
  v373 = 0x80000001C85A3FF0;
  *(v6 + 536) = 0x80000001C85A3FF0;
  *(v6 + 544) = 0xD00000000000001ALL;
  v372 = 0x80000001C85A4010;
  *(v6 + 552) = 0x80000001C85A4010;
  *(v6 + 560) = 0xD00000000000001ALL;
  v371 = 0x80000001C85A4030;
  *(v6 + 568) = 0x80000001C85A4030;
  *(v6 + 576) = 0xD00000000000001ALL;
  v370 = 0x80000001C85A4050;
  *(v6 + 584) = 0x80000001C85A4050;
  v381 = 0xD00000000000001ALL;
  *(v6 + 592) = 0xD00000000000001ALL;
  v369 = 0x80000001C85A4070;
  *(v6 + 600) = 0x80000001C85A4070;
  v368 = 0x80000001C85A4090;
  *(v6 + 616) = 0x80000001C85A4090;
  v367 = 0x80000001C85A40D0;
  *(v6 + 632) = 0x80000001C85A40D0;
  *(v6 + 648) = 0x80000001C85A4110;
  v365 = 0x80000001C85A4150;
  v366 = 0x80000001C85A4110;
  *(v6 + 664) = 0x80000001C85A4150;
  v364 = 0x80000001C85A4190;
  *(v6 + 680) = 0x80000001C85A4190;
  v363 = 0x80000001C85A41D0;
  *(v6 + 696) = 0x80000001C85A41D0;
  *&v439 = v6;
  *(v6 + 32) = 0xD000000000000029;
  v437 = (v6 + 32);
  v440 = a1;

  v7 = sub_1C84681D0(v434);
  v8 = MEMORY[0x1E69E7CC0];
  *&v445 = MEMORY[0x1E69E7CC0];
  v432 = v7 + 4;
  i = v7;
  v436 = v7 + 5;
  v411 = MEMORY[0x1E69E7CC0];
  v433 = 0;
  do
  {
LABEL_3:
    if (*(v439 + 16) <= v3)
    {
      goto LABEL_446;
    }

    v9 = &v437[2 * v3];
    v11 = *v9;
    v10 = v9[1];
    ++v3;
    a1 = *(i + 16);

    v12 = -a1;
    v13 = -1;
    v14 = v436;
    do
    {
      if (v12 + v13 == -1)
      {

        if (v3 == 42)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      if (++v13 >= *(i + 16))
      {
        __break(1u);
LABEL_374:

        LOBYTE(a1) = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          goto LABEL_453;
        }

        goto LABEL_375;
      }

      v15 = v14 + 2;
      a1 = *v14;

      v1 = sub_1C8590DC4();

      v14 = v15;
    }

    while ((v1 & 1) == 0);
    a1 = &v445;
    sub_1C8475120();
    v8 = v445;
    v17 = *(v445 + 16);
    v16 = *(v445 + 24);
    v1 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_1C84750E0((v16 > 1), v17 + 1, 1);
      v8 = v445;
    }

    *(v8 + 16) = v1;
    v18 = v8 + 16 * v17;
    *(v18 + 32) = v11;
    *(v18 + 40) = v10;
  }

  while (v3 != 42);
LABEL_11:

  v19 = v8;
  v1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_rssi_";
  v426 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations;
  v20 = v435[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations];
  v449 = v8;
  a1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_txLatencyVI_";
  if ((v20 & 1) == 0)
  {
    goto LABEL_37;
  }

  v21 = swift_allocObject();
  v22 = 0;
  *(v21 + 16) = xmmword_1C85A1010;
  *(v21 + 32) = v409;
  *(v21 + 40) = 0x80000001C85A4210;
  v23 = v21 + 40;
  *(v21 + 48) = 0xD00000000000002CLL;
  *(v21 + 56) = 0x80000001C85A4240;
  *(v21 + 64) = 0xD00000000000002CLL;
  *(v21 + 72) = 0x80000001C85A4270;
  *(v21 + 80) = 0xD00000000000002CLL;
  *(v21 + 88) = 0x80000001C85A42A0;
  *(v21 + 96) = 0xD00000000000002CLL;
  *(v21 + 104) = 0x80000001C85A42D0;
  v437 = 0x80000001C85A45E0;
  *&v439 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E6158];
  v436 = (v21 + 40);
  do
  {
    v24 = (v23 + 16 * v22);
    v25 = v22;
    while (1)
    {
      if (v25 >= *(v21 + 16))
      {
        goto LABEL_448;
      }

      v22 = v25 + 1;
      v26 = *v24;
      *&v445 = *(v24 - 1);
      *(&v445 + 1) = v26;
      *&v444[0] = 0xD000000000000011;
      *(&v444[0] + 1) = v437;
      sub_1C8481E28();

      a1 = &v445;
      v27 = sub_1C8590E94();
      if (v27[2] == 2)
      {
        break;
      }

      v24 += 2;
      ++v25;
      if (v22 == 5)
      {
        goto LABEL_23;
      }
    }

    v28 = v27[5];
    v431 = v27[4];
    v29 = v27[7];
    v430 = v27[6];
    v30 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v439 = sub_1C8473E28(0, *(v439 + 16) + 1, 1, v439);
    }

    a1 = *(v439 + 16);
    v31 = *(v439 + 24);
    if (a1 >= v31 >> 1)
    {
      *&v439 = sub_1C8473E28((v31 > 1), a1 + 1, 1, v439);
    }

    v32 = v439;
    *(v439 + 16) = a1 + 1;
    v33 = (v32 + 32 * a1);
    v33[4] = v431;
    v33[5] = v30;
    v33[6] = v430;
    v33[7] = v29;
    v23 = v436;
  }

  while (v25 != 4);
LABEL_23:

  v447 = MEMORY[0x1E69E7CD0];
  v436 = *(i + 16);
  if (!v436)
  {
    goto LABEL_36;
  }

  v34 = 0;
  v35 = *(v439 + 16);
  v431 = v439 + 56;
  while (2)
  {
    if (v34 >= *(i + 16))
    {
      goto LABEL_449;
    }

    if (!v35)
    {
      goto LABEL_26;
    }

    v437 = v34;
    v36 = &v432[2 * v34];
    v37 = *v36;
    v38 = v36[1];

    v39 = 0;
    v40 = v431;
    while (1)
    {
      if (v39 >= *(v439 + 16))
      {
        goto LABEL_445;
      }

      v41 = *(v40 - 1);
      v42 = *v40;
      a1 = *(v40 - 2);

      v1 = sub_1C8590DC4();

      if (v1)
      {
        break;
      }

LABEL_31:
      ++v39;
      v40 += 4;
      if (v35 == v39)
      {
        goto LABEL_25;
      }
    }

    *&v445 = v37;
    *(&v445 + 1) = v38;
    *&v444[0] = v41;
    *(&v444[0] + 1) = v42;
    v43 = sub_1C8590C94();
    v44 = v438;
    (*(*(v43 - 8) + 56))(v438, 1, 1, v43);
    sub_1C8481E28();
    sub_1C8590ED4();
    LOBYTE(a1) = v45;
    v1 = v46;
    sub_1C8482178(v44, &qword_1EC2AADE0, &qword_1C85A10E0);

    if (v1)
    {
      goto LABEL_31;
    }

    v47 = sub_1C8590DF4();
    v49 = v48;
    v1 = v50;
    v52 = v51;

    v53 = MEMORY[0x1CCA77590](v47, v49, v1, v52);
    v55 = v54;

    a1 = &v447;
    sub_1C8476CB8(&v445, v53, v55);
LABEL_25:

    v34 = v437;
LABEL_26:
    if (++v34 != v436)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v56 = sub_1C8468140(v447);
  sub_1C846CD90(v56);
  v19 = v449;
  a1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_txLatencyVI_";
  v1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_rssi_";
LABEL_37:
  v424 = *(v19 + 16);
  if (!v424)
  {

    v60 = v440;
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_379;
  }

  v421 = 0;
  v57 = 0;
  v58 = *(i + 16);
  v423 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v427 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev;
  v410 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats;
  v425 = v19 + 32;
  v416 = 0x80000001C85A4540;
  v415 = 0x80000001C85A4570;
  v360 = 0x80000001C85A4210;
  v359 = 0x80000001C85A4240;
  v358 = 0x80000001C85A4270;
  v357 = 0x80000001C85A42A0;
  v356 = 0x80000001C85A42D0;
  v355 = 0x80000001C85A4500;
  v354 = 0x80000001C85A4520;
  v428 = i + 40;
  *&v439 = v58;
  v419 = v58 - 1;
  v417 = xmmword_1C85A1020;
  *(&v59 + 1) = 6;
  v420 = xmmword_1C85A0FE0;
  *&v59 = 136315138;
  v412 = v59;
  v414 = xmmword_1C85A0FF0;
  *(&v59 + 1) = 12;
  v362 = xmmword_1C85A1030;
  *&v59 = 136315394;
  v361 = v59;
  v60 = v440;
  v61 = MEMORY[0x1E69E7CC0];
  v422 = v19;
  while (2)
  {
    if (*(v19 + 16) <= v57)
    {
      goto LABEL_450;
    }

    v431 = v57;
    v62 = (v425 + 16 * v57);
    v64 = *v62;
    v63 = v62[1];
    *&v445 = v61;

    if (!v439)
    {
      v1 = v61;
LABEL_57:
      v76 = v433;
      v77 = sub_1C8466B48(0, v1, v60);
      v437 = v1;
      LODWORD(v430) = v77;
      if (v77)
      {
        v78 = sub_1C8590E64();
        v1 = v435;
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        a1 = qword_1EDE5CB90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
        v79 = swift_allocObject();
        *(v79 + 16) = v417;
        *(v79 + 56) = MEMORY[0x1E69E6158];
        *(v79 + 64) = sub_1C8481E7C();
        *(v79 + 32) = v64;
        *(v79 + 40) = v63;

        sub_1C8590CA4(v78, &dword_1C8460000, a1, "arrayStat contains negative %@", 30, 2, v79);

        v80 = v421 + 1;
        if (__OFADD__(v421, 1))
        {
          goto LABEL_451;
        }

        if (v80 >= 11)
        {

          *(v1 + v423) = 1;
          v349 = sub_1C8590E44();
          v350 = swift_allocObject();
          *(v350 + 16) = v414;
          v351 = MEMORY[0x1E69E65A8];
          v352 = MEMORY[0x1E69E6530];
          *(v350 + 56) = MEMORY[0x1E69E6530];
          *(v350 + 64) = v351;
          *(v350 + 32) = v80;
          *(v350 + 96) = v352;
          *(v350 + 104) = v351;
          *(v350 + 72) = 10;
          sub_1C8590CA4(v349, &dword_1C8460000, a1, "Negative differentials Exceeded: %d, max %d", v353, v354);

          return 0;
        }

        ++v421;
        v60 = v440;
        v81 = v1;
        v1 = v437;
      }

      else
      {
        v81 = v435;
      }

      v82 = sub_1C8466A1C(0, v1, v60);

      v83 = v81;
      sub_1C84796E4(v1, v60, v82, v64, v63);
      v85 = v84;

      v86 = v83;
      v87 = sub_1C8479888(0, v1, v60, v86);

      if (*(v81 + v423) == 1)
      {
        goto LABEL_374;
      }

      v88 = v86;
      sub_1C8479BF8(v1, v60, v64, v63, 9.22337204e18);
      v90 = v89;

      if (v90 == 9.22337204e18)
      {
        v91 = 0.0;
      }

      else
      {
        v91 = v90;
      }

      v92 = v88;
      sub_1C8479DA4(v1, v60, v64, v63, -9.22337204e18);
      v94 = v93;

      if (v94 == -9.22337204e18)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = v94;
      }

      v96 = v92;
      sub_1C8479F50(v1, v60, v64, v63, 0.0);
      v98 = v97;

      v99 = v87;
      if (v87)
      {
        v100 = v98 / v87;
      }

      else
      {
        v100 = 0.0;
      }

      v448[0] = v100;
      v101 = 0.0;
      if (*(v81 + v427) == 1)
      {

        v102 = v96;
        sub_1C847A10C(v1, v60, v64, v63, v448, 0.0);
        v104 = v103;

        if (v87)
        {
          v105 = sqrt(v104 / v99);
          v101 = sqrt(v105 / v99);
        }
      }

      v106 = swift_allocObject();
      *(v106 + 16) = 0;
      *&v438 = v106 + 16;
      *(v106 + 24) = 0xE000000000000000;
      if (v435[v426] == 1)
      {
        *&v445 = v64;
        *(&v445 + 1) = v63;
        *&v444[0] = v418;
        *(&v444[0] + 1) = v416;
        v442 = 0xD000000000000013;
        v443 = v415;
        sub_1C8481E28();
        v107 = sub_1C8590EC4();
        v109 = v108;
      }

      else
      {

        v107 = v64;
        v109 = v63;
      }

      v432 = v106;
      v433 = v76;
      v436 = v87;
      if (v107 == 0xD000000000000029 && v429 == v109 || (v434 = v107, (sub_1C8590FE4() & 1) != 0))
      {

        v110 = 0x6375535448567852;
        v111 = 0xEC00000073736563;
LABEL_89:
        swift_beginAccess();
        *(v106 + 16) = v110;
        *(v106 + 24) = v111;

        if (v436)
        {
          v112 = 0;
          if (v430)
          {
            goto LABEL_91;
          }

          v194 = 1;
LABEL_125:

          v195 = v435[v410];
          v434 = v112;
          if (v195 == 1 && v91 == v95 && v95 == v100 && v101 == 0.0)
          {
            v196 = MEMORY[0x1E69E63B0];
            if (v112)
            {
              swift_beginAccess();
              v197 = *(v106 + 16);
              v198 = *(v106 + 24);
              *&v445 = 0x6E616964656DLL;
              *(&v445 + 1) = 0xE600000000000000;
              MEMORY[0x1CCA775F0](v197, v198);
              v199 = v445;
              v446 = v196;
              *&v445 = v100;
              sub_1C8466D6C(&v445, v199, *(&v445 + 1));
              v137 = &qword_1EC2AADB8;
              if ((v194 & 1) == 0)
              {
                v434 = 1;
                goto LABEL_103;
              }
            }

            else
            {
              swift_beginAccess();
              v236 = *(v106 + 16);
              v237 = *(v106 + 24);
              *&v445 = 1851876717;
              *(&v445 + 1) = 0xE400000000000000;
              MEMORY[0x1CCA775F0](v236, v237);
              v238 = v445;
              v446 = v196;
              *&v445 = v100;
              sub_1C8466D6C(&v445, v238, *(&v445 + 1));
              v137 = &qword_1EC2AADB8;
              if ((v194 & 1) == 0)
              {
                v434 = 0;
LABEL_103:
                v138 = *(v1 + 16);
                if (v138)
                {
                  v139 = (v1 + 40);
                  do
                  {
                    v140 = *(v139 - 1);
                    v141 = *v139;

                    sub_1C84753D0(v140, v141, &v445);
                    sub_1C8482178(&v445, v137, &qword_1C85A10C0);
                    v142 = sub_1C8590D44();
                    v143 = sub_1C847842C(v142, v140, v141);
                    v145 = v144;
                    v1 = v137;
                    v147 = v146;
                    v149 = v148;

                    v150 = v147;
                    v137 = v1;
                    v151 = MEMORY[0x1CCA77590](v143, v145, v150, v149);
                    v153 = v152;

                    sub_1C84753D0(v151, v153, &v445);

                    sub_1C8482178(&v445, v1, &qword_1C85A10C0);
                    v139 += 2;
                    --v138;
                  }

                  while (v138);
                }

                if (v434)
                {
                  swift_beginAccess();
                  v154 = v432;
                  v155 = v432[2];
                  v156 = v432[3];
                  *&v444[0] = 0x6E616964656DLL;
                  *(&v444[0] + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v155, v156);
                  LOBYTE(a1) = BYTE8(v444[0]);
                  v60 = v440;
                  v434 = *v440;
                  sub_1C84669B8(v434, &v445, *&v444[0], *(&v444[0] + 1));

                  v61 = MEMORY[0x1E69E7CC0];
                  if (v446)
                  {
                    if (swift_dynamicCast())
                    {
                      v157 = *&v444[0];
                      if ((~*&v444[0] & 0x7FF0000000000000) == 0 && (*&v444[0] & 0xFFFFFFFFFFFFFLL) != 0)
                      {
                        v1 = sub_1C8590E44();
                        if (qword_1EDE5CA48 != -1)
                        {
                          swift_once();
                        }

                        *&v438 = qword_1EDE5CB90;
                        v158 = swift_allocObject();
                        *(v158 + 16) = v157;
                        v159 = swift_allocObject();
                        *(v159 + 16) = 32;
                        v160 = swift_allocObject();
                        *(v160 + 16) = 8;
                        v161 = swift_allocObject();
                        v162 = v432;
                        *(v161 + 16) = sub_1C8482020;
                        *(v161 + 24) = v162;
                        v163 = swift_allocObject();
                        *(v163 + 16) = sub_1C8482340;
                        *(v163 + 24) = v161;
                        v164 = swift_allocObject();
                        *(v164 + 16) = 0;
                        a1 = swift_allocObject();
                        *(a1 + 16) = 8;
                        v165 = swift_allocObject();
                        *(v165 + 16) = sub_1C8482348;
                        *(v165 + 24) = v158;
                        v166 = swift_allocObject();
                        *(v166 + 16) = sub_1C8482344;
                        *(v166 + 24) = v165;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                        v167 = swift_allocObject();
                        *(v167 + 16) = v362;
                        *(v167 + 32) = sub_1C848232C;
                        *(v167 + 40) = v159;
                        *(v167 + 48) = sub_1C848232C;
                        *(v167 + 56) = v160;
                        *(v167 + 64) = sub_1C8482330;
                        *(v167 + 72) = v163;
                        *(v167 + 80) = sub_1C848232C;
                        *(v167 + 88) = v164;
                        *(v167 + 96) = sub_1C848232C;
                        *(v167 + 104) = a1;
                        *(v167 + 112) = sub_1C8482334;
                        *(v167 + 120) = v166;
                        swift_retain_n();
                        v168 = v438;

                        if (os_log_type_enabled(v168, v1))
                        {
                          a1 = swift_slowAlloc();
                          v169 = swift_slowAlloc();
                          *&v445 = v169;
                          *a1 = v361;
                          v170 = v162[2];
                          v171 = v162[3];

                          v172 = sub_1C84741F0(v170, v171, &v445);

                          *(a1 + 4) = v172;
                          *(a1 + 12) = 2048;
                          *(a1 + 14) = v157;
                          v173 = v1;
                          v174 = v168;
                          v175 = "median%s isNaN %f";
LABEL_123:
                          _os_log_impl(&dword_1C8460000, v174, v173, v175, a1, 0x16u);
                          __swift_destroy_boxed_opaque_existential_0(v169);
                          MEMORY[0x1CCA78470](v169, -1, -1);
                          MEMORY[0x1CCA78470](a1, -1, -1);

LABEL_164:
                          v60 = v440;
                          v61 = MEMORY[0x1E69E7CC0];
LABEL_40:
                          v57 = v431 + 1;
                          v19 = v422;
                          if (v431 + 1 == v424)
                          {

LABEL_379:

                            sub_1C84669B8(v434, &v445, 0xD000000000000029, 0x80000001C85A4320);
                            if (v446)
                            {
                              v289 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v289;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0x43746E6572727563, 0xEC000000304D4C54);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4320, &v445);
                                goto LABEL_382;
                              }
                            }

                            else
                            {
LABEL_382:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(*v60, &v445, 0xD000000000000029, 0x80000001C85A4350);
                            if (v446)
                            {
                              v290 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v290;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0x43746E6572727563, 0xEC000000314D4C54);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4350, &v445);
                                goto LABEL_386;
                              }
                            }

                            else
                            {
LABEL_386:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(*v60, &v445, 0xD000000000000029, 0x80000001C85A4380);
                            if (v446)
                            {
                              v291 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v291;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0xD000000000000013, 0x80000001C85A44C0);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4380, &v445);
                                goto LABEL_390;
                              }
                            }

                            else
                            {
LABEL_390:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(*v60, &v445, 0xD000000000000029, 0x80000001C85A43B0);
                            if (v446)
                            {
                              v292 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v292;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0xD000000000000013, 0x80000001C85A44A0);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A43B0, &v445);
                                goto LABEL_394;
                              }
                            }

                            else
                            {
LABEL_394:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(*v60, &v445, 0xD000000000000031, 0x80000001C85A43E0);
                            if (v446)
                            {
                              v293 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v293;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0xD000000000000019, 0x80000001C85A4480);
                                sub_1C84753D0(0xD000000000000031, 0x80000001C85A43E0, &v445);
                                goto LABEL_398;
                              }
                            }

                            else
                            {
LABEL_398:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(*v60, &v445, 0xD000000000000031, 0x80000001C85A4420);
                            if (v446)
                            {
                              v294 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v446 = v294;
                                *&v445 = *&v444[0];
                                sub_1C8466D6C(&v445, 0xD000000000000019, 0x80000001C85A4460);
                                v295 = v60;
                                sub_1C84753D0(0xD000000000000031, 0x80000001C85A4420, &v445);
                                goto LABEL_403;
                              }

                              v295 = v60;
                            }

                            else
                            {
                              v295 = v60;
LABEL_403:
                              sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            v296 = *v295;
                            *&v445 = v61;
                            v297 = 1 << *(v296 + 32);
                            v298 = -1;
                            if (v297 < 64)
                            {
                              v298 = ~(-1 << v297);
                            }

                            v299 = v298 & *(v296 + 64);
                            v300 = (v297 + 63) >> 6;

                            v1 = 0;
                            for (i = 0xD000000000000013; v299; *(v311 + 40) = v304)
                            {
LABEL_413:
                              while (1)
                              {
                                v302 = __clz(__rbit64(v299));
                                v299 &= v299 - 1;
                                v303 = (*(v296 + 48) + ((v1 << 10) | (16 * v302)));
                                v305 = *v303;
                                v304 = v303[1];

                                if (sub_1C8590DC4() & 1) != 0 && (sub_1C8590DD4())
                                {
                                  break;
                                }

                                if (!v299)
                                {
                                  goto LABEL_408;
                                }
                              }

                              v306 = v411;
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              *&v445 = v306;
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                sub_1C84750E0(0, *(v306 + 16) + 1, 1);
                                v306 = v445;
                              }

                              v309 = *(v306 + 16);
                              v308 = *(v306 + 24);
                              v310 = v309 + 1;
                              if (v309 >= v308 >> 1)
                              {
                                *&v439 = v309 + 1;
                                *&v438 = v309;
                                sub_1C84750E0((v308 > 1), v309 + 1, 1);
                                v310 = v439;
                                v309 = v438;
                                v306 = v445;
                              }

                              *(v306 + 16) = v310;
                              v411 = v306;
                              v311 = v306 + 16 * v309;
                              *(v311 + 32) = v305;
                            }

LABEL_408:
                            a1 = v411;
                            while (1)
                            {
                              v301 = v1 + 1;
                              if (__OFADD__(v1, 1))
                              {
                                goto LABEL_447;
                              }

                              if (v301 >= v300)
                              {
                                break;
                              }

                              v299 = *(v296 + 64 + 8 * v301);
                              ++v1;
                              if (v299)
                              {
                                v1 = v301;
                                goto LABEL_413;
                              }
                            }

                            v312 = *(a1 + 16);
                            if (!v312)
                            {
LABEL_441:

                              return 1;
                            }

                            v313 = (a1 + 40);
                            *(&v314 + 1) = 6;
                            v439 = xmmword_1C85A0FE0;
                            *&v314 = 136315138;
                            v438 = v314;
                            v315 = v440;
                            while (2)
                            {
                              i = v312;
                              v316 = *(v313 - 1);
                              v317 = *v313;

                              v318 = sub_1C8590D44();
                              v319 = sub_1C847A4A4(v318, v316, v317);
                              v321 = v320;
                              v323 = v322;
                              v325 = v324;

                              v326 = MEMORY[0x1CCA77590](v319, v321, v323, v325);
                              v328 = v327;

                              *&v444[0] = v326;
                              *(&v444[0] + 1) = v328;

                              MEMORY[0x1CCA775F0](0x657572745FLL, 0xE500000000000000);
                              v329 = *v315;
                              if (*(*v315 + 16))
                              {
                                v330 = sub_1C8474B54(*&v444[0], *(&v444[0] + 1));
                                v332 = v331;

                                if ((v332 & 1) == 0)
                                {
                                  goto LABEL_435;
                                }

                                sub_1C8481CB4(*(v329 + 56) + 32 * v330, &v445);
                                if ((swift_dynamicCast() & 1) == 0)
                                {
                                  goto LABEL_435;
                                }

                                v333 = *&v444[0];
                                *&v444[0] = v326;
                                *(&v444[0] + 1) = v328;

                                MEMORY[0x1CCA775F0](0x65736C61665FLL, 0xE600000000000000);
                                v1 = *(&v444[0] + 1);
                                if (*(v329 + 16))
                                {
                                  a1 = sub_1C8474B54(*&v444[0], *(&v444[0] + 1));
                                  v335 = v334;

                                  if (v335)
                                  {
                                    sub_1C8481CB4(*(v329 + 56) + 32 * a1, &v445);
                                    if (swift_dynamicCast())
                                    {
                                      v336 = v333 + *&v444[0];
                                      if (__OFADD__(v333, *&v444[0]))
                                      {
                                        goto LABEL_452;
                                      }

                                      if (v336 < 1)
                                      {
                                        v339 = sub_1C8590E34();
                                        if (qword_1EDE5CA48 != -1)
                                        {
                                          swift_once();
                                        }

                                        v340 = qword_1EDE5CB90;
                                        v341 = swift_allocObject();
                                        *(v341 + 16) = v326;
                                        *(v341 + 24) = v328;
                                        v342 = swift_allocObject();
                                        *(v342 + 16) = 32;
                                        v343 = swift_allocObject();
                                        *(v343 + 16) = 8;
                                        v344 = swift_allocObject();
                                        *(v344 + 16) = sub_1C848233C;
                                        *(v344 + 24) = v341;
                                        v345 = swift_allocObject();
                                        *(v345 + 16) = sub_1C8482340;
                                        *(v345 + 24) = v344;
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                                        v346 = swift_allocObject();
                                        *(v346 + 16) = v439;
                                        *(v346 + 32) = sub_1C848232C;
                                        *(v346 + 40) = v342;
                                        *(v346 + 48) = sub_1C848232C;
                                        *(v346 + 56) = v343;
                                        *(v346 + 64) = sub_1C8482330;
                                        *(v346 + 72) = v345;

                                        if (os_log_type_enabled(v340, v339))
                                        {
                                          v347 = swift_slowAlloc();
                                          v348 = swift_slowAlloc();
                                          *&v445 = v348;
                                          *v347 = v438;
                                          *(v347 + 4) = sub_1C84741F0(v326, v328, &v445);
                                          _os_log_impl(&dword_1C8460000, v340, v339, "key %s has 0 for _true and _false time values", v347, 0xCu);
                                          __swift_destroy_boxed_opaque_existential_0(v348);
                                          MEMORY[0x1CCA78470](v348, -1, -1);
                                          MEMORY[0x1CCA78470](v347, -1, -1);
                                        }
                                      }

                                      else
                                      {
                                        v446 = MEMORY[0x1E69E63B0];
                                        *&v445 = (v333 / v336);
                                        sub_1C8481D10(&v445, v444);
                                        v337 = v440;
                                        v338 = swift_isUniquelyReferenced_nonNull_native();
                                        v442 = *v337;
                                        *v337 = 0x8000000000000000;
                                        sub_1C8475624(v444, v326, v328, v338);
                                        *v337 = v442;
                                      }
                                    }
                                  }

LABEL_435:
                                  *&v445 = v326;
                                  *(&v445 + 1) = v328;

                                  MEMORY[0x1CCA775F0](0x657572745FLL, 0xE500000000000000);
                                  v315 = v440;
                                  sub_1C84753D0(v445, *(&v445 + 1), &v445);

                                  sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                                  *&v445 = v326;
                                  *(&v445 + 1) = v328;

                                  MEMORY[0x1CCA775F0](0x65736C61665FLL, 0xE600000000000000);

                                  sub_1C84753D0(v445, *(&v445 + 1), &v445);

                                  sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                                  v313 += 2;
                                  v312 = i - 1;
                                  if (i == 1)
                                  {
                                    goto LABEL_441;
                                  }

                                  continue;
                                }
                              }

                              break;
                            }

                            goto LABEL_435;
                          }

                          continue;
                        }

                        goto LABEL_163;
                      }

                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v445, v137, &qword_1C85A10C0);
                  }

                  v200 = *(v154 + 16);
                  v201 = *(v154 + 24);
                  *&v444[0] = 0x6E616964656DLL;
                  *(&v444[0] + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v200, v201);
                  LOBYTE(a1) = BYTE8(v444[0]);
                  sub_1C84669B8(v434, &v445, *&v444[0], *(&v444[0] + 1));

                  if (v446)
                  {
                    if (swift_dynamicCast())
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v445, v137, &qword_1C85A10C0);
                  }

                  v216 = sub_1C8590E34();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  v217 = qword_1EDE5CB90;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                  v218 = swift_allocObject();
                  *(v218 + 16) = v414;
                  v1 = v154;
                  v219 = *(v154 + 16);
                  v220 = *(v1 + 24);
                  v221 = MEMORY[0x1E69E6158];
                  *(v218 + 56) = MEMORY[0x1E69E6158];
                  v222 = sub_1C8481E7C();
                  *(v218 + 64) = v222;
                  *(v218 + 32) = v219;
                  *(v218 + 40) = v220;
                  *&v445 = 0x6E616964656DLL;
                  *(&v445 + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v219, v220);
                  v223 = *(&v445 + 1);
                  a1 = v445;

                  sub_1C84669B8(v434, &v445, a1, v223);

                  sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *(v218 + 96) = v221;
                  *(v218 + 104) = v222;
                  strcpy((v218 + 72), "Optional<Any>");
                  *(v218 + 86) = -4864;
                  sub_1C8590CA4(v216, &dword_1C8460000, v217, "median%@ is invalid %@", 22, 2, v218);
                }

                else
                {
                  swift_beginAccess();
                  v176 = v432;
                  v177 = v432[2];
                  v178 = v432[3];
                  *&v444[0] = 1851876717;
                  *(&v444[0] + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v177, v178);
                  LOBYTE(a1) = BYTE8(v444[0]);
                  v60 = v440;
                  v434 = *v440;
                  sub_1C84669B8(v434, &v445, *&v444[0], *(&v444[0] + 1));

                  v61 = MEMORY[0x1E69E7CC0];
                  if (v446)
                  {
                    if (swift_dynamicCast())
                    {
                      v179 = *&v444[0];
                      if ((~*&v444[0] & 0x7FF0000000000000) == 0 && (*&v444[0] & 0xFFFFFFFFFFFFFLL) != 0)
                      {
                        v1 = sub_1C8590E44();
                        if (qword_1EDE5CA48 != -1)
                        {
                          swift_once();
                        }

                        *&v438 = qword_1EDE5CB90;
                        v180 = swift_allocObject();
                        *(v180 + 16) = v179;
                        v181 = swift_allocObject();
                        *(v181 + 16) = 32;
                        v182 = swift_allocObject();
                        *(v182 + 16) = 8;
                        v183 = swift_allocObject();
                        v184 = v432;
                        *(v183 + 16) = sub_1C8482338;
                        *(v183 + 24) = v184;
                        v185 = swift_allocObject();
                        *(v185 + 16) = sub_1C8482340;
                        *(v185 + 24) = v183;
                        v186 = swift_allocObject();
                        *(v186 + 16) = 0;
                        a1 = swift_allocObject();
                        *(a1 + 16) = 8;
                        v187 = swift_allocObject();
                        *(v187 + 16) = sub_1C8481FEC;
                        *(v187 + 24) = v180;
                        v188 = swift_allocObject();
                        *(v188 + 16) = sub_1C8481FF4;
                        *(v188 + 24) = v187;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                        v189 = swift_allocObject();
                        *(v189 + 16) = v362;
                        *(v189 + 32) = sub_1C848232C;
                        *(v189 + 40) = v181;
                        *(v189 + 48) = sub_1C848232C;
                        *(v189 + 56) = v182;
                        *(v189 + 64) = sub_1C8482330;
                        *(v189 + 72) = v185;
                        *(v189 + 80) = sub_1C848232C;
                        *(v189 + 88) = v186;
                        *(v189 + 96) = sub_1C848232C;
                        *(v189 + 104) = a1;
                        *(v189 + 112) = sub_1C848201C;
                        *(v189 + 120) = v188;
                        swift_retain_n();
                        v190 = v438;

                        if (os_log_type_enabled(v190, v1))
                        {
                          a1 = swift_slowAlloc();
                          v169 = swift_slowAlloc();
                          *&v445 = v169;
                          *a1 = v361;
                          v191 = v184[2];
                          v192 = v184[3];

                          v193 = sub_1C84741F0(v191, v192, &v445);

                          *(a1 + 4) = v193;
                          *(a1 + 12) = 2048;
                          *(a1 + 14) = v179;
                          v173 = v1;
                          v174 = v190;
                          v175 = "mean%s isNaN %f";
                          goto LABEL_123;
                        }

LABEL_163:

                        goto LABEL_164;
                      }

LABEL_39:

                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v445, v137, &qword_1C85A10C0);
                  }

                  v202 = *(v176 + 16);
                  v203 = *(v176 + 24);
                  *&v444[0] = 1851876717;
                  *(&v444[0] + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v202, v203);
                  LOBYTE(a1) = BYTE8(v444[0]);
                  sub_1C84669B8(v434, &v445, *&v444[0], *(&v444[0] + 1));

                  if (v446)
                  {
                    if (swift_dynamicCast())
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v445, v137, &qword_1C85A10C0);
                  }

                  v224 = sub_1C8590E34();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  v225 = qword_1EDE5CB90;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                  v226 = swift_allocObject();
                  *(v226 + 16) = v414;
                  v1 = v176;
                  v227 = *(v176 + 16);
                  v228 = *(v1 + 24);
                  v229 = MEMORY[0x1E69E6158];
                  *(v226 + 56) = MEMORY[0x1E69E6158];
                  v230 = sub_1C8481E7C();
                  *(v226 + 64) = v230;
                  *(v226 + 32) = v227;
                  *(v226 + 40) = v228;
                  *&v445 = 1851876717;
                  *(&v445 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v227, v228);
                  v231 = *(&v445 + 1);
                  a1 = v445;

                  sub_1C84669B8(v434, &v445, a1, v231);

                  sub_1C8482178(&v445, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *(v226 + 96) = v229;
                  *(v226 + 104) = v230;
                  strcpy((v226 + 72), "Optional<Any>");
                  *(v226 + 86) = -4864;
                  sub_1C8590CA4(v224, &dword_1C8460000, v225, "mean%@ is invalid %@", 20, 2, v226);
                }

                v61 = MEMORY[0x1E69E7CC0];
                v60 = v440;
                goto LABEL_40;
              }
            }
          }

          else
          {
            swift_beginAccess();
            v204 = *(v106 + 16);
            v205 = *(v106 + 24);
            *&v445 = 7235949;
            *(&v445 + 1) = 0xE300000000000000;
            MEMORY[0x1CCA775F0](v204, v205);
            v206 = v445;
            v207 = MEMORY[0x1E69E63B0];
            v446 = MEMORY[0x1E69E63B0];
            *&v445 = v91;
            sub_1C8466D6C(&v445, v206, *(&v445 + 1));
            v208 = *(v106 + 16);
            v209 = *(v106 + 24);
            *&v445 = 7889261;
            *(&v445 + 1) = 0xE300000000000000;
            MEMORY[0x1CCA775F0](v208, v209);
            v210 = v445;
            v446 = v207;
            *&v445 = v95;
            sub_1C8466D6C(&v445, v210, *(&v445 + 1));
            v211 = *(v106 + 16);
            v212 = *(v106 + 24);
            *&v445 = 1701080941;
            *(&v445 + 1) = 0xE400000000000000;
            MEMORY[0x1CCA775F0](v211, v212);
            v213 = v445;
            v446 = v207;
            *&v445 = v85;
            sub_1C8466D6C(&v445, v213, *(&v445 + 1));
            v214 = *(v106 + 16);
            v215 = *(v106 + 24);
            if (v112)
            {
              *&v445 = 0x6E616964656DLL;
              *(&v445 + 1) = 0xE600000000000000;
            }

            else
            {
              *&v445 = 1851876717;
              *(&v445 + 1) = 0xE400000000000000;
            }

            MEMORY[0x1CCA775F0](v214, v215);
            v232 = v445;
            v446 = v207;
            *&v445 = v100;
            sub_1C8466D6C(&v445, v232, *(&v445 + 1));
            v137 = &qword_1EC2AADB8;
            if (v435[v427] == 1)
            {
              v233 = *(v106 + 16);
              v234 = *(v106 + 24);
              *&v445 = 0x766564647473;
              *(&v445 + 1) = 0xE600000000000000;
              MEMORY[0x1CCA775F0](v233, v234);
              v235 = v445;
              v446 = v207;
              *&v445 = v101;
              sub_1C8466D6C(&v445, v235, *(&v445 + 1));
              if (!v194)
              {
                goto LABEL_103;
              }
            }

            else if (!v194)
            {
              goto LABEL_103;
            }
          }

          swift_beginAccess();
          v239 = *(v106 + 16);
          v240 = *(v106 + 24);
          *&v445 = 0x746E756F63;
          *(&v445 + 1) = 0xE500000000000000;
          MEMORY[0x1CCA775F0](v239, v240);
          v241 = v445;
          v446 = MEMORY[0x1E69E6530];
          *&v445 = v436;
          sub_1C8466D6C(&v445, v241, *(&v445 + 1));
          goto LABEL_103;
        }

        v127 = 0;
LABEL_96:
        v434 = v127;
        v128 = sub_1C8590E34();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v129 = qword_1EDE5CB90;
        v130 = swift_allocObject();
        *(v130 + 16) = v64;
        *(v130 + 24) = v63;
        v131 = swift_allocObject();
        *(v131 + 16) = 32;
        v132 = swift_allocObject();
        *(v132 + 16) = 8;
        v133 = swift_allocObject();
        *(v133 + 16) = sub_1C848233C;
        *(v133 + 24) = v130;
        v134 = swift_allocObject();
        *(v134 + 16) = sub_1C8482340;
        *(v134 + 24) = v133;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
        v135 = swift_allocObject();
        *(v135 + 16) = v420;
        *(v135 + 32) = sub_1C848232C;
        *(v135 + 40) = v131;
        *(v135 + 48) = sub_1C848232C;
        *(v135 + 56) = v132;
        *(v135 + 64) = sub_1C8482330;
        *(v135 + 72) = v134;

        if (os_log_type_enabled(v129, v128))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v445 = v122;
          *v121 = v412;
          v136 = sub_1C84741F0(v64, v63, &v445);

          *(v121 + 4) = v136;
          v124 = v128;
          v125 = v129;
          v126 = "Zero sum stat %s";
          goto LABEL_100;
        }

LABEL_101:

        goto LABEL_102;
      }

      if (v434 == 0xD000000000000029 && v413 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x6375535448567854;
LABEL_88:
        v111 = 0xEC00000073736563;
        goto LABEL_89;
      }

      if (v434 == 0xD000000000000029 && v408 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x63755353434D7854;
        goto LABEL_88;
      }

      if (v434 == 0xD000000000000029 && v407 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x63755353434D7852;
        goto LABEL_88;
      }

      if (v434 == v406 && v405 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x6363755345487854;
LABEL_174:
        v111 = 0xEB00000000737365;
        goto LABEL_89;
      }

      if (v434 == v406 && v404 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x6363755345487852;
        goto LABEL_174;
      }

      if (v434 == v409 && v403 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v111 = 0xE800000000000000;
        v110 = 0x6767417564706D41;
        goto LABEL_89;
      }

      if (v434 == v418 && v402 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v111 = 0xE900000000000055;
        v110 = 0x537564706D417852;
        goto LABEL_89;
      }

      if (v434 == v418 && v401 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x537564706D417854;
        v111 = 0xE900000000000055;
        goto LABEL_89;
      }

      if (v434 == 0xD000000000000029 && v400 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x4F7564706D417852;
LABEL_195:
        v111 = 0xEC000000414D4446;
LABEL_196:
        v106 = v432;
        v1 = v437;
        goto LABEL_89;
      }

      if (v434 == 0xD000000000000029 && v399 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x4F7564706D417854;
        goto LABEL_195;
      }

      if (v434 == 0xD00000000000002ALL && v398 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x4D7564706D417852;
LABEL_209:
        v111 = 0xED00004F4D494D55;
        goto LABEL_196;
      }

      if (v434 == 0xD00000000000002ALL && v397 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v110 = 0x4D7564706D417854;
        goto LABEL_209;
      }

      if (v434 == v396 && v395 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v242 = v432;
        v432[2] = 1230197586;
        v242[3] = 0xE400000000000000;

        if (!v436)
        {
          v1 = v437;
          v127 = 1;
          goto LABEL_96;
        }

LABEL_221:
        if ((v430 & 1) == 0)
        {
          v194 = 0;
          v106 = v432;
          v1 = v437;
          v112 = 1;
          goto LABEL_125;
        }

        v1 = v437;
        v112 = 1;
        goto LABEL_91;
      }

      if (v434 == v393 && v394 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v127 = 1;
        swift_beginAccess();
        v243 = v432;
        v244 = 4277059;
LABEL_219:
        v243[2] = v244;
        v245 = 0xE300000000000000;
        goto LABEL_220;
      }

      if (v434 == v393 && v392 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v127 = 1;
        swift_beginAccess();
        v243 = v432;
        v244 = 5394003;
        goto LABEL_219;
      }

      if (v434 == v390 && v391 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x636E6574614C7854;
        v247 = 4539001;
LABEL_233:
        v248 = v247 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_234:
        v246[3] = v248;
        goto LABEL_235;
      }

      if (v434 == v390 && v389 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x636E6574614C7854;
        v247 = 4932217;
        goto LABEL_233;
      }

      if (v434 == v390 && v388 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x636E6574614C7854;
        v247 = 5199481;
        goto LABEL_233;
      }

      if (v434 == v390 && v387 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x636E6574614C7854;
        v247 = 4806265;
        goto LABEL_233;
      }

      if (v434 == v393 && v386 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x614C78546C647761;
        v248 = 0xEF454279636E6574;
        goto LABEL_234;
      }

      if (v434 == v393 && v385 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x614C78546C647761;
        v248 = 0xEF4B4279636E6574;
        goto LABEL_234;
      }

      if (v434 == v393 && v384 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x614C78546C647761;
        v248 = 0xEF4F5679636E6574;
        goto LABEL_234;
      }

      if (v434 == v393 && v383 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x614C78546C647761;
        v248 = 0xEF495679636E6574;
        goto LABEL_234;
      }

      if (v434 == v381 && v382 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v249 = 0x6574614C78547061;
LABEL_304:
        v246[2] = v249;
        v248 = 0xED0000454279636ELL;
        goto LABEL_234;
      }

      if (v434 == v381 && v380 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v250 = 0x6574614C78547061;
LABEL_309:
        v246[2] = v250;
        v248 = 0xED00004B4279636ELL;
        goto LABEL_234;
      }

      if (v434 == v381 && v379 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v251 = 0x6574614C78547061;
LABEL_314:
        v246[2] = v251;
        v248 = 0xED00004F5679636ELL;
        goto LABEL_234;
      }

      if (v434 == v381 && v378 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v252 = 0x6574614C78547061;
LABEL_319:
        v246[2] = v252;
        v248 = 0xED0000495679636ELL;
        goto LABEL_234;
      }

      if (v434 == v376 && v377 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x74614C78546E616ELL;
        v248 = 0xEE00454279636E65;
        goto LABEL_234;
      }

      if (v434 == v376 && v375 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x74614C78546E616ELL;
        v248 = 0xEE004B4279636E65;
        goto LABEL_234;
      }

      if (v434 == v376 && v374 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x74614C78546E616ELL;
        v248 = 0xEE004F5679636E65;
        goto LABEL_234;
      }

      if (v434 == v376 && v373 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v432[2] = 0x74614C78546E616ELL;
        v248 = 0xEE00495679636E65;
        goto LABEL_234;
      }

      if (v434 == v381 && v372 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v249 = 0x6574614C78547269;
        goto LABEL_304;
      }

      if (v434 == v381 && v371 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v250 = 0x6574614C78547269;
        goto LABEL_309;
      }

      if (v434 == v381 && v370 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v251 = 0x6574614C78547269;
        goto LABEL_314;
      }

      if (v434 == v381 && v369 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v246 = v432;
        v252 = 0x6574614C78547269;
        goto LABEL_319;
      }

      if (v434 == 0xD000000000000030 && v368 == v109 || (sub_1C8590FE4() & 1) != 0)
      {

        v127 = 1;
        swift_beginAccess();
        v243 = v432;
        v253 = 0x304D4C5443;
      }

      else
      {
        if ((v434 != 0xD000000000000031 || v367 != v109) && (sub_1C8590FE4() & 1) == 0)
        {
          if (v434 == 0xD000000000000038 && v366 == v109 || (sub_1C8590FE4() & 1) != 0)
          {

            v127 = 1;
            swift_beginAccess();
            v243 = v432;
            v432[2] = 0xD000000000000012;
            v245 = v354;
          }

          else if (v434 == 0xD000000000000039 && v365 == v109 || (sub_1C8590FE4() & 1) != 0)
          {

            v127 = 1;
            swift_beginAccess();
            v243 = v432;
            v432[2] = 0xD000000000000012;
            v245 = v355;
          }

          else if (v434 == 0xD000000000000036 && v364 == v109 || (sub_1C8590FE4() & 1) != 0)
          {

            v127 = 1;
            swift_beginAccess();
            v243 = v432;
            v432[2] = 0x7943797475447854;
            v245 = 0xEC00000030656C63;
          }

          else
          {
            if ((v434 != 0xD000000000000037 || v363 != v109) && (sub_1C8590FE4() & 1) == 0)
            {
              if (v434 == v409 && v360 == v109 || (sub_1C8590FE4() & 1) != 0)
              {

                v254 = sub_1C847A2D8(v437);
                v256 = v255;
                swift_beginAccess();
                v257 = v432;
                v432[2] = v254;
                v257[3] = v256;

                if (!v436)
                {
                  v127 = 1;
                  v1 = v437;
                  goto LABEL_96;
                }

                goto LABEL_221;
              }

              if (v434 == 0xD00000000000002CLL && v359 == v109 || (sub_1C8590FE4() & 1) != 0 || v434 == 0xD00000000000002CLL && v358 == v109 || (sub_1C8590FE4() & 1) != 0 || v434 == 0xD00000000000002CLL && v357 == v109 || (sub_1C8590FE4() & 1) != 0)
              {

                v258 = sub_1C847A2D8(v437);
                v260 = v259;
              }

              else
              {
                if (v434 == 0xD00000000000002CLL && v356 == v109)
                {
                }

                else
                {
                  v261 = sub_1C8590FE4();

                  if ((v261 & 1) == 0)
                  {
                    v264 = sub_1C8590E44();
                    if (qword_1EDE5CA48 != -1)
                    {
                      swift_once();
                    }

                    v265 = qword_1EDE5CB90;
                    v266 = swift_allocObject();
                    *(v266 + 16) = v64;
                    *(v266 + 24) = v63;
                    v267 = swift_allocObject();
                    *(v267 + 16) = 32;
                    v268 = swift_allocObject();
                    *(v268 + 16) = 8;
                    v269 = swift_allocObject();
                    *(v269 + 16) = sub_1C8481F7C;
                    *(v269 + 24) = v266;
                    v270 = swift_allocObject();
                    *(v270 + 16) = sub_1C8481FC0;
                    *(v270 + 24) = v269;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                    v271 = swift_allocObject();
                    *(v271 + 16) = v420;
                    *(v271 + 32) = sub_1C8481FAC;
                    *(v271 + 40) = v267;
                    *(v271 + 48) = sub_1C848232C;
                    *(v271 + 56) = v268;
                    *(v271 + 64) = sub_1C8481FE8;
                    *(v271 + 72) = v270;

                    if (os_log_type_enabled(v265, v264))
                    {
                      v272 = swift_slowAlloc();
                      v273 = swift_slowAlloc();
                      *&v445 = v273;
                      *v272 = v412;
                      *(v272 + 4) = sub_1C84741F0(v64, v63, &v445);
                      _os_log_impl(&dword_1C8460000, v265, v264, "Unknown stat %s", v272, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v273);
                      MEMORY[0x1CCA78470](v273, -1, -1);
                      MEMORY[0x1CCA78470](v272, -1, -1);
                    }

                    goto LABEL_236;
                  }
                }

                v258 = sub_1C847A2D8(v437);
                v260 = v262;
              }

              swift_beginAccess();
              v263 = v432;
              v432[2] = v258;
              v263[3] = v260;
LABEL_235:

LABEL_236:
              if (!v436)
              {
                v127 = 0;
                v1 = v437;
                goto LABEL_96;
              }

              v194 = 0;
              v112 = 0;
              v106 = v432;
              v1 = v437;
              if ((v430 & 1) == 0)
              {
                goto LABEL_125;
              }

LABEL_91:
              v434 = v112;
              v113 = sub_1C8590E44();
              if (qword_1EDE5CA48 != -1)
              {
                swift_once();
              }

              v114 = qword_1EDE5CB90;
              v115 = swift_allocObject();
              *(v115 + 16) = v64;
              *(v115 + 24) = v63;
              v116 = swift_allocObject();
              *(v116 + 16) = 32;
              v117 = swift_allocObject();
              *(v117 + 16) = 8;
              v118 = swift_allocObject();
              *(v118 + 16) = sub_1C848233C;
              *(v118 + 24) = v115;
              v119 = swift_allocObject();
              *(v119 + 16) = sub_1C8482340;
              *(v119 + 24) = v118;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
              v120 = swift_allocObject();
              *(v120 + 16) = v420;
              *(v120 + 32) = sub_1C848232C;
              *(v120 + 40) = v116;
              *(v120 + 48) = sub_1C848232C;
              *(v120 + 56) = v117;
              *(v120 + 64) = sub_1C8482330;
              *(v120 + 72) = v119;

              if (os_log_type_enabled(v114, v113))
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                *&v445 = v122;
                *v121 = v412;
                v123 = sub_1C84741F0(v64, v63, &v445);

                *(v121 + 4) = v123;
                v124 = v113;
                v125 = v114;
                v126 = "Stat %s has invalid values";
LABEL_100:
                _os_log_impl(&dword_1C8460000, v125, v124, v126, v121, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v122);
                MEMORY[0x1CCA78470](v122, -1, -1);
                MEMORY[0x1CCA78470](v121, -1, -1);
LABEL_102:
                v137 = &qword_1EC2AADB8;
                goto LABEL_103;
              }

              goto LABEL_101;
            }

            v127 = 1;
            swift_beginAccess();
            v243 = v432;
            v432[2] = 0x7943797475447854;
            v245 = 0xEC00000031656C63;
          }

LABEL_220:
          v243[3] = v245;

          if (!v436)
          {
            v1 = v437;
            goto LABEL_96;
          }

          goto LABEL_221;
        }

        v127 = 1;
        swift_beginAccess();
        v243 = v432;
        v253 = 0x314D4C5443;
      }

      v243[2] = v253;
      v245 = 0xE500000000000000;
      goto LABEL_220;
    }

    break;
  }

  v65 = 0;
  v1 = v61;
LABEL_44:
  v66 = v60;
  a1 = v428 + 16 * v65;
  v67 = v65;
  while (v67 < *(i + 16))
  {
    v69 = *(a1 - 8);
    v68 = *a1;
    v65 = v67 + 1;

    if (sub_1C8590DC4())
    {
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v445 = v1;
      if ((v70 & 1) == 0)
      {
        sub_1C84750E0(0, *(v1 + 16) + 1, 1);
        v1 = v445;
      }

      v71 = v1;
      v72 = *(v1 + 16);
      v73 = *(v71 + 24);
      if (v72 >= v73 >> 1)
      {
        sub_1C84750E0((v73 > 1), v72 + 1, 1);
        v71 = v445;
      }

      *(v71 + 16) = v72 + 1;
      v74 = v71 + 16 * v72;
      *(v74 + 32) = v69;
      *(v74 + 40) = v68;
      v75 = v419 == v67;
      v60 = v440;
      v1 = v71;
      if (v75)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }

    a1 += 16;
    ++v67;
    if (v439 == v65)
    {
      v60 = v66;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
LABEL_449:
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  __break(1u);
LABEL_453:
  swift_once();
LABEL_375:
  v274 = qword_1EDE5CB90;
  v275 = swift_allocObject();
  *(v275 + 16) = v1;
  v276 = swift_allocObject();
  *(v276 + 16) = sub_1C84820A8;
  *(v276 + 24) = v275;
  v277 = swift_allocObject();
  *(v277 + 16) = 32;
  v278 = swift_allocObject();
  *(v278 + 16) = 8;
  v279 = swift_allocObject();
  *(v279 + 16) = sub_1C84820B4;
  *(v279 + 24) = v276;
  v280 = swift_allocObject();
  *(v280 + 16) = sub_1C8482340;
  *(v280 + 24) = v279;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
  v281 = swift_allocObject();
  *(v281 + 16) = v420;
  *(v281 + 32) = sub_1C848232C;
  *(v281 + 40) = v277;
  *(v281 + 48) = sub_1C848232C;
  *(v281 + 56) = v278;
  *(v281 + 64) = sub_1C8482330;
  *(v281 + 72) = v280;

  if (os_log_type_enabled(v274, a1))
  {
    v282 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    *&v445 = v283;
    *v282 = v412;
    v284 = MEMORY[0x1CCA77690](v1, MEMORY[0x1E69E6158]);
    v286 = v285;

    v287 = sub_1C84741F0(v284, v286, &v445);

    *(v282 + 4) = v287;
    _os_log_impl(&dword_1C8460000, v274, a1, "Fatal issues encountered: self.issues = true on foundKeysToReduce %s", v282, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v283);
    MEMORY[0x1CCA78470](v283, -1, -1);
    MEMORY[0x1CCA78470](v282, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C846CD90(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C8473F5C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C846CE84(unint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v174 = *a1;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(v2, 0);
  v4 = sub_1C8477780(&v183, v3 + 4, v2, v1);
  v5 = v183;

  sub_1C8463D10(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = v3 + 5;
  v8 = MEMORY[0x1E69E7CC0];
  v180 = v3;
  do
  {
    if (v6 <= 0xD)
    {
      v9 = 13;
    }

    else
    {
      v9 = v6;
    }

    v165 = v8;
LABEL_10:
    if (v6 == v9)
    {
      goto LABEL_154;
    }

    v10 = &unk_1F481AAB8 + 16 * v6;
    v12 = *(v10 + 4);
    v11 = *(v10 + 5);
    ++v6;
    v13 = v3[2];

    v14 = -1;
    v15 = v7;
    do
    {
      if (v14 - v13 == -1)
      {

        v8 = v165;
        v18 = v174;
        if (v6 == 13)
        {
          v22 = *(v165 + 16);
          if (v22)
          {
            goto LABEL_25;
          }

LABEL_145:

          v148 = 0;
LABEL_146:
          swift_arrayDestroy();

          *(&v184 + 1) = MEMORY[0x1E69E6530];
          *&v183 = v148;
          sub_1C8466D6C(&v183, 0x657669746167656ELL, 0xED00007366666944);
          return 1;
        }

        goto LABEL_10;
      }

      if (++v14 >= v3[2])
      {
        __break(1u);
        goto LABEL_145;
      }

      v16 = v15 + 2;

      v17 = sub_1C8590DC4();

      v15 = v16;
      v3 = v180;
    }

    while ((v17 & 1) == 0);
    v8 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v165;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C84750E0(0, *(v165 + 16) + 1, 1);
      v8 = v183;
    }

    v18 = v174;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      sub_1C84750E0((v20 > 1), v21 + 1, 1);
      v8 = v183;
    }

    *(v8 + 16) = v22;
    v23 = v8 + 16 * v21;
    *(v23 + 32) = v12;
    *(v23 + 40) = v11;
  }

  while (v6 != 13);
LABEL_25:
  v24 = 0;
  v158 = 0;
  v159 = v8 + 32;
  v162 = v3 + 5;
  v169 = v3[2];
  v166 = v8;
  v161 = v22;
  while (2)
  {
    if (v24 >= *(v8 + 16))
    {
      goto LABEL_155;
    }

    v164 = v24;
    v27 = (v159 + 16 * v24);
    v172 = *v27;
    v173 = v27[1];

    v175 = v18;
    if (!v169)
    {
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = &v162[2 * v28];
      v31 = v28;
      while (1)
      {
        if (v31 >= v3[2])
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v33 = *(v30 - 1);
        v32 = *v30;
        v28 = v31 + 1;

        if (sub_1C8590DC4())
        {
          break;
        }

        v30 += 2;
        ++v31;
        if (v169 == v28)
        {
          goto LABEL_44;
        }
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v29;
      if ((v34 & 1) == 0)
      {
        sub_1C84750E0(0, *(v29 + 16) + 1, 1);
        v29 = v183;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C84750E0((v35 > 1), v36 + 1, 1);
        v29 = v183;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v32;
      v18 = v175;
    }

    while (v169 - 1 != v31);
LABEL_44:
    v38 = *(v29 + 16);

    v177 = v29;
    if (v38)
    {
      v163 = 0;
      v39 = 0;
      v40 = v29 + 40;
      v168 = v38;
      v157 = v29 + 40;
LABEL_46:
      v41 = (v40 + 16 * v39);
      do
      {
        if (v39 >= v38)
        {
          goto LABEL_150;
        }

        v43 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_151;
        }

        v45 = *(v41 - 1);
        v44 = *v41;
        v46 = *(v18 + 16);

        if (v46 && (v47 = sub_1C8474B54(v45, v44), (v48 & 1) != 0) && (sub_1C8481CB4(*(v18 + 56) + 32 * v47, &v183), swift_dynamicCast()))
        {
          v49 = *&v182[0];
          if ((*&v182[0] & 0x8000000000000000) != 0)
          {
            v171 = v39 + 1;
            v68 = sub_1C8590E44();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v69 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v68))
            {
              v70 = v45;
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *&v183 = v72;
              *v71 = 136315394;
              *(v71 + 4) = sub_1C84741F0(v70, v44, &v183);
              *(v71 + 12) = 2048;
              *(v71 + 14) = v49;
              _os_log_impl(&dword_1C8460000, v69, v68, "containsNegativeValue check: arrayStat contains negative %s val %ld", v71, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v72);
              MEMORY[0x1CCA78470](v72, -1, -1);
              MEMORY[0x1CCA78470](v71, -1, -1);
            }

            v18 = v175;
            v40 = v157;
            v163 = 1;
            v39 = v171;
            if (v171 == v38)
            {
              v147 = 1;
              goto LABEL_78;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v50 = sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v178 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v50))
          {
            v51 = swift_slowAlloc();
            v52 = v45;
            v53 = swift_slowAlloc();
            *&v183 = v53;
            *v51 = 136315138;
            *(v51 + 4) = sub_1C84741F0(v172, v173, &v183);
            _os_log_impl(&dword_1C8460000, v178, v50, "containsNegativeValue check: arrayStat %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v53);
            v54 = v53;
            v45 = v52;
            MEMORY[0x1CCA78470](v54, -1, -1);
            MEMORY[0x1CCA78470](v51, -1, -1);
          }

          v55 = sub_1C8590E44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1C85A0FE0;
          *(v56 + 56) = MEMORY[0x1E69E6158];
          v57 = sub_1C8481E7C();
          *(v56 + 64) = v57;
          *(v56 + 32) = v45;
          *(v56 + 40) = v44;
          *&v182[0] = 0;
          *(&v182[0] + 1) = 0xE000000000000000;
          v170 = v45;
          if (*(v18 + 16))
          {

            v58 = sub_1C8474B54(v45, v44);
            if (v59)
            {
              sub_1C8481CB4(*(v18 + 56) + 32 * v58, &v183);
            }

            else
            {
              v183 = 0u;
              v184 = 0u;
            }
          }

          else
          {
            v183 = 0u;
            v184 = 0u;
          }

          sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          v60 = v182[0];
          v61 = MEMORY[0x1E69E6158];
          *(v56 + 96) = MEMORY[0x1E69E6158];
          *(v56 + 104) = v57;
          *(v56 + 72) = v60;
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADD0, &qword_1C85A10D8);
          *(v56 + 136) = v62;
          v63 = sub_1C8481ED0();
          *(v56 + 144) = v63;
          *(v56 + 112) = v177;

          sub_1C8590CA4(v55, &dword_1C8460000, v178, "containsNegativeValue check: Found Unsupported value for key %@ %@ foundKeysToReduce %@", 87, 2, v56);

          v64 = sub_1C8590E54();
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1C85A0FE0;
          *(v65 + 56) = v61;
          *(v65 + 64) = v57;
          *(v65 + 32) = v170;
          *(v65 + 40) = v44;
          *&v182[0] = 0;
          *(&v182[0] + 1) = 0xE000000000000000;
          if (*(v175 + 16))
          {

            v66 = sub_1C8474B54(v170, v44);
            if (v67)
            {
              sub_1C8481CB4(*(v175 + 56) + 32 * v66, &v183);
            }

            else
            {
              v183 = 0u;
              v184 = 0u;
            }
          }

          else
          {
            v183 = 0u;
            v184 = 0u;
          }

          v29 = v177;
          sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          v42 = v182[0];
          *(v65 + 96) = MEMORY[0x1E69E6158];
          *(v65 + 104) = v57;
          *(v65 + 72) = v42;
          *(v65 + 136) = v62;
          *(v65 + 144) = v63;
          *(v65 + 112) = v177;

          sub_1C8590CA4(v64, &dword_1C8460000, v178, "containsNegativeValue check: Found Unsupported value for key %@ %@ foundKeysToReduce %@", 87, 2, v65);

          v3 = v180;
          v38 = v168;
          v43 = v39 + 1;
        }

        ++v39;
        v41 += 2;
        v18 = v175;
      }

      while (v43 != v38);
      v147 = v163;
    }

    else
    {
      v147 = 0;
    }

LABEL_78:

    v73 = a1;
    if (v147)
    {
      v74 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v75 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v74))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v183 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v75, v74, "arrayStat contains negative %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x1CCA78470](v77, -1, -1);
        MEMORY[0x1CCA78470](v76, -1, -1);
      }

      v78 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        goto LABEL_157;
      }

      if (v78 < 11)
      {
        ++v158;
        goto LABEL_86;
      }

      swift_arrayDestroy();
      v160[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 1;
      v150 = sub_1C8590E44();
      if (os_log_type_enabled(v75, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *&v183 = v152;
        *v151 = 134218498;
        *(v151 + 4) = v78;
        *(v151 + 12) = 2048;
        *(v151 + 14) = 10;
        *(v151 + 22) = 2080;
        v153 = MEMORY[0x1CCA77690](v29, MEMORY[0x1E69E6158]);
        v155 = v154;

        v156 = sub_1C84741F0(v153, v155, &v183);

        *(v151 + 24) = v156;
        _os_log_impl(&dword_1C8460000, v75, v150, "seenNegativeDifferentials %ld > maxNegativeDifferentials %ld foundKeysToReduce %s", v151, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v152);
        MEMORY[0x1CCA78470](v152, -1, -1);
        MEMORY[0x1CCA78470](v151, -1, -1);
        return 0;
      }

LABEL_152:

      return 0;
    }

LABEL_86:

    v79 = v160;
    v80 = sub_1C847A540(0, v29, a1, v29, v172, v173);

    v176 = v80;
    if (v80 <= 0)
    {
      v134 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v135 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v134))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v183 = v137;
        *v136 = 134218242;
        *(v136 + 4) = v176;
        *(v136 + 12) = 2080;
        v138 = sub_1C84741F0(v172, v173, &v183);

        *(v136 + 14) = v138;
        _os_log_impl(&dword_1C8460000, v135, v134, "sum check: sum %ld arrayStat %s", v136, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v137);
        MEMORY[0x1CCA78470](v137, -1, -1);
        MEMORY[0x1CCA78470](v136, -1, -1);
      }

      else
      {
      }

      v139 = sub_1C8590E44();
      if (os_log_type_enabled(v135, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v183 = v141;
        *v140 = 136315138;
        v142 = MEMORY[0x1CCA77690](v29, MEMORY[0x1E69E6158]);
        v144 = v143;

        v145 = sub_1C84741F0(v142, v144, &v183);

        *(v140 + 4) = v145;
        _os_log_impl(&dword_1C8460000, v135, v139, "sum check: foundKeysToReduce %s", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v141);
        MEMORY[0x1CCA78470](v141, -1, -1);
        MEMORY[0x1CCA78470](v140, -1, -1);
      }

      else
      {
      }

      v25 = v164;
      v8 = v166;
      v26 = v161;
      if (v176)
      {
        goto LABEL_28;
      }

      v146 = sub_1C8590E54();
      sub_1C8590CA4(v146, &dword_1C8460000, v135, "sum zero check", 14, 2, MEMORY[0x1E69E7CC0]);
LABEL_27:
      v25 = v164;
      v8 = v166;
      v26 = v161;
LABEL_28:
      v24 = v25 + 1;
      if (v24 != v26)
      {
        continue;
      }

      v148 = v158;
      goto LABEL_146;
    }

    break;
  }

  v179 = *(v29 + 16);
  if (!v179)
  {
LABEL_26:

    v3 = v180;
    goto LABEL_27;
  }

  v81 = 0;
  v82 = (v29 + 40);
  while (v81 < *(v177 + 16))
  {
    v84 = *(v82 - 1);
    v83 = *v82;
    v85 = *(v18 + 16);

    if (!v85 || (v86 = sub_1C8474B54(v84, v83), (v87 & 1) == 0) || (sub_1C8481CB4(*(v18 + 56) + 32 * v86, &v183), (swift_dynamicCast() & 1) == 0))
    {
      v95 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v96 = v18;
      v97 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v95))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v183 = v99;
        *v98 = 136315138;
        *(v98 + 4) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v97, v95, "reduceNonNumericStatesAndHistogramsToPct pct conversion: arrayStat %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x1CCA78470](v99, -1, -1);
        MEMORY[0x1CCA78470](v98, -1, -1);
      }

      v100 = sub_1C8590E54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1C85A0FF0;
      *(v101 + 56) = MEMORY[0x1E69E6158];
      v102 = sub_1C8481E7C();
      *(v101 + 64) = v102;
      *(v101 + 32) = v84;
      *(v101 + 40) = v83;
      *&v182[0] = 0;
      *(&v182[0] + 1) = 0xE000000000000000;
      if (*(v96 + 16))
      {

        v103 = sub_1C8474B54(v84, v83);
        if (v104)
        {
          sub_1C8481CB4(*(v96 + 56) + 32 * v103, &v183);
        }

        else
        {
          v183 = 0u;
          v184 = 0u;
        }
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
      MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
      v105 = v182[0];
      *(v101 + 96) = MEMORY[0x1E69E6158];
      *(v101 + 104) = v102;
      *(v101 + 72) = v105;
      sub_1C8590CA4(v100, &dword_1C8460000, v97, "reduceNonNumericStatesAndHistogramsToPct pct conversion: Found Unsupported value for key %@ %@", 94, 2, v101);

      v18 = v96;
      v106 = sub_1C8474B54(v84, v83);
      v108 = v107;

      if (v108)
      {
        v73 = a1;
        goto LABEL_113;
      }

      v183 = 0u;
      v184 = 0u;
      v73 = a1;
LABEL_90:
      sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_91;
    }

    if (!*&v182[0])
    {
      v106 = sub_1C8474B54(v84, v83);
      v111 = v110;

      if (v111)
      {
LABEL_113:
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v73;
        *&v182[0] = *v73;
        if (!v109)
        {
          sub_1C8474BCC();
          v18 = *&v182[0];
        }

        sub_1C8481D10((*(v18 + 56) + 32 * v106), &v183);
        sub_1C8475474(v106, v18);
        *v73 = v18;
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      goto LABEL_90;
    }

    v88 = sub_1C847AC04(*&v182[0], v176);
    if (v89)
    {
      v90 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v91 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v90))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v183 = v93;
        *v92 = 136315650;
        v94 = sub_1C84741F0(v84, v83, &v183);

        *(v92 + 4) = v94;
        *(v92 + 12) = 2048;
        *(v92 + 14) = v176;
        *(v92 + 22) = 2080;
        *(v92 + 24) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v91, v90, "reduceNonNumericStatesAndHistogramsToPct safePercentCalculation check: key %s sum %ld arrayStat %s", v92, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA78470](v93, -1, -1);
        MEMORY[0x1CCA78470](v92, -1, -1);
      }

      else
      {
      }

      v122 = sub_1C8590E44();
      if (os_log_type_enabled(v91, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v183 = v124;
        *v123 = 136315138;
        v125 = MEMORY[0x1CCA77690](v177, MEMORY[0x1E69E6158]);
        v127 = sub_1C84741F0(v125, v126, &v183);

        *(v123 + 4) = v127;
        _os_log_impl(&dword_1C8460000, v91, v122, "reduceNonNumericStatesAndHistogramsToPct safePercentCalculation check: foundKeysToReduce %s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x1CCA78470](v124, -1, -1);
        MEMORY[0x1CCA78470](v123, -1, -1);
      }

      v73 = a1;
      goto LABEL_91;
    }

    *(&v184 + 1) = MEMORY[0x1E69E6530];
    *&v183 = v88;
    sub_1C8481D10(&v183, v182);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v73;
    v181 = *v73;
    v114 = sub_1C8474B54(v84, v83);
    v116 = *(v113 + 16);
    v117 = (v115 & 1) == 0;
    v118 = __OFADD__(v116, v117);
    v119 = v116 + v117;
    if (v118)
    {
      goto LABEL_156;
    }

    v120 = v115;
    if (*(v113 + 24) >= v119)
    {
      if ((v112 & 1) == 0)
      {
        v130 = v114;
        sub_1C8474BCC();
        v114 = v130;
        if (v120)
        {
LABEL_128:
          v128 = v114;

          v18 = v181;
          v129 = (v181[7] + 32 * v128);
          __swift_destroy_boxed_opaque_existential_0(v129);
          sub_1C8481D10(v182, v129);
          *v73 = v181;
          goto LABEL_91;
        }

        goto LABEL_130;
      }
    }

    else
    {
      sub_1C8474D70(v119, v112);
      v114 = sub_1C8474B54(v84, v83);
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_159;
      }
    }

    if (v120)
    {
      goto LABEL_128;
    }

LABEL_130:
    v18 = v181;
    v181[(v114 >> 6) + 8] |= 1 << v114;
    v131 = (v181[6] + 16 * v114);
    *v131 = v84;
    v131[1] = v83;
    sub_1C8481D10(v182, (v181[7] + 32 * v114));
    v132 = v181[2];
    v118 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (v118)
    {
      goto LABEL_158;
    }

    v181[2] = v133;
    *v73 = v181;
LABEL_91:
    ++v81;
    v82 += 2;
    if (v179 == v81)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  result = sub_1C8591004();
  __break(1u);
  return result;
}

uint64_t sub_1C846E444(uint64_t a1, int64_t a2)
{
  v5 = 0xD00000000000001DLL;
  v6 = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  v9 = &OBJC_METACLASS___PoliciesMO.superclass;
  v10 = &OBJC_IVAR___WiFiAnalyticsAWDWASymptomsDnsStats__netscoreAtStudyStart;
  LODWORD(v152) = *(v2 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment);
  v157 = a2;
  if (v152 == 1 && *(v2 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) != 1)
  {
    v159 = 0;
    v160 = 0;
    v163 = 0;
    v164 = 0;
    v161 = 0;
    v162 = 0;
    v158 = 0;
    v151 = 0;
    v153 = 0;
    v165 = 0;
    goto LABEL_156;
  }

  v156 = v6;
  v149 = v2;
  v11 = *(a2 + 16);
  v150 = a1;
  if (!v11 || (v12 = sub_1C8474B54(0xD00000000000001FLL, 0x80000001C85A4650), (v13 & 1) == 0))
  {
    v174 = 0u;
    v175[0] = 0u;
LABEL_12:
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_13;
  }

  sub_1C8481CB4(*(a2 + 56) + 32 * v12, &v174);
  sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
  sub_1C84669B8(a1, &v174, 0xD00000000000001FLL, 0x80000001C85A4650);
  v14 = *(&v175[0] + 1);
  sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
  if (!v14)
  {
    goto LABEL_248;
  }

  sub_1C84669B8(a2, &v174, 0xD00000000000001FLL, 0x80000001C85A4650);
  if (!*(&v175[0] + 1))
  {
    goto LABEL_247;
  }

  a1 = v150;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C84669B8(v150, &v174, 0xD00000000000001FLL, 0x80000001C85A4650);
  if (!*(&v175[0] + 1))
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v162 = 0;
    goto LABEL_14;
  }

  v162 = 0;
  while (1)
  {
LABEL_14:
    sub_1C84669B8(a2, &v174, 0xD00000000000001DLL, 0x80000001C85A4670);
    v15 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v15)
    {
      goto LABEL_23;
    }

    sub_1C84669B8(a1, &v174, 0xD00000000000001DLL, 0x80000001C85A4670);
    v16 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v16)
    {
      goto LABEL_23;
    }

    sub_1C84669B8(a2, &v174, 0xD00000000000001DLL, 0x80000001C85A4670);
    if (!*(&v175[0] + 1))
    {
      goto LABEL_22;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v17 = v171;
    sub_1C84669B8(a1, &v174, 0xD00000000000001DLL, 0x80000001C85A4670);
    if (!*(&v175[0] + 1))
    {
LABEL_22:
      sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_23:
      v161 = 0;
      goto LABEL_24;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v161 = v171 != v17;
LABEL_24:
    sub_1C84669B8(a2, &v174, v5 + 1, 0x80000001C85A4690);
    v18 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v18)
    {
      goto LABEL_32;
    }

    sub_1C84669B8(a1, &v174, v5 + 1, 0x80000001C85A4690);
    v19 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v19)
    {
      goto LABEL_32;
    }

    sub_1C84669B8(a2, &v174, v5 + 1, 0x80000001C85A4690);
    if (!*(&v175[0] + 1))
    {
LABEL_31:
      sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_32;
    }

    if (swift_dynamicCast())
    {
      v20 = v171;
      sub_1C84669B8(a1, &v174, v5 + 1, 0x80000001C85A4690);
      if (!*(&v175[0] + 1))
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v164 = v171 != v20;
        goto LABEL_33;
      }
    }

LABEL_32:
    v164 = 0;
LABEL_33:
    sub_1C84669B8(a2, &v174, 0xD00000000000001DLL, 0x80000001C85A46B0);
    v21 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v21)
    {
      goto LABEL_41;
    }

    sub_1C84669B8(a1, &v174, 0xD00000000000001DLL, 0x80000001C85A46B0);
    v22 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v22)
    {
      goto LABEL_41;
    }

    sub_1C84669B8(a2, &v174, 0xD00000000000001DLL, 0x80000001C85A46B0);
    if (!*(&v175[0] + 1))
    {
      goto LABEL_40;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v23 = v171;
    sub_1C84669B8(a1, &v174, 0xD00000000000001DLL, 0x80000001C85A46B0);
    if (!*(&v175[0] + 1))
    {
LABEL_40:
      sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_41:
      v163 = 0;
      goto LABEL_42;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v163 = v171 != v23;
LABEL_42:
    sub_1C84669B8(a2, &v174, v5 + 5, 0x80000001C85A46D0);
    v24 = *(&v175[0] + 1);
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v24 || (sub_1C84669B8(a1, &v174, v5 + 5, 0x80000001C85A46D0), v25 = *(&v175[0] + 1), sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0), !v25))
    {
      v27 = sub_1C8590E64();
      if (*(p_superclass + 2632) != -1)
      {
        v138 = v27;
        swift_once();
        v27 = v138;
      }

      sub_1C8590CA4(v27, &dword_1C8460000, *(v9 + 370), "Failed to find interfaceStats_enableState_Enabled", 49, 2, MEMORY[0x1E69E7CC0]);
      goto LABEL_53;
    }

    sub_1C84669B8(a2, &v174, v5 + 5, 0x80000001C85A46D0);
    if (!*(&v175[0] + 1))
    {
LABEL_52:
      sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_53;
    }

    if (swift_dynamicCast())
    {
      v26 = v171;
      sub_1C84669B8(a1, &v174, v5 + 5, 0x80000001C85A46D0);
      if (!*(&v175[0] + 1))
      {
        goto LABEL_52;
      }

      if (swift_dynamicCast())
      {
        v160 = v171 != v26;
        goto LABEL_54;
      }
    }

LABEL_53:
    v160 = 0;
LABEL_54:
    v2 = "ableState_Enabled";
    sub_1C84669B8(a2, &v174, v5 - 2, 0x80000001C85A4740);
    if (!*(&v175[0] + 1))
    {
      goto LABEL_64;
    }

    if (swift_dynamicCast())
    {
      v28 = v171;
      sub_1C84669B8(a1, &v174, v5 - 2, 0x80000001C85A4740);
      if (!*(&v175[0] + 1))
      {
LABEL_64:
        sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_65;
      }

      if (swift_dynamicCast())
      {
        v29 = v171;
        v9 = "early %@ late %@";
        sub_1C84669B8(a2, &v174, v5 + 1, 0x80000001C85A4880);
        if (*(&v175[0] + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_250:
            a1 = v150;
            goto LABEL_65;
          }

          v30 = v171;
          sub_1C84669B8(v150, &v174, v5 + 1, 0x80000001C85A4880);
          if (*(&v175[0] + 1))
          {
            if (swift_dynamicCast())
            {
              if (v28 == v29)
              {
                v31 = v30 != v171;
              }

              else
              {
LABEL_254:
                v31 = 1;
              }

              goto LABEL_72;
            }

            goto LABEL_250;
          }
        }

        sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_250;
      }
    }

LABEL_65:
    sub_1C84669B8(a2, &v174, v5 - 2, 0x80000001C85A4740);
    if (!*(&v175[0] + 1))
    {
      goto LABEL_70;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_71;
    }

    v32 = v171;
    sub_1C84669B8(a1, &v174, v5 - 2, 0x80000001C85A4740);
    if (!*(&v175[0] + 1))
    {
LABEL_70:
      sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_71:
      v31 = 0;
      goto LABEL_72;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_71;
    }

    v31 = v32 != v171;
LABEL_72:
    v33 = a2 + 64;
    v34 = 1 << *(a2 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    a2 = v35 & *(a2 + 64);
    v148 = *(v10 + 426);
    v147 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
    p_superclass = (v34 + 63) >> 6;
    v159 = v31;
    v10 = (v162 & v161 & (v164 && v163) & (v160 && v31));

    v36 = 0;
    v151 = 0;
    v153 = 0;
    v37 = 0;
    v5 = 0;
    *&v38 = 136315138;
    v146 = v38;
    *(&v38 + 1) = 6;
    v143 = xmmword_1C85A0FE0;
    *&v38 = 134218240;
    v145 = v38;
    *&v38 = 136315650;
    v144 = v38;
LABEL_75:
    v155 = v36;
    v158 = v36;
    v154 = v37;
    v165 = v37;
    v39 = v5;
    if (a2)
    {
      break;
    }

LABEL_77:
    if (p_superclass <= (v39 + 1))
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = p_superclass;
    }

    v5 = v41 - 1;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= p_superclass)
      {
        a2 = 0;
        v172 = 0u;
        v173 = 0u;
        v171 = 0u;
        goto LABEL_85;
      }

      a2 = *(v33 + 8 * v40);
      ++v39;
      if (a2)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_247:
    sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_248:
    v162 = 0;
    a1 = v150;
  }

  while (1)
  {
    v40 = v39;
LABEL_84:
    v42 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v43 = v42 | (v40 << 6);
    v44 = (v157[6] + 16 * v43);
    v45 = *v44;
    v2 = v44[1];
    sub_1C8481CB4(v157[7] + 32 * v43, &v169);
    *&v171 = v45;
    *(&v171 + 1) = v2;
    sub_1C8481D10(&v169, &v172);

    v5 = v40;
LABEL_85:
    v174 = v171;
    v175[0] = v172;
    v175[1] = v173;
    v46 = *(&v171 + 1);
    if (!*(&v171 + 1))
    {
      break;
    }

    v9 = v174;
    sub_1C8481D10(v175, &v171);
    if (v10)
    {
      goto LABEL_93;
    }

    if (sub_1C84779FC(v9, v46, v162, v161, v164, v163, v160, v159))
    {
      v155 = v158;
      v154 = v165;
LABEL_93:
      if (__OFADD__(v153, 1))
      {
        goto LABEL_256;
      }

      ++v153;
      if ((v152 & 1) == 0)
      {
        sub_1C8481CB4(&v171, &v169);
        if (swift_dynamicCast())
        {
          v2 = v150;
          if (*(v150 + 16))
          {
            v47 = v167;
            v48 = sub_1C8474B54(v9, v46);
            if (v49)
            {
              sub_1C8481CB4(*(v2 + 56) + 32 * v48, &v169);
              if (swift_dynamicCast())
              {
                v50 = v47 - v167;
                if (v47 == v167)
                {
                  *&v169 = 1717987652;
                  *(&v169 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v9, v46);
                  v2 = *(&v169 + 1);
                  LODWORD(v165) = sub_1C8477E94(v169, *(&v169 + 1));

                  if (v165)
                  {
                    *&v169 = 1717987652;
                    *(&v169 + 1) = 0xE400000000000000;
                    MEMORY[0x1CCA775F0](v9, v46);

                    v9 = *(&v169 + 1);
                    v51 = v169;
                    *(&v170 + 1) = MEMORY[0x1E69E6530];
                    *&v169 = 0;
                    sub_1C8481D10(&v169, &v167);
                    v52 = v156;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v166 = v52;
                    v2 = &v166;
                    sub_1C8475624(&v167, v51, v9, isUniquelyReferenced_nonNull_native);

                    v156 = v166;
                    goto LABEL_134;
                  }

                  __swift_destroy_boxed_opaque_existential_0(&v171);

                  v91 = __OFADD__(v151++, 1);
                  if (v91)
                  {
                    __break(1u);
                    return result;
                  }

LABEL_149:
                  v36 = v155;
                  v37 = v154;
                  goto LABEL_75;
                }

                if (!__OFSUB__(v47, v167))
                {
                  *&v169 = 1717987652;
                  *(&v169 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v9, v46);

                  v9 = *(&v169 + 1);
                  v56 = v169;
                  *(&v170 + 1) = MEMORY[0x1E69E6530];
                  *&v169 = v50;
                  sub_1C8481D10(&v169, &v167);
                  v54 = v156;
                  goto LABEL_107;
                }

                v158 = v167;
                v74 = sub_1C8590E44();
                if (qword_1EDE5CA48 != -1)
                {
                  swift_once();
                }

                v165 = qword_1EDE5CB90;
                if (os_log_type_enabled(qword_1EDE5CB90, v74))
                {
                  v2 = swift_slowAlloc();
                  *v2 = v145;
                  *(v2 + 4) = v47;
                  *(v2 + 12) = 2048;
                  *(v2 + 14) = v158;
                  _os_log_impl(&dword_1C8460000, v165, v74, "safeSubtractionCalculation overflowed subtracting a %ld b %ld", v2, 0x16u);
                  MEMORY[0x1CCA78470](v2, -1, -1);
                }

                v75 = sub_1C8590E44();
                if (os_log_type_enabled(v165, v75))
                {
                  v2 = swift_slowAlloc();
                  v142 = swift_slowAlloc();
                  *&v169 = v142;
                  *v2 = v144;
                  v9 = sub_1C84741F0(v9, v46, &v169);

                  *(v2 + 4) = v9;
                  *(v2 + 12) = 2048;
                  *(v2 + 14) = v158;
                  *(v2 + 22) = 2048;
                  *(v2 + 24) = v47;
                  _os_log_impl(&dword_1C8460000, v165, v75, "computeDiffAndAddLateAbsoluteValues diff key %s eval %ld lval %ld", v2, 0x20u);
                  v68 = &v169 + 8;
LABEL_119:
                  v69 = *(v68 - 32);
                  __swift_destroy_boxed_opaque_existential_0(v69);
                  v70 = v69;
LABEL_124:
                  MEMORY[0x1CCA78470](v70, -1, -1);
                  MEMORY[0x1CCA78470](v2, -1, -1);
LABEL_134:
                  __swift_destroy_boxed_opaque_existential_0(&v171);
                  goto LABEL_149;
                }

LABEL_133:

                goto LABEL_134;
              }
            }
          }
        }
      }

      sub_1C8481CB4(&v171, &v169);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v171);
      }

      else
      {
        if ((v152 | *(v149 + v148)))
        {
          v54 = v156;
          sub_1C8481CB4(&v171, &v169);
          v55 = MEMORY[0x1E69E6530];
          if (swift_dynamicCast())
          {
            v165 = v167;
            *&v169 = 1717987652;
            *(&v169 + 1) = 0xE400000000000000;
            MEMORY[0x1CCA775F0](v9, v46);

            v9 = *(&v169 + 1);
            v56 = v169;
            *(&v170 + 1) = v55;
            *&v169 = v165;
            sub_1C8481D10(&v169, &v167);
LABEL_107:
            v57 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v54;
            v2 = &v166;
            sub_1C8475624(&v167, v56, v9, v57);

            __swift_destroy_boxed_opaque_existential_0(&v171);
            v156 = v166;
            goto LABEL_149;
          }
        }

        else
        {
          *(v149 + v147) = 1;
          v2 = v150;
          if (!*(v150 + 16) || (v58 = sub_1C8474B54(v9, v46), (v59 & 1) == 0))
          {
            v169 = 0u;
            v170 = 0u;
            sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
            v66 = sub_1C8590E64();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v67 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v66))
            {
              v2 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              *&v169 = v165;
              *v2 = v146;
              v9 = sub_1C84741F0(v9, v46, &v169);

              *(v2 + 4) = v9;
              _os_log_impl(&dword_1C8460000, v67, v66, "Failed to compute diff: key %s not found in early", v2, 0xCu);
              v68 = &v176;
              goto LABEL_119;
            }

            goto LABEL_133;
          }

          sub_1C8481CB4(*(v2 + 56) + 32 * v58, &v169);
          sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
          v60 = v157;
          if (!v157[2] || (v61 = sub_1C8474B54(v9, v46), (v62 & 1) == 0))
          {
            v169 = 0u;
            v170 = 0u;
            sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
            v71 = sub_1C8590E64();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v2 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v71))
            {
              v72 = swift_slowAlloc();
              v165 = v2;
              v2 = v72;
              v73 = swift_slowAlloc();
              *&v169 = v73;
              *v2 = v146;
              v9 = sub_1C84741F0(v9, v46, &v169);

              *(v2 + 4) = v9;
              _os_log_impl(&dword_1C8460000, v165, v71, "Failed to compute diff: key %s not found in late", v2, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v73);
              v70 = v73;
              goto LABEL_124;
            }

            goto LABEL_133;
          }

          sub_1C8481CB4(v60[7] + 32 * v61, &v169);
          sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
          v63 = v150;
          if (*(v150 + 16) && (v64 = sub_1C8474B54(v9, v46), (v65 & 1) != 0))
          {
            sub_1C8481CB4(*(v63 + 56) + 32 * v64, &v169);
          }

          else
          {
            v169 = 0u;
            v170 = 0u;
          }

          sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
          v76 = v157;
          if (v157[2] && (v77 = sub_1C8474B54(v9, v46), (v78 & 1) != 0))
          {
            sub_1C8481CB4(v76[7] + 32 * v77, &v169);
          }

          else
          {
            v169 = 0u;
            v170 = 0u;
          }

          sub_1C8482178(&v169, &qword_1EC2AADB8, &qword_1C85A10C0);
          v2 = v150;
          if (*(v150 + 16))
          {
            v79 = sub_1C8474B54(v9, v46);
            if (v80)
            {
              sub_1C8481CB4(*(v2 + 56) + 32 * v79, &v169);
              v2 = v157;
              if (v157[2] && (v81 = sub_1C8474B54(v9, v46), (v82 & 1) != 0))
              {
                sub_1C8481CB4(*(v2 + 56) + 32 * v81, &v167);
                LODWORD(v165) = sub_1C8590E44();
                if (qword_1EDE5CA48 != -1)
                {
                  swift_once();
                }

                v158 = qword_1EDE5CB90;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                v2 = swift_allocObject();
                *(v2 + 16) = v143;
                v83 = MEMORY[0x1E69E6158];
                *(v2 + 56) = MEMORY[0x1E69E6158];
                v84 = v83;
                v85 = sub_1C8481E7C();
                *(v2 + 64) = v85;
                *(v2 + 32) = v9;
                *(v2 + 40) = v46;
                __swift_project_boxed_opaque_existential_0(&v169, *(&v170 + 1));
                swift_getDynamicType();
                v86 = sub_1C8591034();
                *(v2 + 96) = v84;
                *(v2 + 104) = v85;
                *(v2 + 72) = v86;
                *(v2 + 80) = v87;
                __swift_project_boxed_opaque_existential_0(&v167, v168);
                swift_getDynamicType();
                v88 = sub_1C8591034();
                *(v2 + 136) = v84;
                *(v2 + 144) = v85;
                *(v2 + 112) = v88;
                *(v2 + 120) = v89;
                sub_1C8590CA4(v165, &dword_1C8460000, v158, "Failed to compute diff: Other issue with key %@ early %@ late %@", 64, 2, v2);

                __swift_destroy_boxed_opaque_existential_0(&v167);
              }

              else
              {
              }

              __swift_destroy_boxed_opaque_existential_0(&v169);
              goto LABEL_134;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_0(&v171);
      }

      goto LABEL_149;
    }

    __swift_destroy_boxed_opaque_existential_0(&v171);

    if (__OFADD__(v165, 1))
    {
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
      goto LABEL_254;
    }

    v158 = ++v165;
    v39 = v5;
    if (!a2)
    {
      goto LABEL_77;
    }
  }

  a2 = v157;

  v7 = v156;
LABEL_156:
  v92 = (a2 + 64);
  v93 = 1 << *(a2 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(a2 + 64);
  v96 = (v93 + 63) >> 6;

  v155 = MEMORY[0x1E69E7CC0];
  v154 = (a2 + 64);
  v156 = v7;
  v97 = 0;
  if (v95)
  {
    while (1)
    {
      a2 = v97;
LABEL_163:
      v98 = __clz(__rbit64(v95));
      v95 &= v95 - 1;
      v99 = v157[6] + ((a2 << 10) | (16 * v98));
      v9 = *v99;
      v10 = *(v99 + 8);

      v100 = 24;
      v101 = &off_1F481A4B0;
      do
      {
        if (!--v100)
        {
          break;
        }

        v102 = v101 + 2;
        v2 = *v101;

        v103 = sub_1C8590DC4();

        v101 = v102;
      }

      while ((v103 & 1) == 0);
      v104 = 60;
      v105 = &unk_1F481A640;
      while (--v104)
      {
        v106 = v105 + 2;
        v2 = *v105;

        v107 = sub_1C8590DD4();

        v105 = v106;
        if (v107)
        {
          goto LABEL_173;
        }
      }

      if (v100)
      {
LABEL_173:
        v108 = v155;
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *&v174 = v108;
        if (v109)
        {
          v110 = v108;
        }

        else
        {
          v2 = &v174;
          sub_1C84750E0(0, *(v108 + 16) + 1, 1);
          v110 = v174;
        }

        v112 = *(v110 + 16);
        v111 = *(v110 + 24);
        if (v112 >= v111 >> 1)
        {
          v2 = &v174;
          sub_1C84750E0((v111 > 1), v112 + 1, 1);
          v110 = v174;
        }

        *(v110 + 16) = v112 + 1;
        v155 = v110;
        v113 = v110 + 16 * v112;
        *(v113 + 32) = v9;
        *(v113 + 40) = v10;
        v92 = v154;
        v97 = a2;
        if (!v95)
        {
          goto LABEL_160;
        }
      }

      else
      {

        v97 = a2;
        v92 = v154;
        if (!v95)
        {
          goto LABEL_160;
        }
      }
    }
  }

  while (1)
  {
LABEL_160:
    a2 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
      goto LABEL_252;
    }

    if (a2 >= v96)
    {
      break;
    }

    v95 = *&v92[8 * a2];
    ++v97;
    if (v95)
    {
      goto LABEL_163;
    }
  }

  v2 = MEMORY[0x1E69E6158];
  swift_arrayDestroy();
  swift_arrayDestroy();

  a2 = *(v155 + 16);
  if (!a2)
  {
    v33 = 0;
LABEL_244:

    v2 = sub_1C8590E34();
    if (qword_1EDE5CA48 != -1)
    {
      goto LABEL_257;
    }

    goto LABEL_245;
  }

  v33 = 0;
  v10 = 0;
  v154 = "interfaceStats_phymode_11AX";
  v152 = "eer_acCompletions";
  v115 = (v155 + 40);
  while (2)
  {
    v116 = *(v115 - 1);
    v9 = *v115;
    if (!v162)
    {
      *&v174 = *(v115 - 1);
      *(&v174 + 1) = v9;
      MEMORY[0x1EEE9AC00](v114);
      v140 = &v174;

      v2 = sub_1C847757C(sub_1C84821D8, v139, &unk_1F481A9E8);
      v117 = swift_arrayDestroy();
      if (v2)
      {
        if (!v161)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v117 = sub_1C8590DC4();
        if (v117)
        {
          if (v161)
          {
LABEL_207:
            if (v164)
            {
LABEL_212:
              if (v163)
              {
LABEL_219:
                if (v160)
                {
LABEL_228:
                  if (!v159)
                  {
                    goto LABEL_232;
                  }

                  v118 = 1;
LABEL_230:
                  if ((sub_1C8590DC4() & 1) == 0)
                  {
LABEL_231:
                    if ((v118 & 1) == 0)
                    {
                      goto LABEL_234;
                    }
                  }

LABEL_232:

                  if (__OFADD__(v165, 1))
                  {
                    goto LABEL_253;
                  }

                  v158 = ++v165;
                  goto LABEL_185;
                }

                v118 = 1;
LABEL_225:
                if (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4())
                {
                  goto LABEL_228;
                }

LABEL_222:
                if (!v159)
                {
                  goto LABEL_231;
                }

                goto LABEL_230;
              }

              v118 = 1;
              goto LABEL_217;
            }

            v118 = 1;
            goto LABEL_210;
          }

          v118 = 1;
LABEL_205:
          *&v174 = v116;
          *(&v174 + 1) = v9;
          MEMORY[0x1EEE9AC00](v117);
          v140 = &v174;
          v2 = sub_1C847757C(sub_1C848234C, v139, &unk_1F481AA88);
          v117 = sub_1C84821F4(&unk_1F481AAA8);
          if ((v2 & 1) != 0 || (v117 = sub_1C8590DC4(), (v117 & 1) == 0))
          {
            if (v164)
            {
              goto LABEL_214;
            }

            goto LABEL_210;
          }

          goto LABEL_207;
        }

        if (!v161)
        {
LABEL_204:
          v118 = 0;
          goto LABEL_205;
        }
      }

      if (v164)
      {
        if (v163)
        {
          if (!v160)
          {
            goto LABEL_224;
          }

          if (!v159)
          {
            goto LABEL_234;
          }

          v118 = 0;
          goto LABEL_230;
        }

        goto LABEL_216;
      }

      goto LABEL_202;
    }

    if (!v161)
    {
      goto LABEL_204;
    }

    if (!v164)
    {
LABEL_202:
      v118 = 0;
LABEL_210:
      *&v174 = v116;
      *(&v174 + 1) = v9;
      MEMORY[0x1EEE9AC00](v117);
      v140 = &v174;
      v2 = sub_1C847757C(sub_1C848234C, v139, &unk_1F481AA58);
      v117 = sub_1C84821F4(&unk_1F481AA78);
      if ((v2 & 1) == 0)
      {
        v117 = sub_1C8590DC4();
        if (v117)
        {
          goto LABEL_212;
        }
      }

LABEL_214:
      if (v163)
      {
        goto LABEL_221;
      }

      goto LABEL_217;
    }

    if (!v163)
    {
LABEL_216:
      v118 = 0;
LABEL_217:
      *&v174 = v116;
      *(&v174 + 1) = v9;
      MEMORY[0x1EEE9AC00](v117);
      v140 = &v174;
      v2 = sub_1C847757C(sub_1C848234C, v139, &unk_1F481AA28);
      sub_1C84821F4(&unk_1F481AA48);
      if (v2 & 1) == 0 && (sub_1C8590DC4())
      {
        goto LABEL_219;
      }

LABEL_221:
      if (v160)
      {
        goto LABEL_222;
      }

      goto LABEL_225;
    }

    if (!v160)
    {
LABEL_224:
      v118 = 0;
      goto LABEL_225;
    }

LABEL_234:
    v119 = v157;
    if (v157[2])
    {
      v120 = sub_1C8474B54(v116, v9);
      if (v121)
      {
        sub_1C8481CB4(v119[7] + 32 * v120, &v174);
        v122 = v156;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        *&v171 = v122;
        sub_1C8475624(&v174, v116, v9, v123);

        v2 = v171;
        v91 = __OFADD__(v33++, 1);
        if (v91)
        {
          goto LABEL_255;
        }

LABEL_184:
        v156 = v2;
LABEL_185:
        v115 += 2;
        if (!--a2)
        {
          goto LABEL_244;
        }

        continue;
      }
    }

    break;
  }

  v2 = v156;
  v124 = sub_1C8474B54(v116, v9);
  v126 = v125;

  if (v126)
  {
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v171 = v2;
    if (!v127)
    {
      sub_1C8474BCC();
      v2 = v171;
    }

    sub_1C8481D10((*(v2 + 56) + 32 * v124), &v174);
    sub_1C8475474(v124, v2);
  }

  else
  {
    v174 = 0u;
    v175[0] = 0u;
  }

  v114 = sub_1C8482178(&v174, &qword_1EC2AADB8, &qword_1C85A10C0);
  v91 = __OFADD__(v33++, 1);
  if (!v91)
  {
    goto LABEL_184;
  }

LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  swift_once();
LABEL_245:
  v128 = qword_1EDE5CB90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1C85A1040;
  v130 = MEMORY[0x1E69E65A8];
  v131 = MEMORY[0x1E69E6530];
  *(v129 + 56) = MEMORY[0x1E69E6530];
  *(v129 + 64) = v130;
  *(v129 + 32) = v153;
  *(v129 + 96) = v131;
  *(v129 + 104) = v130;
  *(v129 + 72) = v151;
  *(v129 + 136) = v131;
  *(v129 + 144) = v130;
  *(v129 + 112) = v158;
  *(v129 + 176) = v131;
  *(v129 + 184) = v130;
  *(v129 + 152) = v33;
  v132 = v162;
  *(v129 + 216) = v131;
  *(v129 + 224) = v130;
  *(v129 + 192) = v132;
  v133 = v161;
  *(v129 + 256) = v131;
  *(v129 + 264) = v130;
  *(v129 + 232) = v133;
  v134 = v164;
  *(v129 + 296) = v131;
  *(v129 + 304) = v130;
  *(v129 + 272) = v134;
  v135 = v163;
  *(v129 + 336) = v131;
  *(v129 + 344) = v130;
  *(v129 + 312) = v135;
  v136 = v160;
  *(v129 + 376) = v131;
  *(v129 + 384) = v130;
  *(v129 + 352) = v136;
  v137 = v159;
  *(v129 + 416) = v131;
  *(v129 + 424) = v130;
  *(v129 + 392) = v137;
  sub_1C8590CA4(v2, &dword_1C8460000, v128, "Keys diffed %d zeroDropped %d skipped %d absolute %d Active: AWDL %d AP %d NAN %d IR %d Infra %d AX %d", v141, v142, v143, DWORD2(v143), v144, DWORD2(v144), v145, DWORD2(v145), v146, DWORD2(v146));

  return v156;
}

uint64_t sub_1C8470540(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1C8590C84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  v18 = a4;
  sub_1C8590C74();
  sub_1C8481E28();
  v12 = sub_1C8590EB4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v17 = a1;
  v18 = a2;
  if (v15)
  {

    MEMORY[0x1CCA775F0](95, 0xE100000000000000);

    MEMORY[0x1CCA775F0](v12, v14);
  }

  else
  {

    MEMORY[0x1CCA775F0](v12, v14);
  }

  return v17;
}

uint64_t sub_1C84706C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C8590C84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 2)
  {
    return 0;
  }

  v12 = v9;
  v13 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
  if (v14 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v13, &v124), sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v15 = sub_1C8474B54(0x63696666617274, 0xE700000000000000), (v16))
  {
    sub_1C8481CB4(*(a1 + 56) + 32 * v15, &v124);
    sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (*(a1 + 16))
    {
      v17 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
      if (v18)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v17, &v124);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16))
          {
            v120 = v122;
            v19 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
            if (v20)
            {
              sub_1C8481CB4(*(a1 + 56) + 32 * v19, &v124);
              sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
              if (swift_dynamicCast())
              {
LABEL_11:
                v119 = v122;
                *&v124 = a3;
                *(&v124 + 1) = a4;

                MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                v21 = *(&v124 + 1);
                v22 = v124;
                v124 = v120;
                sub_1C8590C74();
                sub_1C8481E28();
                v23 = sub_1C8590EB4();
                v25 = v24;
                (*(v8 + 8))(v11, v12);

                v124 = __PAIR128__(v21, v22);

                MEMORY[0x1CCA775F0](v23, v25);

                v27 = *(&v124 + 1);
                v26 = v124;
                v28 = v119;
LABEL_23:
                v44 = sub_1C8590E24();
                *(&v125 + 1) = MEMORY[0x1E69E6530];
                *&v124 = v44;
                sub_1C8466D6C(&v124, v26, v27);

                return 1;
              }
            }
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v54 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
      if (v55)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v54, &v124);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16))
          {
            v120 = v122;
            v56 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
            if (v57)
            {
              sub_1C8481CB4(*(a1 + 56) + 32 * v56, &v124);
              if (swift_dynamicCast())
              {
LABEL_43:
                v119 = v122;
                *&v124 = a3;
                *(&v124 + 1) = a4;

                MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                v58 = v124;
                v124 = v120;
                sub_1C8590C74();
                sub_1C8481E28();
                v59 = sub_1C8590EB4();
                v61 = v60;
                (*(v8 + 8))(v11, v12);

                v124 = v58;

                MEMORY[0x1CCA775F0](v59, v61);

                v63 = *(&v124 + 1);
                v62 = v124;
                *(&v125 + 1) = MEMORY[0x1E69E6530];
                v64 = v119;
LABEL_60:
                *&v124 = v64;
                sub_1C8466D6C(&v124, v62, v63);
                return 1;
              }
            }
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v65 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
      if (v66)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v65, &v122);
        sub_1C8481D10(&v122, &v124);
        if (!*(a1 + 16))
        {
          goto LABEL_70;
        }

        v67 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
        if ((v68 & 1) == 0)
        {
          goto LABEL_70;
        }

        sub_1C8481CB4(*(a1 + 56) + 32 * v67, v121);
        sub_1C8481D10(v121, &v122);
        v69 = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDE5CB90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1C85A0FE0;
        v72 = MEMORY[0x1E69E6158];
        *(v71 + 56) = MEMORY[0x1E69E6158];
        v73 = sub_1C8481E7C();
        *(v71 + 64) = v73;
        *(v71 + 32) = a3;
        *(v71 + 40) = a4;
        __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
        swift_getDynamicType();

        v74 = sub_1C8591034();
        *(v71 + 96) = v72;
        *(v71 + 104) = v73;
        *(v71 + 72) = v74;
        *(v71 + 80) = v75;
        __swift_project_boxed_opaque_existential_0(&v122, v123);
        swift_getDynamicType();
        v76 = sub_1C8591034();
        *(v71 + 136) = v72;
        *(v71 + 144) = v73;
        *(v71 + 112) = v76;
        *(v71 + 120) = v77;
        sub_1C8590CA4(v69, &dword_1C8460000, v70, "Failed to decode WiFiNWActivity_traffic: %@ traffic %s value %s", 63, 2, v71);
LABEL_69:

        __swift_destroy_boxed_opaque_existential_0(&v122);
LABEL_70:
        __swift_destroy_boxed_opaque_existential_0(&v124);
      }
    }
  }

  else
  {
    v124 = 0u;
    v125 = 0u;
    sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (*(a1 + 16) == 2)
    {
      v29 = sub_1C8474B54(7235938, 0xE300000000000000);
      if (v30 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v29, &v124), sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v31 = sub_1C8474B54(1937009000, 0xE400000000000000), (v32))
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v31, &v124);
        sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
        if (*(a1 + 16))
        {
          v33 = sub_1C8474B54(7235938, 0xE300000000000000);
          if (v34)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v33, &v124);
            if (swift_dynamicCast())
            {
              v35 = *(&v122 + 1);
              if (*(a1 + 16))
              {
                v36 = v122;
                v37 = sub_1C8474B54(1937009000, 0xE400000000000000);
                if (v38)
                {
                  sub_1C8481CB4(*(a1 + 56) + 32 * v37, &v124);
                  sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
                  if (swift_dynamicCast())
                  {
                    *(&v120 + 1) = v122;
                    *&v124 = a3;
                    *(&v124 + 1) = a4;

                    MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                    v39 = *(&v124 + 1);
                    v40 = v124;
                    *&v124 = v36;
                    *(&v124 + 1) = v35;
                    sub_1C8590C74();
                    sub_1C8481E28();
                    v41 = sub_1C8590EB4();
                    v43 = v42;
                    (*(v8 + 8))(v11, v12);

                    v124 = __PAIR128__(v39, v40);

                    MEMORY[0x1CCA775F0](v41, v43);

                    v27 = *(&v124 + 1);
                    v26 = v124;
                    v28 = *(&v120 + 1);
                    goto LABEL_23;
                  }
                }
              }
            }
          }
        }

        if (*(a1 + 16))
        {
          v78 = sub_1C8474B54(7235938, 0xE300000000000000);
          if (v79)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v78, &v124);
            if (swift_dynamicCast())
            {
              v80 = *(&v122 + 1);
              if (*(a1 + 16))
              {
                v81 = v122;
                v82 = sub_1C8474B54(1937009000, 0xE400000000000000);
                if (v83)
                {
                  sub_1C8481CB4(*(a1 + 56) + 32 * v82, &v124);
                  if (swift_dynamicCast())
                  {
                    *(&v120 + 1) = v122;
                    *&v124 = a3;
                    *(&v124 + 1) = a4;

                    MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                    v84 = v124;
                    *&v124 = v81;
                    *(&v124 + 1) = v80;
                    sub_1C8590C74();
                    sub_1C8481E28();
                    v85 = sub_1C8590EB4();
                    v87 = v86;
                    (*(v8 + 8))(v11, v12);

                    v124 = v84;

                    MEMORY[0x1CCA775F0](v85, v87);

                    v63 = *(&v124 + 1);
                    v62 = v124;
                    *(&v125 + 1) = MEMORY[0x1E69E6530];
                    v64 = *(&v120 + 1);
                    goto LABEL_60;
                  }
                }
              }
            }
          }
        }

        if (*(a1 + 16))
        {
          v88 = sub_1C8474B54(1937009000, 0xE400000000000000);
          if (v89)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v88, &v122);
            sub_1C8481D10(&v122, &v124);
            if (!*(a1 + 16))
            {
              goto LABEL_70;
            }

            v90 = sub_1C8474B54(7235938, 0xE300000000000000);
            if ((v91 & 1) == 0)
            {
              goto LABEL_70;
            }

            sub_1C8481CB4(*(a1 + 56) + 32 * v90, v121);
            sub_1C8481D10(v121, &v122);
            v92 = sub_1C8590E44();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v93 = qword_1EDE5CB90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_1C85A0FE0;
            v95 = MEMORY[0x1E69E6158];
            *(v94 + 56) = MEMORY[0x1E69E6158];
            v96 = sub_1C8481E7C();
            *(v94 + 64) = v96;
            *(v94 + 32) = a3;
            *(v94 + 40) = a4;
            __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
            swift_getDynamicType();

            v97 = sub_1C8591034();
            *(v94 + 96) = v95;
            *(v94 + 104) = v96;
            *(v94 + 72) = v97;
            *(v94 + 80) = v98;
            __swift_project_boxed_opaque_existential_0(&v122, v123);
            swift_getDynamicType();
            v99 = sub_1C8591034();
            *(v94 + 136) = v95;
            *(v94 + 144) = v96;
            *(v94 + 112) = v99;
            *(v94 + 120) = v100;
            sub_1C8590CA4(v92, &dword_1C8460000, v93, "Failed to decode WiFiNWActivity_HistogramBin: %@ hits %s bin %s", 63, 2, v94);
            goto LABEL_69;
          }
        }
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
        sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
        if (*(a1 + 16) == 2)
        {
          v46 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
          if (v47 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v46, &v124), sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v48 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954), (v49))
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v48, &v124);
            sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
            if (*(a1 + 16))
            {
              v50 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v51)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v50, &v124);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v120 = v122;
                    v52 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                    if (v53)
                    {
                      sub_1C8481CB4(*(a1 + 56) + 32 * v52, &v124);
                      sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
                      if (swift_dynamicCast())
                      {
                        goto LABEL_11;
                      }
                    }
                  }
                }
              }
            }

            if (*(a1 + 16))
            {
              v101 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v102)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v101, &v124);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v120 = v122;
                    v103 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                    if (v104)
                    {
                      sub_1C8481CB4(*(a1 + 56) + 32 * v103, &v124);
                      if (swift_dynamicCast())
                      {
                        goto LABEL_43;
                      }
                    }
                  }
                }
              }
            }

            if (*(a1 + 16))
            {
              v105 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v106)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v105, &v122);
                sub_1C8481D10(&v122, &v124);
                if (!*(a1 + 16))
                {
                  goto LABEL_70;
                }

                v107 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                if ((v108 & 1) == 0)
                {
                  goto LABEL_70;
                }

                sub_1C8481CB4(*(a1 + 56) + 32 * v107, v121);
                sub_1C8481D10(v121, &v122);
                v109 = sub_1C8590E44();
                if (qword_1EDE5CA48 != -1)
                {
                  swift_once();
                }

                v110 = qword_1EDE5CB90;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                v111 = swift_allocObject();
                *(v111 + 16) = xmmword_1C85A0FE0;
                v112 = MEMORY[0x1E69E6158];
                *(v111 + 56) = MEMORY[0x1E69E6158];
                v113 = sub_1C8481E7C();
                *(v111 + 64) = v113;
                *(v111 + 32) = a3;
                *(v111 + 40) = a4;
                __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
                swift_getDynamicType();

                v114 = sub_1C8591034();
                *(v111 + 96) = v112;
                *(v111 + 104) = v113;
                *(v111 + 72) = v114;
                *(v111 + 80) = v115;
                __swift_project_boxed_opaque_existential_0(&v122, v123);
                swift_getDynamicType();
                v116 = sub_1C8591034();
                *(v111 + 136) = v112;
                *(v111 + 144) = v113;
                *(v111 + 112) = v116;
                *(v111 + 120) = v117;
                sub_1C8590CA4(v109, &dword_1C8460000, v110, "Failed to decode WiFiNWActivity_StateBin: %@ state %s residentTime %s", 69, 2, v111);
                goto LABEL_69;
              }
            }
          }

          else
          {
            v124 = 0u;
            v125 = 0u;
            sub_1C8482178(&v124, &qword_1EC2AADB8, &qword_1C85A10C0);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C84715F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(&v183 + 1) = a4;
  *&v183 = a3;
  v181 = sub_1C8590C84();
  result = MEMORY[0x1EEE9AC00](v181);
  v180 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = *(a1 + 16);
  if (v184)
  {
    v10 = 0;
    v11 = a1 + 32;
    v179 = (v7 + 8);
    v12 = HIBYTE(*(&v183 + 1)) & 0xFLL;
    if ((*(&v183 + 1) & 0x2000000000000000) == 0)
    {
      v12 = v183 & 0xFFFFFFFFFFFFLL;
    }

    v178 = v12;
    v174 = 0x80000001C85A49F0;
    v173 = 0x80000001C85A49D0;
    *&v8 = 136315394;
    v177 = v8;
    *&v8 = 136315138;
    v176 = v8;
    v175 = xmmword_1C85A0FF0;
    v182 = a2;
    do
    {
      *&v190 = v10;
      result = sub_1C8481CB4(v11, &v190 + 8);
      v193[0] = v190;
      v193[1] = v191;
      v194 = v192;
      if (!v192)
      {
        return result;
      }

      v185 = v190;
      sub_1C8481D10((v193 + 8), &v190);
      sub_1C8481CB4(&v190, &v188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE08, &qword_1C85A1108);
      if (!swift_dynamicCast())
      {
        sub_1C8481CB4(&v190, &v188);
        if (swift_dynamicCast())
        {
          v23 = v187[0];
          *&v188 = v185;
          *&v188 = sub_1C8590FD4();
          *(&v188 + 1) = v24;
          v25 = v180;
          sub_1C8590C74();
          sub_1C8481E28();
          v26 = sub_1C8590EB4();
          v28 = v27;
          (*v179)(v25, v181);

          v188 = v183;
          if (v178)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v26, v28);
          }

          else
          {

            MEMORY[0x1CCA775F0](v26, v28);
          }

          v62 = v188;
          v63 = *v182;
          if (*(*v182 + 16) && (v64 = sub_1C8474B54(v188, *(&v188 + 1)), (v65 & 1) != 0))
          {
            sub_1C8481CB4(*(v63 + 56) + 32 * v64, &v188);
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
            v66 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v67 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v66))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v188 = v69;
              *v68 = v176;
              *(v68 + 4) = sub_1C84741F0(v62, *(&v62 + 1), &v188);
              _os_log_impl(&dword_1C8460000, v67, v66, "From Array: Key unexpectedly present when flattening: %s", v68, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v69);
              MEMORY[0x1CCA78470](v69, -1, -1);
              MEMORY[0x1CCA78470](v68, -1, -1);
            }
          }

          else
          {
            v188 = 0u;
            v189 = 0u;
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          *(&v189 + 1) = MEMORY[0x1E69E6530];
          *&v188 = v23;
          sub_1C8481D10(&v188, v187);
          a2 = v182;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v186 = *a2;
          v71 = v186;
          v72 = sub_1C8474B54(v62, *(&v62 + 1));
          v74 = v71[2];
          v75 = (v73 & 1) == 0;
          v76 = __OFADD__(v74, v75);
          v77 = v74 + v75;
          if (v76)
          {
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            result = sub_1C8591004();
            __break(1u);
            return result;
          }

          v78 = v73;
          if (v71[3] >= v77)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v170 = v72;
              sub_1C8474BCC();
              v72 = v170;
            }
          }

          else
          {
            sub_1C8474D70(v77, isUniquelyReferenced_nonNull_native);
            v72 = sub_1C8474B54(v62, *(&v62 + 1));
            if ((v78 & 1) != (v79 & 1))
            {
              goto LABEL_152;
            }
          }

          if ((v78 & 1) == 0)
          {
            v80 = v186;
            v186[(v72 >> 6) + 8] |= 1 << v72;
            *(v80[6] + 16 * v72) = v62;
            sub_1C8481D10(v187, (v80[7] + 32 * v72));
            result = __swift_destroy_boxed_opaque_existential_0(&v190);
            v81 = v80[2];
            v76 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (v76)
            {
              goto LABEL_148;
            }

LABEL_115:
            v80[2] = v82;
            *a2 = v80;
            goto LABEL_6;
          }

          goto LABEL_93;
        }

        sub_1C8481CB4(&v190, &v188);
        if (swift_dynamicCast())
        {
          v30 = v187[0];
          v29 = v187[1];
          *&v188 = v185;
          *&v188 = sub_1C8590FD4();
          *(&v188 + 1) = v31;
          v32 = v180;
          sub_1C8590C74();
          sub_1C8481E28();
          v33 = sub_1C8590EB4();
          v35 = v34;
          (*v179)(v32, v181);

          v188 = v183;
          if (v178)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v33, v35);
          }

          else
          {

            MEMORY[0x1CCA775F0](v33, v35);
          }

          v99 = v188;
          v100 = *v182;
          if (*(*v182 + 16) && (v101 = sub_1C8474B54(v188, *(&v188 + 1)), (v102 & 1) != 0))
          {
            sub_1C8481CB4(*(v100 + 56) + 32 * v101, &v188);
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
            v103 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v104 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v103))
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              *&v188 = v106;
              *v105 = v176;
              *(v105 + 4) = sub_1C84741F0(v99, *(&v99 + 1), &v188);
              _os_log_impl(&dword_1C8460000, v104, v103, "From Array: Key unexpectedly present when flattening: %s", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v106);
              MEMORY[0x1CCA78470](v106, -1, -1);
              MEMORY[0x1CCA78470](v105, -1, -1);
            }
          }

          else
          {
            v188 = 0u;
            v189 = 0u;
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          *(&v189 + 1) = MEMORY[0x1E69E6158];
          *&v188 = v30;
          *(&v188 + 1) = v29;
          sub_1C8481D10(&v188, v187);
          a2 = v182;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v186 = *a2;
          v108 = v186;
          v72 = sub_1C8474B54(v99, *(&v99 + 1));
          v110 = v108[2];
          v111 = (v109 & 1) == 0;
          v76 = __OFADD__(v110, v111);
          v112 = v110 + v111;
          if (v76)
          {
            goto LABEL_147;
          }

          v113 = v109;
          if (v108[3] >= v112)
          {
            if ((v107 & 1) == 0)
            {
              v171 = v72;
              sub_1C8474BCC();
              v72 = v171;
            }
          }

          else
          {
            sub_1C8474D70(v112, v107);
            v72 = sub_1C8474B54(v99, *(&v99 + 1));
            if ((v113 & 1) != (v114 & 1))
            {
              goto LABEL_152;
            }
          }

          if ((v113 & 1) == 0)
          {
            v80 = v186;
            v186[(v72 >> 6) + 8] |= 1 << v72;
            *(v80[6] + 16 * v72) = v99;
            sub_1C8481D10(v187, (v80[7] + 32 * v72));
            result = __swift_destroy_boxed_opaque_existential_0(&v190);
            v118 = v80[2];
            v76 = __OFADD__(v118, 1);
            v82 = v118 + 1;
            if (v76)
            {
              goto LABEL_150;
            }

            goto LABEL_115;
          }

LABEL_93:
          v115 = v72;

          v116 = v186;
          v117 = (v186[7] + 32 * v115);
          __swift_destroy_boxed_opaque_existential_0(v117);
          sub_1C8481D10(v187, v117);
        }

        else
        {
          sub_1C8481CB4(&v190, &v188);
          sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
          if (!swift_dynamicCast())
          {
            *&v188 = v185;
            *&v188 = sub_1C8590FD4();
            *(&v188 + 1) = v88;
            v89 = v180;
            sub_1C8590C74();
            sub_1C8481E28();
            v90 = sub_1C8590EB4();
            v92 = v91;
            (*v179)(v89, v181);

            v188 = v183;
            if (v178)
            {

              MEMORY[0x1CCA775F0](95, 0xE100000000000000);

              MEMORY[0x1CCA775F0](v90, v92);
            }

            else
            {

              MEMORY[0x1CCA775F0](v90, v92);
            }

            v140 = v188;
            v141 = sub_1C8590E54();
            v142 = MEMORY[0x1E69E6158];
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v143 = qword_1EDE5CB90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
            v144 = swift_allocObject();
            *(v144 + 16) = v175;
            *(v144 + 56) = v142;
            v145 = sub_1C8481E7C();
            *(v144 + 64) = v145;
            *(v144 + 32) = v140;
            __swift_project_boxed_opaque_existential_0(&v190, *(&v191 + 1));
            swift_getDynamicType();
            v146 = sub_1C8591034();
            *(v144 + 96) = MEMORY[0x1E69E6158];
            *(v144 + 104) = v145;
            *(v144 + 72) = v146;
            *(v144 + 80) = v147;
            sub_1C8590CA4(v141, &dword_1C8460000, v143, "From Array: Found Unsupported type: %@ %@", 41, 2, v144);

            result = __swift_destroy_boxed_opaque_existential_0(&v190);
            a2 = v182;
            goto LABEL_6;
          }

          v54 = v187[0];
          *&v188 = v185;
          *&v188 = sub_1C8590FD4();
          *(&v188 + 1) = v55;
          v56 = v180;
          sub_1C8590C74();
          sub_1C8481E28();
          v57 = sub_1C8590EB4();
          v59 = v58;
          (*v179)(v56, v181);

          v188 = v183;
          if (v178)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v57, v59);
          }

          else
          {

            MEMORY[0x1CCA775F0](v57, v59);
          }

          v119 = v188;
          v120 = *a2;
          if (*(*a2 + 16) && (v121 = sub_1C8474B54(v188, *(&v188 + 1)), (v122 & 1) != 0))
          {
            sub_1C8481CB4(*(v120 + 56) + 32 * v121, &v188);
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
            v123 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v124 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v123))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              *&v188 = v126;
              *v125 = v176;
              *(v125 + 4) = sub_1C84741F0(v119, *(&v119 + 1), &v188);
              _os_log_impl(&dword_1C8460000, v124, v123, "From Array: Key unexpectedly present when flattening: %s", v125, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v126);
              MEMORY[0x1CCA78470](v126, -1, -1);
              MEMORY[0x1CCA78470](v125, -1, -1);
            }
          }

          else
          {
            v188 = 0u;
            v189 = 0u;
            sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          v127 = sub_1C8590E24();
          *(&v189 + 1) = MEMORY[0x1E69E6530];
          *&v188 = v127;
          sub_1C8481D10(&v188, v187);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v186 = *a2;
          v129 = v186;
          v130 = sub_1C8474B54(v119, *(&v119 + 1));
          v132 = v129[2];
          v133 = (v131 & 1) == 0;
          v76 = __OFADD__(v132, v133);
          v134 = v132 + v133;
          if (v76)
          {
            goto LABEL_149;
          }

          v135 = v131;
          if (v129[3] >= v134)
          {
            if ((v128 & 1) == 0)
            {
              v172 = v130;
              sub_1C8474BCC();
              v130 = v172;
            }
          }

          else
          {
            sub_1C8474D70(v134, v128);
            v130 = sub_1C8474B54(v119, *(&v119 + 1));
            if ((v135 & 1) != (v136 & 1))
            {
              goto LABEL_152;
            }
          }

          if ((v135 & 1) == 0)
          {
            v80 = v186;
            v186[(v130 >> 6) + 8] |= 1 << v130;
            *(v80[6] + 16 * v130) = v119;
            sub_1C8481D10(v187, (v80[7] + 32 * v130));

            result = __swift_destroy_boxed_opaque_existential_0(&v190);
            v139 = v80[2];
            v76 = __OFADD__(v139, 1);
            v82 = v139 + 1;
            if (v76)
            {
              goto LABEL_151;
            }

            goto LABEL_115;
          }

          v137 = v130;

          v116 = v186;
          v138 = (v186[7] + 32 * v137);
          __swift_destroy_boxed_opaque_existential_0(v138);
          sub_1C8481D10(v187, v138);
        }

        result = __swift_destroy_boxed_opaque_existential_0(&v190);
        *a2 = v116;
        goto LABEL_6;
      }

      v13 = v187[0];
      v14 = *(v187[0] + 16);
      if (v14 == 2)
      {
        if (sub_1C84706C4(v187[0], a2, v183, *(&v183 + 1)))
        {
          goto LABEL_5;
        }

        v14 = *(v13 + 16);
      }

      else if (!v14)
      {
        v15 = sub_1C8590E64();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v16 = qword_1EDE5CB90;
        if (!os_log_type_enabled(qword_1EDE5CB90, v15))
        {
          goto LABEL_76;
        }

        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v188 = v18;
        *v17 = v177;
        v19 = sub_1C8590CE4();
        v21 = v20;

        v22 = sub_1C84741F0(v19, v21, &v188);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v185;
        _os_log_impl(&dword_1C8460000, v16, v15, "From Array: empty or zero dict: %s index %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1CCA78470](v18, -1, -1);
        MEMORY[0x1CCA78470](v17, -1, -1);
        goto LABEL_77;
      }

      if (v14)
      {
        v36 = sub_1C8474B54(25441, 0xE200000000000000);
        if (v37)
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v36, &v188);
          sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
          if (!*(v13 + 16))
          {
            goto LABEL_76;
          }

          v38 = sub_1C8474B54(25441, 0xE200000000000000);
          if ((v39 & 1) == 0)
          {
            goto LABEL_76;
          }

          sub_1C8481CB4(*(v13 + 56) + 32 * v38, &v188);
          if (swift_dynamicCast())
          {
            v188 = *v187;
            v40 = v180;
            sub_1C8590C74();
            sub_1C8481E28();
            v41 = sub_1C8590EB4();
            v43 = v42;
            (*v179)(v40, v181);

            v44 = sub_1C8470540(v183, *(&v183 + 1), v41, v43);
            v46 = v45;

            sub_1C8472F8C(v13, a2, v44, v46);

            goto LABEL_76;
          }

          goto LABEL_5;
        }
      }

      v188 = 0u;
      v189 = 0u;
      sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
      if (!*(v13 + 16) || (v47 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v48 & 1) == 0))
      {
        v188 = 0u;
        v189 = 0u;
        sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_47;
      }

      sub_1C8481CB4(*(v13 + 56) + 32 * v47, &v188);
      sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
      if (*(v13 + 16))
      {
        v49 = sub_1C8474B54(0x444968736168, 0xE600000000000000);
        if (v50)
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v49, &v188);
          if (swift_dynamicCast())
          {
            if (v187[0] == 0xD000000000000011 && v174 == v187[1])
            {
LABEL_42:

LABEL_47:
              if (*(v13 + 16) && (v60 = sub_1C8474B54(1701605234, 0xE400000000000000), (v61 & 1) != 0))
              {
                sub_1C8481CB4(*(v13 + 56) + 32 * v60, &v188);
                sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
                sub_1C8472F8C(v13, a2, v183, *(&v183 + 1));
              }

              else
              {
                v188 = 0u;
                v189 = 0u;
                sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
                if (!*(v13 + 16) || (v83 = sub_1C8474B54(0x6F43524F50617874, 0xEB00000000746E75), (v84 & 1) == 0))
                {
                  v188 = 0u;
                  v189 = 0u;
                  sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *&v188 = v185;
                  v93 = sub_1C8590FD4();
                  v95 = v94;
                  goto LABEL_75;
                }

                sub_1C8481CB4(*(v13 + 56) + 32 * v83, &v188);
                sub_1C8482178(&v188, &qword_1EC2AADB8, &qword_1C85A10C0);
                *&v188 = v185;
                v85 = sub_1C8590FD4();
                v87 = v86;
                v188 = v183;

                MEMORY[0x1CCA775F0](v85, v87);

                sub_1C8472F8C(v13, a2, v188, *(&v188 + 1));
              }

LABEL_76:

LABEL_77:
              result = __swift_destroy_boxed_opaque_existential_0(&v190);
              goto LABEL_6;
            }

            v51 = sub_1C8590FE4();

            if (v51)
            {
              goto LABEL_47;
            }
          }
        }
      }

      if (*(v13 + 16))
      {
        v52 = sub_1C8474B54(0x444968736168, 0xE600000000000000);
        if (v53)
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v52, &v188);
          if (swift_dynamicCast())
          {
            if (v187[0] == 0xD000000000000011 && v173 == v187[1])
            {
              goto LABEL_42;
            }

            v148 = sub_1C8590FE4();

            if (v148)
            {
              goto LABEL_47;
            }
          }
        }
      }

      if (*(v13 + 16))
      {
        v149 = sub_1C8474B54(1701605234, 0xE400000000000000);
        if (v150)
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v149, &v188);
          if (swift_dynamicCast())
          {
            if (v187[0] == 5128526 && v187[1] == 0xE300000000000000)
            {

              goto LABEL_140;
            }

            v151 = sub_1C8590FE4();

            if (v151)
            {
              goto LABEL_140;
            }
          }
        }
      }

      v152 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v153 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v152))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v187[0] = v155;
        *v154 = v177;
        v156 = *(v13 + 16);
        *&v185 = v155;
        if (v156 && (v157 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v158 & 1) != 0))
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v157, &v188);
        }

        else
        {
          v188 = 0u;
          v189 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB8, &qword_1C85A10C0);
        v159 = sub_1C8590CF4();
        v161 = sub_1C84741F0(v159, v160, v187);

        *(v154 + 4) = v161;
        *(v154 + 12) = 2080;
        if (*(v13 + 16) && (v162 = sub_1C8474B54(1701605234, 0xE400000000000000), (v163 & 1) != 0))
        {
          sub_1C8481CB4(*(v13 + 56) + 32 * v162, &v188);
        }

        else
        {
          v188 = 0u;
          v189 = 0u;
        }

        v164 = sub_1C8590CF4();
        v166 = sub_1C84741F0(v164, v165, v187);

        *(v154 + 14) = v166;
        _os_log_impl(&dword_1C8460000, v153, v152, "From Array: hashID is %s role is %s", v154, 0x16u);
        v167 = v185;
        swift_arrayDestroy();
        MEMORY[0x1CCA78470](v167, -1, -1);
        MEMORY[0x1CCA78470](v154, -1, -1);
      }

LABEL_140:
      if (!*(v13 + 16) || (v168 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v169 & 1) == 0))
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v190);
        goto LABEL_6;
      }

      sub_1C8481CB4(*(v13 + 56) + 32 * v168, &v188);
      if (swift_dynamicCast())
      {
        v93 = v187[0];
        v95 = v187[1];
LABEL_75:
        v96 = sub_1C8470540(v183, *(&v183 + 1), v93, v95);
        v98 = v97;

        sub_1C8472F8C(v13, a2, v96, v98);

        goto LABEL_76;
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(&v190);

LABEL_6:
      ++v10;
      v11 += 32;
    }

    while (v184 != v10);
  }

  return result;
}

void sub_1C8472F8C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C8481CB4(*(a1 + 56) + 32 * v15, v21);
    v20[0] = v17;
    v20[1] = v18;

    sub_1C84730C8(v17, v18, v21, a3, a4, a2);
    sub_1C8482178(v20, &qword_1EC2AAD80, &qword_1C85A1088);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C84730C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v113 = a4;
  v114 = a5;
  v10 = sub_1C8590C84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || !sub_1C8590D44())
  {
    v15 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v15))
    {
      v17 = swift_slowAlloc();
      v112 = a6;
      v18 = v17;
      v19 = swift_slowAlloc();
      v111 = a2;
      v20 = a3;
      v21 = v13;
      v22 = a1;
      v23 = v11;
      v24 = v10;
      v25 = v19;
      *&v117 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1C84741F0(v113, v114, &v117);
      _os_log_impl(&dword_1C8460000, v16, v15, "From Dict: Invalid Key at base %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v26 = v25;
      v10 = v24;
      v11 = v23;
      a1 = v22;
      v13 = v21;
      a3 = v20;
      a2 = v111;
      MEMORY[0x1CCA78470](v26, -1, -1);
      v27 = v18;
      a6 = v112;
      MEMORY[0x1CCA78470](v27, -1, -1);
    }
  }

  sub_1C8481CB4(a3, &v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE08, &qword_1C85A1108);
  if (swift_dynamicCast())
  {
    v28 = v115;
    if (v14 && v115[2] && sub_1C8590D44())
    {
      if (*(v28 + 16) == 2 && (sub_1C84706C4(v28, a6, v113, v114) & 1) != 0)
      {
        goto LABEL_25;
      }

      v29 = sub_1C8470540(v113, v114, a1, a2);
      sub_1C8472F8C(v28, a6, v29, v30);
LABEL_20:

LABEL_25:

      return;
    }

    v34 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDE5CB90;
    if (!os_log_type_enabled(qword_1EDE5CB90, v34))
    {
      goto LABEL_25;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v117 = v37;
    *v36 = 136315394;
    v38 = sub_1C8590CE4();
    v40 = v39;

    v41 = sub_1C84741F0(v38, v40, &v117);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = sub_1C8590D14();
    v44 = sub_1C84741F0(v42, v43, &v117);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_1C8460000, v35, v34, "From Dict: empty or zero val: %s or empy or zero key: %s", v36, 0x16u);
    swift_arrayDestroy();
    v45 = v37;
    goto LABEL_44;
  }

  sub_1C8481CB4(a3, &v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE10, &qword_1C85A1110);
  if (swift_dynamicCast())
  {
    v31 = v115;
    v32 = sub_1C8470540(v113, v114, a1, a2);
    if (*(v31 + 16))
    {
      sub_1C84715F4(v31, a6, v32, v33);
      goto LABEL_20;
    }

    v79 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v80 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v79))
    {
      v36 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v117 = v81;
      *v36 = 136315138;
      *(v36 + 4) = sub_1C84741F0(a1, a2, &v117);
      _os_log_impl(&dword_1C8460000, v80, v79, "From Dict: zero sized array with key: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      v45 = v81;
LABEL_44:
      MEMORY[0x1CCA78470](v45, -1, -1);
      MEMORY[0x1CCA78470](v36, -1, -1);
    }
  }

  else
  {
    sub_1C8481CB4(a3, &v117);
    v46 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      v47 = v115;
      v48 = sub_1C8470540(v113, v114, a1, a2);
      v50 = v48;
      v51 = v49;
      v52 = *a6;
      if (*(*a6 + 16) && (v53 = sub_1C8474B54(v48, v49), (v54 & 1) != 0))
      {
        sub_1C8481CB4(*(v52 + 56) + 32 * v53, &v117);
        sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
        v55 = sub_1C8590E54();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v56 = qword_1EDE5CB90;
        if (os_log_type_enabled(qword_1EDE5CB90, v55))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v117 = v58;
          *v57 = 136315138;
          *(v57 + 4) = sub_1C84741F0(v50, v51, &v117);
          _os_log_impl(&dword_1C8460000, v56, v55, "From Dict: Key unexpectedly present when flattening Int: %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x1CCA78470](v58, -1, -1);
          MEMORY[0x1CCA78470](v57, -1, -1);
        }
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
        sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
      }

      *(&v118 + 1) = v46;
      *&v117 = v47;
      sub_1C8466D6C(&v117, v50, v51);
    }

    else
    {
      sub_1C8481CB4(a3, &v117);
      v59 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v112 = v13;
        v61 = v115;
        v60 = v116;
        v62 = sub_1C8470540(v113, v114, a1, a2);
        v64 = v62;
        v65 = v63;
        v66 = *a6;
        if (*(*a6 + 16) && (v67 = sub_1C8474B54(v62, v63), (v68 & 1) != 0))
        {
          v69 = v59;
          sub_1C8481CB4(*(v66 + 56) + 32 * v67, &v117);
          sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
          v70 = sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            v110 = v70;
            swift_once();
            v70 = v110;
          }

          v71 = qword_1EDE5CB90;
          v72 = v70;
          if (os_log_type_enabled(qword_1EDE5CB90, v70))
          {
            v73 = swift_slowAlloc();
            LODWORD(v113) = v72;
            v74 = v73;
            v75 = swift_slowAlloc();
            v114 = v11;
            v76 = v10;
            v77 = v75;
            *&v117 = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_1C84741F0(v64, v65, &v117);
            _os_log_impl(&dword_1C8460000, v71, v113, "From Dict: Key unexpectedly present when flattening String: %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v77);
            v78 = v77;
            v10 = v76;
            v11 = v114;
            MEMORY[0x1CCA78470](v78, -1, -1);
            MEMORY[0x1CCA78470](v74, -1, -1);
          }
        }

        else
        {
          v69 = v59;
          v117 = 0u;
          v118 = 0u;
          sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
        }

        *&v117 = v61;
        *(&v117 + 1) = v60;
        v94 = v112;
        sub_1C8590C74();
        sub_1C8481E28();
        v95 = sub_1C8590EB4();
        v97 = v96;
        (*(v11 + 8))(v94, v10);

        *(&v118 + 1) = v69;
        *&v117 = v95;
        *(&v117 + 1) = v97;
        sub_1C8466D6C(&v117, v64, v65);
      }

      else
      {
        sub_1C8481CB4(a3, &v117);
        sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v98 = v59;
          v99 = sub_1C8470540(v113, v114, a1, a2);
          v101 = v100;
          v102 = sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v103 = qword_1EDE5CB90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_1C85A0FF0;
          v105 = v98;
          *(v104 + 56) = v98;
          v106 = sub_1C8481E7C();
          *(v104 + 64) = v106;
          *(v104 + 32) = v99;
          *(v104 + 40) = v101;
          __swift_project_boxed_opaque_existential_0(a3, a3[3]);
          swift_getDynamicType();
          v107 = sub_1C8591034();
          *(v104 + 96) = v105;
          *(v104 + 104) = v106;
          *(v104 + 72) = v107;
          *(v104 + 80) = v108;
          sub_1C8590CA4(v102, &dword_1C8460000, v103, "From Dict: Found Unsupported type: %@ %@", 40, 2, v104);
          goto LABEL_25;
        }

        v82 = v115;
        v83 = sub_1C8470540(v113, v114, a1, a2);
        v85 = v83;
        v86 = v84;
        v87 = *a6;
        if (*(*a6 + 16) && (v88 = sub_1C8474B54(v83, v84), (v89 & 1) != 0))
        {
          sub_1C8481CB4(*(v87 + 56) + 32 * v88, &v117);
          sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
          v90 = sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v91 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v90))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *&v117 = v93;
            *v92 = 136315138;
            *(v92 + 4) = sub_1C84741F0(v85, v86, &v117);
            _os_log_impl(&dword_1C8460000, v91, v90, "From Dict: Key unexpectedly present when flattening NSNumber: %s", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x1CCA78470](v93, -1, -1);
            MEMORY[0x1CCA78470](v92, -1, -1);
          }
        }

        else
        {
          v117 = 0u;
          v118 = 0u;
          sub_1C8482178(&v117, &qword_1EC2AADB8, &qword_1C85A10C0);
        }

        v109 = sub_1C8590E24();
        *(&v118 + 1) = v46;
        *&v117 = v109;
        sub_1C8466D6C(&v117, v85, v86);
      }
    }
  }
}

id WANWActivityTransform.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WANWActivityTransform.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C8473E28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADF8, &qword_1C85A10F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE00, &qword_1C85A1100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8473F5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C8474068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC8, &qword_1C85A10D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C847416C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1C84741F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C84742BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C8481CB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C84742BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C84743C8(a5, a6);
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
    result = sub_1C8590F64();
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

void *sub_1C84743C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C8474414(a1, a2);
  sub_1C8474544(&unk_1F481A390);
  return v3;
}

void *sub_1C8474414(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C8474630(v5, 0);
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

  result = sub_1C8590F64();
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
        v10 = sub_1C8590D74();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C8474630(v10, 0);
        result = sub_1C8590F44();
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

uint64_t sub_1C8474544(uint64_t result)
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

  result = sub_1C84746A4(result, v11, 1, v3);
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

void *sub_1C8474630(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA8, &qword_1C85A10B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C84746A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA8, &qword_1C85A10B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C8474798(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1C8481D68(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_1C8481D10(v46, v41);
  v9 = *a3;
  v10 = sub_1C8474B54(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C8474D70(v15, a2 & 1);
    v10 = sub_1C8474B54(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1C8591004();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1C8474BCC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD98, &qword_1C85A10A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1C8481D10(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1C8481D68(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_1C8481D10(v46, v41);
      v29 = *a3;
      v30 = sub_1C8474B54(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_1C8474D70(v34, 1);
        v30 = sub_1C8474B54(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1C8481D10(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1C8590F54();
  MEMORY[0x1CCA775F0](0xD00000000000001BLL, 0x80000001C85A26F0);
  sub_1C8590F74();
  MEMORY[0x1CCA775F0](39, 0xE100000000000000);
  sub_1C8590F84();
  __break(1u);
}

unint64_t sub_1C8474B54(uint64_t a1, uint64_t a2)
{
  sub_1C8591014();
  sub_1C8590D34();
  v4 = sub_1C8591024();

  return sub_1C8475028(a1, a2, v4);
}

void sub_1C8474BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
  v2 = *v0;
  v3 = sub_1C8590F94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C8481CB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C8481D10(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_1C8474D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
  v33 = v4;
  result = sub_1C8590FA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C8481D10(v24, v34);
      }

      else
      {
        sub_1C8481CB4(v24, v34);
      }

      sub_1C8591014();
      sub_1C8590D34();
      result = sub_1C8591024();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C8481D10(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1C8475028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C8590FE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1C84750E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C847517C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8475100(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8475288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C8475120()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    v3 = *(v1 + 16) + 1;

    return sub_1C84750E0(0, v3, 1);
  }

  return result;
}

char *sub_1C847517C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C8475288(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA0, &qword_1C85A10A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD90, &qword_1C85A1098);
    swift_arrayInitWithCopy();
  }

  return v10;
}
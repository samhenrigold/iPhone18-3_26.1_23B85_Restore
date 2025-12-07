void sub_23BD28968()
{
  v0 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v1 = objc_alloc(MEMORY[0x277CE41F8]);
  v2 = *MEMORY[0x277CE4208];
  v3 = *MEMORY[0x277CE4250];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5);
  v12 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v1, v7, v6, v0.latitude, v0.longitude, 48.7, v2, v3);

  v9 = objc_msgSend_altitudeWithLocation_error_(NCAltitude, v8, v12, 0);
  v10 = qword_27E1C4A80;
  qword_27E1C4A80 = v9;

  objc_msgSend_setAbsoluteAltitudeAccuracy_(qword_27E1C4A80, v11, &unk_284E8A708);
}

__CFString *sub_23BD28C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278B93F80[a3 - 1];
  }
}

uint64_t sub_23BD28CA8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_automotive(a1, a2, a3) & 1) != 0 || (objc_msgSend_cycling(a1, v4, v5) & 1) != 0 || (objc_msgSend_running(a1, v6, v7))
  {
    return 1;
  }

  return objc_msgSend_walking(a1, v8, v9);
}

uint64_t sub_23BD28D0C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_walking(a1, a2, a3))
  {
    return 1;
  }

  if (objc_msgSend_running(a1, v4, v5))
  {
    return 2;
  }

  if (objc_msgSend_automotive(a1, v7, v8))
  {
    return 3;
  }

  if (objc_msgSend_cycling(a1, v9, v10))
  {
    return 4;
  }

  return 0;
}

uint64_t sub_23BD2921C(uint64_t a1)
{

  return NSRequestConcreteImplementation();
}

uint64_t sub_23BD29238()
{

  return objc_opt_class();
}

uint64_t sub_23BD29EAC()
{
  v0 = objc_alloc_init(NCTargetedWaypointManager);
  v1 = qword_27E1C4A90;
  qword_27E1C4A90 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD2AFE0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 488), *MEMORY[0x277D74410]);
  v3 = qword_27E1C4AA0;
  qword_27E1C4AA0 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t sub_23BD2B0E4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 480), *MEMORY[0x277D74410]);
  v3 = qword_27E1C4AB8;
  qword_27E1C4AB8 = v2;

  v6 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C4AB8, v4, v5);
  v7 = qword_27E1C4AB0;
  qword_27E1C4AB0 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

uint64_t sub_23BD2B1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4AEC);
  if (qword_27E1C4AF0)
  {
    v5 = qword_27E1C4AF0 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4AF8)
  {
    v6 = byte_27E1C4AE8;
  }

  else
  {
    qword_27E1C4AF0 = v2;
    qword_27E1C4AF8 = objc_msgSend_version(v2, v3, v4);
    sub_23BD2B29C(qword_27E1C4AF8, v2);
    v6 = 1;
    byte_27E1C4AE8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4AEC);

  return v6;
}

void sub_23BD2B29C(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v6 = objc_msgSend_sizeClass(v3, v4, v5);
  v8 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v7, v3, v6);

  v22[0] = &unk_284E8ABD8;
  v22[1] = &unk_284E8ABF0;
  v23[0] = &unk_284E8A718;
  v23[1] = &unk_284E8A718;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v23, v22, 2);
  objc_msgSend_scaledValue_withOverrides_(v8, v11, v10, 4.0);
  qword_27E1C4AC8 = v12;

  objc_msgSend_scaledValue_(v8, v13, v14, 11.0);
  qword_27E1C4AD0 = v15;
  objc_msgSend_scaledValue_(v8, v16, v17, 11.0);
  qword_27E1C4AD8 = v18;
  objc_msgSend_scaledValue_(v8, v19, v20, 13.0);
  qword_27E1C4AE0 = v21;
}

uint64_t sub_23BD2B4A4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 512), *MEMORY[0x277D74410]);
  v3 = qword_27E1C4B08;
  qword_27E1C4B08 = v2;

  v6 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C4B08, v4, v5);
  v7 = qword_27E1C4B00;
  qword_27E1C4B00 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

uint64_t sub_23BD2B5CC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 520), *MEMORY[0x277D74410]);
  v3 = qword_27E1C4B18;
  qword_27E1C4B18 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t sub_23BD2B63C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4B4C);
  if (qword_27E1C4B50)
  {
    v5 = qword_27E1C4B50 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4B58)
  {
    v6 = byte_27E1C4B48;
  }

  else
  {
    qword_27E1C4B50 = v2;
    qword_27E1C4B58 = objc_msgSend_version(v2, v3, v4);
    sub_23BD2B6E4(qword_27E1C4B58, v2);
    v6 = 1;
    byte_27E1C4B48 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4B4C);

  return v6;
}

void sub_23BD2B6E4(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v6 = objc_msgSend_sizeClass(v3, v4, v5);
  v8 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v7, v3, v6);

  v22[0] = &unk_284E8AC08;
  v22[1] = &unk_284E8AC20;
  v23[0] = &unk_284E8A728;
  v23[1] = &unk_284E8A728;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v23, v22, 2);
  objc_msgSend_scaledValue_withOverrides_(v8, v11, v10, 10.0);
  qword_27E1C4B28 = v12;

  objc_msgSend_scaledValue_(v8, v13, v14, 33.0);
  qword_27E1C4B30 = v15;
  objc_msgSend_scaledValue_(v8, v16, v17, 33.0);
  qword_27E1C4B38 = v18;
  objc_msgSend_scaledValue_(v8, v19, v20, 42.0);
  qword_27E1C4B40 = v21;
}

void sub_23BD2B988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD2B9A8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NCLocationUpdateNonRhythmicGNSSDelegate _startLocationQueryDurationTimer]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s Location update should end. Set the idle time to restart location update.", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_stopLocationUpdates(WeakRetained, v4, v5);

  v6 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__startIdleTimer(v6, v7, v8);
}

void sub_23BD2C17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD2C1AC(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2C23C;
  block[3] = &unk_278B94000;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void sub_23BD2C23C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[32];
    if (v5)
    {
      if (objc_msgSend_isValid(v5, v2, v3))
      {
        v6 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_23BD65660(v6);
        }

        objc_msgSend_fire(v4[32], v7, v8);
      }
    }
  }
}

uint64_t sub_23BD2C2C0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s runtime assertion is about to expire", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_23BD2C380(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s runtime assertion invalidated. error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_23BD2D56C()
{
  v0 = objc_alloc_init(NCGuidesEnabledState);
  v1 = qword_27E1C4B60;
  qword_27E1C4B60 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD2DAB4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, *(a1 + 48));
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v4, v3, *(a1 + 40));

  v6 = *(a1 + 32);

  return MEMORY[0x2821F9670](v6, sel__lock_saveGuideEnabledStatesToDefaults, v5);
}

void sub_23BD2DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD2DC30(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5]);
  v5 = v3;
  if (v3)
  {
    v8 = v3;
    v6 = objc_msgSend_BOOLValue(v3, v3, v4);
    v5 = v8;
  }

  else
  {
    v6 = 1;
  }

  *(*(a1[6] + 8) + 24) = v6;

  return MEMORY[0x2821F96F8](v6, v5);
}

void sub_23BD2DE68(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], a2, *(a1 + 32));
  v4 = objc_msgSend_bundleIdentifier(v6, v2, v3);
  v5 = qword_27E1C4B70;
  qword_27E1C4B70 = v4;
}

uint64_t sub_23BD2EBDC()
{
  v0 = [NCBearing alloc];
  v3 = objc_msgSend_initWithBearing_(v0, v1, v2, 0.0);
  v4 = qword_27E1C4B80;
  qword_27E1C4B80 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD2F7BC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4BEC);
  if (qword_27E1C4BF0)
  {
    v5 = qword_27E1C4BF0 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4BF8)
  {
    v6 = byte_27E1C4BE8;
  }

  else
  {
    qword_27E1C4BF0 = v2;
    qword_27E1C4BF8 = objc_msgSend_version(v2, v3, v4);
    sub_23BD2F864(qword_27E1C4BF8, v2);
    v6 = 1;
    byte_27E1C4BE8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4BEC);

  return v6;
}

void sub_23BD2F864(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v5 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v4, v3, 2);
  v18[0] = &unk_284E8ACC8;
  v18[1] = &unk_284E8ACE0;
  v19[0] = &unk_284E8B130;
  v19[1] = &unk_284E8B130;
  v18[2] = &unk_284E8ACF8;
  v19[2] = &unk_284E8B140;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v19, v18, 3);
  objc_msgSend_scaledValue_withOverrides_(v5, v8, v7, 44.0);
  *&xmmword_27E1C4B90 = v9;

  objc_msgSend_scaledValue_(v5, v10, v11, 1.25);
  *(&xmmword_27E1C4B90 + 1) = v12;
  objc_msgSend_scaledValue_(v5, v13, v14, 2.5);
  qword_27E1C4BA0 = v15;
  *algn_27E1C4BA8 = *(&xmmword_27E1C4B90 + 8);
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v17 = v16;

  xmmword_27E1C4BC0 = vmulq_n_f64(xmmword_27E1C4B90, v17);
  *algn_27E1C4BD0 = vmulq_n_f64(*&qword_27E1C4BA0, v17);
  *&qword_27E1C4BE0 = v17 * *&qword_27E1C4BB0;
}

void sub_23BD2F9D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3);
  v7[0] = @"transform";
  v7[1] = @"borderColor";
  v8[0] = v3;
  v8[1] = v3;
  v7[2] = @"borderWidth";
  v7[3] = @"backgroundColor";
  v8[2] = v3;
  v8[3] = v3;
  v7[4] = @"foregroundColor";
  v7[5] = @"opacity";
  v8[4] = v3;
  v8[5] = v3;
  v7[6] = @"cornerRadius";
  v8[6] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, v7, 7);
  v6 = qword_27E1C4C00;
  qword_27E1C4C00 = v5;
}

uint64_t IsNanoCompass(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4C18 != -1)
  {
    sub_23BD659B4();
  }

  return byte_27E1C4C10;
}

void sub_23BD2FAF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3);
  v7 = objc_msgSend_bundleIdentifier(v3, v4, v5);

  byte_27E1C4C10 = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", v6, v7);
}

uint64_t NanoCompassIsInternalBuild(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4C28 != -1)
  {
    sub_23BD659C8();
  }

  return byte_27E1C4C20;
}

uint64_t sub_23BD2FBA4()
{
  result = os_variant_has_internal_ui();
  byte_27E1C4C20 = result;
  return result;
}

id NanoCompassAppTintColor(uint64_t a1)
{
  if (qword_27E1C4C38 != -1)
  {
    sub_23BD659DC();
  }

  v2 = qword_27E1C4C30;

  return v2;
}

uint64_t sub_23BD2FC10(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 1.0, 0.333333333, 0.0392156863, 1.0);
  v4 = qword_27E1C4C30;
  qword_27E1C4C30 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

id NanoCompassBearingTintColor(uint64_t a1)
{
  if (qword_27E1C4C48 != -1)
  {
    sub_23BD659F0();
  }

  v2 = qword_27E1C4C40;

  return v2;
}

uint64_t sub_23BD2FCAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 0.929411765, 0.149019608, 0.0941176471, 1.0);
  v4 = qword_27E1C4C40;
  qword_27E1C4C40 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

id NanoCompassLocalizedString(void *a1)
{
  v1 = a1;
  v2 = sub_23BD2FF74(v1);
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v1, &stru_284E80A60, @"NanoCompass");

  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, v1);
  if (isEqualToString)
  {
    v8 = sub_23BD2FF74(isEqualToString);
    v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, v1, &stru_284E80A60, @"AltimeterComplication");

    v4 = v10;
  }

  v11 = objc_msgSend_isEqualToString_(v4, v7, v1);
  if (v11)
  {
    v13 = sub_23BD2FF74(v11);
    v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, v1, &stru_284E80A60, @"GridSystem");

    v4 = v15;
  }

  v16 = objc_msgSend_isEqualToString_(v4, v12, v1);
  if (v16)
  {
    v18 = sub_23BD2FF74(v16);
    v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, v1, &stru_284E80A60, @"Waypoint");

    v4 = v20;
  }

  v21 = objc_msgSend_isEqualToString_(v4, v17, v1);
  if (v21)
  {
    v23 = sub_23BD2FF74(v21);
    v25 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, v1, &stru_284E80A60, @"LevelComplication");

    v4 = v25;
  }

  v26 = objc_msgSend_isEqualToString_(v4, v22, v1);
  if (v26)
  {
    v28 = sub_23BD2FF74(v26);
    v30 = objc_msgSend_localizedStringForKey_value_table_(v28, v29, v1, &stru_284E80A60, @"Localizable-Footprint");

    v4 = v30;
  }

  v31 = objc_msgSend_isEqualToString_(v4, v27, v1);
  if (v31)
  {
    v33 = sub_23BD2FF74(v31);
    v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, v1, &stru_284E80A60, @"Localizable-N199");

    v4 = v35;
  }

  v36 = objc_msgSend_isEqualToString_(v4, v32, v1);
  if (v36)
  {
    v37 = sub_23BD2FF74(v36);
    v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v38, v1, &stru_284E80A60, @"Localizable-Guides");

    v4 = v39;
  }

  return v4;
}

id sub_23BD2FF74(uint64_t a1)
{
  if (qword_27E1C4CD8 != -1)
  {
    sub_23BD65A04();
  }

  v2 = qword_27E1C4CD0;

  return v2;
}

id NanoCompassAccessibilityNameForSymbol(void *a1)
{
  v1 = a1;
  v2 = sub_23BD2FF74(v1);
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v1, &stru_284E80A60, @"WaypointSymbols");

  return v4;
}

id NanoCompassFormattedHeading(void *a1, int a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  if (v5 && (objc_msgSend_isAccurate(v5, v6, v7) & 1) != 0)
  {
    objc_msgSend_heading(v5, v9, v10);
    v14 = sub_23BD3013C(v8, v11);
    if (a2 && (objc_msgSend_accuracy(v5, v12, v13), v15 > 30.0))
    {
      v16 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v16, v14);
    }

    else
    {
      v18 = v14;
    }
  }

  else
  {
    v18 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v18;
}

id sub_23BD3013C(void *a1, double a2)
{
  v3 = a1;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v4, vcvtmd_s64_f64(a2));
  if (v3)
  {
    objc_msgSend_stringFromNumber_(v3, v5, v6);
  }

  else
  {
    objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v5, v6, 0);
  }
  v7 = ;
  v8 = NanoCompassLocalizedString(@"DEGREE_FORMAT");
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v8, v7);

  return v10;
}

id NanoCompassFormattedDirection(int a1, double a2, const char *a3, uint64_t a4)
{
  if (qword_27E1C4C58 != -1)
  {
    sub_23BD65A18();
  }

  v6 = objc_msgSend_count(qword_27E1C4C50, a3, a4);
  v8 = objc_msgSend_objectAtIndexedSubscript_(qword_27E1C4C50, v7, vcvtmd_s64_f64(vcvtd_n_f64_u64(0x168 / v6, 1uLL) + a2) % 360 / (0x168 / v6));
  v10 = v8;
  if (a1)
  {
    v11 = objc_msgSend_stringByAppendingString_(v8, v9, @"_FULL");

    v10 = v11;
  }

  v12 = NanoCompassLocalizedString(v10);

  return v12;
}

void sub_23BD30308()
{
  v0 = qword_27E1C4C50;
  qword_27E1C4C50 = &unk_284E8B0E8;
}

id NanoCompassFormattedHeadingDirection(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && (objc_msgSend_isAccurate(v1, v2, v3) & 1) != 0)
  {
    objc_msgSend_heading(v4, v5, v6);
    v10 = NanoCompassFormattedDirection(0, v9, v7, v8);
  }

  else
  {
    v10 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  v11 = v10;

  return v11;
}

id NanoCompassFormattedHeadingFullDirection(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && (objc_msgSend_isAccurate(v1, v2, v3) & 1) != 0)
  {
    objc_msgSend_heading(v4, v5, v6);
    v10 = NanoCompassFormattedDirection(1, v9, v7, v8);
  }

  else
  {
    v10 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  v11 = v10;

  return v11;
}

id NanoCompassFormattedFullHeadingAndDirection(void *a1, int a2, void *a3, int a4)
{
  v7 = a1;
  v10 = a3;
  if (v7 && (objc_msgSend_isAccurate(v7, v8, v9) & 1) != 0)
  {
    v11 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v12 = MEMORY[0x277CCACA8];
    v13 = NanoCompassFormattedHeading(v7, a2, v10);
    objc_msgSend_heading(v7, v14, v15);
    v19 = NanoCompassFormattedDirection(a4, v18, v16, v17);
    v21 = objc_msgSend_stringWithFormat_(v12, v20, v11, v13, v19);
  }

  else
  {
    v21 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v21;
}

__CFString *NanoCompassFormattedBearing(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    objc_msgSend_bearing(a1, v4, v5);
    v7 = sub_23BD3013C(v3, v6);
  }

  else
  {
    v7 = &stru_284E80A60;
  }

  return v7;
}

__CFString *NanoCompassFormattedBearingDirection(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    objc_msgSend_bearing(a1, a2, a3);
    v7 = NanoCompassFormattedDirection(0, v6, v4, v5);
  }

  else
  {
    v7 = &stru_284E80A60;
  }

  return v7;
}

__CFString *NanoCompassFormattedBearingAndDirection(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v6 = MEMORY[0x277CCACA8];
    v7 = NanoCompassFormattedBearing(v4, v3);

    v10 = NanoCompassFormattedBearingDirection(v4, v8, v9);

    v12 = objc_msgSend_stringWithFormat_(v6, v11, v5, v7, v10);
  }

  else
  {
    v12 = &stru_284E80A60;
  }

  return v12;
}

id NanoCompassDefaultValueFormat(uint64_t a1)
{
  if (qword_27E1C4C68 != -1)
  {
    sub_23BD65A2C();
  }

  v2 = qword_27E1C4C60;

  return v2;
}

uint64_t sub_23BD306F8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4C60;
  qword_27E1C4C60 = v2;

  objc_msgSend_setNumberStyle_(qword_27E1C4C60, v4, 1);
  objc_msgSend_setMaximumFractionDigits_(qword_27E1C4C60, v5, 0);
  v6 = qword_27E1C4C60;

  return MEMORY[0x2821F9670](v6, sel_setRoundingMode_, 2);
}

id NanoCompassFormattedAltitude(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3 && (objc_msgSend_hasReading(v3, v4, v5) & 1) != 0)
  {
    v7 = objc_alloc(MEMORY[0x277CCAB10]);
    objc_msgSend_altitude(v3, v8, v9);
    v11 = v10;
    v14 = objc_msgSend_meters(MEMORY[0x277CCAE20], v12, v13);
    v16 = objc_msgSend_initWithDoubleValue_unit_(v7, v15, v14, v11);

    v19 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v17, v18);
    v22 = objc_msgSend_usesMetric(v19, v20, v21);

    v25 = 5.0;
    if ((v22 & 1) == 0)
    {
      v26 = objc_msgSend_feet(MEMORY[0x277CCAE20], v23, v24);
      v28 = objc_msgSend_measurementByConvertingToUnit_(v16, v27, v26);

      v25 = 10.0;
      v16 = v28;
    }

    if (objc_msgSend_type(v3, v23, v24) == 3)
    {
      v25 = 1.0;
    }

    objc_msgSend_doubleValue(v16, v29, v30);
    v34 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v32, v33, v25 * round(v31 / v25));
    v36 = v34;
    if (v6)
    {
      v37 = objc_msgSend_stringFromNumber_(v6, v35, v34);
    }

    else
    {
      v38 = NanoCompassDefaultValueFormat(v34);
      v37 = objc_msgSend_stringFromNumber_(v38, v39, v36);
    }
  }

  else
  {
    v37 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v37;
}

id NanoCompassFormattedAltitudeUnitsInAbbr(int a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, a2, a3);
  v7 = objc_msgSend_usesMetric(v4, v5, v6);

  v8 = @"ALTITUDE_UNIT_METER";
  if (a1)
  {
    v8 = @"ALTITUDE_UNIT_KILOMETER";
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"ALTITUDE_UNIT_FOOT";
  }

  v10 = NanoCompassLocalizedString(v9);

  return v10;
}

id NanoCompassFormattedAltitudeValueAndUnits(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3 && (objc_msgSend_hasReading(v3, v4, v5) & 1) != 0)
  {
    v7 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
    v8 = MEMORY[0x277CCACA8];
    v9 = NanoCompassFormattedAltitude(v3, v6);
    v12 = NanoCompassFormattedAltitudeUnitsInAbbr(0, v10, v11);
    v14 = objc_msgSend_stringWithFormat_(v8, v13, v7, v9, v12);
  }

  else
  {
    v14 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v14;
}

id NanoCompassValueAndUnit(void *a1, void *a2, uint64_t a3, int a4)
{
  if (a1)
  {
    v5 = NanoCompassValueWithFormat(a1, a2, a3);
    v8 = NanoCompassFormattedAltitudeUnitsInAbbr(0, v6, v7);
    v9 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v10 = @"ALTITUDE_COMBINING_WITH_SPACE_FORMAT";
    }

    else
    {
      v10 = @"ALTITUDE_COMBINING_FORMAT";
    }

    v11 = NanoCompassLocalizedString(v10);
    v13 = objc_msgSend_stringWithFormat_(v9, v12, v11, v5, v8);
  }

  else
  {
    v13 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v13;
}

id NanoCompassValueWithFormat(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v13 = NanoCompassLocalizedString(@"UNCALIBRATED");
    goto LABEL_9;
  }

  v7 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
  v9 = v7;
  if (!v6)
  {
    v14 = NanoCompassDefaultValueFormat(v7);
    v11 = objc_msgSend_stringFromNumber_(v14, v15, v5);

    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  v11 = objc_msgSend_stringFromNumber_(v6, v8, v5);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, v9, v11);
LABEL_8:
  v13 = v12;

LABEL_9:

  return v13;
}

id NanoCompassGetAltitudeAbbreviationWithTargetLength(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1;
  v8 = objc_msgSend_displayTilde(v5, v6, v7);
  v9 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v5, v10, v11);
  v14 = objc_msgSend_numberWithInt_(v9, v13, v12);
  v17 = objc_msgSend_intValue(v14, v15, v16);
  v18 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
  v21 = objc_msgSend_intValue(v14, v19, v20);
  if (v21 >= 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = -v21;
  }

  if (v24 < 0x3E8)
  {
    goto LABEL_15;
  }

  if (v17 >= 0)
  {
    v25 = v17;
  }

  else
  {
    v25 = -v17;
  }

  v26 = objc_msgSend_stringValue(v14, v22, v23);
  v29 = objc_msgSend_length(v26, v27, v28);
  v30 = v8;
  if (v25 > 0x3E7)
  {
    v30 = v8 + 1;
  }

  v31 = v30 + v29;

  if (v31 <= a2)
  {
LABEL_15:
    v50 = NanoCompassDefaultValueFormat(v21);
    v40 = objc_msgSend_stringFromNumber_(v50, v51, v14);

    if (v8)
    {
      v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v52, v18, v40);
    }

    else
    {
      v53 = v40;
      v40 = v53;
    }

    v49 = v53;
  }

  else
  {
    v34 = objc_msgSend_altitude(v5, v32, v33);
    *&v35 = v35 / 1000.0;
    LODWORD(a2) = llroundf(*&v35);
    v36 = NanoCompassDefaultValueFormat(v34);
    v38 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, a2);
    v40 = objc_msgSend_stringFromNumber_(v36, v39, v38);

    *a3 = 1;
    v43 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v41, v42);
    LODWORD(v36) = objc_msgSend_usesMetric(v43, v44, v45);

    if (v36)
    {
      v46 = @"ALTITUDE_ABBREVIATION_IN_METRIC";
    }

    else
    {
      v46 = @"ALTITUDE_ABBREVIATION_NON_METRIC";
    }

    v47 = NanoCompassLocalizedString(v46);
    v49 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v48, v47, @"~%@", 0, v40);
  }

  return v49;
}

__CFString *NanoCompassFormattedAltitudeAccuracy(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3 && objc_msgSend_hasReading(v3, v4, v5))
  {
    v7 = objc_alloc(MEMORY[0x277CCAB10]);
    objc_msgSend_accuracy(v3, v8, v9);
    v11 = v10;
    v14 = objc_msgSend_meters(MEMORY[0x277CCAE20], v12, v13);
    v16 = objc_msgSend_initWithDoubleValue_unit_(v7, v15, v14, v11);

    v19 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v17, v18);
    v22 = objc_msgSend_usesMetric(v19, v20, v21);

    if ((v22 & 1) == 0)
    {
      v25 = objc_msgSend_feet(MEMORY[0x277CCAE20], v23, v24);
      v27 = objc_msgSend_measurementByConvertingToUnit_(v16, v26, v25);

      v16 = v27;
    }

    v28 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(v16, v23, v24);
    v32 = objc_msgSend_numberWithDouble_(v28, v29, v30);
    if (v6)
    {
      objc_msgSend_stringFromNumber_(v6, v31, v32);
    }

    else
    {
      if (qword_27E1C4C78 != -1)
      {
        sub_23BD65A40();
      }

      objc_msgSend_stringFromNumber_(qword_27E1C4C70, v31, v32);
    }
    v34 = ;
    v35 = NanoCompassLocalizedString(@"ACCURACY_FORMAT");
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, v35, v34);
  }

  else
  {
    v33 = &stru_284E80A60;
  }

  return v33;
}

uint64_t sub_23BD31060(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4C70;
  qword_27E1C4C70 = v2;

  objc_msgSend_setNumberStyle_(qword_27E1C4C70, v4, 1);
  v6 = qword_27E1C4C70;

  return objc_msgSend_setMaximumFractionDigits_(v6, v5, 2);
}

id _noStyleFormatter(uint64_t a1)
{
  if (qword_27E1C4C88 != -1)
  {
    sub_23BD65A54();
  }

  v2 = qword_27E1C4C80;

  return v2;
}

void sub_23BD31100(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4C80;
  qword_27E1C4C80 = v2;

  objc_msgSend_setNumberStyle_(qword_27E1C4C80, v4, 0);
  v8 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4C80, v7, v8);
}

id _DMSAccessibilityFormatter(uint64_t a1)
{
  if (qword_27E1C4C98 != -1)
  {
    sub_23BD65A68();
  }

  v2 = qword_27E1C4C90;

  return v2;
}

uint64_t sub_23BD311C4(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4C90;
  qword_27E1C4C90 = v2;

  objc_msgSend_setUnitsStyle_(qword_27E1C4C90, v4, 3);
  v5 = qword_27E1C4C90;

  return MEMORY[0x2821F9670](v5, sel_setZeroFormattingBehavior_, 0);
}

id NanoCompassWaypointDefaultColor(uint64_t a1)
{
  if (qword_27E1C4CA8 != -1)
  {
    sub_23BD65A7C();
  }

  v2 = qword_27E1C4CA0;

  return v2;
}

uint64_t sub_23BD31264(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], a2, a3, 0.949019608, 0.7);
  v4 = qword_27E1C4CA0;
  qword_27E1C4CA0 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t supportsAltimeterOverride()
{
  v8 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AbsoluteAltitudeEnabled", @"com.apple.locationd", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    if (byte_27E1C4CB0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  byte_27E1C4CB0 = AppBooleanValue != 0;
  if (!AppBooleanValue)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = NCLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_27E1C4CB0)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_23BD26000, v1, OS_LOG_TYPE_DEFAULT, "Absolute altimeter support is overridden to %@", buf, 0xCu);
  }

  v3 = byte_27E1C4CB0;
  return v3 & 1;
}

uint64_t supportAbsoluteAltimeterFeatures(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4C28 != -1)
  {
    sub_23BD659C8();
  }

  if (byte_27E1C4C20 != 1)
  {
    return 0;
  }

  return supportsAltimeterOverride();
}

uint64_t _isCurrentDeviceAltAccount(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4CB8 != -1)
  {
    sub_23BD65A90();
  }

  return byte_27E1C4CB1;
}

void sub_23BD31458(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x277D2BCF8], a2, a3);
  v6 = objc_msgSend_activePairedDeviceSelectorBlock(MEMORY[0x277D2BCF8], v4, v5);
  v8 = objc_msgSend_getAllDevicesWithArchivedAltAccountDevicesMatching_(v3, v7, v6);
  v16 = objc_msgSend_firstObject(v8, v9, v10);

  v12 = v16;
  if (v16)
  {
    v13 = objc_msgSend_valueForProperty_(v16, v11, *MEMORY[0x277D2BB28]);
    byte_27E1C4CB1 = objc_msgSend_BOOLValue(v13, v14, v15);

    v12 = v16;
  }

  else
  {
    byte_27E1C4CB1 = 0;
  }
}

uint64_t supportsOrienteering(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4CC8 != -1)
  {
    sub_23BD65AA4();
  }

  return byte_27E1C4CC0;
}

uint64_t sub_23BD31560()
{
  result = MGGetBoolAnswer();
  byte_27E1C4CC0 = result;
  return result;
}

uint64_t isFullyFeaturedApp(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4CC8 != -1)
  {
    sub_23BD65AA4();
  }

  if (byte_27E1C4CC0 == 1)
  {
    if (qword_27E1C4CB8 != -1)
    {
      sub_23BD65A90();
    }

    v2 = byte_27E1C4CB1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL NanoCompassIsSameDay(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v8 = objc_msgSend_currentCalendar(v3, v6, v7);
  v10 = objc_msgSend_components_fromDate_(v8, v9, 28, v5);

  v12 = objc_msgSend_components_fromDate_(v8, v11, 28, v4);

  v15 = objc_msgSend_day(v10, v13, v14);
  if (v15 == objc_msgSend_day(v12, v16, v17) && (v20 = objc_msgSend_month(v10, v18, v19), v20 == objc_msgSend_month(v12, v21, v22)))
  {
    v25 = objc_msgSend_year(v10, v23, v24);
    v28 = v25 == objc_msgSend_year(v12, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

double bearingBetweenCoordinatesInRadian(double a1, double a2, double a3, double a4)
{
  v4 = a1 * 3.14159265 / 180.0;
  v5 = a3 * 3.14159265 / 180.0;
  v6 = __sincos_stret(a4 * 3.14159265 / 180.0 - a2 * 3.14159265 / 180.0);
  v7 = __sincos_stret(v5);
  v8 = __sincos_stret(v4);
  v9 = atan2(v7.__cosval * v6.__sinval, -(v8.__sinval * v7.__cosval) * v6.__cosval + v8.__cosval * v7.__sinval) * 180.0 / 3.14159265;
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  return v9 * 3.14159265 / 180.0;
}

double bearingBetweenLocationsInRadian(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_msgSend_coordinate(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  objc_msgSend_coordinate(v3, v11, v12);
  v14 = v13;
  v16 = v15;

  v17 = bearingBetweenCoordinatesInRadian(v8, v10, v14, v16);
  objc_msgSend_magneticDeclination(v4, v18, v19);

  return v17;
}

double bearingBetweenLocationsInRadianWithOptions(void *a1, void *a2)
{
  v3 = a2;
  objc_msgSend_coordinate(a1, v4, v5);
  v7 = v6;
  v9 = v8;
  objc_msgSend_coordinate(v3, v10, v11);
  v13 = v12;
  v15 = v14;

  return bearingBetweenCoordinatesInRadian(v7, v9, v13, v15);
}

double _roundWaypointDistanceTo(double a1, double a2)
{
  result = 0.0;
  if (a1 >= 0.0)
  {
    return floor(a1 / a2 + 0.5) * a2;
  }

  return result;
}

id _formattedDistanceForWaypoint(void *a1, void *a2, int a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = objc_alloc(MEMORY[0x277CCAB10]);
  v12 = objc_msgSend_meters(MEMORY[0x277CCAE20], v10, v11);
  v14 = objc_msgSend_initWithDoubleValue_unit_(v9, v13, v12, a4);

  v17 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v15, v16);
  v20 = objc_msgSend_usesMetric(v17, v18, v19);

  if (v20)
  {
    if (a4 >= 1000.0)
    {
      v23 = v8;
      v28 = objc_msgSend_kilometers(MEMORY[0x277CCAE20], v47, v48);
      v30 = objc_msgSend_measurementByConvertingToUnit_(v14, v49, v28);
    }

    else
    {
      v23 = v7;
      if (a3)
      {
        v24 = 0.0;
        if (a4 >= 0.0)
        {
          v24 = floor(a4 / 10.0 + 0.5) * 10.0;
        }

        v25 = objc_alloc(MEMORY[0x277CCAB10]);
        v28 = objc_msgSend_meters(MEMORY[0x277CCAE20], v26, v27);
        v30 = objc_msgSend_initWithDoubleValue_unit_(v25, v29, v28, v24);
      }

      else
      {
        v50 = objc_alloc(MEMORY[0x277CCAB10]);
        v28 = objc_msgSend_meters(MEMORY[0x277CCAE20], v51, v52);
        v30 = objc_msgSend_initWithDoubleValue_unit_(v50, v53, v28, a4);
      }
    }

    goto LABEL_15;
  }

  v31 = objc_msgSend_miles(MEMORY[0x277CCAE20], v21, v22);
  v28 = objc_msgSend_measurementByConvertingToUnit_(v14, v32, v31);

  objc_msgSend_doubleValue(v28, v33, v34);
  if (v35 >= 1.0)
  {
    v23 = v8;
    v30 = v28;
    v28 = v30;
LABEL_15:
    v54 = v30;
    goto LABEL_18;
  }

  v23 = v7;
  objc_msgSend_doubleValue(v28, v36, v37);
  v39 = v38 * 5280.0;
  if (a3)
  {
    v40 = 0.0;
    if (v39 >= 0.0)
    {
      v40 = floor(v39 / 50.0 + 0.5) * 50.0;
    }

    v41 = objc_alloc(MEMORY[0x277CCAB10]);
    v44 = objc_msgSend_feet(MEMORY[0x277CCAE20], v42, v43);
    v46 = objc_msgSend_initWithDoubleValue_unit_(v41, v45, v44, v40);
  }

  else
  {
    v55 = objc_alloc(MEMORY[0x277CCAB10]);
    v44 = objc_msgSend_feet(MEMORY[0x277CCAE20], v56, v57);
    v46 = objc_msgSend_initWithDoubleValue_unit_(v55, v58, v44, v39);
  }

  v54 = v46;

LABEL_18:
  v60 = objc_msgSend_stringFromMeasurement_(v23, v59, v54);

  return v60;
}

id formattedDistanceForWaypointComplication(double a1, uint64_t a2)
{
  v3 = sub_23BD31CD0(a2);
  v4 = sub_23BD31D14(v3);
  v5 = _formattedDistanceForWaypoint(v3, v4, 1, a1);

  v8 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v6, v7);
  v11 = objc_msgSend_countryCode(v8, v9, v10);

  if (objc_msgSend_isEqualToString_(v11, v12, @"US"))
  {
    v14 = objc_msgSend_componentsSeparatedByString_(v5, v13, @" ");
    if (objc_msgSend_count(v14, v15, v16) == 2)
    {
      v18 = objc_msgSend_componentsJoinedByString_(v14, v17, &stru_284E80A60);

      v5 = v18;
    }
  }

  return v5;
}

id sub_23BD31CD0(uint64_t a1)
{
  if (qword_27E1C4CE8 != -1)
  {
    sub_23BD65AB8();
  }

  v2 = qword_27E1C4CE0;

  return v2;
}

id sub_23BD31D14(uint64_t a1)
{
  if (qword_27E1C4CF8 != -1)
  {
    sub_23BD65ACC();
  }

  v2 = qword_27E1C4CF0;

  return v2;
}

id formattedDistanceForWaypoint(uint64_t a1, double a2)
{
  if (a1)
  {
    if (qword_27E1C4D08 != -1)
    {
      sub_23BD65AE0();
    }

    v3 = qword_27E1C4D18;
    v4 = qword_27E1C4D00;
    if (v3 != -1)
    {
      sub_23BD65AF4();
    }

    v5 = _formattedDistanceForWaypoint(v4, qword_27E1C4D10, 0, a2);
  }

  else
  {
    v4 = sub_23BD31CD0(a1);
    v6 = sub_23BD31D14(v4);
    v5 = _formattedDistanceForWaypoint(v4, v6, 0, a2);
  }

  return v5;
}

id convertWaypointArrayToDict(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v4 = objc_msgSend_valueForKey_(v2, v3, @"uuid");
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_(v1, v5, v2, v4);

  return v6;
}

uint64_t sub_23BD31EBC()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v3 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v4 = qword_27E1C4CD0;
  qword_27E1C4CD0 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_23BD31F18(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4CE0;
  qword_27E1C4CE0 = v2;

  objc_msgSend_setUnitOptions_(qword_27E1C4CE0, v4, 1);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4CE0, v8, v7);

  objc_msgSend_setUnitStyle_(qword_27E1C4CE0, v9, 2);
  v13 = objc_msgSend_numberFormatter(qword_27E1C4CE0, v10, v11);
  objc_msgSend_setMaximumFractionDigits_(v13, v12, 0);
}

void sub_23BD31FC0(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4CF0;
  qword_27E1C4CF0 = v2;

  objc_msgSend_setUnitOptions_(qword_27E1C4CF0, v4, 1);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4CF0, v8, v7);

  objc_msgSend_setUnitStyle_(qword_27E1C4CF0, v9, 2);
  v13 = objc_msgSend_numberFormatter(qword_27E1C4CF0, v10, v11);
  objc_msgSend_setMaximumFractionDigits_(v13, v12, 1);
}

void sub_23BD32068(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4D00;
  qword_27E1C4D00 = v2;

  objc_msgSend_setUnitOptions_(qword_27E1C4D00, v4, 1);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4D00, v8, v7);

  objc_msgSend_setUnitStyle_(qword_27E1C4D00, v9, 3);
  v13 = objc_msgSend_numberFormatter(qword_27E1C4D00, v10, v11);
  objc_msgSend_setMaximumFractionDigits_(v13, v12, 0);
}

void sub_23BD32110(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4D10;
  qword_27E1C4D10 = v2;

  objc_msgSend_setUnitOptions_(qword_27E1C4D10, v4, 1);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4D10, v8, v7);

  objc_msgSend_setUnitStyle_(qword_27E1C4D10, v9, 3);
  v13 = objc_msgSend_numberFormatter(qword_27E1C4D10, v10, v11);
  objc_msgSend_setMaximumFractionDigits_(v13, v12, 1);
}

void *sub_23BD321B8(void *result, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_addObject_(result, a2, a3);
  }

  return result;
}

uint64_t sub_23BD32378(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4D6C);
  if (qword_27E1C4D70)
  {
    v5 = qword_27E1C4D70 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4D78)
  {
    v6 = byte_27E1C4D68;
  }

  else
  {
    qword_27E1C4D70 = v2;
    qword_27E1C4D78 = objc_msgSend_version(v2, v3, v4);
    sub_23BD32420(qword_27E1C4D78, v2);
    v6 = 1;
    byte_27E1C4D68 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4D6C);

  return v6;
}

void sub_23BD32420(uint64_t a1, const char *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v19 = &unk_284E8AD10;
  v20[0] = &unk_284E8A7A8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v20, &v19, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, 8.0);
  *&xmmword_27E1C4D20 = v6;

  objc_msgSend_scaledValue_(v2, v7, v8, 1.0);
  *(&xmmword_27E1C4D20 + 1) = v9;
  objc_msgSend_scaledValue_(v2, v10, v11, 22.0);
  qword_27E1C4D30 = v12;
  *algn_27E1C4D38 = xmmword_23BD6C570;
  *(&xmmword_27E1C4D40 + 8) = xmmword_23BD6C580;
  objc_msgSend_scaledValue_(v2, v13, v14, 2.25);
  qword_27E1C4D58 = v15;
  objc_msgSend_scaledValue_(v2, v16, v17, 0.5);
  qword_27E1C4D60 = v18;
}

uint64_t sub_23BD326AC()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_27E1C4D80;
  qword_27E1C4D80 = v0;

  v2 = qword_27E1C4D80;

  return MEMORY[0x2821F9670](v2, sel_setDateFormat_, @"YYYYMMdd-HHmmss");
}

uint64_t sub_23BD33320(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4D9C);
  if (qword_27E1C4DA0)
  {
    v5 = qword_27E1C4DA0 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4DA8)
  {
    v6 = byte_27E1C4D98;
  }

  else
  {
    qword_27E1C4DA0 = v2;
    qword_27E1C4DA8 = objc_msgSend_version(v2, v3, v4);
    sub_23BD333C8(qword_27E1C4DA8, v2);
    v6 = 1;
    byte_27E1C4D98 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4D9C);

  return v6;
}

void sub_23BD333C8(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 3);
  objc_msgSend_scaledValue_(v5, v2, v3, 3.0);
  qword_27E1C4D90 = v4;
}

uint64_t sub_23BD334FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4DFC);
  if (qword_27E1C4E00)
  {
    v5 = qword_27E1C4E00 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4E08)
  {
    v6 = byte_27E1C4DF8;
  }

  else
  {
    qword_27E1C4E00 = v2;
    qword_27E1C4E08 = objc_msgSend_version(v2, v3, v4);
    sub_23BD335A4(qword_27E1C4E08, v2);
    v6 = 1;
    byte_27E1C4DF8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4DFC);

  return v6;
}

void sub_23BD335A4(uint64_t a1, const char *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v22 = &unk_284E8AD28;
  v23[0] = &unk_284E8A868;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v23, &v22, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, 17.0);
  *&xmmword_27E1C4DB0 = v6;

  objc_msgSend_scaledValue_(v2, v7, v8, 1.0);
  *(&xmmword_27E1C4DB0 + 1) = v9;
  v20[0] = &unk_284E8AD40;
  v20[1] = &unk_284E8AD28;
  v21[0] = &unk_284E8A878;
  v21[1] = &unk_284E8A888;
  v20[2] = &unk_284E8AD58;
  v20[3] = &unk_284E8AD70;
  v21[2] = &unk_284E8A898;
  v21[3] = &unk_284E8A8A8;
  v20[4] = &unk_284E8AD88;
  v20[5] = &unk_284E8ADA0;
  v21[4] = &unk_284E8A888;
  v21[5] = &unk_284E8A898;
  v20[6] = &unk_284E8ADB8;
  v21[6] = &unk_284E8A8A8;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v21, v20, 7);
  objc_msgSend_scaledValue_withOverrides_(v2, v12, v11, 41.0);
  qword_27E1C4DC0 = v13;

  *algn_27E1C4DC8 = xmmword_23BD6C5A0;
  *(&xmmword_27E1C4DD0 + 8) = xmmword_23BD6C5B0;
  objc_msgSend_scaledValue_(v2, v14, v15, 5.0);
  qword_27E1C4DE8 = v16;
  objc_msgSend_scaledValue_(v2, v17, v18, 1.2);
  qword_27E1C4DF0 = v19;
}

void sub_23BD33EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

void sub_23BD33F14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 448);
  v4 = a3;
  v8 = objc_msgSend_layer(v3, v5, v6);
  objc_msgSend_addSublayer_(v8, v7, v4);
}

void sub_23BD33F80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 448);
  v4 = a3;
  v8 = objc_msgSend_layer(v3, v5, v6);
  objc_msgSend_addSublayer_(v8, v7, v4);
}

void sub_23BD33FEC(uint64_t a1)
{
  v2 = *(a1 + 168);
}

void sub_23BD34530(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v11 = a3;
  v7 = objc_msgSend_unsignedIntegerValue(a2, v5, v6);
  v9 = objc_msgSend_containsIndex_(v4, v8, v7);
  objc_msgSend_setHidden_(v11, v10, v9);
}

void sub_23BD34598(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v11 = a3;
  v7 = objc_msgSend_unsignedIntegerValue(a2, v5, v6);
  v9 = objc_msgSend_containsIndex_(v4, v8, v7);
  objc_msgSend_setHidden_(v11, v10, v9 ^ 1u);
}

void sub_23BD34644()
{
  v23 = objc_alloc_init(MEMORY[0x277D74270]);
  v2 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v0, v1, 11.0);
  v4 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v3, @"location.north.fill", v2);
  v5 = NanoCompassAppTintColor(v4);
  v7 = objc_msgSend_imageWithTintColor_renderingMode_(v4, v6, v5, 1);
  objc_msgSend_setImage_(v23, v8, v7);

  v10 = objc_msgSend_attributedStringWithAttachment_(MEMORY[0x277CCA898], v9, v23);
  v11 = objc_alloc(MEMORY[0x277CCAB48]);
  v13 = objc_msgSend_initWithAttributedString_(v11, v12, v10);
  v14 = qword_27E1C4E10;
  qword_27E1C4E10 = v13;

  v15 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v16 = objc_alloc(MEMORY[0x277CCA898]);
  v19 = objc_msgSend_localizedUppercaseString(v15, v17, v18);
  v21 = objc_msgSend_initWithString_(v16, v20, v19);

  objc_msgSend_appendAttributedString_(qword_27E1C4E10, v22, v21);
}

void sub_23BD34FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

double sub_23BD35048(uint64_t a1, unint64_t a2)
{
  v2 = a2 - *(*(a1 + 32) + 488);
  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  return *(a1 + 40) + v2 * *(a1 + 48);
}

void sub_23BD356C4(uint64_t a1, void *a2)
{
  v34 = a2;
  v5 = objc_msgSend_layer(v34, v3, v4);
  v8 = objc_msgSend_actions(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"filters");
  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);

  if (v10 != v13)
  {
    v16 = objc_msgSend_layer(v34, v14, v15);
    v19 = objc_msgSend_actions(v16, v17, v18);
    v22 = objc_msgSend_mutableCopy(v19, v20, v21);

    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v26, v25, @"filters");

    v29 = objc_msgSend_layer(v34, v27, v28);
    objc_msgSend_setActions_(v29, v30, v22);
  }

  v31 = *(a1 + 32);
  v32 = objc_msgSend_layer(v34, v14, v15);
  objc_msgSend_setFilters_(v32, v33, v31);
}

void sub_23BD35898(uint64_t a1, void *a2)
{
  v22 = a2;
  v5 = objc_msgSend_actions(v22, v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"filters");
  v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);

  if (v7 != v10)
  {
    v13 = objc_msgSend_actions(v22, v11, v12);
    v16 = objc_msgSend_mutableCopy(v13, v14, v15);

    v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v20, v19, @"filters");

    objc_msgSend_setActions_(v22, v21, v16);
  }

  objc_msgSend_setFilters_(v22, v11, *(a1 + 32));
}

void sub_23BD35E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

id sub_23BD35E1C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newLabelWithFont_color_text_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a2);

  return v2;
}

void sub_23BD36064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

id sub_23BD36084(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newLabelWithFont_color_text_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a2);

  return v2;
}

void sub_23BD36388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

void sub_23BD366AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD36850(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4EFC);
  if (qword_27E1C4F00)
  {
    v5 = qword_27E1C4F00 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4F08)
  {
    v6 = byte_27E1C4EF8;
  }

  else
  {
    qword_27E1C4F00 = v2;
    qword_27E1C4F08 = objc_msgSend_version(v2, v3, v4);
    sub_23BD368F8(qword_27E1C4F08, v2);
    v6 = 1;
    byte_27E1C4EF8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4EFC);

  return v6;
}

void sub_23BD368F8(uint64_t a1, void *a2)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_msgSend_screenScale(v2, v3, v4);
  v58 = v5;
  v6 = MEMORY[0x277CBBAF8];
  v9 = objc_msgSend_sizeClass(v2, v7, v8);
  v11 = objc_msgSend_metricsWithDevice_identitySizeClass_(v6, v10, v2, v9);

  v63 = &unk_284E8AE90;
  v64[0] = &unk_284E8A8B8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v64, &v63, 1);
  objc_msgSend_scaledValue_withOverrides_(v11, v14, v13, 13.0);
  qword_27E1C4E20 = v15;

  qword_27E1C4E28 = *MEMORY[0x277D74420];
  v16 = qword_27E1C4E28;
  v17 = MEMORY[0x277CBB6C0];
  objc_storeStrong(qword_27E1C4E30, *MEMORY[0x277CBB6C0]);
  v57 = vdupq_lane_s64(v58, 0);
  *&qword_27E1C4E30[1] = vdivq_f64(xmmword_23BD6C5F0, v57);
  v19 = NanoCompassAppTintColor(v18);
  v20 = qword_27E1C4E48;
  qword_27E1C4E48 = v19;

  v23 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v21, v22);
  v24 = qword_27E1C4E50;
  qword_27E1C4E50 = v23;

  v26 = NanoCompassBearingTintColor(v25);
  v27 = qword_27E1C4E58;
  qword_27E1C4E58 = v26;

  qword_27E1C4E60 = 0x4062C00000000000;
  *&qword_27E1C4E68 = 20.0 / *&v58;
  unk_27E1C4E70 = v16;
  objc_storeStrong(&qword_27E1C4E78, *v17);
  v61 = 0.0;
  v62 = 0.0;
  v59 = 1.0;
  v60 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(qword_27E1C4E48, v28, &v62, &v61, &v60, &v59);
  v59 = v59 * 0.8;
  v31 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v29, v30, v59 * v62, v59 * v61, v59 * v60, 1.0);
  v32 = qword_27E1C4E80;
  qword_27E1C4E80 = v31;

  *&qword_27E1C4E88 = 52.0 / *&v58;
  objc_msgSend_scaledValue_(v11, v33, v34, 0.75);
  qword_27E1C4E90 = v35;
  objc_msgSend_scaledValue_(v11, v36, v37, 10.0);
  qword_27E1C4E98 = v38;
  objc_msgSend_scaledValue_(v11, v39, v40, 15.0);
  qword_27E1C4EA0 = v41;
  objc_msgSend_scaledValue_(v11, v42, v43, 17.5);
  qword_27E1C4EA8 = v44;
  v47 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v45, v46);
  v48 = qword_27E1C4EB0;
  qword_27E1C4EB0 = v47;

  *&qword_27E1C4EB8 = 37.0 / *&v58;
  v51 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v49, v50, 1.0, 0.160784314, 0.101960784, 1.0);
  v52 = qword_27E1C4EC0;
  qword_27E1C4EC0 = v51;

  v55 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v53, v54);
  v56 = qword_27E1C4EC8;
  qword_27E1C4EC8 = v55;

  *&qword_27E1C4ED0 = 18.0 / *&v58;
  unk_27E1C4ED8 = *&qword_27E1C4EB8 + -3.0 / *&v58;
  xmmword_27E1C4EE0 = vdivq_f64(xmmword_23BD6C600, v57);
  *&qword_27E1C4EF0 = 4.0 / *&v58;
}

__n128 sub_23BD36C0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 136);
  v6 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v6;
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  v7 = *(a2 + 208);
  result = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = result;
  *(a1 + 208) = v7;
  return result;
}

BOOL sub_23BD36DF0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 - a4;
  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 > 0.0001)
  {
    return 1;
  }

  v8 = a2 - a5;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 > 0.0001)
  {
    return 1;
  }

  v9 = a3 - a6;
  v10 = -(a3 - a6);
  if (v9 < 0.0)
  {
    v9 = v10;
  }

  return v9 > 0.0001;
}

uint64_t sub_23BD371BC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C4F10;
  qword_27E1C4F10 = v2;

  objc_msgSend_setHasReading_(qword_27E1C4F10, v4, 1);
  v7 = qword_27E1C4F10;

  return objc_msgSend_setGravity_(v7, v5, v6, 0.0, 0.0, 1.0);
}

uint64_t sub_23BD37B48(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4FB4);
  if (qword_27E1C4FB8)
  {
    v5 = qword_27E1C4FB8 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C4FC0)
  {
    v6 = byte_27E1C4FB0;
  }

  else
  {
    qword_27E1C4FB8 = v2;
    qword_27E1C4FC0 = objc_msgSend_version(v2, v3, v4);
    sub_23BD37BF0(qword_27E1C4FC0, v2);
    v6 = 1;
    byte_27E1C4FB0 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4FB4);

  return v6;
}

void sub_23BD37BF0(uint64_t a1, const char *a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v19[0] = &unk_284E8AEA8;
  v19[1] = &unk_284E8AEC0;
  v20[0] = &unk_284E8AA18;
  v20[1] = &unk_284E8AA28;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v20, v19, 2);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, 48.0);
  *&xmmword_27E1C4F68 = v6;

  objc_msgSend_scaledValue_(v2, v7, v8, 2.0);
  *(&xmmword_27E1C4F68 + 1) = v9;
  objc_msgSend_scaledValue_(v2, v10, v11, 120.0);
  qword_27E1C4F78 = v12;
  unk_27E1C4F80 = xmmword_23BD6C650;
  *(&xmmword_27E1C4F88 + 8) = xmmword_23BD6C660;
  objc_msgSend_scaledValue_(v2, v13, v14, 14.0);
  qword_27E1C4FA0 = v15;
  objc_msgSend_scaledValue_(v2, v16, v17, 2.0);
  qword_27E1C4FA8 = v18;
}

BOOL NanoCompassLevelComplicationConsideredLevel(void *a1, char a2)
{
  v3 = a1;
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  isEqual = objc_msgSend_isEqual_(v3, v7, v6);

  v11 = 0;
  if (v3)
  {
    if ((isEqual & 1) == 0)
    {
      v11 = 0;
      if (objc_msgSend_hasReading(v3, v9, v10))
      {
        if ((a2 & 1) == 0)
        {
          if (objc_msgSend_orientation(v3, v12, v13) == 1)
          {
            objc_msgSend_horizontalOffset(v3, v14, v15);
            v11 = sqrt(v16 * v16 + v17 * v17) < 0.100000001;
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }
  }

  return v11;
}

void sub_23BD385D4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], a2, @"mountain.2.fill");
  v5 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v3, v4);
  v11 = objc_msgSend_imageWithTintColor_(v2, v6, v5);

  v7 = objc_alloc(MEMORY[0x277CBBB10]);
  v9 = objc_msgSend_initWithFullColorImage_(v7, v8, v11);
  v10 = qword_27E1C4FC8;
  qword_27E1C4FC8 = v9;
}

id sub_23BD3867C(void *a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = objc_msgSend_waypoint(v19, v14, v15, v29);
        v23 = objc_msgSend_muid(v20, v21, v22);

        if (v23 && objc_msgSend_unsignedLongLongValue(v23, v24, v25))
        {
          if ((objc_msgSend_containsObject_(v4, v24, v23) & 1) == 0)
          {
            objc_msgSend_addObject_(v10, v26, v19);
            objc_msgSend_addObject_(v4, v27, v23);
          }
        }

        else
        {
          objc_msgSend_addObject_(v10, v24, v19);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v29, v33, 16);
    }

    while (v16);
  }

  return v10;
}

id NanoCompassComplicationImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = qword_27E1C5010;
  v4 = a1;
  if (v2 != -1)
  {
    sub_23BD65BDC();
  }

  v5 = objc_msgSend_imageNamed_inBundle_compatibleWithTraitCollection_(v1, v3, v4, qword_27E1C5008, 0);

  return v5;
}

id NanoCompassComplicationHeadingDirectionBearingTextProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CBBB88];
  v6 = NanoCompassFormattedHeading(v3, 0, 0);
  v8 = objc_msgSend_textProviderWithText_(v5, v7, v6);

  v10 = NanoCompassAppTintColor(v9);
  objc_msgSend_setTintColor_(v8, v11, v10);

  v12 = MEMORY[0x277CBBB88];
  v13 = NanoCompassFormattedHeadingDirection(v3);
  v15 = objc_msgSend_textProviderWithText_(v12, v14, v13);

  if (v4 && objc_msgSend_isAccurate(v3, v16, v17))
  {
    v18 = MEMORY[0x277CBBB88];
    v19 = NanoCompassFormattedBearing(v4, 0);
    v21 = objc_msgSend_textProviderWithText_(v18, v20, v19);

    v23 = NanoCompassBearingTintColor(v22);
    objc_msgSend_setTintColor_(v21, v24, v23);

    v25 = NanoCompassLocalizedString(@"HEADING_DIRECTION_BEARING_COMBINER");
    v27 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v26, v25, v8, v15, v21);
  }

  else
  {
    v25 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v27 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v28, v25, v8, v15);
  }

  return v27;
}

id NanoCompassComplicationAltitudeSmallCapsTextProvider(void *a1, void *a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = a2;
  if (v5 && objc_msgSend_hasReading(v5, v6, v7))
  {
    v37 = 0;
    if (a3)
    {
      v11 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v5, 5, &v37);
      v12 = NCLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (v37)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v5, v9, v10);
      v12 = objc_msgSend_numberWithDouble_(v18, v19, v20);
      v23 = objc_msgSend_displayTilde(v5, v21, v22);
      v11 = NanoCompassValueWithFormat(v12, v8, v23);
    }

    v25 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v24, v11);
    v26 = MEMORY[0x277CBBB88];
    v29 = NanoCompassFormattedAltitudeUnitsInAbbr(v37, v27, v28);
    v31 = objc_msgSend_textProviderWithText_(v26, v30, v29);

    objc_msgSend_setUseLowercaseSmallCaps_(v31, v32, 1);
    objc_msgSend_setIgnoreUppercaseStyle_(v31, v33, 1);
    v34 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
    v17 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v35, v34, v25, v31);
  }

  else
  {
    v14 = MEMORY[0x277CBBB88];
    v15 = NanoCompassFormattedUncalibrated();
    v17 = objc_msgSend_textProviderWithText_(v14, v16, v15);
  }

  return v17;
}

id NanoCompassComplicationAltitudeAccuracySmallCapsTextProvider(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3 && objc_msgSend_hasReading(v3, v4, v5))
  {
    v9 = objc_msgSend_absoluteAltitudeAccuracy(v3, v7, v8);
    v10 = NanoCompassValueWithFormat(v9, v6, 0);

    v12 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v11, v10);
    v13 = MEMORY[0x277CBBB88];
    v16 = NanoCompassFormattedAltitudeUnits(v12, v14, v15);
    v18 = objc_msgSend_textProviderWithText_(v13, v17, v16);

    objc_msgSend_setUseLowercaseSmallCaps_(v18, v19, 1);
    objc_msgSend_setIgnoreUppercaseStyle_(v18, v20, 1);
    v21 = NanoCompassLocalizedString(@"ALTITUDE_INACCURATE_ACCURACY_FORMAT");
    v23 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v22, v21, v12, v18);
  }

  else
  {
    v24 = MEMORY[0x277CBBB88];
    v10 = NanoCompassFormattedUncalibrated();
    v23 = objc_msgSend_textProviderWithText_(v24, v25, v10);
  }

  return v23;
}

id NanoCompassWaypointCornerAndBezelComplicationTextProvider(void *a1, uint64_t a2, void *a3, int a4, char a5, int a6, int a7)
{
  v13 = a1;
  v14 = a3;
  v17 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DISTANCE");
  v51 = a2;
  if (v14 && v13 && (a5 & 1) == 0 && (a4 & 1) == 0)
  {
    v18 = objc_msgSend_rawLocation(v13, v15, v16);
    v21 = objc_msgSend_location(v14, v19, v20);
    objc_msgSend_distanceFromLocation_(v18, v22, v21);
    v24 = v23;

    v26 = formattedDistanceForWaypointComplication(v24, v25);

    v17 = v26;
  }

  v27 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DATA");
  v28 = MEMORY[0x277CBBB88];
  v31 = objc_msgSend_label(v14, v29, v30);
  v33 = objc_msgSend_textProviderWithText_(v28, v32, v31);

  if (v14)
  {
    if (a4)
    {
      objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v34, v27);
    }

    else
    {
      objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v34, v17);
    }
    v35 = ;
    v36 = NanoCompassWaypointDefaultColor(v35);
    objc_msgSend_setTintColor_(v35, v37, v36);

    if (v13 && v51 && !a4)
    {
      v41 = objc_msgSend_labelColor(v14, v39, v40);
    }

    else
    {
      v41 = NanoCompassWaypointDefaultColor(v38);
    }

    v44 = v41;
    objc_msgSend_setTintColor_(v33, v42, v41);

    v45 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_TEXT_COMBINER");
    v47 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v46, v45, v35, v33);
    goto LABEL_21;
  }

  if (a6)
  {
    v43 = @"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DATA";
LABEL_20:
    v35 = NanoCompassLocalizedString(v43);
    v47 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v48, v35);
    v45 = NanoCompassWaypointDefaultColor(v47);
    objc_msgSend_setTintColor_(v47, v49, v45);
LABEL_21:

    goto LABEL_22;
  }

  if (a7)
  {
    v43 = @"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME";
    goto LABEL_20;
  }

  v47 = 0;
LABEL_22:

  return v47;
}

id NanoCompassSampleWaypointCornerComplicationTextProvider(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = formattedDistanceForWaypointComplication(805.0, v4);
  v7 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v6, v5);
  v8 = NanoCompassWaypointDefaultColor(v7);
  objc_msgSend_setTintColor_(v7, v9, v8);

  v11 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v10, v4);

  objc_msgSend_setTintColor_(v11, v12, v3);
  v13 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_TEXT_COMBINER");
  v15 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v14, v13, v7, v11);

  return v15;
}

uint64_t NanoCompassComplicationLayoutIsRTL(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4FE0 != -1)
  {
    sub_23BD65BF0();
  }

  return byte_27E1C4FD8;
}

void sub_23BD39F80(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_keyWindow(MEMORY[0x277D75DA0], a2, a3);
  v17 = v3;
  if (v3)
  {
    v6 = objc_msgSend_effectiveUserInterfaceLayoutDirection(v3, v4, v5) == 1;
    v7 = v17;
    v8 = v6;
    byte_27E1C4FD8 = v8;
  }

  else
  {
    v9 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v4, v5);
    v12 = v9;
    if (v9)
    {
      byte_27E1C4FD8 = objc_msgSend_userInterfaceLayoutDirection(v9, v10, v11) != 0;
    }

    else
    {
      v13 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v10, v11);
      v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x277CBE6C8]);

      byte_27E1C4FD8 = objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v16, v15) == 2;
    }

    v7 = 0;
  }
}

id NanoCompassRedactionLabel(uint64_t a1)
{
  if (qword_27E1C4FF0 != -1)
  {
    sub_23BD65C04();
  }

  v2 = qword_27E1C4FE8;

  return v2;
}

void sub_23BD3A0C0()
{
  v0 = objc_alloc(MEMORY[0x277CBBB98]);
  v12 = objc_msgSend_initWithSystemName_(v0, v1, @"location.north.fill");
  v4 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v2, v3);
  objc_msgSend_setTintColor_(v12, v5, v4);

  v6 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v8 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v7, v6);
  v10 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBBA90], v9, v8, v12);
  v11 = qword_27E1C4FE8;
  qword_27E1C4FE8 = v10;
}

uint64_t AltitudeRedactionTextProvider(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD3A258;
  block[3] = &unk_278B93FB0;
  v8 = v1;
  v2 = qword_27E1C5000;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&qword_27E1C5000, block);
  }

  v4 = qword_27E1C4FF8;
  v5 = qword_27E1C4FF8;

  return v4;
}

void sub_23BD3A258(uint64_t a1)
{
  v10 = NanoCompassLocalizedString(@"ALTITUDE_ELEVATION_TEXT");
  v2 = MEMORY[0x277CBBB88];
  v5 = objc_msgSend_localizedUppercaseString(v10, v3, v4);
  v7 = objc_msgSend_textProviderWithText_(v2, v6, v5);
  v8 = qword_27E1C4FF8;
  qword_27E1C4FF8 = v7;

  objc_msgSend_setTintColor_(qword_27E1C4FF8, v9, *(a1 + 32));
}

uint64_t sub_23BD3A2FC()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v3 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v4 = qword_27E1C5008;
  qword_27E1C5008 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_23BD3AC64(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_layer(a2, a2, a3);
  objc_msgSend_setFilters_(v5, v4, v3);
}

uint64_t sub_23BD3ADB4()
{
  v0 = [NCManager alloc];
  v2 = objc_msgSend_init_(v0, v1, 0);
  v3 = qword_27E1C5018;
  qword_27E1C5018 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t sub_23BD3AE3C()
{
  v0 = [NCManager alloc];
  v2 = objc_msgSend_init_(v0, v1, 1);
  v3 = qword_27E1C5028;
  qword_27E1C5028 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23BD3AEB8(uint64_t a1, const char *a2, uint64_t a3)
{
  isRunningInStoreDemoMode = objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, a3);
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  if (isRunningInStoreDemoMode)
  {
    v6 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.Carousel");
    v8 = objc_msgSend_BOOLForKey_(v6, v7, @"StandaloneIsSecured");
    byte_27E1C5038 = v8;
    if (v8)
    {
      v9 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v10 = "Running store demo mode.";
        v11 = &v15;
LABEL_8:
        _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.compass");
    v13 = objc_msgSend_BOOLForKey_(v6, v12, @"ShowIdealizedDataForPPT");
    byte_27E1C5038 = v13;
    if (v13)
    {
      v9 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v10 = "Idealized Data setting is enabled. Most complications will not be available.";
        v11 = &v14;
        goto LABEL_8;
      }

LABEL_9:
    }
  }
}

void sub_23BD3B3C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_altitude(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_23BD3BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_23BD3BAC0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_containsObject_(*(*(a1 + 32) + 40), a2, a2);
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_23BD3BC1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23BD3BC44(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v8)
    {
      objc_msgSend__queue_altimeterUpdate_(*(a1 + 32), v6, v8);
    }

    if (v5)
    {
      objc_msgSend__queue_altimeterError_(*(a1 + 32), v6, v5);
    }
  }
}

uint64_t sub_23BD3BE90(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BD3BF04;
  v5[3] = &unk_278B94410;
  v5[4] = v2;
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, a2, v5);
}

void sub_23BD3BF04(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = objc_msgSend_altitude(v4, v6, v7);
  (a3)[2](v5, v8);
}

void sub_23BD3C25C()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass");
  byte_27E1C5048 = objc_msgSend_BOOLForKey_(v3, v2, @"ShowsElevationAccuracy");
}

void sub_23BD3CADC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_23BD3CAF8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_23BD3CC04(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C50A4);
  if (qword_27E1C50A8)
  {
    v5 = qword_27E1C50A8 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C50B0)
  {
    v6 = byte_27E1C50A0;
  }

  else
  {
    qword_27E1C50A8 = v2;
    qword_27E1C50B0 = objc_msgSend_version(v2, v3, v4);
    sub_23BD3CCAC(qword_27E1C50B0, v2);
    v6 = 1;
    byte_27E1C50A0 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C50A4);

  return v6;
}

void sub_23BD3CCAC(uint64_t a1, const char *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v19 = &unk_284E8AED8;
  v20[0] = &unk_284E8AAE8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v20, &v19, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, 17.0);
  *&xmmword_27E1C5058 = v6;

  objc_msgSend_scaledValue_(v2, v7, v8, 1.0);
  *(&xmmword_27E1C5058 + 1) = v9;
  objc_msgSend_scaledValue_(v2, v10, v11, 42.0);
  qword_27E1C5068 = v12;
  unk_27E1C5070 = xmmword_23BD6C5A0;
  *(&xmmword_27E1C5078 + 8) = xmmword_23BD6C5B0;
  objc_msgSend_scaledValue_(v2, v13, v14, 5.0);
  qword_27E1C5090 = v15;
  objc_msgSend_scaledValue_(v2, v16, v17, 1.2);
  qword_27E1C5098 = v18;
}

void sub_23BD3CEBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v8 = objc_msgSend_currentLocation(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_currentAltitude(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v8, v7);
}

void sub_23BD3D108(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_23BD3DC34(v5, v5);
  *(a3 + 16) = 0;
  if (a2 == 12)
  {
    v7 = &xmmword_27E1C5100;
  }

  else
  {
    if (a2 != 10)
    {
      v6 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65900(a2, v6);
      }
    }

    v7 = &xmmword_27E1C50D8;
  }

  *a3 = *v7;
  *(a3 + 16) = *(v7 + 2);
  *(a3 + 24) = *(v7 + 24);
}

void sub_23BD3DA58()
{
  v3 = NanoCompassLocalizedString(@"UNCALIBRATED");
  v0 = NanoCompassLocalizedString(@"DEGREE_FORMAT");
  v1 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v3, v0, @"%@", 0, v3);
  v2 = qword_27E1C50B8;
  qword_27E1C50B8 = v1;
}

uint64_t sub_23BD3DB48()
{
  v0 = NanoCompassLocalizedString(@"UNCALIBRATED_SHORT");
  v1 = qword_27E1C50C8;
  qword_27E1C50C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD3DC34(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C512C);
  if (qword_27E1C5130)
  {
    v5 = qword_27E1C5130 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C5138)
  {
    v6 = byte_27E1C5128;
  }

  else
  {
    qword_27E1C5130 = v2;
    qword_27E1C5138 = objc_msgSend_version(v2, v3, v4);
    sub_23BD3DCDC(qword_27E1C5138, v2);
    v6 = 1;
    byte_27E1C5128 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C512C);

  return v6;
}

void sub_23BD3DCDC(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v6 = objc_msgSend_sizeClass(v3, v4, v5);
  v8 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v7, v3, v6);

  v42[0] = &unk_284E8AEF0;
  v42[1] = &unk_284E8AF08;
  v43[0] = &unk_284E8AAF8;
  v43[1] = &unk_284E8AAF8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v43, v42, 2);
  objc_msgSend_scaledValue_withOverrides_(v8, v11, v10, 9.0);
  *&xmmword_27E1C50D8 = v12;

  *(&xmmword_27E1C50D8 + 1) = *MEMORY[0x277D74420];
  v13 = *(&xmmword_27E1C50D8 + 1);
  v14 = MEMORY[0x277CBB6C0];
  objc_storeStrong(&qword_27E1C50E8, *MEMORY[0x277CBB6C0]);
  v40[0] = &unk_284E8AF20;
  v40[1] = &unk_284E8AF38;
  v41[0] = &unk_284E8AB08;
  v41[1] = &unk_284E8AB18;
  v40[2] = &unk_284E8AF50;
  v40[3] = &unk_284E8AEF0;
  v41[2] = &unk_284E8AB28;
  v41[3] = &unk_284E8AB28;
  v40[4] = &unk_284E8AF08;
  v41[4] = &unk_284E8AB28;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v41, v40, 5);
  objc_msgSend_scaledValue_withOverrides_(v8, v17, v16, 19.5);
  qword_27E1C50F0 = v18;

  v38[0] = &unk_284E8AF20;
  v38[1] = &unk_284E8AF38;
  v39[0] = &unk_284E8AB38;
  v39[1] = &unk_284E8AB48;
  v38[2] = &unk_284E8AF50;
  v38[3] = &unk_284E8AEF0;
  v39[2] = &unk_284E8AB58;
  v39[3] = &unk_284E8AB58;
  v38[4] = &unk_284E8AF08;
  v39[4] = &unk_284E8AB58;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v39, v38, 5);
  objc_msgSend_scaledValue_withOverrides_(v8, v21, v20, 28.5);
  qword_27E1C50F8 = v22;

  objc_msgSend_scaledValue_(v8, v23, v24, 25.7);
  *&xmmword_27E1C5100 = v25;
  *(&xmmword_27E1C5100 + 1) = v13;
  objc_storeStrong(&qword_27E1C5110, *v14);
  v36[0] = &unk_284E8AF20;
  v36[1] = &unk_284E8AF38;
  v37[0] = &unk_284E8AB68;
  v37[1] = &unk_284E8AB78;
  v36[2] = &unk_284E8AF50;
  v36[3] = &unk_284E8AEF0;
  v37[2] = &unk_284E8AB88;
  v37[3] = &unk_284E8AB88;
  v36[4] = &unk_284E8AF08;
  v37[4] = &unk_284E8AB88;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v37, v36, 5);
  objc_msgSend_scaledValue_withOverrides_(v8, v28, v27, 55.7);
  qword_27E1C5118 = v29;

  v34[0] = &unk_284E8AF20;
  v34[1] = &unk_284E8AF38;
  v35[0] = &unk_284E8AB98;
  v35[1] = &unk_284E8ABA8;
  v34[2] = &unk_284E8AF50;
  v34[3] = &unk_284E8AEF0;
  v35[2] = &unk_284E8ABB8;
  v35[3] = &unk_284E8ABB8;
  v34[4] = &unk_284E8AF08;
  v35[4] = &unk_284E8ABB8;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v35, v34, 5);
  objc_msgSend_scaledValue_withOverrides_(v8, v32, v31, 81.5);
  qword_27E1C5120 = v33;
}

BOOL ShouldSendDailyMetricsEvent(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v8 = objc_msgSend_initWithSuiteName_(v6, v7, v5);

  v10 = objc_msgSend_objectForKey_(v8, v9, v4);

  if (v10)
  {
    v13 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v12);
    v14 = !NanoCompassIsSameDay(v10, v13);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void UpdateDailyMetricsEventTimestamp(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v12 = objc_msgSend_initWithSuiteName_(v6, v7, v5);

  v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v8, v9);
  objc_msgSend_setObject_forKey_(v12, v11, v10, v4);
}

void SendCustomWaypointCount(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"TotalCustomWaypoints";
  v2 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1);
  v6[0] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v6, &v5, 1);
  AnalyticsSendEvent();
}

void SendWaypointsAndGuidesCount(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v32[0] = @"TotalCompassWaypoints";
  v15 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1);
  v33[0] = v15;
  v32[1] = @"TotalGuideWaypoints";
  v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v16, a2);
  v33[1] = v17;
  v32[2] = @"NumberEnabledGuideWaypoints";
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, a3);
  v33[2] = v19;
  v32[3] = @"TotalNumberGuides";
  v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v20, a4);
  v33[3] = v21;
  v32[4] = @"NumberDisabledGuides";
  v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, a5);
  v33[4] = v23;
  v32[5] = @"NumberCompassWaypointsMissingElevation";
  v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, a6);
  v33[5] = v25;
  v32[6] = @"NumberGuideWaypointsMissingElevation";
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v26, a7);
  v33[6] = v27;
  v32[7] = @"TotalGuideWaypointsInElevationTable";
  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, a8);
  v33[7] = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v33, v32, 8);
  AnalyticsSendEvent();
}

void SendActiveBacktrackUsage(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66148(a1, v2);
  }

  v7 = @"HistoricalPathAvailable";
  v4 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v3, a1);
  v8[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v8, &v7, 1);
  AnalyticsSendEvent();
}

void SendBacktrackStatistics(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v17 = @"com.apple.NanoCompass.BacktrackEnded.event";
    v18 = 2112;
    v19 = @"Duration";
    v20 = 2048;
    v21 = v1 / 60.0;
    v22 = 2112;
    v23 = @"RecordingCount";
    v24 = 2048;
    v25 = v3;
    v26 = 2112;
    v27 = @"RetracingCount";
    v28 = 2048;
    v29 = v2;
    _os_log_debug_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %.2f min. %@? %ld. %@? %ld.", buf, 0x48u);
  }

  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, v1, @"Duration");
  v15[0] = v7;
  v14[1] = @"RecordingCount";
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, v3);
  v15[1] = v9;
  v14[2] = @"RetracingCount";
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, v2);
  v15[2] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v15, v14, 3);

  AnalyticsSendEvent();
}

void SendDialUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DialType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendTargetedWaypointTypeUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"TargetedWaypointType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendGridSystemUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"GridSystemType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendWaypointComplicationActivatedEvent(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"WaypointComplicationCount";
  v2 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1);
  v6[0] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v6, &v5, 1);
  AnalyticsSendEvent();
}

void SendWaypointEditUsage(void *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"WaypointLabelType";
  v9[1] = @"LocationIsManualEntry";
  v10[0] = a1;
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v6 = objc_msgSend_numberWithBool_(v3, v5, a2);
  v10[1] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v10, v9, 2);

  AnalyticsSendEvent();
}

void SendElevationConfigurationEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = NCLogForCategory(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = @"not ";
    *buf = 134218498;
    v19 = a1;
    if (a3)
    {
      v15 = &stru_284E80A60;
    }

    v20 = 2048;
    v21 = a2;
    v22 = 2112;
    v23 = v15;
    _os_log_debug_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEBUG, "Target elevation is %ld and relative elevation difference is %ld, current elevation is %@available", buf, 0x20u);
  }

  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a1, @"TargetElevationInMeter");
  v17[0] = v8;
  v16[1] = @"RelativeElevationDifferenceInMeter";
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, a2);
  v17[1] = v10;
  v16[2] = @"CurrentElevationIsAvailable";
  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, a3);
  v17[2] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v17, v16, 3);
  AnalyticsSendEvent();
}

void SendElevationDialUsage(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"ElevationDialUsed";
  v4[0] = MEMORY[0x277CBEC38];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v4, &v3, 1);
  AnalyticsSendEvent();
}

void SendSystemWaypointAvailability(unint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v19 = @"com.apple.NanoCompass.SystemWaypointAvailability.event";
    v13 = @"YES";
    v20 = 2112;
    v21 = @"ParkedCar";
    if (a1)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v22 = 2112;
    if ((a1 & 0x100) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v23 = v14;
    if ((a1 & 0x10000) == 0)
    {
      v13 = @"NO";
    }

    v24 = 2112;
    v25 = @"CellularData";
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = @"CellularSOS";
    v30 = 2112;
    v31 = v13;
    _os_log_debug_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %@. %@? %@. %@? %@.", buf, 0x48u);
  }

  v3 = (a1 >> 16) & 1;
  v4 = (a1 >> 8) & 1;

  v6 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, a1 & 1, @"ParkedCar");
  v17[0] = v6;
  v16[1] = @"CellularData";
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v4);
  v17[1] = v8;
  v16[2] = @"CellularSOS";
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v3);
  v17[2] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v17, v16, 3);

  AnalyticsSendEvent();
}

void SendWaypointElevationLookupUsage(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = (100000 * a2 / a1) / 100000.0;
    v5 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, a1);
      v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, a2);
      *buf = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      v21 = 2048;
      v22 = v4;
      _os_log_debug_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEBUG, "total count %@, success count %@, value is %f", buf, 0x20u);
    }

    v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v4, @"SuccessRate");
    v16 = v9;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v16, &v15, 1);
    AnalyticsSendEvent();
  }
}

id sub_23BD40518(void *a1, uint64_t a2, void *a3, char *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a1;
  v10 = objc_msgSend_count(v7, v8, v9);
  v107 = v6;
  v13 = objc_msgSend_count(v6, v11, v12);
  v14 = v13;
  if (v13 + v10 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = (v13 + v10);
  }

  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = objc_msgSend_initWithCapacity_(v16, v17, v15);
  if (allowVerboseLog(v18, v19))
  {
    v22 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD661FC();
    }
  }

  v25 = v10 != 0;
  v26 = v14 != 0;
  if (objc_msgSend_count(v18, v20, v21) >= v15 || v10 == 0 || v14 == 0)
  {
    v53 = 0;
    v52 = 0;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    do
    {
      v54 = objc_msgSend_objectAtIndexedSubscript_(v7, v23, v52);
      v56 = objc_msgSend_objectAtIndexedSubscript_(v107, v55, v53);
      if (objc_msgSend_compare_(v54, v57, v56) == -1)
      {
        v64 = objc_msgSend_addObject_(v18, v58, v54);
        if (allowVerboseLog(v64, v65))
        {
          v66 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v103 = objc_msgSend_waypoint(v54, v67, v68);
            v105 = objc_msgSend_label(v103, v76, v77);
            objc_msgSend_distance(v54, v78, v79);
            *buf = 136446722;
            v109 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v110 = 2112;
            v111 = v105;
            v112 = 2048;
            v113 = v80;
            _os_log_debug_impl(&dword_23BD26000, v66, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint1: %@ with distance %f", buf, 0x20u);
          }
        }

        ++v52;
      }

      else
      {
        v59 = objc_msgSend_addObject_(v18, v58, v56);
        if (allowVerboseLog(v59, v60))
        {
          v61 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v102 = objc_msgSend_waypoint(v56, v62, v63);
            v104 = objc_msgSend_label(v102, v71, v72);
            objc_msgSend_distance(v56, v73, v74);
            *buf = 136446722;
            v109 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v110 = 2112;
            v111 = v104;
            v112 = 2048;
            v113 = v75;
            _os_log_debug_impl(&dword_23BD26000, v61, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint2: %@ with distance %f", buf, 0x20u);
          }
        }

        ++v53;
      }

      v25 = v52 < v10;
      v26 = v53 < v14;
    }

    while (objc_msgSend_count(v18, v69, v70) < v15 && v52 < v10 && v53 < v14);
  }

  v29 = objc_msgSend_count(v18, v23, v24);
  if (v29 < v15)
  {
    v32 = objc_msgSend_count(v18, v30, v31);
    v29 = allowVerboseLog(v32, v33);
    if (v29)
    {
      v106 = v32;
      v34 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66288(v18, v34, v35);
      }

      v32 = v106;
    }

    v36 = &v15[-v32];
    if (v25)
    {
      if (v10 - v52 >= v36)
      {
        v37 = &v15[-v32];
      }

      else
      {
        v37 = (v10 - v52);
      }

      v29 = allowVerboseLog(v29, v30);
      if (v29)
      {
        v38 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6638C();
        }
      }

      for (; v37; --v37)
      {
        v39 = objc_msgSend_objectAtIndexedSubscript_(v7, v30, v52);
        if (allowVerboseLog(v39, v40))
        {
          v42 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v45 = objc_msgSend_waypoint(v39, v43, v44);
            v48 = objc_msgSend_label(v45, v46, v47);
            objc_msgSend_distance(v39, v49, v50);
            *buf = 136446722;
            v109 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v110 = 2112;
            v111 = v48;
            v112 = 2048;
            v113 = v51;
            _os_log_debug_impl(&dword_23BD26000, v42, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint1: %@ with distance %f", buf, 0x20u);
          }
        }

        objc_msgSend_addObject_(v18, v41, v39);

        ++v52;
      }
    }

    else if (v26)
    {
      if (v14 - v53 >= v36)
      {
        v81 = &v15[-v32];
      }

      else
      {
        v81 = (v14 - v53);
      }

      v29 = allowVerboseLog(v29, v30);
      if (v29)
      {
        v82 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6630C();
        }
      }

      for (; v81; --v81)
      {
        v83 = objc_msgSend_objectAtIndexedSubscript_(v107, v30, v53);
        if (allowVerboseLog(v83, v84))
        {
          v86 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            v89 = objc_msgSend_waypoint(v83, v87, v88);
            v92 = objc_msgSend_label(v89, v90, v91);
            objc_msgSend_distance(v83, v93, v94);
            *buf = 136446722;
            v109 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v110 = 2112;
            v111 = v92;
            v112 = 2048;
            v113 = v95;
            _os_log_debug_impl(&dword_23BD26000, v86, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint2: %@ with distance %f", buf, 0x20u);
          }
        }

        objc_msgSend_addObject_(v18, v85, v83);

        ++v53;
      }
    }
  }

  if (allowVerboseLog(v29, v30))
  {
    v98 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD6640C(v18, v98, v99);
    }
  }

  v100 = objc_msgSend_copy(v18, v96, v97);

  return v100;
}

void sub_23BD40BB4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_23BD40C18()
{
  v0 = [NCWaypointManager alloc];
  v2 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v0, v1, 1);
  v3 = qword_27E1C5140;
  qword_27E1C5140 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t sub_23BD40CA0()
{
  v0 = CLKIsNTKDaemon();
  v1 = [NCWaypointManager alloc];
  v3 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v1, v2, v0 ^ 1u);
  v4 = qword_27E1C5150;
  qword_27E1C5150 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD40D38()
{
  v0 = [NCWaypointManager alloc];
  v2 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v0, v1, 0);
  v3 = qword_27E1C5160;
  qword_27E1C5160 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23BD42178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD42190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD421A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v9 = objc_msgSend_uuid(v12, v7, v8);
  isEqual = objc_msgSend_isEqual_(v9, v10, *(a1 + 32));

  if (isEqual)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_23BD42638(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_fetchRequestForWaypointsOfTypes_withAltitude_(NCWaypointFetchRequests, a2, &unk_284E8B100, 1);
  v4 = *(a1 + 32);
  v6 = objc_msgSend__fetchItemsWithRequest_(v4, v5, v3);
  v8 = objc_msgSend__convertToNCWaypointList_(v4, v7, v6);

  return v8;
}

uint64_t sub_23BD426C8(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void sub_23BD42C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_23BD42D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "persistent container is fully loaded", &v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v8 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_msgSend_userInfo(v4, v9, v10);
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "persistentContainer hit unresolved error %@, %@", &v14, 0x16u);
    }

    v12 = v7[4];
    v7[4] = 0;

    v13 = v7[5];
    v7[5] = 0;
  }
}

void *sub_23BD42EF0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, *(*(a1 + 32) + 8));
  byte_27E1C5170 = result;
  return result;
}

uint64_t sub_23BD42FB8(uint64_t a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, *(*(a1 + 32) + 8)))
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.compasstool", v3, *(*(a1 + 32) + 8));
  }

  byte_27E1C5180 = result;
  return result;
}

uint64_t sub_23BD4305C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a2, @"com.apple.NanoCompass.watchkitapp");
  v3 = qword_27E1C5190;
  qword_27E1C5190 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23BD455EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD4561C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD456AC;
  block[3] = &unk_278B94000;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void sub_23BD456AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__cancelLocationAuthRequestAssertion(WeakRetained, v1, v2);
}

uint64_t sub_23BD4629C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 464), *MEMORY[0x277D74420]);
  v3 = qword_27E1C51A8;
  qword_27E1C51A8 = v2;

  v6 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C51A8, v4, v5);
  v7 = qword_27E1C51A0;
  qword_27E1C51A0 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

uint64_t sub_23BD463C0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], *(*(a1 + 32) + 480), *MEMORY[0x277D74410]);
  v3 = qword_27E1C51C0;
  qword_27E1C51C0 = v2;

  v6 = objc_msgSend_CLKFontWithLocalizedLowerCaseSmallCaps(qword_27E1C51C0, v4, v5);
  v7 = qword_27E1C51B8;
  qword_27E1C51B8 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

void sub_23BD46498()
{
  v6 = NanoCompassFormattedUncalibrated();
  v2 = NanoCompassFormattedAltitudeUnits(v6, v0, v1);
  v3 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@%@", v6, v2);
  v5 = qword_27E1C51D0;
  qword_27E1C51D0 = v4;
}

uint64_t sub_23BD465C0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C51FC);
  if (qword_27E1C5200)
  {
    v5 = qword_27E1C5200 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C5208)
  {
    v6 = byte_27E1C51F8;
  }

  else
  {
    qword_27E1C5200 = v2;
    qword_27E1C5208 = objc_msgSend_version(v2, v3, v4);
    sub_23BD46668(qword_27E1C5208, v2);
    v6 = 1;
    byte_27E1C51F8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C51FC);

  return v6;
}

void sub_23BD46668(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v6 = objc_msgSend_sizeClass(v3, v4, v5);
  v17 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v7, v3, v6);

  objc_msgSend_scaledValue_(v17, v8, v9, 20.0);
  qword_27E1C51E0 = v10;
  objc_msgSend_scaledValue_(v17, v11, v12, 12.0);
  qword_27E1C51E8 = v13;
  objc_msgSend_scaledValue_(v17, v14, v15, 30.0);
  qword_27E1C51F0 = v16;
}

void sub_23BD46EB0()
{
  v0 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v1 = objc_alloc(MEMORY[0x277CE41F8]);
  v2 = *MEMORY[0x277CE4250];
  v5 = objc_msgSend_date(MEMORY[0x277CBEAA8], v3, v4);
  v10 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v1, v6, v5, v0.latitude, v0.longitude, 48.7, v2, v2);

  v8 = objc_msgSend_locationWithLocation_error_(NCLocation, v7, v10, 0);
  v9 = qword_27E1C5210;
  qword_27E1C5210 = v8;
}

double sub_23BD47AEC(void *a1, uint64_t a2)
{
  sub_23BD489B8(a1, a1);
  if (a2 == 10)
  {
LABEL_7:
    v3 = &xmmword_27E1C5220;
    return *v3;
  }

  if (a2 != 12)
  {
    v4 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65900(a2, v4);
    }

    goto LABEL_7;
  }

  v3 = &xmmword_27E1C5240;
  return *v3;
}

uint64_t sub_23BD489B8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C5264);
  if (qword_27E1C5268)
  {
    v5 = qword_27E1C5268 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1C5270)
  {
    v6 = byte_27E1C5260;
  }

  else
  {
    qword_27E1C5268 = v2;
    qword_27E1C5270 = objc_msgSend_version(v2, v3, v4);
    sub_23BD48A60(qword_27E1C5270, v2);
    v6 = 1;
    byte_27E1C5260 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C5264);

  return v6;
}

void sub_23BD48A60(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v19 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v4, v3, 3);
  objc_msgSend_scaledValue_(v19, v5, v6, 14.5);
  *&xmmword_27E1C5220 = v7;
  objc_msgSend_scaledValue_(v19, v8, v9, 6.0);
  *(&xmmword_27E1C5220 + 1) = v10;
  objc_msgSend_scaledValue_(v19, v11, v12, 7.5);
  qword_27E1C5230 = v13;
  objc_msgSend_scaledValue_(v19, v14, v15, 9.0);
  qword_27E1C5238 = v16;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v18 = v17;

  xmmword_27E1C5240 = vmulq_n_f64(xmmword_27E1C5220, v18);
  *&qword_27E1C5250 = vmulq_n_f64(*&qword_27E1C5230, v18);
}

__CFString *NCLocationUpdateInterestDescription(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278B94960[a1 + 1];
  }
}

void sub_23BD49560(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = objc_msgSend_location(v8, v3, v4);
    objc_msgSend_updateLocation_error_(WeakRetained, v7, v6, 0);
  }
}

void sub_23BD4A660(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[57];
  isPreciseLocationOff = objc_msgSend_isPreciseLocationOff(v4, a2, a3);
  v7 = [NCLocationServiceUpdate alloc];
  v9 = objc_msgSend_initWithAuthorizationStatus_coarsePrecision_(v7, v8, v5, isPreciseLocationOff);
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_23BD4A7A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) + 1;
  if (v3 > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278B94960[v3];
  }

  return (*(v2 + 16))(v2, v4);
}

void sub_23BD4A8FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  isStationary = objc_msgSend_isStationary(WeakRetained, v5, v6);
  (*(v3 + 16))(v3, v2, isStationary);
}

void sub_23BD4ABAC(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD66E44();
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v6 = mach_continuous_time();
    v7 = MachContinuousTicksToMS(v6 - *(a1 + 64));
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 72);
    if (v3)
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v17 = 134217984;
        v18 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session failed to start", "Delta: %.fms", &v17, 0xCu);
      }

      v11 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66D5C();
      }
    }

    else
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v17 = 134217984;
        v18 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session started", "Delta: %.fms", &v17, 0xCu);
      }

      v12 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66DD0();
      }

      v15 = objc_msgSend_backgroundActivitySession(MEMORY[0x277CBFBA8], v13, v14);
      v16 = *(a1 + 40);
      v11 = *(v16 + 96);
      *(v16 + 96) = v15;
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_23BD4B024(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD66F68();
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v6 = mach_continuous_time();
    v7 = MachContinuousTicksToMS(v6 - *(a1 + 64));
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 72);
    if (v3)
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v17 = 134217984;
        v18 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session (without lookback) failed to start", "Delta: %.fms", &v17, 0xCu);
      }

      v11 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66E80();
      }
    }

    else
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v17 = 134217984;
        v18 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session (without lookback) started", "Delta: %.fms", &v17, 0xCu);
      }

      v12 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66EF4();
      }

      v15 = objc_msgSend_backgroundActivitySession(MEMORY[0x277CBFBA8], v13, v14);
      v16 = *(a1 + 40);
      v11 = *(v16 + 96);
      *(v16 + 96) = v15;
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_23BD4B3E0(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = mach_continuous_time();
  v3 = MachContinuousTicksToMS(v2 - *(a1 + 56));
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13 = 134217984;
    v14 = v3;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CL/CR Session ended", "Delta: %.fms", &v13, 0xCu);
  }

  v7 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66FE0();
  }

  objc_msgSend_invalidate(*(*(a1 + 40) + 96), v8, v9);
  v10 = *(a1 + 40);
  v11 = *(v10 + 96);
  *(v10 + 96) = 0;

  return (*(*(a1 + 48) + 16))();
}

void sub_23BD4B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD4B978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD4B990(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_location(a2, a2, a3);
  if (v6)
  {
    objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v5, v6);
    goto LABEL_10;
  }

  if (a2)
  {
    v7 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_INFO, "Received update without a location (split path).", buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v7 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67054();
    }

    goto LABEL_9;
  }

  v8 = mach_continuous_time();
  v9 = MachContinuousTicksToMS(v8 - *(a1 + 80));
  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *(a1 + 88);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(a1 + 40);
    *buf = 134218242;
    v37 = v9;
    v38 = 2114;
    v39 = v13;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CL/CR transcript fetch ended", "Delta: %.fms (task: %{public}@)", buf, 0x16u);
  }

  v14 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    *buf = 134218242;
    v37 = v9;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "CL/CR transcript fetch ended. Delta: %.fms. Task: %@.", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = *(*(*(a1 + 56) + 8) + 40);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v35, 16);
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = NCLogForCategory(5uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v22;
          _os_log_debug_impl(&dword_23BD26000, v23, OS_LOG_TYPE_DEBUG, "Historical Location: %@", buf, 0xCu);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v24, &v31, v35, 16);
    }

    while (v19);
  }

  v25 = *(a1 + 48);
  v28 = objc_msgSend_copy(*(*(*(a1 + 56) + 8) + 40), v26, v27);
  (*(v25 + 16))(v25, v28, 0);

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v29 = *(*(a1 + 72) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = 0;

LABEL_10:
}

void sub_23BD4C01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_23BD4C05C(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_location(a2, a2, a3);
  if (v6)
  {
    objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v5, v6);
    goto LABEL_10;
  }

  if (a2)
  {
    v7 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_INFO, "Received update without a location (split path).", &v23, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v7 = NCLogForCategory(8uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67054();
    }

    goto LABEL_9;
  }

  v8 = mach_continuous_time();
  v9 = MachContinuousTicksToMS(v8 - *(a1 + 72));
  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *(a1 + 80);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v23 = 134217984;
    v24 = v9;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CL/CR transcript fetch (interval) ended", "Delta: %.fms", &v23, 0xCu);
  }

  v13 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v14, v15);
    v23 = 134218240;
    v24 = v9;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "CL/CR transcript fetch (interval) ended. Delta: %.fms. Count: %lu.", &v23, 0x16u);
  }

  v17 = *(a1 + 40);
  v20 = objc_msgSend_copy(*(*(*(a1 + 48) + 8) + 40), v18, v19);
  (*(v17 + 16))(v17, v20, 0);

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;

LABEL_10:
}

void sub_23BD4C5B8(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = COERCE_DOUBLE(a3);
  v7 = mach_continuous_time();
  v8 = MachContinuousTicksToMS(v7 - *(a1 + 56));
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v23 = 134217984;
    v24 = v8;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CL/CR smoothed fetch ended", "Delta: %.fms", &v23, 0xCu);
  }

  if (v6 == 0.0)
  {
    v15 = objc_msgSend_count(v5, v12, v13);
    v14 = NCLogForCategory(5uLL);
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        *&v19 = COERCE_DOUBLE(objc_msgSend_count(v5, v17, v18));
        v20 = *(a1 + 40);
        v23 = 134218498;
        v24 = *&v19;
        v25 = 2114;
        v26 = v20;
        v27 = 2048;
        v28 = v8;
        _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%lu smoothed locations fetched within %{public}@. Delta: %.fms.", &v23, 0x20u);
      }
    }

    else if (v16)
    {
      v21 = *(a1 + 40);
      v23 = 138543618;
      v24 = v21;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "No smoothed locations fetched within %{public}@. Delta: %.fms.", &v23, 0x16u);
    }
  }

  else
  {
    v14 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 40);
      v23 = 138543874;
      v24 = v22;
      v25 = 2048;
      v26 = v8;
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_23BD26000, v14, OS_LOG_TYPE_ERROR, "Error while fetching smoothed locations within %{public}@. Delta: %.fms. Error: %{public}@", &v23, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_23BD4CAB4(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = MachContinuousTicksToMS(v6 - *(a1 + 48));
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 134217984;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR is remote fetch ended", "Delta: %.fms", &v14, 0xCu);
  }

  v11 = NCLogForCategory(5uLL);
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67108();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67184();
  }

  if (a2)
  {
    v13 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "We currently believe the user is in a remote area.", &v14, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BD4CEC0(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = MachContinuousTicksToMS(v6 - *(a1 + 48));
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 134217984;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR will prompt fetch ended", "Delta: %.fms", &v14, 0xCu);
  }

  v11 = NCLogForCategory(5uLL);
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67270();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD672EC();
  }

  if (a2)
  {
    v13 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "We currently believe we have backtrack location data to show the user.", &v14, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BD4E7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD4E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateMotionType_isDeviceStationary_(WeakRetained, v5, a2, a3);
}

void sub_23BD4E914(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend__groundAltitudeAtLocation_(*(*(a1 + 32) + 8), a2, *(a1 + 40));
  v4 = NCLogForCategory(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      objc_msgSend_altitude(v3, v6, v7);
      v9 = v8;
      v12 = objc_msgSend_hash(*(a1 + 40), v10, v11);
      *buf = 134218240;
      v21 = v9;
      v22 = 2048;
      v23 = v12;
      _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "Fetched altitude of %f meters for waypoint (%lu).", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD4EB30;
    block[3] = &unk_278B94398;
    v13 = &v19;
    v19 = *(a1 + 48);
    v18 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v5)
    {
      v14 = objc_msgSend_hash(*(a1 + 40), v6, v7);
      *buf = 134217984;
      v21 = v14;
      _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "Can't lookup ground altitude for waypoint (%lu).", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BD4EB9C;
    v15[3] = &unk_278B947B8;
    v13 = &v16;
    v16 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void sub_23BD4EB30(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  objc_msgSend_altitude(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_numberWithDouble_(v3, v5, v6);
  (*(v4 + 16))(v4, v7);
}

void sub_23BD50688()
{
  v10 = NanoCompassLocalizedString(@"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME");
  v0 = MEMORY[0x277CBBB88];
  v3 = objc_msgSend_localizedUppercaseString(v10, v1, v2);
  v5 = objc_msgSend_textProviderWithText_(v0, v4, v3);
  v6 = qword_27E1C5288;
  qword_27E1C5288 = v5;

  v8 = NanoCompassAppTintColor(v7);
  objc_msgSend_setTintColor_(qword_27E1C5288, v9, v8);
}

void sub_23BD50824(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_23BD50B08(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_label(a2, v5, v6);
  v10 = objc_msgSend_uppercaseString(v7, v8, v9);
  v13 = objc_msgSend_label(v4, v11, v12);

  v16 = objc_msgSend_uppercaseString(v13, v14, v15);
  v18 = objc_msgSend_compare_(v10, v17, v16);

  return v18;
}

uint64_t sub_23BD51BEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_uuid(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v4, v5, *(a1 + 32));

  return isEqual;
}

uint64_t sub_23BD53308(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76918], *MEMORY[0x277CBB6C0], 8, *MEMORY[0x277D76840], 0);
  v3 = qword_27E1C5298;
  qword_27E1C5298 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23BD533B8(uint64_t a1, const char *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend__preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76918], *MEMORY[0x277CBB6C0], 8, *MEMORY[0x277D76840], 0);
  v21 = *MEMORY[0x277D74338];
  v3 = *MEMORY[0x277D74388];
  v18[0] = *MEMORY[0x277D74398];
  v18[1] = v3;
  v19[0] = &unk_284E8B010;
  v19[1] = &unk_284E8B028;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v19, v18, 2);
  v20 = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v20, 1);
  v22[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v22, &v21, 1);

  v12 = objc_msgSend_fontDescriptor(v2, v10, v11);
  v14 = objc_msgSend_fontDescriptorByAddingAttributes_(v12, v13, v9);

  v16 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277D74300], v15, v14, 0.0);
  v17 = qword_27E1C52A8;
  qword_27E1C52A8 = v16;
}

void sub_23BD53C04(uint64_t a1, void *a2)
{
  v34 = a2;
  v5 = objc_msgSend_layer(v34, v3, v4);
  v8 = objc_msgSend_actions(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"filters");
  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);

  if (v10 != v13)
  {
    v16 = objc_msgSend_layer(v34, v14, v15);
    v19 = objc_msgSend_actions(v16, v17, v18);
    v22 = objc_msgSend_mutableCopy(v19, v20, v21);

    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v26, v25, @"filters");

    v29 = objc_msgSend_layer(v34, v27, v28);
    objc_msgSend_setActions_(v29, v30, v22);
  }

  v31 = *(a1 + 32);
  v32 = objc_msgSend_layer(v34, v14, v15);
  objc_msgSend_setFilters_(v32, v33, v31);
}

id LevelComplicationMutedTextColor(uint64_t a1)
{
  if (qword_27E1C52C0 != -1)
  {
    sub_23BD675D4();
  }

  v2 = qword_27E1C52B8;

  return v2;
}

uint64_t sub_23BD54998(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], a2, a3, 0.384313725, 1.0);
  v4 = qword_27E1C52B8;
  qword_27E1C52B8 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t allowVerboseLog(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C52C8 != -1)
  {
    sub_23BD675E8();
  }

  return byte_27E1C52D0;
}

void sub_23BD553B0()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass");
  byte_27E1C52D0 = objc_msgSend_BOOLForKey_(v3, v2, @"VerboseLogging");
}

id NCLogForCategory(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    sub_23BD67610();
  }

  if (qword_27E1C5330 != -1)
  {
    sub_23BD675FC();
  }

  v2 = qword_27E1C52D8[a1];

  return v2;
}

uint64_t sub_23BD55470()
{
  v0 = os_log_create("com.apple.nanocompass", "NCAltimeter");
  v1 = qword_27E1C52D8[0];
  qword_27E1C52D8[0] = v0;

  v2 = os_log_create("com.apple.nanocompass", "NCCompass");
  v3 = qword_27E1C52E0;
  qword_27E1C52E0 = v2;

  v4 = os_log_create("com.apple.nanocompass", "NCComplication");
  v5 = qword_27E1C52E8;
  qword_27E1C52E8 = v4;

  v6 = os_log_create("com.apple.nanocompass", "location");
  v7 = qword_27E1C52F0;
  qword_27E1C52F0 = v6;

  v8 = os_log_create("com.apple.nanocompass", "motion");
  v9 = qword_27E1C52F8;
  qword_27E1C52F8 = v8;

  v10 = os_log_create("com.apple.nanocompass", "backtrack");
  v11 = qword_27E1C5300;
  qword_27E1C5300 = v10;

  v12 = os_log_create("com.apple.nanocompass", "NCGridSystem");
  v13 = qword_27E1C5308;
  qword_27E1C5308 = v12;

  v14 = os_log_create("com.apple.nanocompass", "NCWaypoint");
  v15 = qword_27E1C5310;
  qword_27E1C5310 = v14;

  v16 = os_log_create("com.apple.nanocompass", "cellular");
  v17 = qword_27E1C5318;
  qword_27E1C5318 = v16;

  v18 = os_log_create("com.apple.nanocompass", "guides");
  v19 = qword_27E1C5320;
  qword_27E1C5320 = v18;

  v20 = os_log_create("com.apple.nanocompass", "elevationAlert");
  v21 = qword_27E1C5328;
  qword_27E1C5328 = v20;

  return MEMORY[0x2821F96F8](v20, v21);
}

double MachContinuousTicksToMS(uint64_t a1)
{
  if (qword_27E1C5340 != -1)
  {
    sub_23BD676CC();
  }

  return (dword_27E1C5338 * a1 / *algn_27E1C533C) * 0.000001;
}

uint64_t sub_23BD5601C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_27E1C5348;
  qword_27E1C5348 = v2;

  objc_msgSend_setHasReading_(qword_27E1C5348, v4, 1);
  objc_msgSend_setHeading_(qword_27E1C5348, v5, v6, 315.0);
  v9 = qword_27E1C5348;

  return objc_msgSend_setAccuracy_(v9, v7, v8, 10.0);
}

void sub_23BD56844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23BD56870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD56948;
    block[3] = &unk_278B949D8;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BD56958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD56A30;
    block[3] = &unk_278B949D8;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BD570DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_23BD57140(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 0.13333334, 0.513725519, 0.937254906, 1.0);
  v4 = qword_27E1C5358;
  qword_27E1C5358 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD571E0()
{
  v0 = NanoCompassLocalizedString(@"PARKED_CAR_WAYPOINT_NAME");
  v1 = qword_27E1C5368;
  qword_27E1C5368 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD5726C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 1.0, 0.329411775, 0.0, 1.0);
  v4 = qword_27E1C5378;
  qword_27E1C5378 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD57304(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 1.0, 0.294117659, 0.309803933, 1.0);
  v4 = qword_27E1C5388;
  qword_27E1C5388 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_23BD573A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_idealizedLocation(NCLocation, a2, a3);
  v21 = objc_msgSend_rawLocation(v3, v4, v5);

  v6 = NanoCompassLocalizedString(@"IDEALIZED_WAYPOINT_NAME");
  v7 = [NCWaypoint alloc];
  v10 = objc_msgSend_idealizedWaypointSymbolColor(NCWaypoint, v8, v9);
  v11 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v21, v12, v13);
  v16 = objc_msgSend_numberWithDouble_(v11, v14, v15);
  v20 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v7, v17, v6, v10, @"tent.fill", 4, v21, v16, v20);
  v19 = qword_27E1C5398;
  qword_27E1C5398 = isEnabled;
}

void sub_23BD574EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_idealizedLocation(NCLocation, a2, a3);
  v21 = objc_msgSend_rawLocation(v3, v4, v5);

  v6 = NanoCompassLocalizedString(@"IDEALIZED_WAYPOINT_NAME");
  v7 = [NCWaypoint alloc];
  v10 = objc_msgSend_idealizedWaypointSymbolColor(NCWaypoint, v8, v9);
  v11 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v21, v12, v13);
  v16 = objc_msgSend_numberWithDouble_(v11, v14, v15);
  v20 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v7, v17, v6, v10, @"tent.fill", 4, v21, v16, v20);
  v19 = qword_27E1C53A8;
  qword_27E1C53A8 = isEnabled;
}

uint64_t sub_23BD59B24(uint64_t a1)
{
  v2 = MEMORY[0x23EEBBDF0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  (*(*(a1 + 40) + 16))();
  if (objc_msgSend_isActivityAvailable(MEMORY[0x277CC1CD0], v5, v6))
  {
    v8 = *(a1 + 32);

    return MEMORY[0x2821F9670](v8, sel__startMotionActivityUpdate, v7);
  }

  else
  {
    v9 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BD678B4(v9);
    }

    return objc_msgSend__updateMotionType_isDeviceStationary_(*(a1 + 32), v10, 1, 0);
  }
}

void sub_23BD59C54(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_stopActivityUpdates(*(*(a1 + 32) + 8), a2, a3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

void sub_23BD59DBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23BD59DE4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7 && WeakRetained && objc_msgSend_confidence(v7, v3, v4) == 2)
  {
    objc_msgSend__updateMotionActivity_(WeakRetained, v6, v7);
  }
}

void sub_23BD5A088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_now(MEMORY[0x277CBEAA8], v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BD5A17C;
  v14[3] = &unk_278B94A58;
  v10 = *(a1 + 32);
  v15 = v6;
  v16 = v10;
  v17 = v9;
  v18 = v5;
  v11 = v5;
  v12 = v9;
  v13 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void sub_23BD5A17C(uint64_t a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    v6 = objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, a2, 1, *(a1 + 48), 0);
    objc_msgSend__housekeepingWith_(v5, v7, v6);

    v8 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6793C(v4, v8);
    }
  }

  else
  {
    v9 = objc_msgSend_numberOfSteps(*(a1 + 56), a2, a3);
    objc_msgSend_doubleValue(v9, v10, v11);
    v13 = v12;

    v14 = *(a1 + 40);
    v16 = objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v15, v13 >= 80.0, *(a1 + 48), v13 < 80.0);
    objc_msgSend__housekeepingWith_(v14, v17, v16);

    v8 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = @"resumed";
      if (v13 < 80.0)
      {
        v18 = @"paused";
      }

      v19 = 134218242;
      v20 = v13;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_INFO, "Step count is %lu. Pedestrian activity is %{public}@.", &v19, 0x16u);
    }
  }
}

uint64_t sub_23BD5A778(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v3 = *(result + 48);
  if (v1 != *(v2 + 48) || v3 != *(v2 + 40))
  {
    *(v2 + 48) = v1;
    *(*(result + 32) + 40) = v3;
    v4 = *(result + 32);
    result = *(v4 + 32);
    if (result)
    {
      return (*(result + 16))(result, *(v4 + 48), *(v4 + 40));
    }
  }

  return result;
}

void sub_23BD5BBF8(uint64_t a1)
{
  v10 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v2 = MEMORY[0x277CBBB88];
  v5 = objc_msgSend_localizedUppercaseString(v10, v3, v4);
  v7 = objc_msgSend_textProviderWithText_(v2, v6, v5);
  v8 = qword_27E1C53B8;
  qword_27E1C53B8 = v7;

  objc_msgSend_setTintColor_(qword_27E1C53B8, v9, *(a1 + 32));
}

uint64_t sub_23BD5BE14()
{
  v0 = objc_alloc_init(NCGuidesManager);
  v1 = qword_27E1C53C8;
  qword_27E1C53C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23BD5C254(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!sub_23BD68730(v2))
  {
    objc_msgSend__handleFirstUnlock(v5, v3, v4);
  }
}

void sub_23BD5C2A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__refreshNonDistanceLimitedWaypoints(WeakRetained, v2, v3);
    WeakRetained = v4;
  }
}

void sub_23BD5C2E4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[NCGuidesManager init]_block_invoke_2";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s: creating storeController", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_alloc(MEMORY[0x277D26688]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v10, 4);
    v8 = objc_msgSend_initWithNotifyForChanges_delegate_(v4, v7, v6, WeakRetained, v10, v11, v12);
    objc_msgSend_setStoreController_(WeakRetained, v9, v8);
  }
}

void sub_23BD5C610()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass");
  v4 = objc_msgSend_integerForKey_(v2, v3, @"MaxWaypointsAllowed");
  v5 = 50;
  if (v4)
  {
    v5 = v4;
  }

  qword_27E1C53D8 = v5;
  v6 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[NCGuidesManager maxAllowedWaypoints]_block_invoke";
    v9 = 2048;
    v10 = qword_27E1C53D8;
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Maximum allowed waypoints is %lu", &v7, 0x16u);
  }
}

void sub_23BD5C7A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_maxAllowedWaypoints(*(a1 + 32), a2, a3) >> 1;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.compass");
  v8 = objc_msgSend_integerForKey_(v6, v7, @"MaxPriorityCompassWaypoints");
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  qword_27E1C53E8 = v9;
  v10 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[NCGuidesManager maxPriorityCompassWaypoints]_block_invoke";
    v13 = 2048;
    v14 = qword_27E1C53E8;
    _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Maximum priority compass waypoints is %lu", &v11, 0x16u);
  }
}

uint64_t sub_23BD5CCF8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_uuid(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v4, v5, *(a1 + 32));

  return isEqual;
}

uint64_t sub_23BD5D640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD5D658(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_23BD5D6B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
  v75 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 32), v5, v4);
  v7 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 40), v6, v4);
  v9 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(*(*(a1 + 96) + 8) + 40), v8, v4);
  v11 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 48), v10, v4);
  v13 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 56), v12, v4);
  v16 = objc_msgSend_count(*(a1 + 64), v14, v15);
  v19 = objc_msgSend_maxPriorityCompassWaypoints(*(a1 + 72), v17, v18);
  if (v16 >= v19)
  {
    v16 = v19;
  }

  if (v16)
  {
    v22 = objc_msgSend_subarrayWithRange_(*(a1 + 64), v20, 0, v16);
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  if (objc_msgSend_count(*(a1 + 64), v20, v21) <= v16)
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v25 = *(a1 + 64);
    v26 = objc_msgSend_count(v25, v23, v24);
    v28 = objc_msgSend_subarrayWithRange_(v25, v27, v16, v26 - v16);
  }

  v29 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v75, v23, v7, *(a1 + 104));
  v31 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v29, v30, v9, *(a1 + 104));

  v33 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v31, v32, v11, *(a1 + 104));

  v71 = v13;
  v35 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v33, v34, v13, *(a1 + 104));

  v70 = v28;
  v37 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v35, v36, v28, *(a1 + 104));

  v38 = *(a1 + 104);
  v39 = v22;
  if (v38 <= objc_msgSend_count(v22, v40, v41))
  {
    v45 = 0;
  }

  else
  {
    v44 = *(a1 + 104);
    v45 = v44 - objc_msgSend_count(v22, v42, v43);
  }

  v46 = objc_msgSend_count(v37, v42, v43);
  if (v46 >= v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = v46;
  }

  v73 = v9;
  v74 = v7;
  v72 = v11;
  if (v48)
  {
    v49 = objc_msgSend_subarrayWithRange_(v37, v47, 0);
    objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v22, v50, v49, *(a1 + 104));
  }

  else
  {
    v49 = MEMORY[0x277CBEBF8];
    objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v22, v47, MEMORY[0x277CBEBF8], *(a1 + 104));
  }
  v51 = ;
  v54 = objc_msgSend_count(*(a1 + 80), v52, v53);
  v57 = objc_msgSend_count(v51, v55, v56);
  v59 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(*(a1 + 80), v58, v51, v57 + v54);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5DAC4;
  block[3] = &unk_278B94B20;
  v69 = *(a1 + 64);
  v60 = v69.i64[0];
  v77 = vextq_s8(v69, v69, 8uLL);
  v61 = *(a1 + 32);
  v62 = *(a1 + 40);
  v84 = *(a1 + 96);
  v63 = *(a1 + 48);
  v64 = *(a1 + 56);
  *&v65 = v63;
  *(&v65 + 1) = v64;
  *&v66 = v61;
  *(&v66 + 1) = v62;
  v78 = v66;
  v79 = v65;
  v85 = *(a1 + 112);
  v80 = v59;
  v81 = v51;
  v82 = *(a1 + 80);
  v83 = *(a1 + 88);
  v67 = v51;
  v68 = v59;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_23BD5DAC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_count(*(a1 + 48), v5, v6) + v4;
  v10 = v7 + objc_msgSend_count(*(a1 + 56), v8, v9);
  v13 = objc_msgSend_count(*(*(*(a1 + 112) + 8) + 40), v11, v12);
  v16 = v10 + objc_msgSend_count(*(a1 + 64), v14, v15);
  v19 = v16 + objc_msgSend_count(*(a1 + 72), v17, v18) + *(a1 + 120) + v13;
  *(*(a1 + 32) + 113) = v19 > objc_msgSend_maxAllowedWaypoints(*(a1 + 32), v20, v21);
  v23 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v22, *(a1 + 80));
  v24 = *(a1 + 32);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v27 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v26, *(a1 + 88));
  v28 = *(a1 + 32);
  v29 = *(v28 + 48);
  *(v28 + 48) = v27;

  v31 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v30, *(a1 + 96));
  v32 = *(a1 + 32);
  v33 = *(v32 + 80);
  *(v32 + 80) = v31;

  v34 = *(*(a1 + 104) + 16);

  return v34();
}

void sub_23BD5E070(uint64_t a1, void *a2, void *a3)
{
  v136 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v103 = v6;
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    v10 = *(*(a1 + 32) + 24);
    objc_sync_exit(v9);

    v109 = objc_msgSend__currentlyDisabledGuides(*(a1 + 32), v11, v12);
    v110 = objc_msgSend_set(MEMORY[0x277CBEB58], v13, v14);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = v10;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v124, v135, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v125;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v125 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v124 + 1) + 8 * i);
          v23 = *(*(a1 + 32) + 88);
          v24 = objc_msgSend_type(v22, v17, v18);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(v23, v25, v24);
          v29 = objc_msgSend_uuid(v22, v27, v28);
          v32 = objc_msgSend_UUIDString(v29, v30, v31);
          v34 = objc_msgSend_containsObject_(v109, v33, v32);

          if (isEnabledForGuideType && (v34 & 1) == 0)
          {
            v35 = objc_msgSend_uuid(v22, v17, v18);
            objc_msgSend_addObject_(v110, v36, v35);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v124, v135, 16);
      }

      while (v19);
    }

    v102 = a1;

    v37 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_count(v110, v38, v39);
      *buf = 136446466;
      v132 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]_block_invoke";
      v133 = 2048;
      v134 = v40;
      _os_log_impl(&dword_23BD26000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu enabled user guides.", buf, 0x16u);
    }

    v111 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v106 = v5;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v41, &v120, v130, 16);
    if (v42)
    {
      v45 = v42;
      v46 = *v121;
      v104 = *v121;
      do
      {
        v47 = 0;
        v105 = v45;
        do
        {
          if (*v121 != v46)
          {
            objc_enumerationMutation(v106);
          }

          v48 = *(*(&v120 + 1) + 8 * v47);
          v49 = objc_msgSend_identifier(v48, v43, v44, v102);
          v51 = objc_msgSend_containsObject_(v110, v50, v49);

          if (v51)
          {
            v108 = v47;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v52 = objc_msgSend_fetchPlaces(v48, v43, v44);
            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v116, v129, 16);
            if (v54)
            {
              v55 = v54;
              v56 = *v117;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v117 != v56)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v58 = *(*(&v116 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v61 = objc_msgSend_identifier(v48, v59, v60);
                    v63 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v62, v58, v61);

                    objc_msgSend_addObject_(v111, v64, v63);
                  }

                  else
                  {
                    v63 = NCLogForCategory(9uLL);
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v132 = v58;
                      _os_log_error_impl(&dword_23BD26000, v63, OS_LOG_TYPE_ERROR, "No initializer for item: %@", buf, 0xCu);
                    }
                  }
                }

                v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v65, &v116, v129, 16);
              }

              while (v55);
            }

            v46 = v104;
            v45 = v105;
            v47 = v108;
          }

          ++v47;
        }

        while (v47 != v45);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v43, &v120, v130, 16);
      }

      while (v45);
    }

    v66 = v102;
    v68 = objc_msgSend__getUpdatedDatabaseWaypoints_(*(v102 + 32), v67, v111);
    v69 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v132 = v68;
      _os_log_impl(&dword_23BD26000, v69, OS_LOG_TYPE_INFO, "Injected altitude data into waypoints: %@", buf, 0xCu);
    }

    v70 = objc_opt_new();
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v71 = v68;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v112, v128, 16);
    if (v73)
    {
      v76 = v73;
      v77 = *v113;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v113 != v77)
          {
            objc_enumerationMutation(v71);
          }

          v79 = *(*(&v112 + 1) + 8 * k);
          v80 = objc_msgSend_location(v79, v74, v75, v102);
          objc_msgSend_distanceFromLocation_(v80, v81, *(v66 + 40));
          v83 = v82;

          if (v83 < *(v66 + 56))
          {
            v84 = [NCWaypointWithDistance alloc];
            v86 = objc_msgSend_initWithWaypoint_distance_(v84, v85, v79, v83);
            objc_msgSend_addObject_(v70, v87, v86);
          }
        }

        v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v112, v128, 16);
      }

      while (v76);
    }

    objc_msgSend_sortUsingSelector_(v70, v88, sel_compare_);
    v91 = objc_msgSend_count(v70, v89, v90);
    v94 = *(v66 + 64);
    if (v91 > v94)
    {
      v95 = objc_msgSend_count(v70, v92, v93);
      objc_msgSend_removeObjectsInRange_(v70, v96, v94, v95 - *(v66 + 64));
    }

    v97 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v100 = objc_msgSend_count(v70, v98, v99);
      *buf = 136446466;
      v132 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]_block_invoke";
      v133 = 2048;
      v134 = v100;
      _os_log_impl(&dword_23BD26000, v97, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu user guide waypoints within range.", buf, 0x16u);
    }

    (*(*(v66 + 48) + 16))();
    v6 = v103;
  }

  else
  {
    if (v6)
    {
      v101 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        sub_23BD679E0();
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_23BD5E7B4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D26618]);
  v5 = objc_msgSend_store(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_initWithStore_(v2, v6, v5);

  v18 = 0;
  v9 = objc_msgSend_fetchSyncAndReturnError_(v7, v8, &v18);
  v10 = v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BD5E8D4;
  v14[3] = &unk_278B94B98;
  v11 = *(a1 + 40);
  v16 = v10;
  v17 = v11;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void sub_23BD5FC28(uint64_t a1, void *a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  objc_msgSend_allEnabledWaypoints(*(a1 + 32), v5, v6);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v91 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v88, v100, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v89;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v89 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v88 + 1) + 8 * i);
        v15 = objc_msgSend_guideUUID(v14, v9, v10);

        if (v15)
        {
          v16 = objc_msgSend_guideUUID(v14, v9, v10);
          v19 = objc_msgSend_uuid(v14, v17, v18);
          v22 = objc_msgSend_UUIDString(v19, v20, v21);
          objc_msgSend_setObject_forKey_(v4, v23, v16, v22);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v88, v100, 16);
    }

    while (v11);
  }

  v79 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v78 = v3;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v24, &v84, v99, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v85;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v85 != v29)
        {
          objc_enumerationMutation(v78);
        }

        v31 = *(*(&v84 + 1) + 8 * j);
        v32 = objc_msgSend_identifier(v31, v26, v27);
        v35 = objc_msgSend_UUIDString(v32, v33, v34);
        v37 = objc_msgSend_valueForKey_(v4, v36, v35);

        if (v37)
        {
          v39 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v38, v31, v37);
          objc_msgSend_addObject_(v79, v40, v39);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v26, &v84, v99, 16);
    }

    while (v28);
  }

  v42 = objc_msgSend__getUpdatedDatabaseWaypoints_(*(a1 + 32), v41, v79);
  v43 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v44 = v42;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v80, v98, 16);
  if (v46)
  {
    v49 = v46;
    v50 = *v81;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v81 != v50)
        {
          objc_enumerationMutation(v44);
        }

        v52 = *(*(&v80 + 1) + 8 * k);
        v53 = objc_msgSend_location(v52, v47, v48);
        objc_msgSend_distanceFromLocation_(v53, v54, *(a1 + 40));
        v56 = v55;

        v57 = [NCWaypointWithDistance alloc];
        v59 = objc_msgSend_initWithWaypoint_distance_(v57, v58, v52, v56);
        objc_msgSend_addObject_(v43, v60, v59);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v80, v98, 16);
    }

    while (v49);
  }

  v61 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v64 = objc_msgSend_count(v43, v62, v63);
    v65 = *(a1 + 56);
    *buf = 136446722;
    v93 = "[NCGuidesManager _fetchEnabledWaypointsRestrictingMapGuidesTo:ofLocation:maxCount:handler:]_block_invoke";
    v94 = 1024;
    v95 = v64;
    v96 = 2048;
    v97 = v65;
    _os_log_impl(&dword_23BD26000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: Number of guide places enabled and in range: %d. Max allowed is %lu", buf, 0x1Cu);
  }

  objc_msgSend_sortUsingSelector_(v43, v66, sel_compare_);
  if (objc_msgSend_count(v43, v67, v68) > *(a1 + 56))
  {
    v71 = objc_msgSend_count(v43, v69, v70);
    v73 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v72, *(a1 + 56), v71 - *(a1 + 56));
    objc_msgSend_removeObjectsAtIndexes_(v43, v74, v73);
  }

  v75 = *(a1 + 48);
  v76 = objc_msgSend_copy(v43, v69, v70);
  (*(v75 + 16))(v75, v76);
}

void sub_23BD60270(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = objc_msgSend_initWithUUIDString_(v5, v6, @"00000000-0000-0000-0000-000000000001");
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v3;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v36, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v11, *(*(&v28 + 1) + 8 * v14), v7, v28);
        objc_msgSend_addObject_(v4, v16, v15);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v36, 16);
    }

    while (v12);
  }

  v17 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = objc_msgSend_count(v4, v18, v19);
    v23 = objc_msgSend_numberWithUnsignedInteger_(v20, v22, v21);
    *buf = 136446466;
    v33 = "[NCGuidesManager _fetchAllWaypointsRestrictingMapGuidesTo:ofLocation:handler:]_block_invoke";
    v34 = 2112;
    v35 = v23;
    _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Number of guide places and in range: %@", buf, 0x16u);
  }

  v24 = *(a1 + 32);
  v27 = objc_msgSend_copy(v4, v25, v26);
  (*(v24 + 16))(v24, v27);
}

void sub_23BD60670(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D26610]);
  v5 = objc_msgSend_store(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_initWithStore_(v2, v6, v5);

  v8 = *(a1 + 40);
  v21 = 0;
  v10 = objc_msgSend_fetchSyncWithOptions_error_(v7, v9, v8, &v21);
  v13 = v21;
  if (v13)
  {
    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67B68(v13, v14);
    }
  }

  else
  {
    if (objc_msgSend_count(v10, v11, v12))
    {
      goto LABEL_6;
    }

    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "No MSCollectionPlaceItem results.", buf, 2u);
    }
  }

LABEL_6:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD60814;
  v17[3] = &unk_278B94398;
  v15 = *(a1 + 48);
  v18 = v10;
  v19 = v15;
  v16 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void sub_23BD609D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 104);
  v6 = objc_msgSend_UUIDString(*(a1 + 40), a2, a3);
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_containsObject_(v4, v5, v6) ^ 1;
}

void sub_23BD60AE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uuid(*(a1 + 32), a2, a3);
  v15 = objc_msgSend_UUIDString(v4, v5, v6);

  LODWORD(v4) = *(a1 + 48);
  v8 = objc_msgSend_containsObject_(*(*(a1 + 40) + 104), v7, v15);
  if (v4 == 1)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    objc_msgSend_removeObject_(*(*(a1 + 40) + 104), v9, v15);
  }

  else
  {
    if (v8)
    {
      goto LABEL_9;
    }

    objc_msgSend_addObject_(*(*(a1 + 40) + 104), v9, v15);
  }

  objc_msgSend__saveDisabledGuidesToDefaults(*(a1 + 40), v10, v11);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    objc_msgSend__addEnabledWaypointsForGuide_(v13, v12, v14);
  }

  else
  {
    objc_msgSend__removeDisabledWaypointsForGuide_(v13, v12, v14);
  }

LABEL_9:
}

void *sub_23BD610B8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 104), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_23BD615B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_msgSend__refreshGuides(*(a1 + 32), a2, a3);
  v4 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NCGuidesManager _handleFirstUnlock]_block_invoke";
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "%s: posting notification for GuidesFirstUnlockNotification", &v7, 0xCu);
  }

  return objc_msgSend__postNotification_(*(a1 + 32), v5, @"GuidesFirstUnlockNotification");
}

uint64_t sub_23BD61768(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 104), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

uint64_t sub_23BD61ED8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NCGuidesManager _loadGuides]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s: Loaded guides, calling _refreshNonDistanceLimitedWaypoints", &v6, 0xCu);
  }

  return objc_msgSend__refreshNonDistanceLimitedWaypoints(*(a1 + 32), v3, v4);
}

void sub_23BD62368(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    objc_msgSend_addObjectsFromArray_(*(*(*(a1 + 40) + 8) + 40), v4, v5);
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_23BD62404(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = a1;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v33, v39, 16);
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        v13 = objc_msgSend_type(v11, v6, v7);
        v15 = objc_msgSend_numberWithInteger_(v12, v14, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v3, v16, v15);
        v18 = v17 == 0;

        if (v18)
        {
          v20 = objc_opt_new();
          objc_msgSend_setObject_forKeyedSubscript_(v3, v21, v20, v15);
        }

        v22 = objc_msgSend_objectForKeyedSubscript_(v3, v19, v15);
        objc_msgSend_addObject_(v22, v23, v11);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v33, v39, 16);
    }

    while (v8);
  }

  v24 = *(v32 + 32);
  objc_sync_enter(v24);
  v27 = objc_msgSend_copy(v3, v25, v26);
  objc_msgSend_setLoadedProviderGuidesByType_(*(v32 + 32), v28, v27);

  objc_sync_exit(v24);
  objc_msgSend__refreshNonDistanceLimitedWaypoints(*(v32 + 32), v29, v30);
  v31 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[NCGuidesManager _refreshGuides]_block_invoke_2";
    _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_DEFAULT, "%s: Finished refreshing provider guides.", buf, 0xCu);
  }
}

void sub_23BD62DD4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__loadDisabledGuidesFromDefaults(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62E60;
  block[3] = &unk_278B93FB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BD62F6C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__loadDisabledGuidesFromDefaults(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62FF8;
  block[3] = &unk_278B93FB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id sub_23BD63488(uint64_t a1)
{
  if (qword_27E1C5400 != -1)
  {
    sub_23BD67C60();
  }

  v2 = qword_27E1C53F8;

  return v2;
}

uint64_t sub_23BD634CC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"com.apple.NanoCompass.BacktrackTranscriptSession", -1, 0);
  v3 = qword_27E1C53F8;
  qword_27E1C53F8 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t static NCWaypointGlyphs.convertedSymbol(from:)(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4A38 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1C5438;
  if (*(qword_27E1C5438 + 16))
  {
    v5 = sub_23BD63770(a1, a2);
    if (v6)
    {
      a1 = *(*(v4 + 56) + 16 * v5);
    }
  }

  return a1;
}

id NCWaypointGlyphs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NCWaypointGlyphs.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCWaypointGlyphs();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NCWaypointGlyphs.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NCWaypointGlyphs();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_23BD63770(uint64_t a1, uint64_t a2)
{
  sub_23BD67D74();
  sub_23BD67CF4();
  v4 = sub_23BD67DA4();

  return sub_23BD6380C(a1, a2, v4);
}

unint64_t sub_23BD6380C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23BD67D64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id static NCStyleAttributes.symbolImage(for:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v2 imageForStyle:v4 size:2 forScale:1 format:1 transparent:v7];
  return v8;
}

id NCStyleAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NCStyleAttributes.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCStyleAttributes();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NCStyleAttributes.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NCStyleAttributes();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s24NanoCompassComplications17NCStyleAttributesC9fillColor3forSo7UIColorCSgSo015GEOFeatureStyleE0CSg_tFZ_0(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 mainScreen];
    [v5 scale];
    v7 = v6;

    v8 = [v2 newFillColorForStyleAttributes:v4 forScale:v7];
    v9 = v2;
    if (v8)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_23BD63CCC()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD705D0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.backtrackRetraceMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.backtrackRetraceMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A10 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.backtrackRetraceMode;
}

id sub_23BD63DB4()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x800000023BD705B0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.locationRefreshUpdateMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.locationRefreshUpdateMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A18 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.locationRefreshUpdateMode;
}

id sub_23BD63E9C()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD70590;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.targetedWaypointUpdateMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.targetedWaypointUpdateMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A20 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.targetedWaypointUpdateMode;
}

id sub_23BD63F84()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD70570;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.waypointCreationMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.waypointCreationMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A28 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.waypointCreationMode;
}

id sub_23BD6406C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t LocationUpdate1HzMode.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier);

  return v1;
}

id sub_23BD6419C(uint64_t a1)
{

  v1 = sub_23BD67CD4();

  return v1;
}

uint64_t LocationUpdate1HzMode.isEqual(_:)(uint64_t a1)
{
  sub_23BD64320(a1, v6);
  if (!v7)
  {
    sub_23BD643D8(v6);
    goto LABEL_9;
  }

  type metadata accessor for LocationUpdate1HzMode();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier] && *(v1 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier + 8) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_23BD67D64();
  }

  return v3 & 1;
}

uint64_t sub_23BD64320(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD64390(&qword_27E1C4A48, &qword_23BD6C910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD64390(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BD643D8(uint64_t a1)
{
  v2 = sub_23BD64390(&qword_27E1C4A48, &qword_23BD6C910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id LocationUpdate1HzMode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationUpdate1HzMode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BD64530()
{
  result = [objc_allocWithZone(type metadata accessor for UnitLengthPreferences()) init];
  static UnitLengthPreferences.shared = result;
  return result;
}

uint64_t *UnitLengthPreferences.shared.unsafeMutableAddressor()
{
  if (qword_27E1C4A30 != -1)
  {
    swift_once();
  }

  return &static UnitLengthPreferences.shared;
}

id static UnitLengthPreferences.shared.getter()
{
  if (qword_27E1C4A30 != -1)
  {
    swift_once();
  }

  v1 = static UnitLengthPreferences.shared;

  return v1;
}

uint64_t UnitLengthPreferences.overrideToMetric.getter()
{
  v1 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UnitLengthPreferences.overrideToMetric.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Bool __swiftcall UnitLengthPreferences.usesMetric()()
{
  v1 = sub_23BD67C94();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_23BD67CC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  swift_beginAccess();
  if (*(v0 + v12))
  {
    v13 = 1;
  }

  else
  {
    sub_23BD67CB4();
    sub_23BD67CA4();
    sub_23BD67C84();
    v13 = MEMORY[0x23EEBB650](v7, v5);
    v14 = *(v2 + 8);
    v14(v5, v1);
    v14(v7, v1);
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

id UnitLengthPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnitLengthPreferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DEMTileCoordinates.__allocating_init(location:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23BD650C4(a1);
  v5 = v4;

  return v5;
}

uint64_t DEMTileCoordinates.init(location:)(void *a1)
{
  sub_23BD650C4(a1);
  v3 = v2;

  return v3;
}

unint64_t DEMTileCoordinates.description.getter()
{
  sub_23BD67D34();

  v0 = sub_23BD67D54();
  MEMORY[0x23EEBB6E0](v0);

  MEMORY[0x23EEBB6E0](8236, 0xE200000000000000);
  v1 = sub_23BD67D54();
  MEMORY[0x23EEBB6E0](v1);

  MEMORY[0x23EEBB6E0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t DEMTileCoordinates.hash.getter(uint64_t a1, uint64_t a2)
{
  sub_23BD67DB4();
  MEMORY[0x23EEBB760](*(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x));
  MEMORY[0x23EEBB760](*(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y));
  return sub_23BD67D94();
}

BOOL DEMTileCoordinates.isEqual(_:)(uint64_t a1)
{
  sub_23BD64320(a1, v6);
  if (v7)
  {
    type metadata accessor for DEMTileCoordinates();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x])
      {
        v2 = *(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
        v3 = *&v5[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_23BD643D8(v6);
  }

  return 0;
}

id DEMTileCoordinates.copy(with:)@<X0>(void *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v6 = *(v3 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v7 = type metadata accessor for DEMTileCoordinates();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = v5;
  *&v8[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  result = objc_msgSendSuper2(&v10, sel_init);
  a3[3] = v7;
  *a3 = result;
  return result;
}

BOOL DEMTileCoordinates.isInLookupRange(range:wrt:)(_BOOL8 result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v4 = *(a2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v11 = __OFSUB__(v3, v4);
  v5 = v3 - v4;
  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v7 = *(a2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v11 = __OFSUB__(v6, v7);
  v8 = v6 - v7;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    v11 = __OFSUB__(0, v5);
    v5 = -v5;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 0)
  {
    v11 = __OFSUB__(0, v8);
    v8 = -v8;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  if (v5 <= result)
  {
    v11 = __OFSUB__(v8, result);
    v9 = v8 == result;
    v10 = v8 - result < 0;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
  }

  return (v10 ^ v11 | v9) != 0;
}

id DEMTileCoordinates.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DEMTileCoordinates();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BD650C4(void *a1)
{
  [a1 coordinate];
  v4 = v3;
  [a1 coordinate];
  v6 = fmod(v5, 360.0);
  if (v6 < 0.0)
  {
    v6 = v6 + 360.0;
  }

  v7 = v4 / 0.1;
  if (COERCE__INT64(fabs(v4 / 0.1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v1[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = v7;
  v8 = v6 / 0.1;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 9.22337204e18)
  {
    *&v1[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = v8;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for DEMTileCoordinates();
    objc_msgSendSuper2(&v9, sel_init);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_23BD65230()
{
  v0 = sub_23BD65298(&unk_284E80620);
  sub_23BD64390(&qword_27E1C4A68, &qword_23BD6C988);
  result = swift_arrayDestroy();
  qword_27E1C5430 = &unk_284E80420;
  qword_27E1C5438 = v0;
  return result;
}

unint64_t sub_23BD65298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD64390(&qword_27E1C4A70, &unk_23BD6C990);
    v3 = sub_23BD67D44();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23BD63770(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_23BD654BC(void *a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = objc_msgSend_family(a1, a2, a3);
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication template family: %ld", &v4, 0xCu);
}

void sub_23BD655D4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%s failed to take assertion: %@", &v2, 0x16u);
}

void sub_23BD65660(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke_2";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s Location update is still running but we are out of runtime. Fire locationQueryDurationTimer now to stop location update.", &v1, 0xCu);
}

void sub_23BD656F8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446466;
  v3 = "[NCGuidesEnabledState NSStringFromNCGuideType:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Encountered unexpected guide type. %ld", &v2, 0x16u);
}

void sub_23BD65900(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}

void sub_23BD65B58(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NCLocationUpdateComplicationDelegate activateWaypointComplication]";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s user did not enter targeted view in the app, no activation date is available", &v1, 0xCu);
}

void sub_23BD65D34(NSObject *a1, const char *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], a2, a3);
  sub_23BD3CB20();
  _os_log_error_impl(&dword_23BD26000, a1, OS_LOG_TYPE_ERROR, "Device is not authorized. Current Authorized status is %tu", v4, 0xCu);
}

void sub_23BD65E04(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(*a1 + 24);
  sub_23BD3CADC(&dword_23BD26000, a2, a3, "clients resumed/added, total clients number is %lu ", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_23BD65E78()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BD3CB20();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "absolute altimeter error: %@", v1, 0xCu);
}

void sub_23BD66148(char a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = @"YES";
  v3 = 138412802;
  v4 = @"com.apple.NanoCompass.ActiveBacktrackUsage.event";
  v6 = @"HistoricalPathAvailable";
  v5 = 2112;
  if ((a1 & 1) == 0)
  {
    v2 = @"NO";
  }

  v7 = 2112;
  v8 = v2;
  _os_log_debug_impl(&dword_23BD26000, a2, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %@.", &v3, 0x20u);
}

void sub_23BD661FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136446722;
  sub_23BD40BA0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEBUG, "%{public}s: Merge starting. Num waypoints in first array: %lu. Num waypoints in second array: %lu", v3, 0x20u);
}

void sub_23BD66288(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_count(a1, a2, a3);
  v9 = 136446466;
  sub_23BD40BA0();
  sub_23BD40BB4(&dword_23BD26000, v3, v4, "%{public}s: Merge - After combining waypoint arrays, waypoint count is %lu.", v5, v6, v7, v8, v9);
}

void sub_23BD6630C()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD40BA0();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - Adding %lu more waypoints from second array", v1, 0x16u);
}

void sub_23BD6638C()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD40BA0();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - Adding %lu more waypoints from first array", v1, 0x16u);
}

void sub_23BD6640C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_count(a1, a2, a3);
  v9 = 136446466;
  sub_23BD40BA0();
  sub_23BD40BB4(&dword_23BD26000, v3, v4, "%{public}s: Merge Finished. Final waypoint count is %lu", v5, v6, v7, v8, v9);
}

void sub_23BD664CC()
{
  sub_23BD45020();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD6664C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_uuid(a1, a2, a3);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_23BD666E8()
{
  sub_23BD45020();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD667FC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_23BD6691C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_23BD66A3C(void *a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_userInfo(a1, a2, a3);
  sub_23BD4503C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_23BD66BF4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NCLocationUpdateAppDelegate _takeLocationAuthRequestAssertion]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%s failed to take assertion for requesting location authorization: %@", &v2, 0x16u);
}

void sub_23BD66D5C()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66DD0()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66E44()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66E80()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66EF4()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66F68()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66FA4()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66FE0()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD67054()
{
  sub_23BD3CB14();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67090()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD670CC()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67108()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD67184()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD671F8()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67234()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67270()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD672EC()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD67360()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD6739C()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD673D8(void *a1, const char *a2, uint64_t a3)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = objc_msgSend_family(a1, a2, a3);
  sub_23BD50824(&dword_23BD26000, v3, v4, "Unhandled complication (sample) template family: %ld", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_23BD67454(void *a1, const char *a2, uint64_t a3)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = objc_msgSend_family(a1, a2, a3);
  sub_23BD50824(&dword_23BD26000, v3, v4, "Unhandled complication template family: %ld", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_23BD674E4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[WaypointsComplicationDataSource _getWaypointUUIDFromDescriptor:]";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s: We have a waypoint descriptor with no uuid", &v1, 0xCu);
}

void sub_23BD676F4(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_label(a1, a2, a3);
  v7 = objc_msgSend_name(a2, v5, v6);
  sub_23BD570C4();
  sub_23BD570DC(&dword_23BD26000, v8, v9, "Attempted to update waypoint %@ from guide %@, which is not supported.", v10, v11, v12, v13);
}

void sub_23BD67798(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_label(a1, a2, a3);
  v7 = objc_msgSend_name(a2, v5, v6);
  sub_23BD570C4();
  sub_23BD570DC(&dword_23BD26000, v8, v9, "Attempted to delete waypoint %@ from guide %@, which is not supported.", v10, v11, v12, v13);
}

void sub_23BD6793C(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Pedometer error %@. Assuming user is walking in this case.", &v3, 0xCu);
}

void sub_23BD679E0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63474();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "%{public}s: Error fetching waypoints for user guides: %{public}@", v1, 0x16u);
}

void sub_23BD67A60()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63460();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s Finding compass waypoints within a radius of %f meters", v1, 0x16u);
}

void sub_23BD67AE4()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63460();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s Finding system waypoints within a radius of %f meters", v1, 0x16u);
}

void sub_23BD67B68(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Error fetching MSCollectionPlaceItems: %{public}@", &v2, 0xCu);
}

void sub_23BD67BE0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  sub_23BD63474();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "%s: Fetching map guide collections failed with %{public}@", v1, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t sub_23BD68704(double a1)
{
  if (!atomic_load(&unk_27E1C4A78))
  {
    sub_23BD6875C(a1);
  }

  return MEMORY[0x282186880]();
}

uint64_t sub_23BD68730(double a1)
{
  if (!atomic_load(&unk_27E1C4A78))
  {
    sub_23BD6875C(a1);
  }

  return MEMORY[0x2821868B8]();
}

double sub_23BD6875C(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 0);
  atomic_store(1u, &unk_27E1C4A78);
  return a1;
}
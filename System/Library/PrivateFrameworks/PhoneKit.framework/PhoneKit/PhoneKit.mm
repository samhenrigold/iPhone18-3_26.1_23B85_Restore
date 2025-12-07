id PHPreferencesGetValueInDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v5 bundleIdentifier];
  }

  if ([(__CFString *)v3 length]&& [(__CFString *)v4 length])
  {
    v6 = CFPreferencesCopyValue(v3, v4, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_25E4EE3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

uint64_t __PHDefaultLog_block_invoke()
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.callsappservices", "Default");

  return MEMORY[0x2821F96F8]();
}

void ___defaultContactsKeyDescriptors_block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBCFC0];
  v5[0] = *MEMORY[0x277CBD098];
  v5[1] = v0;
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v2 = *MEMORY[0x277CBD138];
  v5[2] = v1;
  v5[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v4 = _defaultContactsKeyDescriptors_keyDescriptors;
  _defaultContactsKeyDescriptors_keyDescriptors = v3;
}

uint64_t sub_25E4EEF68(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25E4EEFF8()
{
  result = qword_280CEAF00;
  if (!qword_280CEAF00)
  {
    sub_25E4EEF68(255, &qword_280CEAF08, 0x277CF7D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEAF00);
  }

  return result;
}

uint64_t sub_25E4EF0F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD70, &qword_25E50A368);
  result = sub_25E5082C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_25E508178();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_25E4EF4D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25E508188();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_25E4EF66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_25E4EF70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD70, &qword_25E50A368);
    v3 = sub_25E5082E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25E4EF980(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

id sub_25E4EF808(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25E4EF980(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25E4EF0F8(v13, a3 & 1);
      v8 = sub_25E4EF980(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        sub_25E508318();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_25E50643C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_25E4EF980(uint64_t a1)
{
  v2 = sub_25E508178();

  return sub_25E4EF4D0(a1, v2);
}

void sub_25E4EFA14(uint64_t a1, uint64_t a2)
{
  sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
  sub_25E4EEF68(0, &qword_280CEAEF8, 0x277CCABB0);
  sub_25E4EEFF8();
  v3 = sub_25E508058();
  (*(a2 + 16))(a2, v3);
}

void PHPreferencesSetValueInDomain(void *a1, void *a2, void *a3)
{
  key = a1;
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v7 bundleIdentifier];
  }

  if ([(__CFString *)key length]&& [(__CFString *)v6 length])
  {
    v8 = *MEMORY[0x277CBF040];
    v9 = *MEMORY[0x277CBF030];
    CFPreferencesSetValue(key, v5, v6, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    CFPreferencesSynchronize(v6, v8, v9);
  }
}

uint64_t sub_25E4EFF14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E4EFF4C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25E4EFF9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id PHFormatDialerLCDViewText(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 characterAtIndex:0];
    if (v2 == 59 || v2 == 44)
    {
      v3 = [v1 substringFromIndex:1];

      v1 = v3;
    }
  }

  v4 = TUNetworkCountryCode();

  if (v4)
  {
    v5 = TUNetworkCountryCode();
    v6 = UIFormattedPhoneNumberFromStringWithCountry();
  }

  else
  {
    v6 = UIFormattedPhoneNumberFromString();
  }

  return v6;
}

BOOL PHShouldShowWifiCallingAlert()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _wifiCallingAlertShowCount();
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (v0 >= 3)
    {
      v2 = @"NO";
    }

    else
    {
      v2 = @"YES";
    }

    v4 = 138412546;
    v5 = v2;
    v6 = 2048;
    v7 = _wifiCallingAlertShowCount();
    _os_log_impl(&dword_25E4EC000, v1, OS_LOG_TYPE_DEFAULT, "Showing wifi calling alert: %@, shown count is %ld", &v4, 0x16u);
  }

  return v0 < 3;
}

uint64_t _wifiCallingAlertShowCount()
{
  v0 = PHPreferencesGetValue(@"WifiCallingCallFailureAlertShowCount");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 unsignedIntegerValue];
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PHIncrementWifiCallingAlertShowCount()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = _wifiCallingAlertShowCount();
  if (v0 != -1)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v0 + 1];
    PHPreferencesSetValue(@"WifiCallingCallFailureAlertShowCount", v1);
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_25E4EC000, v2, OS_LOG_TYPE_DEFAULT, "Incrementing wifi calling alert show count to %@", &v3, 0xCu);
    }
  }
}

BOOL PHStringShouldAutoDialGivenLastCharacter(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 != 35)
  {
    goto LABEL_24;
  }

  v5 = [v3 rangeOfString:@"**0" options:8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v4 isEqualToString:@"*#06#"])
    {
      v7 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  v8 = v5 + v6;
  v9 = [v4 length];
  v10 = v8 + 1;
  if (v9 <= v8 + 1)
  {
    goto LABEL_24;
  }

  v11 = v9;
  if (([v4 characterAtIndex:v8] & 0xFFFE) != 0x34)
  {
    goto LABEL_24;
  }

  v12 = [v4 characterAtIndex:v8 + 1];
  if (v12 == 50)
  {
    v10 = v8 + 2;
    if (v11 <= v8 + 2)
    {
      goto LABEL_24;
    }

    v12 = [v4 characterAtIndex:v8 + 2];
  }

  if (v12 != 42 || v10 >= v11 - 2)
  {
    goto LABEL_24;
  }

  v13 = v11 - 1;
  do
  {
    v14 = [v4 characterAtIndex:v10];
    v7 = v14 == 42 || (v14 - 48) < 0xA;
    ++v10;
  }

  while (v7 && v10 < v13);
LABEL_25:

  return v7;
}

uint64_t PHIsInAirplaneMode()
{
  v0 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  v1 = [v0 airplaneMode];

  return v1;
}

uint64_t _emergencyDialerPresenceToken()
{
  if ((byte_27FCEBEA4 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_27FCEBEA4 = 1;
  }

  return *&_emergencyDialerPresenceToken_notifyToken;
}

BOOL PHGetEmergencyDialerPresenceTokenValue()
{
  if ((byte_27FCEBEA4 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_27FCEBEA4 = 1;
  }

  state64 = 0;
  if ((*&_emergencyDialerPresenceToken_notifyToken & 0x100000000) == 0)
  {
    return 0;
  }

  notify_get_state(_emergencyDialerPresenceToken_notifyToken, &state64);
  return state64 != 0;
}

uint64_t PHSetEmergencyDialerPresenceTokenValue(uint64_t state64)
{
  v1 = state64;
  if ((byte_27FCEBEA4 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_27FCEBEA4 = 1;
  }

  result = *&_emergencyDialerPresenceToken_notifyToken;
  if ((*&_emergencyDialerPresenceToken_notifyToken & 0x100000000) != 0)
  {
    notify_set_state(_emergencyDialerPresenceToken_notifyToken, v1);

    return notify_post("com.apple.InCallService.emergencydialerpresence");
  }

  return result;
}

BOOL PHShouldUseFieldTestBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = 1;
  if ([v1 compare:@"mav10" options:1])
  {
    v2 = 1;
    if ([v1 compare:@"mav13" options:1])
    {
      v2 = 1;
      if ([v1 compare:@"mav16" options:1])
      {
        v2 = [v1 compare:@"mav17" options:1] == 0;
      }
    }
  }

  return v2;
}

BOOL PHLaunchFieldTestApplicationIfNecessaryForDestinationID(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"*3001#12345#*"])
  {
    v2 = CUTWeakLinkClass();
    v3 = v2 != 0;
    if (v2)
    {
      v4 = v2;
      v5 = MGGetStringAnswer();
      v6 = @"com.apple.FTMInternal";
      if (([v5 hasPrefix:@"ice"]& 1) == 0 && PHShouldUseFieldTestBundleIdentifier(v5))
      {
        v6 = @"com.apple.fieldtest";
      }

      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "%@ matches the field test code, launching the legacy field test app %@", &v10, 0x16u);
      }

      v8 = [v4 sharedService];
      [v8 openApplication:v6 options:MEMORY[0x277CBEC10] withResult:0];
    }

    else
    {
      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        PHLaunchFieldTestApplicationIfNecessaryForDestinationID_cold_1(v5);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_25E4F3ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F4148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F4404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E4F4580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25E4F7898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E4F7DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F7F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F8880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4F8A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4FB250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E4FD5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __PKRecentsControllerSignpostLog_block_invoke()
{
  PKRecentsControllerSignpostLog_log = os_log_create("com.apple.PhoneKit", "PKRecentsController");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25E5013D8()
{
  result = sub_25E508098();
  qword_27FCEBCF8 = result;
  return result;
}

uint64_t static CDSearchUtilities.convertPinyinToLatin(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27FCEBCF0 != -1)
  {
    swift_once();
  }

  sub_25E501CA0();
  result = sub_25E508198();
  if (v3)
  {
    v4 = sub_25E508198();

    return v4;
  }

  return result;
}

CDSearchUtilities __swiftcall CDSearchUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_25E501598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD18, &qword_25E50A2C0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25E5016A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *_sSo17CDSearchUtilitiesC8PhoneKitE07matchedC6Number3for10searchText21allowMatchingLastFourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD20, &qword_25E50A2C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = HIBYTE(a3) & 0xF;
  v29 = a2;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = [a1 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD28, &qword_25E50A2D0);
    v12 = sub_25E5080D8();

    if (v12 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25E5081D8())
    {
      v14 = 0;
      v27 = v12 & 0xFFFFFFFFFFFFFF8;
      v28 = v12 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v15 = MEMORY[0x25F8B55F0](v14, v12);
        }

        else
        {
          if (v14 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 value];
        v19 = [v18 formattedInternationalStringValue];

        if (!v19)
        {
          v20 = [v16 value];
          v19 = [v20 stringValue];
        }

        sub_25E5080A8();

        v21 = sub_25E508098();

        v22 = sub_25E508098();
        v23 = [v21 indexSetToHighlightDigitsInText:v22 allowMatchingLastFour:v30 & 1];

        if (v23)
        {

          sub_25E507FA8();

          v26 = sub_25E507FB8();
          (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
          sub_25E501E3C(v9);
          return v16;
        }

        v24 = sub_25E507FB8();
        (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
        sub_25E501E3C(v9);
        ++v14;
        if (v17 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_16:
  }

  return 0;
}

uint64_t _sSo17CDSearchUtilitiesC8PhoneKitE17matchedProperties_8containsSbSDys11AnyHashableVypG_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v26 = a2;
  *(&v26 + 1) = a3;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_25E501D40(*(a1 + 48) + 40 * (v13 | (v10 << 6)), v32);
    v27 = v32[0];
    v28 = v32[1];
    v29 = v33;
    result = swift_dynamicCast();
    if (result)
    {
      v14 = v31;
      if (v31)
      {
        v25 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25E501598(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v24 = v16 + 1;
          v19 = v11;
          v20 = v16;
          result = sub_25E501598((v15 > 1), v16 + 1, 1, v19);
          v16 = v20;
          v17 = v24;
          v11 = result;
        }

        *(v11 + 16) = v17;
        v18 = v11 + 16 * v16;
        *(v18 + 32) = v25;
        *(v18 + 40) = v14;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v32[0] = v26;
      MEMORY[0x28223BE20](v21);
      v23[2] = v32;
      v22 = sub_25E5016A4(sub_25E501D9C, v23, v11);

      return v22 & 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E501CA0()
{
  result = qword_27FCEBD08;
  if (!qword_27FCEBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCEBD08);
  }

  return result;
}

unint64_t type metadata accessor for CDSearchUtilities()
{
  result = qword_27FCEBD10;
  if (!qword_27FCEBD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCEBD10);
  }

  return result;
}

uint64_t sub_25E501D9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E5082F8() & 1;
  }
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

uint64_t sub_25E501E3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD20, &qword_25E50A2C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E501EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25E501FCC;

  return v9(a1, a2, a3);
}

uint64_t sub_25E501FCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25E5020C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD50, &qword_25E50A350);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v8 = sub_25E507FF8();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v9 = sub_25E508018();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E50223C, 0, 0);
}

uint64_t sub_25E50223C()
{

  v2 = sub_25E5074A8(v1);

  v3 = sub_25E5072C0(MEMORY[0x277D84F90]);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25E5081C8();
    sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    sub_25E4EEFF8();
    v4 = sub_25E508158();
    v2 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v6 = 0;
  }

  v12 = v0[18];
  v37 = v7;
  v13 = (v7 + 64) >> 6;
  v39 = *MEMORY[0x277CD4728];
  v44 = (v12 + 104);
  v43 = *MEMORY[0x277CD4738];
  v38 = *MEMORY[0x277CD4730];
  v41 = (v12 + 8);
  v42 = (v12 + 16);
  v40 = (v0[22] + 8);
  v46 = v2;
  v47 = v5;
  v45 = v13;
  v0[24] = v3;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v6;
    v15 = v8;
    v16 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_28:
      v32 = v0[11];
      sub_25E4EF9C4(v2);

      __swift_project_boxed_opaque_existential_1(v32, v32[3]);

      v34 = sub_25E502D20(v33);
      v0[25] = v34;
      v35 = swift_task_alloc();
      v0[26] = v35;
      *v35 = v0;
      v35[1] = sub_25E502710;
      v4 = v34;

      return MEMORY[0x28214E8C8](v4);
    }

    while (1)
    {
      v48 = v3;
      v20 = [v18 type];
      v21 = v43;
      if (v20 >= 2)
      {
        v21 = v39;
        if (v20 != 2)
        {
          v21 = v38;
          if (v20 != 3)
          {
            v21 = v39;
          }
        }
      }

      v22 = v0[19];
      v23 = v0[20];
      v24 = v0[17];
      (*v44)(v23, v21, v24);
      (*v42)(v22, v23, v24);
      v25 = [v18 value];
      sub_25E5080A8();

      sub_25E508008();
      (*v41)(v23, v24);
      if (*(v48 + 16) && (v26 = sub_25E503A18(v0[23]), (v27 & 1) != 0))
      {
        v49 = *(*(v48 + 56) + 8 * v26);
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v13 = v45;
      v28 = v18;
      MEMORY[0x25F8B5470]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E5080E8();
      }

      v29 = v0[23];
      v30 = v0[21];
      sub_25E5080F8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25E505F38(v49, v29, isUniquelyReferenced_nonNull_native);

      v3 = v48;
      v4 = (*v40)(v29, v30);
      v6 = v16;
      v5 = v47;
      v8 = v17;
      v2 = v46;
      v0[24] = v48;
      if ((v46 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_25E5081F8();
      if (v19)
      {
        v0[9] = v19;
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        swift_dynamicCast();
        v18 = v0[8];
        v16 = v6;
        v17 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return MEMORY[0x28214E8C8](v4);
}

uint64_t sub_25E502710(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v4 = sub_25E50285C;
  }

  else
  {
    v4 = sub_25E502A48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25E50285C()
{
  if (qword_27FCEBD00 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_25E508048();
  __swift_project_value_buffer(v2, qword_27FCEBD30);
  v3 = v1;
  v4 = sub_25E508028();
  v5 = sub_25E508168();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25E4EC000, v4, v5, "Failed to fetch blocked status: %@", v7, 0xCu);
    sub_25E507664(v8, &qword_27FCEBD58, &qword_25E50A358);
    MEMORY[0x25F8B5F80](v8, -1, -1);
    MEMORY[0x25F8B5F80](v7, -1, -1);
  }

  v11 = v0[28];
  v12 = v0[12];

  sub_25E4EF70C(MEMORY[0x277D84F90]);
  v12();

  v13 = v0[1];

  return v13();
}

uint64_t sub_25E502A48()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v26 = v0[14];
  v0[7] = sub_25E4EF70C(MEMORY[0x277D84F90]);
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v27 = v3;

  v10 = 0;
  v23 = v1;
  while (v7)
  {
LABEL_11:
    v13 = v0[15];
    v12 = v0[16];
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    (*(v27 + 16))(v12, *(v1 + 48) + *(v27 + 72) * v14, v0[21]);
    *(v12 + *(v26 + 48)) = *(*(v1 + 56) + v14);
    sub_25E507788(v12, v13, &qword_27FCEBD50, &qword_25E50A350);
    if (*(v2 + 16) && (v15 = sub_25E503A18(v0[15]), (v16 & 1) != 0))
    {
      v17 = v0[15];
      v24 = v0[21];
      v25 = v0[16];
      v18 = *(*(v2 + 56) + 8 * v15);
      v19 = *(v0[22] + 8);

      v19(v17, v24);
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      *(v20 + 24) = v25;
      sub_25E503060(sub_25E5076C4, v20, v18);
      v1 = v23;
    }

    else
    {
      (*(v0[22] + 8))(v0[15], v0[21]);
    }

    v7 &= v7 - 1;
    result = sub_25E507664(v0[16], &qword_27FCEBD50, &qword_25E50A350);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  v21 = v0[12];

  v21(v0[7]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_25E502D20(uint64_t a1)
{
  v2 = sub_25E508018();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
  result = MEMORY[0x25F8B54F0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_25E503CE8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_25E502F6C(void **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    if ((*a2 & 0xC000000000000001) == 0)
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      sub_25E4EF808(v6, v4, isUniquelyReferenced_nonNull_native);
      *a2 = v11;
      return;
    }

    if (v7 < 0)
    {
      v8 = *a2;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_25E5081D8();
    if (!__OFADD__(v9, 1))
    {
      *a2 = sub_25E505798(v8, v9 + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_25E503060(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25E5081D8())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8B55F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_25E503160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD48, &qword_25E50A320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25E507788(a3, v25 - v10, &qword_27FCEBD48, &qword_25E50A320);
  v12 = sub_25E508128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25E507664(v11, &qword_27FCEBD48, &qword_25E50A320);
  }

  else
  {
    sub_25E508118();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25E508108();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25E5080B8() + 32;
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

uint64_t sub_25E503420()
{
  v0 = sub_25E508048();
  __swift_allocate_value_buffer(v0, qword_27FCEBD30);
  __swift_project_value_buffer(v0, qword_27FCEBD30);
  return sub_25E508038();
}

uint64_t sub_25E5034A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E503598;

  return v6(a1);
}

uint64_t sub_25E503598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25E503690(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_25E5081D8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_25E5081D8();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_25E503C48(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_25E50659C(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_25E4EF9C4(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_25E5081F8())
    {
      goto LABEL_11;
    }

    sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_25E5080E8();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_25E5081F8())
      {
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_25E503A18(uint64_t a1)
{
  sub_25E508018();
  sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
  v2 = sub_25E508078();

  return sub_25E503A9C(a1, v2);
}

unint64_t sub_25E503A9C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25E508018();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25E5076E0(&qword_27FCEBD78, MEMORY[0x277CD4758]);
      v15 = sub_25E508088();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25E503C48(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25E5081D8();
LABEL_9:
  result = sub_25E508258();
  *v2 = result;
  return result;
}

uint64_t sub_25E503CE8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25E508018();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
  v33 = a2;
  v11 = sub_25E508078();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25E5076E0(&qword_27FCEBD78, MEMORY[0x277CD4758]);
      v21 = sub_25E508088();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25E5049BC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25E503FA0(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_25E5081E8();

    if (v9)
    {

      sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_25E5081D8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_25E5041D8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_25E504710(v20 + 1);
    }

    v18 = v8;
    sub_25E504938(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
  v11 = sub_25E508178();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_25E504C38(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_25E508188();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_25E5041D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCEBD90, qword_25E50A380);
    v2 = sub_25E508228();
    v15 = v2;
    sub_25E5081C8();
    if (sub_25E5081F8())
    {
      sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_25E504710(v9 + 1);
        }

        v2 = v15;
        result = sub_25E508178();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_25E5081F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25E5043C8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25E508018();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD80, &qword_25E50A370);
  result = sub_25E508218();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
      result = sub_25E508078();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25E504710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCEBD90, qword_25E50A380);
  result = sub_25E508218();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_25E508178();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_30;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25E504938(uint64_t a1, uint64_t a2)
{
  sub_25E508178();
  result = sub_25E5081B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25E5049BC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25E508018();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25E5043C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25E504DA8();
      goto LABEL_12;
    }

    sub_25E505130(v10 + 1);
  }

  v12 = *v3;
  sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
  v13 = sub_25E508078();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25E5076E0(&qword_27FCEBD78, MEMORY[0x277CD4758]);
      v21 = sub_25E508088();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25E508308();
  __break(1u);
  return result;
}

void sub_25E504C38(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25E504710(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25E504FE0();
      goto LABEL_12;
    }

    sub_25E505438(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_25E508178();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_25E508188();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25E508308();
  __break(1u);
}

void *sub_25E504DA8()
{
  v1 = v0;
  v2 = sub_25E508018();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD80, &qword_25E50A370);
  v6 = *v0;
  v7 = sub_25E508208();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_25E504FE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCEBD90, qword_25E50A380);
  v2 = *v0;
  v3 = sub_25E508208();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

uint64_t sub_25E505130(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25E508018();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD80, &qword_25E50A370);
  v7 = sub_25E508218();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
      result = sub_25E508078();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25E505438(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCEBD90, qword_25E50A380);
  result = sub_25E508218();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_25E508178();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25E50564C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_25E4EF980(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_25E505DAC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_25E50643C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25E508288();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_25E5081D8();
  v8 = sub_25E505798(v4, v7);

  v9 = sub_25E4EF980(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_25E505DAC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_25E505798(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD70, &qword_25E50A368);
    v2 = sub_25E5082D8();
    v19 = v2;
    sub_25E508268();
    v3 = sub_25E508298();
    if (v3)
    {
      v4 = v3;
      sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_25E4EEF68(0, &qword_280CEAEF8, 0x277CCABB0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_25E4EF0F8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_25E508178();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_25E508298();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_25E5059E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25E508018();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD60, &qword_25E50A360);
  v39 = v4;
  result = sub_25E5082C8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25E5076E0(&qword_27FCEBD68, MEMORY[0x277CD4750]);
      result = sub_25E508078();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_25E505DAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E5081A8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_25E508178();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_25E505F38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25E508018();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25E503A18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25E5061BC();
      goto LABEL_7;
    }

    sub_25E5059E4(v17, a3 & 1);
    v22 = sub_25E503A18(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25E506104(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25E508318();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25E506104(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25E508018();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_25E5061BC()
{
  v1 = v0;
  v33 = sub_25E508018();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD60, &qword_25E50A360);
  v3 = *v0;
  v4 = sub_25E5082B8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_25E50643C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD70, &qword_25E50A368);
  v2 = *v0;
  v3 = sub_25E5082B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25E50659C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_25E5081C8();
  sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
  sub_25E4EEFF8();
  result = sub_25E508158();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_25E5081F8())
      {
        goto LABEL_30;
      }

      sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_25E5067B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25E5081D8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCEBD90, qword_25E50A380);
      v3 = sub_25E508238();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25E5081D8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F8B55F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25E508178();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25E508188();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_25E508178();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25E508188();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_25E506AA8(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD48, &qword_25E50A320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v31[3] = sub_25E507FE8();
  v31[4] = &off_287038550;
  v31[0] = a2;
  v10 = objc_allocWithZone(MEMORY[0x277D6EED8]);
  _Block_copy(a3);

  v11 = [v10 init];
  LODWORD(a2) = [v11 betterBlockingEnabled];

  if (!a2)
  {
    goto LABEL_27;
  }

  *&v30[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25E5081D8())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v26 = v8;
    v27 = a3;
    v28 = v9;
    v14 = 0;
    a3 = (a1 & 0xC000000000000001);
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x277D84F90] >> 62;
    while (1)
    {
      if (a3)
      {
        v17 = MEMORY[0x25F8B55F0](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(a1 + 8 * v14 + 32);
      }

      v16 = v17;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v17 remoteParticipantHandles];
      if (v19)
      {
        v15 = v19;
        sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
        sub_25E4EEFF8();
        v8 = sub_25E508138();

        v16 = v15;
      }

      else if (v29 && (v20 = MEMORY[0x277D84F90], sub_25E5081D8()))
      {
        sub_25E5067B8(v20);
        v8 = v21;
      }

      else
      {
        v8 = MEMORY[0x277D84FA0];
      }

      sub_25E503690(v8);
      ++v14;
      if (v18 == i)
      {
        v13 = *&v30[0];
        a3 = v27;
        v9 = v28;
        v8 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_19:
  if (v13 >> 62)
  {
    if (sub_25E5081D8())
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    sub_25E4EF70C(MEMORY[0x277D84F90]);
    sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    sub_25E4EEF68(0, &qword_280CEAEF8, 0x277CCABB0);
    sub_25E4EEFF8();
    v24 = sub_25E508058();
    (a3)[2](a3, v24);

    goto LABEL_28;
  }

LABEL_21:
  v22 = sub_25E508128();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_25E506F0C(v31, v30);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  sub_25E506F70(v30, (v23 + 5));
  v23[10] = sub_25E4EFACC;
  v23[11] = v9;

  sub_25E503160(0, 0, v8, &unk_25E50A330, v23);

  sub_25E507664(v8, &qword_27FCEBD48, &qword_25E50A320);
LABEL_28:
  __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_25E506F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E506F70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25E506F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25E50705C;

  return sub_25E5020C8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_25E50705C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25E507150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E5077F0;

  return sub_25E5034A0(a1, v4);
}

uint64_t sub_25E507208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E50705C;

  return sub_25E5034A0(a1, v4);
}

unint64_t sub_25E5072C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD88, &qword_25E50A378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCEBD60, &qword_25E50A360);
    v7 = sub_25E5082E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25E507788(v9, v5, &qword_27FCEBD88, &qword_25E50A378);
      result = sub_25E503A18(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25E508018();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_25E5074A8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25E5081D8())
  {
    v4 = sub_25E4EEF68(0, &qword_280CEAF08, 0x277CF7D30);
    v5 = sub_25E4EEFF8();
    result = MEMORY[0x25F8B54F0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25F8B55F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_25E503FA0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_25E5081D8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E507664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E5076E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25E508018();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_25E507788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t MPContactSearchResult.id.getter()
{
  v1 = [v0 contact];
  v2 = [v1 identifier];

  v3 = sub_25E5080A8();
  return v3;
}

void sub_25E507878(uint64_t *a1@<X8>)
{
  v3 = [*v1 contact];
  v4 = [v3 identifier];

  v5 = sub_25E5080A8();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}
id sub_1AEA19E28()
{
  result = [objc_allocWithZone(APEnablementOracle) init];
  qword_1EDAC2C68 = result;
  return result;
}

uint64_t sub_1AEA19F98(uint64_t *a1, void *a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = [v6 sharedManager];
  v8 = [v7 canChangeLockedStatusOfSubject_];

  if ((v8 & 1) != 0 || (v9 = [v6 sharedManager], v10 = objc_msgSend(v9, sel_canChangeHiddenStatusOfSubject_, a3), v9, v10))
  {
    result = [a3 isLocked];
    if (result)
    {
      v12 = 2;
    }

    else
    {
      result = [a3 isHidden];
      v12 = 1;
      if (result)
      {
        v12 = 2;
      }
    }

    *a1 = v12;
    *a2 = 3;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E698B0C0] code:3 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

id sub_1AEA1A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a5(a3, a4);
  v5 = sub_1AEA32444();

  return v5;
}

uint64_t sub_1AEA1A1A4(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    if (a1 == 1)
    {
      return 0x687361642E707061;
    }

    else
    {
      return 6650213;
    }
  }

  v4 = APGetPreferredAuthenticationMechanism();
  if (v4 > 1)
  {
    if (v4 != 3)
    {
      if (v4 == 2)
      {
        return 0x64696863756F74;
      }

      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      return 0x646965636166;
    }

LABEL_15:
    type metadata accessor for APAuthenticationMechanism(0);
    result = sub_1AEA32694();
    __break(1u);
    return result;
  }

  if (a1 == 2)
  {
    return 0x65706F2E6B636F6CLL;
  }

  else
  {
    return 1801678700;
  }
}

uint64_t APGetPreferredAuthenticationMechanism()
{
  v0 = MobileGestalt_get_current_device();
  if (MobileGestalt_get_pearlIDCapability())
  {
    v1 = 1;
  }

  else
  {
    if (!MobileGestalt_get_touchIDCapability())
    {
      v1 = 3;
      goto LABEL_10;
    }

    v1 = 2;
  }

  if ((isBioAuthUsable() & 1) == 0 && !isBioLockedOut())
  {
    v1 = 3;
  }

LABEL_10:

  return v1;
}

id sub_1AEA1A320()
{
  result = [objc_allocWithZone(APFeatureSemioticsManager) init];
  qword_1EDAC2C58 = result;
  return result;
}

uint64_t isBioAuthUsable()
{
  v0 = [MEMORY[0x1E696EE60] currentUser];
  v1 = [v0 state];

  v2 = [v1 biometry];
  v3 = [v2 isUsable];

  return v3;
}

uint64_t isBioLockedOut()
{
  v0 = [MEMORY[0x1E696EE60] currentUser];
  v1 = [v0 state];

  v2 = [v1 biometry];
  v3 = [v2 isLockedOut];

  return v3;
}

uint64_t sub_1AEA1A47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AEA323A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AEA32434();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (a1 == 2)
  {
    if ((a2 - 1) <= 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 1)
  {
    switch(a2)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1AEA32634();

        v12 = APGetPreferredAuthenticationMechanismLocKey();
        v13 = sub_1AEA32454();
        v15 = v14;

        MEMORY[0x1B270B590](v13, v15);

        v10 = sub_1AEA32444();

        v11 = APUILocStr(v10);
        goto LABEL_12;
      case 1:
LABEL_8:
        v6 = APGetPreferredAuthenticationMechanismLocKey();
        v7 = sub_1AEA32454();
        v9 = v8;

        MEMORY[0x1B270B590](v7, v9);

        v10 = sub_1AEA32444();

        v11 = APUILocStr(v10);
LABEL_12:
        v16 = v11;

        v17 = sub_1AEA32454();
        return v17;
    }
  }

  sub_1AEA32424();
  type metadata accessor for APFeatureSemioticsManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1AEA32394();
  return sub_1AEA32474();
}

id APUILocStr(void *a1)
{
  v1 = a1;
  v2 = APUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F2485CF8 table:@"Localizable"];

  return v3;
}

id APUIFrameworkBundle()
{
  if (APUIFrameworkBundle_onceToken != -1)
  {
    APUIFrameworkBundle_cold_1();
  }

  v1 = APUIFrameworkBundle_result;

  return v1;
}

uint64_t __APUIFrameworkBundle_block_invoke()
{
  APUIFrameworkBundle_result = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1AEA1A998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA1A9B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1AEA1A9EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AA30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA1AA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AAB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEA1AAF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AB60()
{
  MEMORY[0x1B270BF00](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA1AB98()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEA1ABDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AC14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AC64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA1ACB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1ACE8()
{
  MEMORY[0x1B270BF00](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA1AD20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AEA1C250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AEA1C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __enablementControllerQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppProtectionUI.APEnablementController", v2);
  v1 = enablementControllerQueue_result;
  enablementControllerQueue_result = v0;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id APUIDefaultFrameworkLog(uint64_t a1)
{
  if (APUIDefaultFrameworkLog_onceToken != -1)
  {
    APUIDefaultFrameworkLog_cold_1();
  }

  v2 = APUIDefaultFrameworkLog_log;

  return v2;
}

uint64_t __APUIDefaultFrameworkLog_block_invoke()
{
  APUIDefaultFrameworkLog_log = os_log_create("com.apple.appprotection", "frameworkUI");

  return MEMORY[0x1EEE66BB8]();
}

id APEducationIconForEnableableFeature(uint64_t a1)
{
  v1 = @"com.apple.appprotection.lock.education";
  if (a1 == 2)
  {
    v1 = @"com.apple.appprotection.hide.education";
  }

  v2 = MEMORY[0x1E69A8A00];
  v3 = v1;
  v4 = [[v2 alloc] initWithType:v3];

  v5 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  v6 = [v4 imageForDescriptor:v5];
  if ([v6 placeholder])
  {
    v7 = [v4 prepareImageForDescriptor:v5];

    v6 = v7;
  }

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [v6 CGImage];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v11 = [v8 imageWithCGImage:v9 scale:0 orientation:?];

  return v11;
}

uint64_t applicationRequiresEmergencyCallButton(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = [v1 bundleIdentifier];
  v4 = 1;
  v5 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];

  v6 = [v5 entitlements];
  v7 = [v6 objectForKey:@"com.apple.private.appprotection.needs_emergency_dialer" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v9 = [v1 bundleIdentifier];
    v4 = [v9 isEqualToString:@"com.apple.mobilephone"];
  }

  return v4;
}

uint64_t __performTransition_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 != 1;
  [*(*(a1 + 32) + 416) setHidden:v2 == 1];
  v4 = *(*(a1 + 32) + 440);

  return [v4 setHidden:v3];
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id APFrameworkBundle(uint64_t a1)
{
  if (APFrameworkBundle_onceToken != -1)
  {
    APFrameworkBundle_cold_1();
  }

  v2 = APFrameworkBundle_result;

  return v2;
}

uint64_t __APFrameworkBundle_block_invoke()
{
  APFrameworkBundle_result = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

id APGetPreferredAuthenticationMechanismLocalizedDescription()
{
  v0 = APGetPreferredAuthenticationMechanism();

  return APGetAuthenticationMechanismLocalizedDescription(v0);
}

id APGetAuthenticationMechanismLocalizedDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"UNKNOWN";
  }

  else
  {
    v1 = off_1E7A420D0[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F2485CF8 table:@"Localizable"];

  return v3;
}

__CFString *APGetAuthenticationMechanismLocKey(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7A420D0[a1 - 1];
  }
}

id APLocStr(void *a1)
{
  v1 = a1;
  v2 = APFrameworkBundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F2485CF8 table:@"Localizable"];

  return v3;
}

id APGetDescriptionFor(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"NOT A VALID STRING TYPE";
  }

  else
  {
    v1 = off_1E7A420E8[a1];
  }

  v2 = APUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F2485CF8 table:@"Localizable"];

  return v3;
}

id APUIImageIOQueue(uint64_t a1)
{
  if (APUIImageIOQueue_onceToken != -1)
  {
    APUIImageIOQueue_cold_1();
  }

  v2 = APUIImageIOQueue_q;

  return v2;
}

void __APUIImageIOQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppprotectionUI.ImageIO", v2);
  v1 = APUIImageIOQueue_q;
  APUIImageIOQueue_q = v0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AEA22224()
{
  result = sub_1AEA22248();
  byte_1EB5E8800 = result & 1;
  return result;
}

uint64_t sub_1AEA22248()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_1AEA32414();
    if (*(v3 + 16))
    {
      sub_1AEA224F4(0xD000000000000010, 0x80000001AEA35160);
      if (v4)
      {
      }
    }

    v5 = sub_1AEA324A4();

    return v5 > 0;
  }

  return result;
}

uint64_t sub_1AEA22350()
{
  if (qword_1EB5E83C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB5E8800)
  {
    LOBYTE(v0) = 1;
  }

  else
  {
    v1 = MKBGetDeviceLockState();
    v2 = MKBGetDeviceLockState();
    if (v2 >= 4)
    {
      if (qword_1EB5E83C8 != -1)
      {
        swift_once();
      }

      v3 = sub_1AEA323D4();
      __swift_project_value_buffer(v3, qword_1EB5E8808);
      v4 = sub_1AEA323B4();
      v5 = sub_1AEA324F4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&dword_1AEA18000, v4, v5, "unknown return %d from MKBGetDeviceLockState", v6, 8u);
        MEMORY[0x1B270BEC0](v6, -1, -1);
      }

      LOBYTE(v0) = 0;
    }

    else
    {
      v0 = 7u >> (v2 & 0xF);
    }
  }

  return v0 & 1;
}

void *sub_1AEA224AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
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

unint64_t sub_1AEA224F4(uint64_t a1, uint64_t a2)
{
  sub_1AEA326A4();
  sub_1AEA32494();
  v4 = sub_1AEA326B4();

  return sub_1AEA2256C(a1, a2, v4);
}

unint64_t sub_1AEA2256C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1AEA32684())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AEA22638(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA22658(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

void sub_1AEA226C8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1AEA22720()
{
  v0 = sub_1AEA323D4();
  __swift_allocate_value_buffer(v0, qword_1EB5E8808);
  __swift_project_value_buffer(v0, qword_1EB5E8808);
  return sub_1AEA323C4();
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

Swift::Void __swiftcall APEducationVCPresentingViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setView_];
}

void __swiftcall APEducationVCPresentingViewController.init(nibName:bundle:)(APEducationVCPresentingViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_1AEA32444();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id APEducationVCPresentingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1AEA32444();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = APEducationVCPresentingViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id APEducationVCPresentingViewController.init(coder:)(void *a1)
{
  v4.super_class = APEducationVCPresentingViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

unint64_t type metadata accessor for APEducationVCPresentingViewController()
{
  result = qword_1EB5E8400;
  if (!qword_1EB5E8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E8400);
  }

  return result;
}

void sub_1AEA22E04(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AEA32344();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1AEA22E74(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v22 = a3;
  v23 = a1;
  v9 = sub_1AEA323E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1AEA32404();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
  v16 = sub_1AEA32534();
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = a4;
  *(v17 + 32) = v23;
  *(v17 + 40) = a2;
  aBlock[4] = v24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEA24554;
  aBlock[3] = v25;
  v18 = _Block_copy(aBlock);

  v19 = a2;

  sub_1AEA323F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AEA23758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
  sub_1AEA237F8();
  sub_1AEA32614();
  MEMORY[0x1B270B620](0, v15, v12, v18);
  _Block_release(v18);

  (*(v10 + 8))(v12, v9);
  return (*(v13 + 8))(v15, v26);
}

id sub_1AEA233F4(void *a1, uint64_t a2)
{
  result = [a1 delegate];
  if (result)
  {
    [result systemActionDelegate:a1 requestsDismissalOfEducationController:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id APEducationViewControllerSystemActionDelegate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = APEducationViewControllerSystemActionDelegate;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AEA236DC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1AEA23758()
{
  result = qword_1EDAC2C90;
  if (!qword_1EDAC2C90)
  {
    sub_1AEA323E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC2C90);
  }

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

unint64_t sub_1AEA237F8()
{
  result = qword_1EDAC2C80;
  if (!qword_1EDAC2C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB5E8640, &qword_1AEA34028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC2C80);
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

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void static APSymbolBadgedAppIconView.metricsForEducation()(uint64_t a1@<X8>)
{
  CGPointMake();
  *a1 = xmmword_1AEA34040;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0x4010000000000000;
}

void static APSymbolBadgedAppIconView.metricsForExtensionShield()(uint64_t a1@<X8>)
{
  CGPointMake();
  *a1 = xmmword_1AEA34050;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0x4010000000000000;
}

char *sub_1AEA23AE8(void *a1, void *a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  CGPointMake();
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v13 = OBJC_IVAR___APSymbolBadgedAppIconView_appIconImageView;
  *&v3[OBJC_IVAR___APSymbolBadgedAppIconView_appIconImageView] = v12;
  [v12 frame];
  CGRectGetMaxX(v38);
  [*&v3[v13] frame];
  CGRectGetMaxY(v39);
  CGPointMake();
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *&v3[OBJC_IVAR___APSymbolBadgedAppIconView_badgeImageView] = v18;
  v19 = &v3[OBJC_IVAR___APSymbolBadgedAppIconView_metrics];
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 1) = v20;
  *(v19 + 4) = *(a3 + 32);
  v21 = *MEMORY[0x1E695F058];
  *&v20 = *(MEMORY[0x1E695F058] + 8);
  v22 = *(MEMORY[0x1E695F058] + 16);
  v23 = *(MEMORY[0x1E695F058] + 24);
  v37.receiver = v3;
  v37.super_class = APSymbolBadgedAppIconView;
  v24 = objc_msgSendSuper2(&v37, sel_initWithFrame_, v21, *&v20, v22, v23);
  v25 = OBJC_IVAR___APSymbolBadgedAppIconView_appIconImageView;
  v26 = *&v24[OBJC_IVAR___APSymbolBadgedAppIconView_appIconImageView];
  v27 = v24;
  [v26 setImage_];
  v28 = OBJC_IVAR___APSymbolBadgedAppIconView_badgeImageView;
  [*&v27[OBJC_IVAR___APSymbolBadgedAppIconView_badgeImageView] setImage_];
  [*&v27[v28] setContentMode_];
  [*&v24[v25] setContentMode_];
  v29 = [v27 layer];
  [v29 setShadowRadius_];

  v30 = [v27 layer];
  LODWORD(v31) = 1041865114;
  [v30 setShadowOpacity_];

  v32 = [v27 layer];
  v33 = [objc_opt_self() blackColor];
  v34 = [v33 CGColor];

  [v32 setShadowColor_];
  v35 = [v27 layer];

  [v35 setShadowOffset_];
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

void sub_1AEA23E34(void *a1, void *a2, __int128 *a3)
{
  v7 = *a3;
  v41 = a3[1];
  v42 = v7;
  v8 = *(a3 + 4);
  v38 = sub_1AEA323E4();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1AEA32404();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 bundleIdentifier];
  if (!v12)
  {
    sub_1AEA32454();
    v12 = sub_1AEA32444();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69A8A00]) initWithBundleIdentifier_];

  v14 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v14 setSize_];
  v15 = [v13 imageForDescriptor_];

  if (!v15)
  {
    v23 = objc_opt_self();
    v24 = sub_1AEA32444();
    v22 = [v23 __systemImageNamedSwift_];

    if (v22)
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v16 CGImage];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [objc_opt_self() mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v18 scale:0 orientation:v21];
LABEL_7:
  v45 = v41;
  aBlock = v42;
  v46 = v8;
  v25 = [v3 initWithApplicationIconImage:v22 badgeImage:a2 metrics:&aBlock];
  if (v15)
  {
    v26 = [v15 placeholder];
    if (v26)
    {
      *&v42 = APUIImageIOQueue(v26);
      v27 = swift_allocObject();
      v28 = a3[1];
      *(v27 + 24) = *a3;
      *(v27 + 16) = v13;
      *(v27 + 40) = v28;
      *(v27 + 56) = *(a3 + 4);
      *(v27 + 64) = v25;
      v46 = sub_1AEA25E68;
      v47 = v27;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v45 = sub_1AEA24554;
      *(&v45 + 1) = &block_descriptor_31;
      v29 = _Block_copy(&aBlock);
      *&v41 = v13;
      v30 = v25;
      v31 = v11;
      sub_1AEA323F4();
      v43 = MEMORY[0x1E69E7CC0];
      sub_1AEA23758();
      v35 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
      sub_1AEA237F8();
      v32 = v36;
      v33 = v38;
      sub_1AEA32614();
      v34 = v42;
      MEMORY[0x1B270B620](0, v31, v32, v29);

      _Block_release(v29);
      (*(v40 + 8))(v32, v33);
      (*(v37 + 8))(v31, v39);

      return;
    }
  }
}

void sub_1AEA2434C(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v5 setSize_];
  v6 = [a1 prepareImageForDescriptor_];

  if (v6)
  {
    sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
    v7 = sub_1AEA32534();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1AEA25E78;
    *(v9 + 24) = v8;
    v14[4] = sub_1AEA26438;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1AEA28370;
    v14[3] = &block_descriptor_41;
    v10 = _Block_copy(v14);
    v11 = v6;
    v12 = a3;

    dispatch_sync(v7, v10);

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AEA24554(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AEA245B0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void *, void *, _OWORD *))
{
  v6 = *(a5 + 32);
  v7 = *(a5 + 16);
  v9[0] = *a5;
  v9[1] = v7;
  v10 = v6;
  return a6(a3, a4, v9);
}

void sub_1AEA2461C(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v46 = a4[1];
  v47 = v7;
  v8 = *(a4 + 4);
  v9 = sub_1AEA323E4();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AEA32404();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v15 = sub_1AEA32444();
  v16 = [v14 initWithType_];

  v17 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v17 setSize_];
  v18 = [v16 imageForDescriptor_];

  if (!v18)
  {
    v26 = objc_opt_self();
    v27 = sub_1AEA32444();
    v25 = [v26 __systemImageNamedSwift_];

    if (v25)
    {

      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v19 CGImage];
  if (!v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v21 scale:0 orientation:v24];

LABEL_6:
  v50 = v46;
  aBlock = v47;
  v51 = v8;
  v28 = [v4 initWithApplicationIconImage:a1 badgeImage:v25 metrics:&aBlock];
  if (v18)
  {
    v29 = [v18 placeholder];
    if (v29)
    {
      *&v47 = APUIImageIOQueue(v29);
      v30 = swift_allocObject();
      v31 = a4[1];
      *(v30 + 24) = *a4;
      *(v30 + 16) = v16;
      *(v30 + 40) = v31;
      *(v30 + 56) = *(a4 + 4);
      *(v30 + 64) = v28;
      v51 = sub_1AEA25E34;
      v52 = v30;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v50 = sub_1AEA24554;
      *(&v50 + 1) = &block_descriptor_15;
      v32 = _Block_copy(&aBlock);
      v33 = v16;
      *&v46 = a1;
      v34 = v33;
      v35 = v28;
      v36 = v13;
      sub_1AEA323F4();
      v48 = MEMORY[0x1E69E7CC0];
      sub_1AEA23758();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
      sub_1AEA237F8();
      v37 = v41;
      v38 = v45;
      sub_1AEA32614();
      v39 = v47;
      MEMORY[0x1B270B620](0, v36, v37, v32);

      _Block_release(v32);
      (*(v44 + 8))(v37, v38);
      (*(v42 + 8))(v36, v43);

      return;
    }
  }
}

void sub_1AEA24B14(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v5 setSize_];
  v6 = [a1 prepareImageForDescriptor_];

  if (v6)
  {
    sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
    v7 = sub_1AEA32534();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1AEA25E44;
    *(v9 + 24) = v8;
    v14[4] = sub_1AEA26438;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1AEA28370;
    v14[3] = &block_descriptor_25;
    v10 = _Block_copy(v14);
    v11 = v6;
    v12 = a3;

    dispatch_sync(v7, v10);

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1AEA24D34(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v45 = a4[1];
  v47 = v7;
  v8 = *(a4 + 4);
  v9 = sub_1AEA323E4();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AEA32404();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v14 = [a1 bundleIdentifier];
  if (!v14)
  {
    sub_1AEA32454();
    v14 = sub_1AEA32444();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69A8A00]) initWithBundleIdentifier_];

  v16 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v16 setSize_];
  v17 = [v15 imageForDescriptor_];

  if (!v17)
  {
    v25 = objc_opt_self();
    v26 = sub_1AEA32444();
    v24 = [v25 __systemImageNamedSwift_];

    if (v24)
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v18 CGImage];
  if (!v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [objc_opt_self() mainScreen];
  [v21 scale];
  v23 = v22;

  v24 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v20 scale:0 orientation:v23];
LABEL_7:
  v27 = sub_1AEA32444();

  v50 = v45;
  aBlock = v47;
  v51 = v8;
  v28 = [v4 initWithApplicationIconImage:v24 symbolType:v27 metrics:&aBlock];

  if (v17)
  {
    v29 = [v17 placeholder];
    if (v29)
    {
      *&v47 = APUIImageIOQueue(v29);
      v30 = swift_allocObject();
      v31 = a4[1];
      *(v30 + 24) = *a4;
      *(v30 + 16) = v15;
      *(v30 + 40) = v31;
      *(v30 + 56) = *(a4 + 4);
      *(v30 + 64) = v28;
      v51 = sub_1AEA25E04;
      v52 = v30;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v50 = sub_1AEA24554;
      *(&v50 + 1) = &block_descriptor_0;
      v32 = _Block_copy(&aBlock);
      v33 = v15;
      v34 = v28;
      v35 = v13;
      sub_1AEA323F4();
      v48 = MEMORY[0x1E69E7CC0];
      sub_1AEA23758();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
      sub_1AEA237F8();
      v36 = v40;
      v37 = v44;
      sub_1AEA32614();
      v38 = v47;
      MEMORY[0x1B270B620](0, v35, v36, v32);

      _Block_release(v32);
      (*(v43 + 8))(v36, v37);
      (*(v41 + 8))(v35, v42);

      return;
    }
  }
}

void sub_1AEA25260(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() imageDescriptorNamed_];
  CGPointMake();
  [v5 setSize_];
  v6 = [a1 prepareImageForDescriptor_];

  if (v6)
  {
    sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
    v7 = sub_1AEA32534();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1AEA2643C;
    *(v9 + 24) = v8;
    v14[4] = sub_1AEA25E2C;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1AEA28370;
    v14[3] = &block_descriptor_9;
    v10 = _Block_copy(v14);
    v11 = v6;
    v12 = a3;

    dispatch_sync(v7, v10);

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1AEA25468(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + *a3);
  v4 = [a1 CGImage];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v5 scale:0 orientation:v8];
    [v3 setImage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AEA25568(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, _OWORD *))
{
  v8 = *(a5 + 32);
  v9 = *(a5 + 16);
  v13[0] = *a5;
  v13[1] = v9;
  v14 = v8;
  v10 = sub_1AEA32454();
  return a6(a3, v10, v11, v13);
}

CGSize __swiftcall APSymbolBadgedAppIconView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v3 = v1 + OBJC_IVAR___APSymbolBadgedAppIconView_metrics;
  v4 = *(v1 + OBJC_IVAR___APSymbolBadgedAppIconView_metrics);
  v5 = *(v1 + OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 8);
  v6 = (width - v4) * 0.5;
  v7 = *(v1 + OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 16) + v4 + v6 - v5;
  rect.origin.x = v7;
  v8 = v4 + 0.0 - v5 + *(v1 + OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 24);
  CGPointMake();
  v10 = v9;
  v12 = v11;
  CGPointMake();
  v14 = v13;
  v16 = v15;
  v17 = *(v3 + 32);
  v40.origin.x = v7;
  v40.origin.y = v8;
  v40.size.width = v14;
  v40.size.height = v16;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.y = 0.0;
  v41.origin.x = v6;
  v41.size.width = v10;
  v41.size.height = v12;
  v19 = v17 + MaxX - CGRectGetMaxX(v41);
  v42.origin.x = rect.origin.x;
  v42.origin.y = v8;
  v42.size.width = v14;
  v42.size.height = v16;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.y = 0.0;
  v43.origin.x = v6;
  v43.size.width = v10;
  v43.size.height = v12;
  v21 = v17 + MaxY - CGRectGetMaxY(v43);
  if (v17 > v19)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 + v22;
  if (qword_1EB5E83C8 != -1)
  {
    swift_once();
  }

  v24 = v12 + v21;
  v25 = sub_1AEA323D4();
  __swift_project_value_buffer(v25, qword_1EB5E8808);
  v26 = sub_1AEA323B4();
  v27 = sub_1AEA32504();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&rect.size.height = v29;
    *v28 = 136315394;
    type metadata accessor for CGSize(0);
    v30 = sub_1AEA32484();
    v32 = sub_1AEA25D24(v30, v31, &rect.size.height);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = sub_1AEA32484();
    v35 = sub_1AEA25D24(v33, v34, &rect.size.height);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_1AEA18000, v26, v27, "size that fits %s is %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B270BEC0](v29, -1, -1);
    MEMORY[0x1B270BEC0](v28, -1, -1);
  }

  v36 = v10 + v23;
  v37 = v24;
  result.height = v37;
  result.width = v36;
  return result;
}

Swift::Void __swiftcall APSymbolBadgedAppIconView.layoutSubviews()()
{
  v22.super_class = APSymbolBadgedAppIconView;
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  [v0 bounds];
  v1 = &v0[OBJC_IVAR___APSymbolBadgedAppIconView_metrics];
  v2 = *&v0[OBJC_IVAR___APSymbolBadgedAppIconView_metrics];
  v3 = *&v0[OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 8];
  v5 = (v4 - v2) * 0.5;
  v6 = *&v0[OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 16] + v2 + v5 - v3;
  v7 = v2 + 0.0 - v3 + *&v0[OBJC_IVAR___APSymbolBadgedAppIconView_metrics + 24];
  CGPointMake();
  v9 = v8;
  v11 = v10;
  CGPointMake();
  v13 = v12;
  v15 = v14;
  v16 = v1[4];
  v17 = *&v0[OBJC_IVAR___APSymbolBadgedAppIconView_appIconImageView];
  [v17 setFrame_];
  [*&v0[OBJC_IVAR___APSymbolBadgedAppIconView_badgeImageView] setFrame_];
  v18 = [v17 layer];
  [v18 shadowRadius];
  v20 = v19;

  if (v20 != v16)
  {
    v21 = [v17 layer];
    [v21 setShadowRadius_];
  }
}

void __swiftcall APSymbolBadgedAppIconView.init(frame:)(APSymbolBadgedAppIconView *__return_ptr retstr, CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

unint64_t sub_1AEA25D24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AEA25E9C(v11, 0, 0, 1, a1, a2);
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
    sub_1AEA25FF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AEA25E9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1AEA26050(a5, a6);
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
    result = sub_1AEA32654();
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

uint64_t sub_1AEA25FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1AEA26050(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AEA2609C(a1, a2);
  sub_1AEA261CC(&unk_1F2484678);
  return v3;
}

void *sub_1AEA2609C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1AEA262B8(v5, 0);
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

  result = sub_1AEA32654();
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
        v10 = sub_1AEA324C4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AEA262B8(v10, 0);
        result = sub_1AEA32624();
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

uint64_t sub_1AEA261CC(uint64_t result)
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

  result = sub_1AEA2632C(result, v11, 1, v3);
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

void *sub_1AEA262B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8510, qword_1AEA34068);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1AEA2632C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8510, qword_1AEA34068);
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

void sub_1AEA265F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_button) setEnabled_];
    v4 = &v3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AEA26710(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for APHiddenAppConfirmationViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant];
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = [v5 scrollView];
      [v6 performAdjustmentsForScrollView_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1AEA26824()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for APHiddenAppConfirmationViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = [v3 scrollView];
      [v4 performAdjustmentsForScrollView_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1AEA2693C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AEA26A9C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController) = 0;
  *(v1 + OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_navController) = 0;
  v2 = OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_button;
  v3 = sub_1AEA32444();
  v4 = APUILocStr(v3);

  v5 = sub_1AEA32454();
  v7 = v6;

  v8 = sub_1AEA27EDC(v5, v7);

  *(v1 + v2) = v8;
  *(v1 + OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1AEA32664();
  __break(1u);
}

void sub_1AEA26BAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1AEA26C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v5, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1AEA26E90(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for APLockedAppDisclosureViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AEA26F54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_scrollViewAssistant;
  *(v1 + v2) = [objc_allocWithZone(APButtonTrayScrollViewAssistant) init];
  v3 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_button;
  v4 = sub_1AEA32444();
  v5 = APUILocStr(v4);

  v6 = sub_1AEA32454();
  v8 = v7;

  v9 = sub_1AEA27EDC(v6, v8);

  *(v1 + v3) = v9;
  *(v1 + OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1AEA32664();
  __break(1u);
}

APFeatureSemioticsManager __swiftcall APFeatureSemioticsManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for APFeatureSemioticsManager()
{
  result = qword_1EB5E85E0;
  if (!qword_1EB5E85E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E85E0);
  }

  return result;
}

id sub_1AEA2735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant] = 0;
  v11 = sub_1AEA32444();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_1AEA32444();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1AEA32444();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for APOnBoardingWelcomeController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

char *sub_1AEA27648(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v10 = OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_background;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v4[v10] = v12;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setInsetsLayoutMarginsFromSafeArea_];
  [v13 setLayoutMarginsFollowReadableWidth_];
  [v13 setLayoutMargins_];
  [v13 addSubview_];
  v14 = OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack;
  [v13 addSubview_];
  [*&v13[v14] setAxis_];
  [*&v13[v14] setAlignment_];
  [*&v13[v14] setDistribution_];

  return v13;
}

id sub_1AEA27C88(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for APWelcomeControllerWithBraveButtonTrayView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    [v3 setFrame_];
    [v3 layoutIfNeeded];
  }

  v4 = *&v1[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray];
  [v1 bounds];
  CGRectGetWidth(v11);
  CGPointMake();
  [v4 systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_];
  v6 = v5;
  [v1 bounds];
  v8 = v7 - v6;
  [v1 bounds];
  return [v4 setFrame_];
}

id sub_1AEA27E08(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AEA27EDC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_1AEA325C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AEA32594();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AEA325F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1AEA325E4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC508], v6);
  sub_1AEA325A4();
  v17 = [objc_opt_self() whiteColor];
  sub_1AEA325B4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC558], v2);
  sub_1AEA32584();

  sub_1AEA325D4();
  sub_1AEA28284();
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_1AEA32604();
  (*(v11 + 8))(v16, v10);
  return v18;
}

void sub_1AEA281A4()
{
  v1 = OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v2 = OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_background;
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v2) = v4;
  sub_1AEA32664();
  __break(1u);
}

unint64_t sub_1AEA28284()
{
  result = qword_1EB5E8618;
  if (!qword_1EB5E8618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E8618);
  }

  return result;
}

void sub_1AEA282D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1AEA28398(void *a1, uint64_t a2, double a3)
{
  v6 = [a1 localizedName];
  v7 = sub_1AEA32454();
  v9 = v8;

  v10 = sub_1AEA32444();
  v11 = APUILocStr(v10);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AEA34210;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1AEA2ABFC();
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  sub_1AEA32464();

  sub_1AEA32634();

  *&v70 = 0xD000000000000017;
  *(&v70 + 1) = 0x80000001AEA36180;
  v13 = APGetPreferredAuthenticationMechanismLocKey();
  v14 = sub_1AEA32454();
  v16 = v15;

  MEMORY[0x1B270B590](v14, v16);

  v17 = sub_1AEA32444();

  v18 = APUILocStr(v17);

  if (!v18)
  {
    sub_1AEA32454();
    v18 = sub_1AEA32444();
  }

  v19 = objc_allocWithZone(type metadata accessor for APOnBoardingWelcomeController());
  v20 = sub_1AEA32444();
  v21 = [v19 initWithTitle:v20 detailText:v18 icon:0 contentLayout:2];

  v22 = type metadata accessor for CustomScrollViewAssistant();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC15AppProtectionUI25CustomScrollViewAssistant_extraTopInset] = a3;
  v73.receiver = v23;
  v73.super_class = v22;
  v24 = objc_msgSendSuper2(&v73, sel_initWithDelegate_, a2);
  v25 = *&v21[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant];
  *&v21[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant] = v24;

  v26 = v21;
  [v26 setModalPresentationStyle_];
  v27 = [a1 application];
  [objc_opt_self() metricsForEducation];
  v28 = v72;
  v68 = v71;
  v69 = v70;
  v29 = objc_allocWithZone(APSymbolBadgedAppIconView);
  v30 = sub_1AEA32444();
  v70 = v69;
  v71 = v68;
  v72 = v28;
  v31 = [v29 initWithApplication:v27 symbolType:v30 metrics:&v70];

  v32 = v31;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = v26;
  v34 = [v33 headerView];
  v35 = [v34 customIconContainerView];

  [v35 addSubview_];
  v36 = [v33 headerView];
  v37 = [v36 customIconContainerView];

  [v37 setClipsToBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E86F8, &qword_1AEA34330);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1AEA34220;
  v39 = [v32 centerXAnchor];
  v40 = [v33 headerView];
  v41 = [v40 customIconContainerView];

  if (!v41)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = [v41 centerXAnchor];

  v43 = [v39 constraintEqualToAnchor_];
  *(v38 + 32) = v43;
  v44 = [v32 centerYAnchor];
  v45 = [v33 headerView];

  v46 = [v45 customIconContainerView];
  if (!v46)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v47 = objc_opt_self();
  v48 = [v46 centerYAnchor];

  v49 = [v44 constraintEqualToAnchor_];
  *(v38 + 40) = v49;
  v50 = [v32 heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v38 + 48) = v51;
  v52 = [v32 widthAnchor];

  v53 = [v52 constraintEqualToConstant_];
  *(v38 + 56) = v53;
  sub_1AEA236DC(0, &qword_1EB5E8728, 0x1E696ACD8);
  v54 = sub_1AEA324D4();

  [v47 activateConstraints_];

  v55 = sub_1AEA32444();
  v56 = APUILocStr(v55);

  if (!v56)
  {
    sub_1AEA32454();
    v56 = sub_1AEA32444();
  }

  v57 = sub_1AEA32444();
  v58 = APUILocStr(v57);

  if (!v58)
  {
    sub_1AEA32454();
    v58 = sub_1AEA32444();
  }

  v59 = sub_1AEA32444();
  [v33 addBulletedListItemWithTitle:v56 description:v58 symbolName:v59];

  v60 = sub_1AEA32444();
  v61 = APUILocStr(v60);

  if (!v61)
  {
    sub_1AEA32454();
    v61 = sub_1AEA32444();
  }

  v62 = sub_1AEA32444();
  v63 = APUILocStr(v62);

  if (!v63)
  {
    sub_1AEA32454();
    v63 = sub_1AEA32444();
  }

  v64 = sub_1AEA32444();
  [v33 addBulletedListItemWithTitle:v61 description:v63 symbolName:v64];

  v65 = [v33 navigationItem];
  sub_1AEA236DC(0, &unk_1EB5E8730, 0x1E69DC708);
  sub_1AEA236DC(0, &qword_1EB5E8720, 0x1E69DC628);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1AEA32574();
  v67 = sub_1AEA32514();
  [v65 setRightBarButtonItem_];
}

void sub_1AEA28CCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v3, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1AEA28D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (sub_1AEA22350())
  {
    v68 = a4;
    sub_1AEA32634();

    v7 = APGetPreferredAuthenticationMechanismLocKey();
    v8 = sub_1AEA32454();
    v10 = v9;

    MEMORY[0x1B270B590](v8, v10);

    MEMORY[0x1B270B590](1414350431, 0xE400000000000000);
    v11 = sub_1AEA32444();

    v12 = APUILocStr(v11);

    sub_1AEA32454();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AEA34210;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1AEA2ABFC();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    sub_1AEA32464();

    sub_1AEA32634();

    aBlock = 0xD000000000000021;
    v70 = 0x80000001AEA35FE0;
    v14 = APGetPreferredAuthenticationMechanismLocKey();
    v15 = sub_1AEA32454();
    v17 = v16;

    MEMORY[0x1B270B590](v15, v17);

    v18 = sub_1AEA32444();

    v19 = APUILocStr(v18);

    if (!v19)
    {
      sub_1AEA32454();
      v19 = sub_1AEA32444();
    }

    v20 = sub_1AEA32444();

    v21 = [objc_opt_self() alertControllerWithTitle:v20 message:v19 preferredStyle:1];

    [v21 setSeverity_];
    v67 = objc_opt_self();
    v22 = [v67 sharedManager];
    v23 = [v22 titleForEnablementAction:1 ofFeature:1];

    if (!v23)
    {
      sub_1AEA32454();
      v23 = sub_1AEA32444();
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = sub_1AEA31234;
    v74 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1AEA29BFC;
    v72 = &block_descriptor_96;
    v25 = _Block_copy(&aBlock);

    v26 = objc_opt_self();
    v27 = [v26 actionWithTitle:v23 style:0 handler:v25];
    _Block_release(v25);

    v28 = sub_1AEA32444();
    v29 = APUILocStr(v28);

    if (!v29)
    {
      sub_1AEA32454();
      v29 = sub_1AEA32444();
    }

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = sub_1AEA317A8;
    v74 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1AEA29BFC;
    v72 = &block_descriptor_100;
    v31 = _Block_copy(&aBlock);

    v32 = [v26 actionWithTitle:v29 style:1 handler:v31];
    _Block_release(v31);

    if (v68)
    {
      v33 = [v67 sharedManager];
      v34 = [v33 titleForEnablementAction:1 ofFeature:2];

      if (!v34)
      {
        sub_1AEA32454();
        v34 = sub_1AEA32444();
      }

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = sub_1AEA31264;
      v74 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_1AEA29BFC;
      v72 = &block_descriptor_104;
      v36 = _Block_copy(&aBlock);

      v37 = [v26 &selRef:v34 setLayoutMarginsFollowReadableWidth:{0, v36} + 1];
      _Block_release(v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E86F8, &qword_1AEA34330);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1AEA34240;
      *(v38 + 32) = v27;
      *(v38 + 40) = v37;
      v39 = (v38 + 48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E86F8, &qword_1AEA34330);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1AEA34230;
      *(v38 + 32) = v27;
      v39 = (v38 + 40);
    }

    *v39 = v32;
    v58 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      v59 = v27;
      v60 = v32;
      for (i = 0; i != v58; ++i)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1B270B720](i, v38);
        }

        else
        {
          v62 = *(v38 + 8 * i + 32);
        }

        v63 = v62;
        [v21 addAction_];
      }
    }

    else
    {
      v64 = v27;
      v65 = v32;
    }

    [v21 setPreferredAction_];
  }

  else
  {
    v40 = sub_1AEA32444();
    v41 = APUILocStr(v40);

    sub_1AEA32454();
    sub_1AEA32464();

    sub_1AEA32634();

    aBlock = 0xD00000000000001ALL;
    v70 = 0x80000001AEA35F80;
    v42 = APGetPreferredAuthenticationMechanismLocKey();
    v43 = sub_1AEA32454();
    v45 = v44;

    MEMORY[0x1B270B590](v43, v45);

    v46 = sub_1AEA32444();

    v47 = APUILocStr(v46);

    if (!v47)
    {
      sub_1AEA32454();
      v47 = sub_1AEA32444();
    }

    v48 = sub_1AEA32444();

    v21 = [objc_opt_self() alertControllerWithTitle:v48 message:v47 preferredStyle:1];

    [v21 setSeverity_];
    v49 = sub_1AEA32444();
    v50 = APUILocStr(v49);

    if (!v50)
    {
      sub_1AEA32454();
      v50 = sub_1AEA32444();
    }

    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = sub_1AEA3122C;
    v74 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1AEA29BFC;
    v72 = &block_descriptor_88;
    v52 = _Block_copy(&aBlock);

    v53 = objc_opt_self();
    v27 = [v53 actionWithTitle:v50 style:0 handler:v52];
    _Block_release(v52);

    [v21 addAction_];
    v54 = sub_1AEA32444();
    v55 = APUILocStr(v54);

    if (!v55)
    {
      sub_1AEA32454();
      v55 = sub_1AEA32444();
    }

    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = sub_1AEA317A8;
    v74 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1AEA29BFC;
    v72 = &block_descriptor_92;
    v57 = _Block_copy(&aBlock);

    v32 = [v53 actionWithTitle:v55 style:1 handler:v57];
    _Block_release(v57);

    [v21 addAction_];
  }

  return v21;
}

void sub_1AEA298D8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v5 setSensitive_];
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    sub_1AEA32374();
    v8 = sub_1AEA32384();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v4, 1, v8) != 1)
    {
      v10 = sub_1AEA32364();
      (*(v9 + 8))(v4, v8);
    }

    v11 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v13 = v5;

    aBlock[4] = sub_1AEA31294;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEA29B50;
    aBlock[3] = &block_descriptor_108;
    v14 = _Block_copy(aBlock);

    [v7 openURL:v10 configuration:v13 completionHandler:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AEA29B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AEA32414();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1AEA29BFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1AEA29C64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_1AEA29CC0(uint64_t a1)
{
  sub_1AEA32634();

  v16 = 0xD000000000000025;
  v17 = 0x80000001AEA359A0;
  v1 = APGetPreferredAuthenticationMechanismLocKey();
  v2 = sub_1AEA32454();
  v4 = v3;

  MEMORY[0x1B270B590](v2, v4);

  v5 = sub_1AEA32444();

  v6 = APUILocStr(v5);

  if (!v6)
  {
    sub_1AEA32454();
    v6 = sub_1AEA32444();
  }

  v7 = sub_1AEA32444();
  v8 = APUILocStr(v7);

  if (!v8)
  {
    sub_1AEA32454();
    v8 = sub_1AEA32444();
  }

  v9 = [objc_opt_self() alertControllerWithTitle:v8 message:v6 preferredStyle:{1, v16, v17}];

  v10 = sub_1AEA32444();
  v11 = APUILocStr(v10);

  if (!v11)
  {
    sub_1AEA32454();
    v11 = sub_1AEA32444();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1AEA317A8;
  v21 = v12;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1AEA29BFC;
  v19 = &block_descriptor_203;
  v13 = _Block_copy(&v16);

  v14 = [objc_opt_self() actionWithTitle:v11 style:0 handler:v13];
  _Block_release(v13);

  [v9 addAction_];
  return v9;
}

id makeAuthenticationFailedAlertController<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AEA32634();

  v5 = APGetPreferredAuthenticationMechanismLocKey();
  v6 = sub_1AEA32454();
  v8 = v7;

  MEMORY[0x1B270B590](v6, v8);

  v9 = sub_1AEA32444();

  v10 = APUILocStr(v9);

  sub_1AEA32454();
  v11 = sub_1AEA32444();
  v12 = APUILocStr(v11);

  sub_1AEA32454();
  v13 = sub_1AEA32444();

  v14 = sub_1AEA32444();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:{1, 0xD000000000000025, 0x80000001AEA359A0}];

  v16 = sub_1AEA32444();
  v17 = APUILocStr(v16);

  sub_1AEA32454();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v18;

  v20 = sub_1AEA32444();

  v24[4] = sub_1AEA316F8;
  v24[5] = v19;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1AEA29BFC;
  v24[3] = &block_descriptor_1;
  v21 = _Block_copy(v24);

  v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v15 addAction_];
  return v15;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1AEA2A2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AEA32444();
  v10 = APUILocStr(v9);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AEA34210;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1AEA2ABFC();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  sub_1AEA32464();

  v12 = sub_1AEA32444();
  v13 = APUILocStr(v12);

  if (!v13)
  {
    sub_1AEA32454();
    v13 = sub_1AEA32444();
  }

  v14 = sub_1AEA32444();

  v15 = [objc_opt_self() alertControllerWithTitle:v14 message:v13 preferredStyle:1];

  v16 = sub_1AEA32444();
  v17 = APUILocStr(v16);

  if (!v17)
  {
    sub_1AEA32454();
    v17 = sub_1AEA32444();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v18;
  v33 = sub_1AEA31414;
  v34 = v19;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1AEA29BFC;
  v32 = &block_descriptor_159;
  v20 = _Block_copy(&v29);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v17 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction_];
  v23 = sub_1AEA32444();
  v24 = APUILocStr(v23);

  if (!v24)
  {
    sub_1AEA32454();
    v24 = sub_1AEA32444();
  }

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_1AEA317A8;
  v34 = v25;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1AEA29BFC;
  v32 = &block_descriptor_163;
  v26 = _Block_copy(&v29);

  v27 = [v21 actionWithTitle:v24 style:0 handler:v26];
  _Block_release(v26);

  [v15 addAction_];
  return v15;
}

id makeCriticalAlertsAlertController<A>(localizedAppName:bundleID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1AEA32444();
  v13 = APUILocStr(v12);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AEA34210;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1AEA2ABFC();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  sub_1AEA32464();

  v15 = sub_1AEA32444();
  v16 = APUILocStr(v15);

  sub_1AEA32454();
  v17 = sub_1AEA32444();

  v18 = sub_1AEA32444();

  v36 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v19 = sub_1AEA32444();
  v20 = APUILocStr(v19);

  sub_1AEA32454();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = v21;

  v23 = sub_1AEA32444();

  v42 = sub_1AEA2B1F8;
  v43 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1AEA29BFC;
  v41 = &block_descriptor_10;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  [v36 addAction_];
  v27 = sub_1AEA32444();
  v28 = APUILocStr(v27);

  sub_1AEA32454();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = a7;
  v30[4] = v29;

  v31 = sub_1AEA32444();

  v42 = sub_1AEA316F8;
  v43 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1AEA29BFC;
  v41 = &block_descriptor_17_0;
  v32 = _Block_copy(&aBlock);

  v33 = [v25 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  [v36 addAction_];
  return v36;
}

unint64_t sub_1AEA2ABFC()
{
  result = qword_1EB5E8628;
  if (!qword_1EB5E8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8628);
  }

  return result;
}

void sub_1AEA2AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v9 setSensitive_];
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_1AEA32634();

    aBlock = 0xD00000000000001ELL;
    v21 = 0x80000001AEA36130;
    MEMORY[0x1B270B590](a2, a3);
    sub_1AEA32374();

    v12 = sub_1AEA32384();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      v14 = sub_1AEA32364();
      (*(v13 + 8))(v8, v12);
    }

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v17 = v9;

    v24 = sub_1AEA31420;
    v25 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1AEA29B50;
    v23 = &block_descriptor_167;
    v18 = _Block_copy(&aBlock);

    [v11 openURL:v14 configuration:v17 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AEA2AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v13 setSensitive_];
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    aBlock = 0;
    v25 = 0xE000000000000000;
    sub_1AEA32634();

    aBlock = 0xD00000000000001ELL;
    v25 = 0x80000001AEA36130;
    MEMORY[0x1B270B590](a2, a3);
    sub_1AEA32374();

    v16 = sub_1AEA32384();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      v18 = sub_1AEA32364();
      (*(v17 + 8))(v12, v16);
    }

    v19 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v20 = v13;
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = v19;
    v28 = sub_1AEA315F4;
    v29 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1AEA29B50;
    v27 = &block_descriptor_264;
    v22 = _Block_copy(&aBlock);

    [v15 openURL:v18 configuration:v20 completionHandler:v22];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AEA2B210(uint64_t a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v11 = sub_1AEA323E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1AEA32404();
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38 = a4;
    v39 = a5;
    if (qword_1EB5E83C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1AEA323D4();
    __swift_project_value_buffer(v18, qword_1EB5E8808);
    v19 = a2;
    v20 = sub_1AEA323B4();
    v21 = sub_1AEA324F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a7;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = v12;
      v25 = v24;
      *v23 = 138412290;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1AEA18000, v20, v21, v38, v23, 0xCu);
      sub_1AEA312DC(v25);
      v28 = v25;
      v12 = v37;
      MEMORY[0x1B270BEC0](v28, -1, -1);
      v29 = v23;
      a7 = v36;
      MEMORY[0x1B270BEC0](v29, -1, -1);
    }
  }

  sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
  v30 = sub_1AEA32534();
  v31 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = v40;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEA24554;
  aBlock[3] = a7;
  v33 = _Block_copy(aBlock);

  sub_1AEA323F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AEA23758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
  sub_1AEA237F8();
  sub_1AEA32614();
  MEMORY[0x1B270B620](0, v17, v14, v33);
  _Block_release(v33);

  (*(v12 + 8))(v14, v11);
  return (*(v15 + 8))(v17, v41);
}

id sub_1AEA2B5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AEA32444();
  v10 = APUILocStr(v9);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AEA34210;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1AEA2ABFC();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  sub_1AEA32464();

  v12 = sub_1AEA32444();
  v13 = APUILocStr(v12);

  if (!v13)
  {
    sub_1AEA32454();
    v13 = sub_1AEA32444();
  }

  v14 = sub_1AEA32444();

  v15 = [objc_opt_self() alertControllerWithTitle:v14 message:v13 preferredStyle:1];

  v16 = sub_1AEA32444();
  v17 = APUILocStr(v16);

  if (!v17)
  {
    sub_1AEA32454();
    v17 = sub_1AEA32444();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v18;
  v33 = sub_1AEA314A8;
  v34 = v19;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1AEA29BFC;
  v32 = &block_descriptor_178;
  v20 = _Block_copy(&v29);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v17 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction_];
  v23 = sub_1AEA32444();
  v24 = APUILocStr(v23);

  if (!v24)
  {
    sub_1AEA32454();
    v24 = sub_1AEA32444();
  }

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_1AEA317A8;
  v34 = v25;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1AEA29BFC;
  v32 = &block_descriptor_182;
  v26 = _Block_copy(&v29);

  v27 = [v21 actionWithTitle:v24 style:0 handler:v26];
  _Block_release(v26);

  [v15 addAction_];
  return v15;
}

id makeAlwaysLocationAlertController<A>(localizedAppName:bundleID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1AEA32444();
  v13 = APUILocStr(v12);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AEA34210;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1AEA2ABFC();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  sub_1AEA32464();

  v15 = sub_1AEA32444();
  v16 = APUILocStr(v15);

  sub_1AEA32454();
  v17 = sub_1AEA32444();

  v18 = sub_1AEA32444();

  v36 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v19 = sub_1AEA32444();
  v20 = APUILocStr(v19);

  sub_1AEA32454();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = v21;

  v23 = sub_1AEA32444();

  v42 = sub_1AEA2C508;
  v43 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1AEA29BFC;
  v41 = &block_descriptor_24;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  [v36 addAction_];
  v27 = sub_1AEA32444();
  v28 = APUILocStr(v27);

  sub_1AEA32454();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = a7;
  v30[4] = v29;

  v31 = sub_1AEA32444();

  v42 = sub_1AEA316F8;
  v43 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1AEA29BFC;
  v41 = &block_descriptor_31_0;
  v32 = _Block_copy(&aBlock);

  v33 = [v25 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  [v36 addAction_];
  return v36;
}

void sub_1AEA2BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v9 setSensitive_];
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_1AEA32634();

    aBlock = 0xD000000000000021;
    v21 = 0x80000001AEA36150;
    MEMORY[0x1B270B590](a2, a3);
    sub_1AEA32374();

    v12 = sub_1AEA32384();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      v14 = sub_1AEA32364();
      (*(v13 + 8))(v8, v12);
    }

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v17 = v9;

    v24 = sub_1AEA314B4;
    v25 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1AEA29B50;
    v23 = &block_descriptor_186;
    v18 = _Block_copy(&aBlock);

    [v11 openURL:v14 configuration:v17 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AEA2C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v13 setSensitive_];
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    aBlock = 0;
    v25 = 0xE000000000000000;
    sub_1AEA32634();

    aBlock = 0xD000000000000021;
    v25 = 0x80000001AEA36150;
    MEMORY[0x1B270B590](a2, a3);
    sub_1AEA32374();

    v16 = sub_1AEA32384();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      v18 = sub_1AEA32364();
      (*(v17 + 8))(v12, v16);
    }

    v19 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v20 = v13;
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = v19;
    v28 = sub_1AEA315B0;
    v29 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1AEA29B50;
    v27 = &block_descriptor_250;
    v22 = _Block_copy(&aBlock);

    [v15 openURL:v18 configuration:v20 completionHandler:v22];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEA2C538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a5;
  v42 = a7;
  v39 = a6;
  v40 = a4;
  v10 = sub_1AEA323E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AEA32404();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38 = a8;
    if (qword_1EB5E83C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1AEA323D4();
    __swift_project_value_buffer(v18, qword_1EB5E8808);
    v19 = a2;
    v20 = sub_1AEA323B4();
    v21 = sub_1AEA324F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      v36 = v14;
      v25 = v24;
      *v23 = 138412290;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1AEA18000, v20, v21, "Error opening notifications settings %@", v23, 0xCu);
      sub_1AEA312DC(v25);
      v28 = v25;
      v14 = v36;
      MEMORY[0x1B270BEC0](v28, -1, -1);
      v29 = v23;
      v11 = v37;
      MEMORY[0x1B270BEC0](v29, -1, -1);
    }

    a8 = v38;
  }

  sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
  v30 = sub_1AEA32534();
  v31 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v32 = swift_allocObject();
  v33 = v41;
  v32[2] = v40;
  v32[3] = v33;
  v32[4] = v31;
  aBlock[4] = v42;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEA24554;
  aBlock[3] = a8;
  v34 = _Block_copy(aBlock);

  sub_1AEA323F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AEA23758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
  sub_1AEA237F8();
  sub_1AEA32614();
  MEMORY[0x1B270B620](0, v17, v13, v34);
  _Block_release(v34);

  (*(v11 + 8))(v13, v10);
  return (*(v15 + 8))(v17, v14);
}

id makeDefaultAppAlertController<A>(localizedAppName:bundleID:defaultCategory:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1AEA32444();

  v12 = APUILocStr(v11);

  sub_1AEA32454();
  v13 = sub_1AEA32444();

  v14 = APUILocStr(v13);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AEA34210;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1AEA2ABFC();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  sub_1AEA32464();

  v16 = sub_1AEA32444();

  v17 = sub_1AEA32444();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v19 = sub_1AEA32444();
  v20 = APUILocStr(v19);

  sub_1AEA32454();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = v21;

  v23 = sub_1AEA32444();

  v40 = sub_1AEA2D414;
  v41 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1AEA29BFC;
  v39 = &block_descriptor_38;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  [v18 addAction_];
  v27 = sub_1AEA32444();
  v28 = APUILocStr(v27);

  sub_1AEA32454();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a7;
  v30[3] = a8;
  v30[4] = v29;

  v31 = sub_1AEA32444();

  v40 = sub_1AEA2D5B8;
  v41 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1AEA29BFC;
  v39 = &block_descriptor_45;
  v32 = _Block_copy(&aBlock);

  v33 = [v25 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  [v18 addAction_];
  return v18;
}

void sub_1AEA2CEF4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v5 setSensitive_];
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    sub_1AEA32374();
    v8 = sub_1AEA32384();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v4, 1, v8) != 1)
    {
      v10 = sub_1AEA32364();
      (*(v9 + 8))(v4, v8);
    }

    v11 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v13 = v5;

    aBlock[4] = sub_1AEA313B0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEA29B50;
    aBlock[3] = &block_descriptor_148;
    v14 = _Block_copy(aBlock);

    [v7 openURL:v10 configuration:v13 completionHandler:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AEA2D16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8700, &qword_1AEA34338);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v9 setSensitive_];
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    sub_1AEA32374();
    v12 = sub_1AEA32384();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      v14 = sub_1AEA32364();
      (*(v13 + 8))(v8, v12);
    }

    v15 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v16 = v9;
    swift_unknownObjectRelease();
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = v15;
    aBlock[4] = sub_1AEA3154C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEA29B50;
    aBlock[3] = &block_descriptor_236;
    v18 = _Block_copy(aBlock);

    [v11 openURL:v14 configuration:v16 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AEA2D420(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong delegate];
    if (v3)
    {
      [v3 educationViewControllerRequestsDismissal:v2 withResult:0];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AEA2D4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 8))(a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AEA2D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a4 + 8))(a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AEA2D5D8(uint64_t a1)
{
  sub_1AEA32634();

  v20 = 0xD000000000000028;
  v21 = 0x80000001AEA36070;
  v1 = APGetPreferredAuthenticationMechanismLocKey();
  v2 = sub_1AEA32454();
  v4 = v3;

  MEMORY[0x1B270B590](v2, v4);

  v5 = sub_1AEA32444();

  v6 = APUILocStr(v5);

  if (!v6)
  {
    sub_1AEA32454();
    v6 = sub_1AEA32444();
  }

  sub_1AEA32634();

  v20 = 0xD00000000000002ALL;
  v21 = 0x80000001AEA360A0;
  v7 = APGetPreferredAuthenticationMechanismLocKey();
  v8 = sub_1AEA32454();
  v10 = v9;

  MEMORY[0x1B270B590](v8, v10);

  v11 = sub_1AEA32444();

  v12 = APUILocStr(v11);

  if (!v12)
  {
    sub_1AEA32454();
    v12 = sub_1AEA32444();
  }

  v13 = [objc_opt_self() alertControllerWithTitle:v6 message:v12 preferredStyle:{1, v20, v21}];

  v14 = sub_1AEA32444();
  v15 = APUILocStr(v14);

  if (!v15)
  {
    sub_1AEA32454();
    v15 = sub_1AEA32444();
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_1AEA317A8;
  v25 = v16;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1AEA29BFC;
  v23 = &block_descriptor_124;
  v17 = _Block_copy(&v20);

  v18 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v17];
  _Block_release(v17);

  [v13 addAction_];
  return v13;
}

void sub_1AEA2D904(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong delegate];
    if (v4)
    {
      [v4 educationViewControllerRequestsDismissal:v3 withResult:0];
      swift_unknownObjectRelease();
    }
  }
}

char *sub_1AEA2DA34(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1[OBJC_IVAR___APEducationFlowViewController_hasAppeared] = 0;
  v1[OBJC_IVAR___APEducationFlowViewController_checkedHidable] = 2;
  *&v1[OBJC_IVAR___APEducationFlowViewController_tccUsers] = 0;
  v3 = OBJC_IVAR___APEducationFlowViewController_dispatchGroup;
  *&v1[v3] = dispatch_group_create();
  *&v1[OBJC_IVAR___APEducationFlowViewController_initialAlertController] = 0;
  swift_unknownObjectWeakInit();
  v4 = [objc_allocWithZone(MEMORY[0x1E698B0E0]) initWithApplication_];
  v5 = OBJC_IVAR___APEducationFlowViewController_lazyRecordApp;
  *&v1[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp] = v4;
  v6 = [v4 localizedName];
  v7 = sub_1AEA32454();
  v9 = v8;

  v10 = [a1 bundleIdentifier];
  v11 = sub_1AEA32454();
  v13 = v12;

  if (v11 == 0xD000000000000012 && 0x80000001AEA35EE0 == v13)
  {
  }

  else
  {
    v14 = sub_1AEA32684();

    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v15 = sub_1AEA32444();
  v16 = APUILocStr(v15);

  v7 = sub_1AEA32454();
  v9 = v17;

LABEL_6:
  v18 = &v1[OBJC_IVAR___APEducationFlowViewController_appName];
  *v18 = v7;
  v18[1] = v9;
  v19 = *&v1[v5];
  v39 = 0;
  v20 = [v19 loadRecordWithError_];
  if (v20)
  {
    v21 = v20;
    v22 = v39;
  }

  else
  {
    v23 = v39;
    v24 = sub_1AEA32354();

    swift_willThrow();
  }

  [*&v1[v5] detach];
  v25 = [objc_allocWithZone(APWrappingView) init];
  *&v1[OBJC_IVAR___APEducationFlowViewController_containerView] = v25;
  v45.receiver = v1;
  v45.super_class = APEducationFlowViewController;
  v26 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v27 = *&v26[OBJC_IVAR___APEducationFlowViewController_containerView];
  v28 = v26;
  [v28 setView_];
  [v28 setModalPresentationStyle_];
  dispatch_group_enter(*&v28[OBJC_IVAR___APEducationFlowViewController_dispatchGroup]);
  v29 = [objc_opt_self() sharedManager];
  v30 = [*&v28[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp] application];
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v43 = sub_1AEA311EC;
  v44 = v31;
  v39 = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AEA2DF7C;
  v42 = &block_descriptor_67;
  v32 = _Block_copy(&v39);
  v33 = v28;

  [v29 fetchUsersForRecord:v30 completion:v32];
  _Block_release(v32);

  v34 = [objc_opt_self() sharedManager];
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = a1;
  v43 = sub_1AEA311F4;
  v44 = v35;
  v39 = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AEA2E364;
  v42 = &block_descriptor_73;
  v36 = _Block_copy(&v39);
  v37 = a1;

  [v34 waitForManagedProtectability_];

  _Block_release(v36);
  return v33;
}

void sub_1AEA2DF24(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR___APEducationFlowViewController_tccUsers) = a1;

  v3 = *(a2 + OBJC_IVAR___APEducationFlowViewController_dispatchGroup);

  dispatch_group_leave(v3);
}

uint64_t sub_1AEA2DF7C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1AEA236DC(0, &qword_1EB5E8710, 0x1E69635F8);
    v2 = sub_1AEA324E4();
  }

  v3(v2);
}

uint64_t sub_1AEA2E004(uint64_t a1, void *a2, void *a3)
{
  sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
  v5 = sub_1AEA32534();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AEA311FC;
  *(v7 + 24) = v6;
  v12[4] = sub_1AEA31204;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1AEA28370;
  v12[3] = &block_descriptor_82;
  v8 = _Block_copy(v12);
  v9 = a2;
  v10 = a3;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1AEA2E188(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  LOBYTE(a2) = [v4 canChangeHiddenStatusOfSubject_];

  *(a1 + OBJC_IVAR___APEducationFlowViewController_checkedHidable) = a2;
  sub_1AEA2E200();
}

void sub_1AEA2E200()
{
  v1 = OBJC_IVAR___APEducationFlowViewController_checkedHidable;
  if (v0[OBJC_IVAR___APEducationFlowViewController_checkedHidable] == 2 || v0[OBJC_IVAR___APEducationFlowViewController_hasAppeared] != 1)
  {
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4)
  {
    return;
  }

  v5 = [v0 initialAlertController];
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = v0[v1];
  if (v6 == 2)
  {
    goto LABEL_14;
  }

  v7 = sub_1AEA28D74(*&v0[OBJC_IVAR___APEducationFlowViewController_appName], *&v0[OBJC_IVAR___APEducationFlowViewController_appName + 8], v0, v6 & 1);
  [v0 setInitialAlertController_];

  v8 = [v0 initialAlertController];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  [v0 presentViewController_animated_completion_];
  v5 = v9;
LABEL_9:
}

void sub_1AEA2E364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id APEducationFlowViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id APEducationFlowViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1AEA32444();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

Swift::Void __swiftcall APEducationFlowViewController.initialAlertControllerSelectedLockApp()()
{
  v1 = sub_1AEA323E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AEA32404();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  if (*&v0[OBJC_IVAR___APEducationFlowViewController_tccUsers])
  {
    sub_1AEA2E96C(v0);
  }

  else
  {
    v10 = *&v0[OBJC_IVAR___APEducationFlowViewController_dispatchGroup];
    sub_1AEA236DC(0, &unk_1EDAC2C70, 0x1E69E9610);
    v18 = v2;
    v11 = v0;
    v17 = v10;
    v12 = sub_1AEA32534();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1AEA3113C;
    *(v13 + 24) = v9;
    aBlock[4] = sub_1AEA31144;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEA24554;
    aBlock[3] = &block_descriptor_54;
    v14 = _Block_copy(aBlock);

    sub_1AEA323F4();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1AEA23758();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8640, &qword_1AEA34028);
    sub_1AEA237F8();
    sub_1AEA32614();
    v15 = v17;
    sub_1AEA32524();
    _Block_release(v14);

    (*(v18 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_1AEA2E96C(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v7[4] = sub_1AEA31528;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1AEA282D0;
    v7[3] = &block_descriptor_209;
    v4 = _Block_copy(v7);
    v5 = a1;

    [v2 educationViewController:v5 requestAuthenticationWithCompletion:v4];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }

  return v2 == 0;
}

void sub_1AEA2EA78(char a1, int a2, char *a3)
{
  if ((a1 & 1) == 0)
  {
    v29 = sub_1AEA29CC0(a3);
    [a3 presentViewController:v29 animated:1 completion:0];
LABEL_14:

    return;
  }

  v4 = *&a3[OBJC_IVAR___APEducationFlowViewController_tccUsers];
  if (v4)
  {
    if (v4 >> 62)
    {
      if (sub_1AEA32674() >= 1)
      {
LABEL_5:
        v5 = *&a3[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp];

        v6 = [v5 application];
        v7 = objc_allocWithZone(type metadata accessor for APLockedAppDisclosureViewController());

        v8 = a3;
        v9 = sub_1AEA2FC3C(v6, v4, v8, v7);
        v29 = [objc_allocWithZone(MEMORY[0x1E69B7D40]) initWithRootViewController_];
        [v29 setModalInPresentation_];
        v10 = [v29 sheetPresentationController];
        if (v10)
        {
          v11 = v10;
          sub_1AEA32554();
        }

        v12 = [v8 view];
        if (v12)
        {
          v13 = v12;
          [v12 layoutIfNeeded];

          v14 = [v8 view];
          if (v14)
          {
            v15 = v14;
            [v14 frame];
            v17 = v16;

            v18 = [v29 sheetPresentationController];
            if (v18)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E86F8, &qword_1AEA34330);
              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_1AEA34250;
              sub_1AEA236DC(0, &qword_1EB5E8718, 0x1E69DCF58);
              v20 = swift_allocObject();
              *(v20 + 16) = v4;
              *(v20 + 24) = v17;
              v21 = sub_1AEA32564();

              *(v19 + 32) = v21;
              v22 = sub_1AEA324D4();

              [v18 setDetents_];
            }

            else
            {
            }

            [v8 presentViewController:v29 animated:1 completion:0];

            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_5;
    }
  }

  v23 = [a3 delegate];
  if (v23)
  {
    v24 = v23;
    v25 = [*&a3[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp] application];
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    aBlock[4] = sub_1AEA316F4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEA282D0;
    aBlock[3] = &block_descriptor_216;
    v27 = _Block_copy(aBlock);
    v28 = a3;

    [v24 educationViewController:v28 requestLockOfApplication:v25 completion:v27];
    swift_unknownObjectRelease();
    _Block_release(v27);
  }
}

double sub_1AEA2EEBC(double a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v6 = a1;
    v3 = sub_1AEA32674();
    a1 = v6;
  }

  else
  {
    v3 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  return (v4 * 0.1 + 0.6) * a1;
}

Swift::Void __swiftcall APEducationFlowViewController.initialAlertControllerSelectedHideApp()()
{
  v1 = v0;
  v56[2] = *MEMORY[0x1E69E9840];
  v2 = *&v0[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp];
  v3 = [v2 bundleIdentifier];
  v4 = sub_1AEA32454();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v8 = sub_1AEA2FB60(v4, v6, 0);
  v56[0] = 0;
  if (!v8)
  {
    v37 = 0;
    goto LABEL_2;
  }

  v35 = v8;
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 defaultWorkspace];
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v38;
  aBlock[0] = 0;
  v40 = [v38 getDefaultApplicationCategories:v56 withCurrentDefaultApplication:v37 error:aBlock];

  if (v40)
  {
    v41 = aBlock[0];
  }

  else
  {
    v47 = aBlock[0];
    v48 = sub_1AEA32354();

    swift_willThrow();
  }

  v49 = v56[0];

  if (!v49)
  {
LABEL_2:
    v9 = [objc_opt_self() currentNotificationSettingsCenter];
    v10 = [v2 bundleIdentifier];
    if (!v10)
    {
      sub_1AEA32454();
      v10 = sub_1AEA32444();
    }

    v11 = [v9 sourceWithIdentifier_];

    if (v11 && (v12 = [v11 sourceSettings], v13 = objc_msgSend(v12, sel_notificationSettings), v12, v14 = objc_msgSend(v13, sel_criticalAlertSetting), v13, v14 == 2))
    {
      v15 = [v2 localizedName];
      v16 = sub_1AEA32454();
      v18 = v17;

      v19 = [v2 bundleIdentifier];
      v20 = sub_1AEA32454();
      v22 = v21;

      v23 = sub_1AEA2A2C8(v16, v18, v20, v22, v1);
    }

    else
    {
      v24 = [v2 bundleIdentifier];
      if (!v24)
      {
        sub_1AEA32454();
        v24 = sub_1AEA32444();
      }

      v25 = [objc_opt_self() authorizationStatusForBundleIdentifier_];

      if (v25 != 3)
      {
        v42 = [v1 delegate];
        if (v42)
        {
          v43 = v42;
          v44 = swift_allocObject();
          v44[2] = v1;
          aBlock[4] = sub_1AEA3116C;
          aBlock[5] = v44;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AEA282D0;
          aBlock[3] = &block_descriptor_60;
          v45 = _Block_copy(aBlock);
          v46 = v1;

          [v43 educationViewController:v46 requestAuthenticationWithCompletion:v45];
          swift_unknownObjectRelease();

          _Block_release(v45);
          return;
        }

LABEL_12:
        return;
      }

      v26 = [v2 localizedName];
      v27 = sub_1AEA32454();
      v29 = v28;

      v30 = [v2 bundleIdentifier];
      v31 = sub_1AEA32454();
      v33 = v32;

      v23 = sub_1AEA2B5EC(v27, v29, v31, v33, v1);
    }

    v34 = v23;

    [v1 presentViewController:v34 animated:1 completion:0];

    goto LABEL_12;
  }

  v50 = [v2 localizedName];
  v51 = sub_1AEA32454();
  v53 = v52;

  v54 = sub_1AEA309CC(v51, v53, v56[0], v1);

  [v1 presentViewController:v54 animated:1 completion:0];
}

void sub_1AEA2F4A0(char a1, uint64_t a2, char *a3)
{
  if (a1)
  {
    v4 = *&a3[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp];
    v5 = objc_allocWithZone(type metadata accessor for APHiddenAppConfirmationViewController());
    v6 = v4;
    v7 = a3;
    v20 = sub_1AEA30340(v6, v7, v5);
    [v20 setModalInPresentation_];
    v8 = [v20 sheetPresentationController];
    if (v8)
    {
      v9 = v8;
      sub_1AEA32554();
    }

    v10 = [v7 view];
    if (v10)
    {
      v11 = v10;
      [v10 layoutIfNeeded];

      v12 = [v7 view];
      if (v12)
      {
        v13 = v12;
        [v12 frame];
        v15 = v14;

        v16 = [v20 sheetPresentationController];
        if (v16)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E86F8, &qword_1AEA34330);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1AEA34250;
          sub_1AEA236DC(0, &qword_1EB5E8718, 0x1E69DCF58);
          *(swift_allocObject() + 16) = v15;
          v18 = sub_1AEA32564();

          *(v17 + 32) = v18;
          v19 = sub_1AEA324D4();

          [v16 setDetents_];
        }

        [v7 presentViewController:v20 animated:1 completion:0];
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = sub_1AEA29CC0(a3);
  [a3 presentViewController:v20 animated:1 completion:0];
LABEL_10:
}

void sub_1AEA2F714(char *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*&a1[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp] application];
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v8[4] = sub_1AEA3136C;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1AEA282D0;
    v8[3] = &block_descriptor_136;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 educationViewController:v7 requestHideOfApplication:v4 completion:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

id sub_1AEA2F850()
{
  result = [v0 delegate];
  if (result)
  {
    [result educationViewControllerRequestsDismissal:v0 withResult:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AEA2F8C0(char a1, int a2, id a3, uint64_t a4)
{
  if (a1)
  {
    v6 = [a3 delegate];
    if (v6)
    {
      [v6 educationViewControllerRequestsDismissal:a3 withResult:a4];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = sub_1AEA2D5D8(a3);
    [a3 presentViewController:v7 animated:1 completion:0];
  }
}

id sub_1AEA2F9EC()
{
  v1 = *v0;
  result = [*v0 delegate];
  if (result)
  {
    [result educationViewControllerRequestsDismissal:v1 withResult:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AEA2FA60()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1AEA31364;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1AEA24554;
    v6[3] = &block_descriptor_130;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

id sub_1AEA2FB60(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1AEA32444();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1AEA32354();

    swift_willThrow();
  }

  return v6;
}

char *sub_1AEA2FC3C(void *a1, uint64_t a2, void *a3, char *a4)
{
  v7 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_scrollViewAssistant;
  *&a4[v7] = [objc_allocWithZone(APButtonTrayScrollViewAssistant) init];
  v8 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_button;
  v9 = sub_1AEA32444();
  v10 = APUILocStr(v9);

  v11 = sub_1AEA32454();
  v13 = v12;

  v14 = sub_1AEA27EDC(v11, v13);

  *&a4[v8] = v14;
  *&a4[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1F2485110;
  swift_unknownObjectWeakAssign();
  v15 = *&a4[v7];
  v16 = objc_allocWithZone(APTCCDisclosureController);
  sub_1AEA236DC(0, &qword_1EB5E8710, 0x1E69635F8);
  v17 = a3;
  v18 = a1;
  v19 = v15;
  v20 = sub_1AEA324D4();
  v21 = [v16 initWithApplication:v18 users:v20 includeDoneButton:0 scrollViewAssistant:v19];

  *&a4[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_tccController] = v21;
  v66.receiver = a4;
  v66.super_class = type metadata accessor for APLockedAppDisclosureViewController();
  v22 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
  v23 = *&v22[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_scrollViewAssistant];
  v24 = v22;
  [v23 setDelegate_];
  v25 = [objc_allocWithZone(type metadata accessor for APWelcomeControllerWithBraveButtonTrayView()) initWithFrame_];
  [v24 setView_];

  v26 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_tccController;
  [v24 addChildViewController_];
  result = [*&v24[v26] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = result;
  result = [v24 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = result;
  [result bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v28 setFrame_];
  result = [v24 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = result;
  v64 = v18;
  v65 = v17;
  result = [*&v24[v26] view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = result;

  [v38 addSubview_];

  v40 = *&v24[v26];
  v41 = v24;
  [v40 didMoveToParentViewController_];
  sub_1AEA236DC(0, &qword_1EB5E8720, 0x1E69DC628);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = sub_1AEA32574();
  v44 = OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_button;
  [*&v41[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_button] addAction:v43 forControlEvents:{0x2000, 0, 0, 0, sub_1AEA3153C, v42}];
  result = [v41 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v45 = result;
  v46 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray);

  v47 = *&v41[v44];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v46[OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack] addArrangedSubview_];

  result = [v41 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v48 = result;
  v49 = swift_dynamicCastClassUnconditional();
  v50 = [*&v24[v26] view];
  v51 = *&v49[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView];
  *&v49[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView] = v50;
  v52 = v50;

  if (v52)
  {
    [v49 insertSubview:*&v49[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray] aboveSubview:v52];
  }

  result = [v41 view];
  if (result)
  {
    v53 = result;
    v54 = v43;
    v55 = swift_dynamicCastClassUnconditional();
    v56 = [*&v24[v26] scrollView];
    v57 = *(v55 + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView);
    *(v55 + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView) = v56;

    v58 = [v41 navigationItem];
    sub_1AEA236DC(0, &unk_1EB5E8730, 0x1E69DC708);
    v59 = swift_allocObject();
    *(v59 + 24) = &off_1F2485110;
    swift_unknownObjectWeakInit();

    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v59;
    v63 = v61;
    sub_1AEA32574();
    v62 = sub_1AEA32514();
    [v58 setRightBarButtonItem_];

    return v41;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_1AEA30340(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController] = 0;
  *&a3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_navController] = 0;
  v6 = OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_button;
  v7 = sub_1AEA32444();
  v8 = APUILocStr(v7);

  v9 = sub_1AEA32454();
  v11 = v10;

  v12 = sub_1AEA27EDC(v9, v11);

  *&a3[v6] = v12;
  v13 = &a3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_delegate];
  *&a3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = [a1 application];
  *&a3[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_app] = v14;
  *(v13 + 1) = &off_1F24850F8;
  swift_unknownObjectWeakAssign();
  v47.receiver = a3;
  v47.super_class = type metadata accessor for APHiddenAppConfirmationViewController();
  v15 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  v16 = objc_allocWithZone(type metadata accessor for APWelcomeControllerWithBraveButtonTrayView());
  v17 = v15;
  v18 = [v16 initWithFrame_];
  [v17 setView_];

  sub_1AEA28398(a1, v17, 60.0);
  v19 = *&v17[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController];
  *&v17[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_welcomeController] = v20;
  v21 = v20;

  v22 = [objc_allocWithZone(MEMORY[0x1E69B7D40]) initWithRootViewController_];
  v23 = OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_navController;
  v24 = *&v17[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_navController];
  *&v17[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_navController] = v22;
  v25 = v22;

  [v17 addChildViewController_];
  result = [v17 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = result;
  result = *&v17[v23];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [result view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = result;
  [v27 addSubview_];

  result = *&v17[v23];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [result didMoveToParentViewController_];
  sub_1AEA236DC(0, &qword_1EB5E8720, 0x1E69DC628);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = sub_1AEA32574();
  v31 = OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_button;
  [*&v17[OBJC_IVAR____TtC15AppProtectionUI37APHiddenAppConfirmationViewController_button] addAction:v30 forControlEvents:{0x2000, 0, 0, 0, sub_1AEA31518, v29}];
  result = [v17 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = result;
  v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray);

  v34 = *&v17[v31];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v33[OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack] addArrangedSubview_];

  result = [v17 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = result;
  v36 = a1;
  v37 = swift_dynamicCastClassUnconditional();
  result = *&v17[v23];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = [result view];
  v39 = *&v37[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView];
  *&v37[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView] = v38;
  v40 = v38;

  if (v40)
  {
    [v37 insertSubview:*&v37[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray] aboveSubview:v40];
  }

  result = [v17 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v41 = result;
  result = swift_dynamicCastClassUnconditional();
  v42 = *&v17[v23];
  if (v42)
  {
    v43 = result;
    v44 = v42;
    v45 = [v44 contentScrollViewForEdge_];

    v46 = *&v43[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView];
    *&v43[OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView] = v45;

    return v17;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1AEA30894()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    v3 = [*&v0[OBJC_IVAR___APEducationFlowViewController_lazyRecordApp] application];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_1AEA31344;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1AEA282D0;
    v7[3] = &block_descriptor_118;
    v5 = _Block_copy(v7);
    v6 = v0;

    [v2 educationViewController:v6 requestLockOfApplication:v3 completion:v5];
    swift_unknownObjectRelease();
    _Block_release(v5);
  }
}

id sub_1AEA309CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AEA32444();

  v7 = APUILocStr(v6);

  if (!v7)
  {
    sub_1AEA32454();
    v7 = sub_1AEA32444();
  }

  v8 = sub_1AEA32444();

  v9 = APUILocStr(v8);

  sub_1AEA32454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8620, &unk_1AEA34270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AEA34210;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1AEA2ABFC();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  sub_1AEA32464();

  v11 = sub_1AEA32444();

  v12 = [objc_opt_self() alertControllerWithTitle:v7 message:v11 preferredStyle:1];

  v13 = sub_1AEA32444();
  v14 = APUILocStr(v13);

  if (!v14)
  {
    sub_1AEA32454();
    v14 = sub_1AEA32444();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_1AEA3138C;
  v30 = v15;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1AEA29BFC;
  v28 = &block_descriptor_140;
  v16 = _Block_copy(&v25);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v14 style:0 handler:v16];
  _Block_release(v16);

  [v12 addAction_];
  v19 = sub_1AEA32444();
  v20 = APUILocStr(v19);

  if (!v20)
  {
    sub_1AEA32454();
    v20 = sub_1AEA32444();
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_1AEA31394;
  v30 = v21;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1AEA29BFC;
  v28 = &block_descriptor_144;
  v22 = _Block_copy(&v25);

  v23 = [v17 actionWithTitle:v20 style:0 handler:v22];
  _Block_release(v22);

  [v12 addAction_];
  return v12;
}

void _sSo29APEducationFlowViewControllerC15AppProtectionUIE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___APEducationFlowViewController_hasAppeared) = 0;
  *(v0 + OBJC_IVAR___APEducationFlowViewController_checkedHidable) = 2;
  *(v0 + OBJC_IVAR___APEducationFlowViewController_tccUsers) = 0;
  v1 = OBJC_IVAR___APEducationFlowViewController_dispatchGroup;
  *(v0 + v1) = dispatch_group_create();
  *(v0 + OBJC_IVAR___APEducationFlowViewController_initialAlertController) = 0;
  swift_unknownObjectWeakInit();
  sub_1AEA32664();
  __break(1u);
}

void _sSo29APEducationFlowViewControllerC15AppProtectionUIE13viewDidAppearyySbF_0()
{
  v0[OBJC_IVAR___APEducationFlowViewController_hasAppeared] = 1;
  v1 = OBJC_IVAR___APEducationFlowViewController_checkedHidable;
  if (v0[OBJC_IVAR___APEducationFlowViewController_checkedHidable] == 2)
  {
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4)
  {
    return;
  }

  v5 = [v0 initialAlertController];
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = v0[v1];
  if (v6 == 2)
  {
    goto LABEL_13;
  }

  v7 = sub_1AEA28D74(*&v0[OBJC_IVAR___APEducationFlowViewController_appName], *&v0[OBJC_IVAR___APEducationFlowViewController_appName + 8], v0, v6 & 1);
  [v0 setInitialAlertController_];

  v8 = [v0 initialAlertController];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v9 = v8;
  [v0 presentViewController_animated_completion_];
  v5 = v9;
LABEL_8:
}

uint64_t sub_1AEA312DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8708, &unk_1AEA34340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_155Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

APEnablementOracle __swiftcall APEnablementOracle.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static APEnablementOracle.shared.getter()
{
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];

  return v0;
}

id APEnablementOracle.enablementSuggestion(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15[0] = 0;
  v13 = 0;
  v6 = [v3 getPreferredEnablementAction:v15 preferredEnableableFeature:&v14 forSubject:a1 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = v14;
    v9 = v15[0];
    *a2 = a1;
    a2[1] = v8;
    a2[2] = v9;
    v10 = v7;
    return a1;
  }

  else
  {
    v12 = v13;
    sub_1AEA32354();

    return swift_willThrow();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AEA319C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AEA31A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for APEnablementOracle()
{
  result = qword_1EB5E8740;
  if (!qword_1EB5E8740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E8740);
  }

  return result;
}

uint64_t sub_1AEA31AA8(uint64_t a1, uint64_t a2, id a3)
{
  if (a1 != 1 && a1 != 2)
  {
    return 0;
  }

  switch(a2)
  {
    case 1:
      v9 = [a3 isLocked];
      if (a1 == 1 && (v9 & 1) != 0)
      {
        return 0;
      }

      v7 = [a3 isLocked];
      v8 = &selRef_canChangeLockedStatusOfSubject_;
      if (a1 != 2)
      {
LABEL_22:
        v10 = objc_opt_self();
LABEL_32:
        v15 = [v10 sharedManager];
        v16 = [v15 *v8];

        return v16;
      }

LABEL_21:
      if (v7)
      {
        goto LABEL_22;
      }

      return 0;
    case 3:
      if ([a3 isLocked])
      {
        if (a1 == 1)
        {
          return 0;
        }
      }

      else
      {
        v11 = [a3 isHidden];
        if (a1 == 1 && (v11 & 1) != 0)
        {
          return 0;
        }
      }

      if (([a3 isLocked] & 1) != 0 || (result = objc_msgSend(a3, sel_isHidden), a1 != 2) || result)
      {
        v12 = objc_opt_self();
        v13 = [v12 sharedManager];
        v14 = [v13 canChangeLockedStatusOfSubject_];

        if (v14)
        {
          return 1;
        }

        v8 = &selRef_canChangeHiddenStatusOfSubject_;
        v10 = v12;
        goto LABEL_32;
      }

      break;
    case 2:
      if (![a3 isLocked] || (result = objc_msgSend(a3, sel_isHidden), a1 != 1) || result)
      {
        v6 = [a3 isHidden];
        if (a1 == 1 && (v6 & 1) != 0)
        {
          return 0;
        }

        v7 = [a3 isHidden];
        v8 = &selRef_canChangeHiddenStatusOfSubject_;
        if (a1 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      break;
    default:
      return 0;
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
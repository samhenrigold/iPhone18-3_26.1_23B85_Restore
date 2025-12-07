uint64_t sub_23E7F1280(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23E82E2AC();
  }

  else
  {
    sub_23E82E22C();
  }

  return sub_23E82E2BC();
}

uint64_t sub_23E7F12E8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23E82E2AC();
    sub_23E82E2BC();
    sub_23E7F51D8();
  }

  else
  {
    sub_23E82E22C();
    sub_23E82E2BC();
    sub_23E7F5598(&qword_27E35A1E8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_23E7F13DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F144C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F1590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F164C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F16BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7F173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F17F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F19A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F19D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E7F1A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F1ADC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F1B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A488, &qword_23E830338);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A480, &qword_23E830330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A478, &qword_23E830328);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A470, &qword_23E830320);
  sub_23E7F5640(&qword_27E35A4A0, &qword_27E35A470, &qword_23E830320, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23E7F1D40()
{
  v1 = (type metadata accessor for SiriRequestView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[10];
  v6 = sub_23E82DF7C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F1E74()
{
  v1 = (type metadata accessor for SiriRequestView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[10];
  v6 = sub_23E82DF7C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F20A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23E7F2168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23E7F22C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7F2400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23E7F2468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB30, &unk_23E830D90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23E7F2534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB30, &unk_23E830D90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23E7F2600()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2640()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F26AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABA8, &qword_23E830EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7F2714()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F274C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABC0, &unk_23E830EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F27BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ABA8, &qword_23E830EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  sub_23E7F5640(&qword_27E35ABB8, &qword_27E35ABA8, &qword_23E830EC8, MEMORY[0x277CE1198]);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23E7F28B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F28E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7F2940()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2990()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23E7F2AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23E7F2BB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2BEC()
{
  MEMORY[0x23EF158F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2C24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23E7F2C78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2CB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2CE8()
{
  v1 = sub_23E82E05C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E7F2DAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23E7F2F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23E7F3074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F30B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E82E36C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F3108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E38C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F31AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E32C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F3284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23E7F3700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id convertToShortLPCMBufFromFloatLPCMBuf(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = v2 >> 2;
  v10 = 1191181824;
  __C = 1.0;
  __B = -1.0;
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v2 & 0xFFFFFFFFFFFFFFFCLL];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v3];
  v6 = [v1 bytes];

  vDSP_vclip(v6, 1, &__B, &__C, [v4 bytes], 1, v3);
  MEMORY[0x23EF15A10]([v4 bytes], 1, &v10, objc_msgSend(v4, "bytes"), 1, v3);
  vDSP_vfix16([v4 bytes], 1, objc_msgSend(v5, "bytes"), 1, v3);

  return v5;
}

void AXPIBridgePerformWarm()
{
  v0 = [getAXPISystemActionHelperClass() sharedInstance];
  [v0 warm];
}

id getAXPISystemActionHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXPISystemActionHelperClass_softClass;
  v7 = getAXPISystemActionHelperClass_softClass;
  if (!getAXPISystemActionHelperClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXPISystemActionHelperClass_block_invoke;
    v3[3] = &unk_278C5C1C0;
    v3[4] = &v4;
    __getAXPISystemActionHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E7F3CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXPIBridgePerformActionForSystemAction(void *a1)
{
  v1 = a1;
  v2 = [getAXPISystemActionHelperClass() sharedInstance];
  [v2 performActionForSystemAction:v1];
}

Class __getAXPISystemActionHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityPhysicalInteractionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C5C1E0;
    v6 = 0;
    AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXPISystemActionHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_1();
  }

  getAXPISystemActionHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityPhysicalInteractionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_23E7F4238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v46 = a3;
  v4 = sub_23E82DF7C();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v11 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v12 = qword_27E35D0B8;
    v13 = qword_27E35D0B8;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v12 = 0;
  }

  v14 = v12;
  v15 = sub_23E82DCDC();
  v39 = v16;
  v40 = v15;

  sub_23E81E284(0xD000000000000016, 0x800000023E8321B0);
  if (!v11)
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v38 = sub_23E82DCDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A218, &qword_23E831780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23E82FEF0;
  v42 = a2;
  v18 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v19 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v20 = (v18 + *(v19 + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v26 = sub_23E7F5328(v19, v24, v25);
  *(v17 + 64) = v26;
  if (v22)
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v22)
  {
    v28 = v22;
  }

  *(v17 + 32) = v27;
  *(v17 + 40) = v28;
  sub_23E7F537C(v18 + *(v19 + 28), v10);
  v29 = type metadata accessor for AvailableShortcutAction(0);
  if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
  {

    sub_23E7F55E0(v10, &qword_27E35A210, &unk_23E82FFD0);
    v30 = (v17 + 72);
    *(v17 + 96) = v23;
    *(v17 + 104) = v26;
LABEL_17:
    *v30 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_18;
  }

  v31 = &v10[*(v29 + 20)];
  v32 = *v31;
  v33 = *(v31 + 1);

  sub_23E7F543C(v10);
  v30 = (v17 + 72);
  *(v17 + 96) = v23;
  *(v17 + 104) = v26;
  if (!v33)
  {
    goto LABEL_17;
  }

  *v30 = v32;
LABEL_18:
  *(v17 + 80) = v33;
  sub_23E82EA7C();

  v38 = &v37;
  MEMORY[0x28223BE20](v34);
  v47 = MEMORY[0x277D84F90];
  sub_23E7F5598(&qword_27E35A228, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0, MEMORY[0x277D83970]);
  v35 = v43;
  sub_23E82ECAC();
  sub_23E82E8EC();
  (*(v44 + 8))(v35, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  sub_23E7F5640(&qword_27E35A248, &qword_27E35A240, &qword_23E82FFE8, MEMORY[0x277CE1198]);
  return sub_23E82DF5C();
}

uint64_t sub_23E7F4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  *v9 = sub_23E82E48C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A250, &qword_23E82FFF0);
  sub_23E7F49B0(a1, a2, &v9[*(v10 + 44)]);
  sub_23E7F13DC(v9, a3);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_23E7F49B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v58 = a3;
  v4 = sub_23E82DFBC();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A258, &qword_23E82FFF8);
  MEMORY[0x28223BE20](v51);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A260, &unk_23E830000);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v46 - v12;
  v13 = sub_23E82DFAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A270, &qword_23E830010);
  v60 = *(v50 - 8);
  v21 = MEMORY[0x28223BE20](v50);
  v59 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  v26 = v49;
  *(v25 + 24) = v49;

  sub_23E82E8BC();
  sub_23E82E15C();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  sub_23E7F5598(&qword_27E35A280, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  v47 = v24;
  sub_23E82E6EC();
  (*(v14 + 8))(v16, v13);
  (*(v18 + 8))(v20, v17);
  v27 = swift_allocObject();
  *(v27 + 16) = v48;
  *(v27 + 24) = v26;

  sub_23E82E8BC();
  v28 = sub_23E82E5EC();
  v29 = v52;
  v30 = &v8[*(v51 + 36)];
  *v30 = v28;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  sub_23E82E16C();
  sub_23E7F54E0();
  sub_23E7F5598(&qword_27E35A290, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  v31 = v61;
  v32 = v56;
  sub_23E82E6EC();
  (*(v57 + 8))(v29, v32);
  sub_23E7F55E0(v8, &qword_27E35A258, &qword_23E82FFF8);
  v33 = v59;
  v34 = *(v60 + 16);
  v35 = v24;
  v36 = v50;
  v34(v59, v35, v50);
  v38 = v53;
  v37 = v54;
  v39 = *(v54 + 16);
  v40 = v55;
  v39(v53, v31, v55);
  v41 = v58;
  v34(v58, v33, v36);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A298, &qword_23E830018);
  v39(&v41[*(v42 + 48)], v38, v40);
  v43 = *(v37 + 8);
  v43(v61, v40);
  v44 = *(v60 + 8);
  v44(v47, v36);
  v43(v38, v40);
  return (v44)(v59, v36);
}

uint64_t sub_23E7F50C4@<X0>(uint64_t a3@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v4 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v6 = v4;
  result = sub_23E82E68C();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

unint64_t sub_23E7F51D8()
{
  result = qword_27E35A1E0;
  if (!qword_27E35A1E0)
  {
    sub_23E82E2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A1E0);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23E7F5278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E7F52C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23E7F5328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A220;
  if (!qword_27E35A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A220);
  }

  return result;
}

uint64_t sub_23E7F537C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_23E7F543C(uint64_t a1)
{
  v2 = type metadata accessor for AvailableShortcutAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E7F54E0()
{
  result = qword_27E35A288;
  if (!qword_27E35A288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A258, &qword_23E82FFF8);
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A288);
  }

  return result;
}

uint64_t sub_23E7F5598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E7F55E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E7F5640(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E7F5688()
{
  v26 = sub_23E82DC9C();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() shortcutsNamesDictionary];
  v5 = sub_23E82EA3C();

  v6 = *(v5 + 16);
  if (!v6)
  {

    v7 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
LABEL_4:
      v25 = v0;
      v27 = MEMORY[0x277D84F90];
      sub_23E800930(0, v10, 0);
      v11 = v27;
      v12 = (v1 + 8);
      v24[1] = v7;
      v13 = v7 + 5;
      do
      {
        v28[0] = sub_23E82EA9C();
        v28[1] = v14;

        v15 = sub_23E82DC8C();
        sub_23E7F84B0(v15, v16, v17);
        v18 = sub_23E82EC6C();
        v20 = v19;

        (*v12)(v3, v26);

        v27 = v11;
        v22 = *(v11 + 16);
        v21 = *(v11 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_23E800930((v21 > 1), v22 + 1, 1);
          v11 = v27;
        }

        *(v11 + 16) = v22 + 1;
        v23 = v11 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v13 += 2;
        --v10;
      }

      while (v10);

      v0 = v25;
      goto LABEL_11;
    }

LABEL_10:

    v11 = MEMORY[0x277D84F90];
LABEL_11:
    *(v0 + 16) = v11;
  }

  v7 = sub_23E7F86E0(*(v5 + 16), 0);
  v8 = sub_23E7F89B4(v28, v7 + 4, v6, v5);
  result = sub_23E7F8B64(v28[0]);
  if (v8 == v6)
  {
    v10 = v7[2];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E7F5914()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for AVSCommandNameView(uint64_t a1)
{
  result = qword_27E35A2B8;
  if (!qword_27E35A2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E7F59E4(uint64_t a1)
{
  sub_23E7F5AE8(319);
  if (v1 <= 0x3F)
  {
    sub_23E7F5B78(319);
    if (v2 <= 0x3F)
    {
      sub_23E7F5C68(319, &qword_27E35A2E8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_23E7F5C10();
        if (v4 <= 0x3F)
        {
          sub_23E7F5C68(319, &qword_27E35A2F8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23E7F5CB4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23E7F5AE8(uint64_t a1)
{
  if (!qword_27E35A2C8)
  {
    type metadata accessor for AVSCommandNameViewModel();
    sub_23E7F8B70(&qword_27E35A2D0, v1, type metadata accessor for AVSCommandNameViewModel, &unk_23E830084);
    v2 = sub_23E82E1AC();
    if (!v3)
    {
      atomic_store(v2, &qword_27E35A2C8);
    }
  }
}

void sub_23E7F5B78(uint64_t a1)
{
  if (!qword_27E35A2D8)
  {
    type metadata accessor for AVSCoordinatorObject(255);
    sub_23E7F8B70(&qword_27E35A2E0, 255, type metadata accessor for AVSCoordinatorObject, &protocol conformance descriptor for AVSCoordinatorObject);
    v1 = sub_23E82E26C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35A2D8);
    }
  }
}

void sub_23E7F5C10()
{
  if (!qword_27E35A2F0)
  {
    v0 = sub_23E82E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A2F0);
    }
  }
}

void sub_23E7F5C68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23E82E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23E7F5CB4(uint64_t a1)
{
  if (!qword_27E35A300)
  {
    sub_23E82DF7C();
    v1 = sub_23E82E8AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35A300);
    }
  }
}

uint64_t sub_23E7F5D18@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AVSCommandNameViewModel();
  result = sub_23E82E07C();
  *a2 = result;
  return result;
}

uint64_t sub_23E7F5D70()
{
  type metadata accessor for AVSCommandNameViewModel();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_23E7F5688();
  return v0;
}

uint64_t sub_23E7F5DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v2 = qword_27E35D0B8;
    v3 = qword_27E35D0B8;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v2 = 0;
  }

  v4 = v2;
  sub_23E82DCDC();

  if (!v1)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  type metadata accessor for AVSCommandNameView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
  v5 = sub_23E82E89C();
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A328, &qword_23E830138);
  sub_23E7F83F8();
  return sub_23E82DF5C();
}

uint64_t sub_23E7F6090(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandNameView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E7F82F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E7F835C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_23E82E8BC();
}

uint64_t sub_23E7F61BC(uint64_t a1)
{
  v1 = (*(a1 + 32) + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(v3);
}

uint64_t sub_23E7F622C@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

double sub_23E7F63A8@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_23E82E48C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A348, &qword_23E830148);
  sub_23E7F643C(a2 + *(v3 + 44));
  v4 = sub_23E82E61C();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A328, &qword_23E830138) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_23E7F643C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v121 = sub_23E82E28C();
  v116 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v103 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AVSCommandNameView(0);
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = v5;
  v102 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_23E82E1DC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v93 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A350, &qword_23E830150);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v8 = &v89 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A358, &qword_23E830158);
  v104 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v10 = &v89 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A360, &qword_23E830160);
  v106 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v126 = &v89 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A368, &qword_23E830168);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v114 = &v89 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A370, &qword_23E830170);
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v109 = &v89 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A378, &qword_23E830178);
  MEMORY[0x28223BE20](v107);
  v120 = &v89 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A380, &qword_23E830180);
  MEMORY[0x28223BE20](v117);
  v119 = &v89 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A388, &qword_23E830188);
  MEMORY[0x28223BE20](v110);
  v113 = &v89 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  v17 = MEMORY[0x28223BE20](v111);
  v124 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v128 = &v89 - v21;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v22 = qword_27E35D0B8;
  v90 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v23 = qword_27E35D0B8;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v23 = 0;
  }

  v89 = v23;
  v24 = sub_23E82DCDC();
  v26 = v25;

  v96 = v2[5];
  v95 = v2[6];
  v94 = v2[7];
  *&v129 = v96;
  *(&v129 + 1) = v95;
  *&v130 = v94;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  v27 = sub_23E82E89C();
  v91 = v2;
  *&v136 = v24;
  *(&v136 + 1) = v26;
  sub_23E7F84B0(v27, v28, v29);
  sub_23E82E96C();
  v30 = v93;
  sub_23E82E1CC();
  v31 = sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150, MEMORY[0x277CDF1A8]);
  v32 = v10;
  v33 = v97;
  sub_23E82E6FC();
  (*(v99 + 8))(v30, v100);
  (*(v98 + 8))(v8, v33);
  v34 = v2;
  v35 = v102;
  sub_23E7F82F0(v34, v102);
  v36 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v37 = swift_allocObject();
  sub_23E7F835C(v35, v37 + v36);
  v38 = v103;
  sub_23E82E27C();
  *&v136 = v33;
  *(&v136 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v101;
  sub_23E82E7DC();

  (*(v116 + 8))(v38, v121);
  (*(v104 + 8))(v32, v40);
  *&v136 = v96;
  *(&v136 + 1) = v95;
  v137 = v94;
  sub_23E82E87C();
  v136 = v129;
  v41 = v91;
  sub_23E7F82F0(v91, v35);
  v42 = swift_allocObject();
  sub_23E7F835C(v35, v42 + v36);
  *&v129 = v40;
  *(&v129 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = MEMORY[0x277D837F8];
  v45 = v114;
  v46 = v118;
  v47 = MEMORY[0x277D837D0];
  v48 = v126;
  sub_23E82E7CC();

  (*(v106 + 8))(v48, v46);
  v49 = *(v41 + 72);
  v50 = *(v41 + 80);
  LOBYTE(v136) = *(v41 + 64);
  *(&v136 + 1) = v49;
  LOBYTE(v137) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E12C();
  *&v136 = v46;
  *(&v136 + 1) = v47;
  v137 = v43;
  v138 = v44;
  swift_getOpaqueTypeConformance2();
  v51 = v109;
  v52 = v123;
  sub_23E82E79C();

  (*(v122 + 8))(v45, v52);
  LOBYTE(v31) = sub_23E82E5CC();
  v53 = v120;
  (*(v112 + 32))(v120, v51, v115);
  v54 = &v53[*(v107 + 36)];
  *v54 = v31;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  v54[40] = 1;
  v55 = objc_opt_self();
  v56 = [v55 tertiarySystemFillColor];
  v57 = sub_23E82E7EC();
  LOBYTE(v52) = sub_23E82E5CC();
  v58 = v53;
  v59 = v119;
  sub_23E7F8764(v58, v119, &qword_27E35A378, &qword_23E830178);
  v60 = v59 + *(v117 + 36);
  *v60 = v57;
  *(v60 + 8) = v52;
  v61 = v113;
  sub_23E82DFCC();
  sub_23E7F8764(v59, v61, &qword_27E35A380, &qword_23E830180);
  KeyPath = swift_getKeyPath();
  v63 = v61;
  v64 = v108;
  sub_23E7F8764(v63, v108, &qword_27E35A388, &qword_23E830188);
  v65 = v64 + *(v111 + 36);
  *v65 = KeyPath;
  *(v65 + 8) = 1;
  sub_23E7F8764(v64, v128, &qword_27E35A390, &qword_23E830190);
  v66 = *(v41 + 96);
  LOBYTE(v136) = *(v41 + 88);
  *(&v136 + 1) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E87C();
  v127 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v129 == 1)
  {
    sub_23E82E43C();
    if (!v90)
    {
      v75 = [objc_opt_self() mainBundle];
    }

    v76 = v89;
    v127 = sub_23E82E68C();
    v67 = v77;
    v68 = v78;
    LOBYTE(v136) = v79 & 1;
    v80 = [v55 secondaryLabelColor];
    v70 = sub_23E82E7EC();
    v74 = v136;
    v72 = sub_23E82E66C();
    v71 = swift_getKeyPath();
    v73 = swift_getKeyPath();
    v69 = sub_23E7F78C0;
  }

  v81 = v124;
  sub_23E7F164C(v128, v124);
  v82 = v125;
  sub_23E7F164C(v81, v125);
  v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B8, &qword_23E8301D8) + 48);
  v84 = v127;
  *&v129 = v127;
  *(&v129 + 1) = v67;
  *&v130 = v74;
  *(&v130 + 1) = v68;
  v131 = v69;
  v132 = 0uLL;
  *&v133 = v70;
  *(&v133 + 1) = v71;
  *&v134 = v72;
  *(&v134 + 1) = v73;
  v135 = 0;
  *(v83 + 96) = 0;
  v85 = v130;
  *v83 = v129;
  *(v83 + 16) = v85;
  v86 = v132;
  *(v83 + 32) = v131;
  *(v83 + 48) = v86;
  v87 = v134;
  *(v83 + 64) = v133;
  *(v83 + 80) = v87;
  sub_23E7F87CC(&v129, &v136);
  sub_23E7F16BC(v128);
  *&v136 = v84;
  *(&v136 + 1) = v67;
  v137 = v74;
  v138 = v68;
  v139 = v69;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = v70;
  v144 = v71;
  v145 = v72;
  v146 = v73;
  v147 = 0;
  sub_23E7F883C(&v136);
  return sub_23E7F16BC(v81);
}

void *sub_23E7F747C(uint64_t a1)
{
  v2 = sub_23E82DC9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 96);
  LOBYTE(v26) = *(a1 + 88);
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  result = sub_23E82E87C();
  if ((v24 & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v26 = v8;
    v27 = v9;
    v28 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
    sub_23E82E87C();
    v12 = v24;
    v11 = v25;

    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(a1 + 32);
      v26 = v8;
      v27 = v9;
      v28 = v10;
      sub_23E82E87C();
      v26 = v24;
      v27 = v25;
      v15 = sub_23E82DC8C();
      sub_23E7F84B0(v15, v16, v17);
      v18 = sub_23E82EC6C();
      v20 = v19;
      (*(v3 + 8))(v5, v2);

      v21 = v14 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
      swift_beginAccess();
      v22 = (v21 + *(type metadata accessor for AdaptiveVoiceShortcut(0) + 20));
      *v22 = v18;
      v22[1] = v20;

      return sub_23E810118();
    }
  }

  return result;
}

uint64_t sub_23E7F7678(uint64_t *a1)
{
  v2 = sub_23E82DC9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a1[7];
  v21 = *(a1 + 5);
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();
  v21 = v20;
  v7 = sub_23E82DC8C();
  sub_23E7F84B0(v7, v8, v9);
  sub_23E82EC6C();
  (*(v3 + 8))(v5, v2);

  type metadata accessor for AVSCommandNameViewModel();
  sub_23E7F8B70(&qword_27E35A2D0, v10, type metadata accessor for AVSCommandNameViewModel, &unk_23E830084);
  v11 = *(sub_23E82E18C() + 16);

  v12 = sub_23E82EA9C();
  v14 = v13;

  *&v21 = v12;
  *(&v21 + 1) = v14;
  v19 = &v21;
  v15 = sub_23E7F8908(sub_23E7F8B0C, v18, v11);

  v16 = a1[12];
  LOBYTE(v21) = *(a1 + 88);
  *(&v21 + 1) = v16;
  LOBYTE(v20) = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  return sub_23E82E88C();
}

uint64_t sub_23E7F78C0()
{
  v0 = sub_23E82E9BC();
  v17 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E82E9EC();
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E82EA0C();
  v13 = *(v6 - 8);
  v14 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7F88A4();
  v9 = sub_23E82EC0C();
  sub_23E82E9FC();
  aBlock[4] = sub_23E7F7C0C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E7F8B70(&qword_27E35A3D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410, MEMORY[0x277D83970]);
  sub_23E82ECAC();
  MEMORY[0x23EF14C90](v8, v5, v2, v10);
  _Block_release(v10);

  (*(v17 + 8))(v2, v0);
  (*(v15 + 8))(v5, v16);
  return (*(v13 + 8))(v8, v14);
}

void sub_23E7F7C0C()
{
  v0 = *MEMORY[0x277D76438];
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v2 = qword_27E35D0B8;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  v3 = v1;
  sub_23E82DCDC();

  argument = sub_23E82EA5C();

  UIAccessibilityPostNotification(v0, argument);
}

uint64_t sub_23E7F7D48@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_23E82DF7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v20 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  *a4 = sub_23E7F5D70;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  type metadata accessor for AVSCoordinatorObject(0);
  sub_23E7F8B70(&qword_27E35A2E0, 255, type metadata accessor for AVSCoordinatorObject, &protocol conformance descriptor for AVSCoordinatorObject);
  *(a4 + 24) = sub_23E82E24C();
  *(a4 + 32) = v13;
  v21 = a2;
  v22 = a3;
  sub_23E82E86C();
  v14 = v24;
  *(a4 + 40) = v23;
  *(a4 + 56) = v14;
  *(a4 + 64) = sub_23E82E13C() & 1;
  *(a4 + 72) = v15;
  *(a4 + 80) = v16 & 1;
  LOBYTE(v21) = 0;
  sub_23E82E86C();
  v17 = *(&v23 + 1);
  *(a4 + 88) = v23;
  *(a4 + 96) = v17;
  type metadata accessor for AVSCommandNameView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3F0, &unk_23E830520);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23E830030;
  sub_23E82DF6C();
  *&v23 = v18;
  sub_23E7F8B70(&qword_27E35A228, 255, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0, MEMORY[0x277D83970]);
  sub_23E82ECAC();
  (*(v8 + 16))(v20, v12, v7);
  sub_23E82E86C();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_23E7F8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = *(a1 - 8);
  v3 = *(v14 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A308, &unk_23E830110);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  sub_23E7F5DB4();
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  sub_23E7F5640(&qword_27E35A310, &qword_27E35A308, &unk_23E830110, MEMORY[0x277CE7668]);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  v8 = v13;
  sub_23E82E7BC();
  (*(v5 + 8))(v7, v4);
  sub_23E7F82F0(v2, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v10 = swift_allocObject();
  sub_23E7F835C(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A318, &qword_23E830120);
  v12 = (v8 + *(result + 36));
  *v12 = sub_23E7F83C0;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_23E7F82F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSCommandNameView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F835C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSCommandNameView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7F83F8()
{
  result = qword_27E35A330;
  if (!qword_27E35A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A328, &qword_23E830138);
    sub_23E7F5640(&qword_27E35A338, &qword_27E35A340, &qword_23E830140, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A330);
  }

  return result;
}

unint64_t sub_23E7F84B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A3A0;
  if (!qword_27E35A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3A0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AVSCommandNameView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_23E7F8354(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + v1[11];
  v6 = sub_23E82DF7C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F866C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AVSCommandNameView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void *sub_23E7F86E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3E8, &qword_23E830220);
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

uint64_t sub_23E7F8764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7F87CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3C0, &qword_23E8301E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F883C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3C0, &qword_23E8301E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E7F88A4()
{
  result = qword_27E35A3C8;
  if (!qword_27E35A3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35A3C8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E7F8908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void *sub_23E7F89B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E7F8B0C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E82EF0C() & 1;
  }
}

uint64_t sub_23E7F8B70(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7F8BB8()
{
  result = qword_27E35A3F8;
  if (!qword_27E35A3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A318, &qword_23E830120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A308, &unk_23E830110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
    sub_23E7F5640(&qword_27E35A310, &qword_27E35A308, &unk_23E830110, MEMORY[0x277CE7668]);
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3F8);
  }

  return result;
}

uint64_t sub_23E7F8D54(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  return v3;
}

uint64_t sub_23E7F8DC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A608, &qword_23E830548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__siriShortcuts;
  v7 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  sub_23E82E08C();
  v8 = *(v3 + 32);
  v8(v1 + v6, v5, v2);
  v9 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__axShortcuts;
  aBlock[0] = v7;
  sub_23E82E08C();
  v8(v1 + v9, v5, v2);
  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__systemShortcuts;
  aBlock[0] = v7;
  sub_23E82E08C();
  v8(v1 + v10, v5, v2);
  v11 = [objc_opt_self() standardClient];
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23E8011D0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E7F9A50;
  aBlock[3] = &block_descriptor_85;
  v13 = _Block_copy(aBlock);

  [v11 getVoiceShortcutsWithCompletion_];
  _Block_release(v13);

  if (qword_27E35A1D0 != -1)
  {
    swift_once();
  }

  v14 = qword_27E35D0C0;
  v15 = *(qword_27E35D0C0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  v16 = sub_23E82E0BC();
  sub_23E7F9924(v15);
  v16(aBlock, 0);

  v17 = *(v14 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v18 = sub_23E82E0BC();
  sub_23E7F9924(v17);
  v18(aBlock, 0);

  return v1;
}

void *sub_23E7F9140(unint64_t a1, void *a2, uint64_t a3)
{
  v58 = a3;
  v65 = a1;
  v4 = sub_23E82E00C();
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E82DDDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AvailableShortcutAction(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  result = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v57 - v17;
  if (a2)
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v4, qword_27E35A958);
    swift_beginAccess();
    v20 = v64;
    v64[2](v6, v19, v4);
    v21 = a2;
    v22 = sub_23E82DFEC();
    v23 = sub_23E82EBCC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66 = a2;
      v67 = v25;
      *v24 = 136315138;
      v26 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A620, &qword_23E830560);
      v27 = sub_23E82EA8C();
      v29 = sub_23E8257E0(v27, v28, &v67);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_23E7EF000, v22, v23, "Error retrieving known shortcuts names: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23EF15860](v25, -1, -1);
      MEMORY[0x23EF15860](v24, -1, -1);
    }

    return (v20[1])(v6, v4);
  }

  else
  {
    v30 = v58;
    v62 = v12;
    v63 = v11;
    v64 = v10;
    if (v65)
    {
      v61 = v7;
      if (v65 >> 62)
      {
        v31 = sub_23E82ECDC();
      }

      else
      {
        v31 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v57 = v18;
        v68[0] = MEMORY[0x277D84F90];
        result = sub_23E800950(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          return result;
        }

        v33 = 0;
        v32 = v68[0];
        v34 = v65;
        v59 = v65 & 0xC000000000000001;
        v60 = v31;
        v35 = (v8 + 40);
        do
        {
          if (v59)
          {
            v36 = MEMORY[0x23EF14DD0](v33);
          }

          else
          {
            v36 = *(v34 + 8 * v33 + 32);
          }

          v37 = v36;
          v38 = [v36 shortcutName];
          v39 = sub_23E82EA6C();
          v41 = v40;

          v42 = [v37 identifier];
          v43 = sub_23E82EA6C();
          v45 = v44;

          v46 = v64;
          sub_23E82DDCC();
          sub_23E82DDCC();

          (*v35)(v14, v46, v61);
          v47 = v63;
          v48 = &v14[*(v63 + 20)];
          *v48 = v39;
          v48[1] = v41;
          v49 = &v14[*(v47 + 24)];
          *v49 = v43;
          *(v49 + 1) = v45;
          v49[16] = 0;
          v68[0] = v32;
          v51 = *(v32 + 16);
          v50 = *(v32 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_23E800950((v50 > 1), v51 + 1, 1);
            v32 = v68[0];
          }

          ++v33;
          *(v32 + 16) = v51 + 1;
          sub_23E8000FC(v14, v32 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v51, type metadata accessor for AvailableShortcutAction);
          v34 = v65;
        }

        while (v60 != v33);
        v18 = v57;
        v52 = v58;
      }

      else
      {
        v52 = v30;
      }

      v53 = sub_23E82EB9C();
      (*(*(v53 - 8) + 56))(v18, 1, 1, v53);
      sub_23E82EB6C();

      v54 = sub_23E82EB5C();
      v55 = swift_allocObject();
      v56 = MEMORY[0x277D85700];
      v55[2] = v54;
      v55[3] = v56;
      v55[4] = v52;
      v55[5] = v32;
      sub_23E80C4C4(0, 0, v18, &unk_23E830558, v55);
    }
  }

  return result;
}

uint64_t sub_23E7F9760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[9] = a1;
  sub_23E82EB6C();
  v5[12] = sub_23E82EB5C();
  v7 = sub_23E82EB4C();

  return MEMORY[0x2822009F8](sub_23E7F97FC, v7, v6);
}

uint64_t sub_23E7F97FC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 88);
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = sub_23E82E0BC();
    sub_23E7F9924(v2);
    v3(v0 + 16, 0);
  }

  **(v0 + 72) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E7F9924(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23E803160(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AvailableShortcutAction(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23E7F9A50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23E8011D8(0, &qword_27E35A610, 0x277D79D90);
    v4 = sub_23E82EB0C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_23E7F9AF4()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__siriShortcuts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A608, &qword_23E830548);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__axShortcuts, v2);
  v3(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__systemShortcuts, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_23E7F9C10(uint64_t a1)
{
  sub_23E7F9F34(319, &qword_27E35A428, &qword_27E35A430, &qword_23E830258, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23E7F9D18(uint64_t a1)
{
  sub_23E7F5B78(319);
  if (v1 <= 0x3F)
  {
    sub_23E7F9E58(319);
    if (v2 <= 0x3F)
    {
      sub_23E8014A0(319, &qword_27E35A2E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23E7F9F34(319, &qword_27E35A460, &qword_27E35A468, &qword_23E830290, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23E8014A0(319, &qword_27E35A2F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23E7F9E58(uint64_t a1)
{
  if (!qword_27E35A450)
  {
    type metadata accessor for AVSCommandShortcutActionViewModel(255);
    sub_23E7F9EEC(&qword_27E35A458, type metadata accessor for AVSCommandShortcutActionViewModel, &unk_23E830298);
    v1 = sub_23E82E1AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35A450);
    }
  }
}

uint64_t sub_23E7F9EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23E7F9F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23E7F9F98@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AVSCommandShortcutActionViewModel(0);
  result = sub_23E82E07C();
  *a2 = result;
  return result;
}

uint64_t sub_23E7F9FF4()
{
  type metadata accessor for AVSCommandShortcutActionViewModel(0);
  v0 = swift_allocObject();
  sub_23E7F8DC0();
  return v0;
}

uint64_t sub_23E7FA030@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v56 = sub_23E82E3DC();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23E82E4CC();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23E82E4DC();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A470, &qword_23E830320);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A478, &qword_23E830328);
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v39 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A480, &qword_23E830330);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A488, &qword_23E830338);
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14);
  v49 = &v39 - v15;
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A490, &unk_23E830340);
  sub_23E7F5640(&qword_27E35A498, &qword_27E35A490, &unk_23E830340, MEMORY[0x277CE14C0]);
  sub_23E82E67C();
  v40 = v1;
  v16 = *(v1 + 56);
  v63 = *(v1 + 40);
  v64 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E89C();
  sub_23E82E4BC();
  sub_23E82E4AC();
  (*(v42 + 8))(v4, v44);
  v38 = sub_23E7F5640(&qword_27E35A4A0, &qword_27E35A470, &qword_23E830320, MEMORY[0x277CDE5A0]);
  sub_23E82E6DC();
  v17 = v41;

  (*(v45 + 8))(v6, v47);
  (*(v43 + 8))(v9, v7);
  v57 = v40;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v59 = v7;
  v60 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350, MEMORY[0x277CDF028]);
  v47 = v13;
  sub_23E82E7BC();
  (*(v46 + 8))(v11, v17);
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v21 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v22 = [objc_opt_self() mainBundle];
  }

  v23 = v21;
  v24 = sub_23E82E68C();
  v26 = v25;
  v28 = v27;
  v59 = v17;
  v60 = v18;
  v61 = OpaqueTypeConformance2;
  v62 = v20;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v49;
  v31 = v50;
  v32 = v47;
  sub_23E82E71C();
  sub_23E7FFB78(v24, v26, v28 & 1);

  (*(v48 + 8))(v32, v31);
  v34 = v53;
  v33 = v54;
  v35 = v56;
  (*(v54 + 104))(v53, *MEMORY[0x277CDDDC0], v56);
  v59 = v31;
  v60 = v29;
  swift_getOpaqueTypeConformance2();
  v36 = v52;
  sub_23E82E76C();
  (*(v33 + 8))(v34, v35);
  return (*(v51 + 8))(v30, v36);
}

uint64_t sub_23E7FA8D4@<X0>(char *a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4A8, &qword_23E830358);
  v80 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v69 = &v69 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4B0, &qword_23E830360);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v74 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v82 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4B8, &qword_23E830368);
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v71 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v69 - v23;
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v24 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v77 = v24;
  v84 = sub_23E82E68C();
  v85 = v26;
  v86 = v27 & 1;
  v87 = v28;
  MEMORY[0x28223BE20](v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4C0, &qword_23E830370);
  sub_23E7FFBBC();
  sub_23E82E90C();
  v29 = *(sub_23E7FBBF8(&unk_23E8304B0, &unk_23E8304D8, sub_23E800C94) + 16);

  if (v29)
  {
    sub_23E82E43C();
    if (!v24)
    {
      v30 = [objc_opt_self() mainBundle];
    }

    v31 = v77;
    v84 = sub_23E82E68C();
    v85 = v32;
    v86 = v33 & 1;
    v87 = v34;
    MEMORY[0x28223BE20](v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    sub_23E82E90C();
    v35 = v80;
    v36 = v82;
    (*(v80 + 32))(v82, v7, v1);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v82;
    v35 = v80;
  }

  v38 = *(v35 + 56);
  v39 = 1;
  v38(v36, v37, 1, v1);
  v40 = *(sub_23E7FBBF8(&unk_23E830468, &unk_23E830490, sub_23E801C04) + 16);

  if (v40)
  {
    sub_23E82E43C();
    if (!v24)
    {
      v41 = [objc_opt_self() mainBundle];
    }

    v42 = v77;
    v84 = sub_23E82E68C();
    v85 = v43;
    v86 = v44 & 1;
    v87 = v45;
    MEMORY[0x28223BE20](v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    v46 = v69;
    sub_23E82E90C();
    v47 = v83;
    (*(v80 + 32))(v83, v46, v1);
    v39 = 0;
  }

  else
  {
    v47 = v83;
  }

  v48 = 1;
  v38(v47, v39, 1, v1);
  v49 = *(sub_23E7FBBF8(&unk_23E830418, &unk_23E830440, sub_23E801C04) + 16);

  if (v49)
  {
    sub_23E82E43C();
    if (!v24)
    {
      v50 = [objc_opt_self() mainBundle];
    }

    v51 = v77;
    v84 = sub_23E82E68C();
    v85 = v52;
    v86 = v53 & 1;
    v87 = v54;
    MEMORY[0x28223BE20](v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    v55 = v70;
    sub_23E82E90C();
    v56 = v78;
    (*(v80 + 32))(v78, v55, v1);
    v48 = 0;
  }

  else
  {
    v56 = v78;
  }

  v38(v56, v48, 1, v1);
  v57 = v71;
  v58 = v72;
  v59 = *(v72 + 16);
  v60 = v73;
  v59(v71, v81, v73);
  v61 = v56;
  sub_23E8001E0(v82, v79, &qword_27E35A4B0, &qword_23E830360);
  v62 = v74;
  sub_23E8001E0(v83, v74, &qword_27E35A4B0, &qword_23E830360);
  v63 = v75;
  sub_23E8001E0(v61, v75, &qword_27E35A4B0, &qword_23E830360);
  v64 = v76;
  v59(v76, v57, v60);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A500, &qword_23E830390);
  v66 = v79;
  sub_23E8001E0(v79, &v64[v65[12]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E8001E0(v62, &v64[v65[16]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E8001E0(v63, &v64[v65[20]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v78, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v83, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v82, &qword_27E35A4B0, &qword_23E830360);
  v67 = *(v58 + 8);
  v67(v81, v60);
  sub_23E7F55E0(v63, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v62, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v66, &qword_27E35A4B0, &qword_23E830360);
  return (v67)(v57, v60);
}

uint64_t sub_23E7FB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = type metadata accessor for AVSCommandShortcutActionView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = v6;
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4D0, &qword_23E830378);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  MEMORY[0x28223BE20](v8);
  v26 = &v23 - v10;
  sub_23E80007C(a1, v7, type metadata accessor for AVSCommandShortcutActionView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_23E8000FC(v7, v12 + v11, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5A0, &unk_23E8304F8);
  sub_23E7F5640(&qword_27E35A5A8, &qword_27E35A5A0, &unk_23E8304F8, MEMORY[0x277CE1138]);
  sub_23E82E8BC();
  v13 = v24;
  v14 = v24 + *(v4 + 40);
  v15 = *v14;
  v16 = *(v14 + 8);
  v30 = v15;
  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  sub_23E80007C(v13, v7, type metadata accessor for AVSCommandShortcutActionView);
  v17 = swift_allocObject();
  sub_23E8000FC(v7, v17 + v11, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4D8, &qword_23E830380);
  sub_23E7F5640(&qword_27E35A4E0, &qword_27E35A4D0, &qword_23E830378, MEMORY[0x277CDF028]);
  sub_23E7F5640(&qword_27E35A4E8, &qword_27E35A4D8, &qword_23E830380, MEMORY[0x277CDDA18]);
  v18 = v29;
  v20 = v26;
  v19 = v27;
  sub_23E82E78C();

  (*(v28 + 8))(v20, v19);
  v21 = sub_23E82E84C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4C0, &qword_23E830370);
  *(v18 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_23E7FB7A0(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E8304B0, &unk_23E8304D8, sub_23E800C94);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258, MEMORY[0x277D83980]);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FB9CC(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E830468, &unk_23E830490, sub_23E801C04);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258, MEMORY[0x277D83980]);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FBBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v5 = *(v3 + 56);
  v12 = *(v3 + 40);
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();

  if ((v11 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v6 = v10[5] & 0xFFFFFFFFFFFFLL;
  }

  type metadata accessor for AVSCommandShortcutActionViewModel(0);
  sub_23E7F9EEC(&qword_27E35A458, type metadata accessor for AVSCommandShortcutActionViewModel, &unk_23E830298);
  sub_23E82E18C();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v6)
  {
    sub_23E82E0CC();

    MEMORY[0x28223BE20](v7);
    v10[2] = v3;
    return sub_23E7FE0FC(a3, v10, v8);
  }

  else
  {
    sub_23E82E0CC();

    return v12;
  }
}

uint64_t sub_23E7FBDA4(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E830418, &unk_23E830440, sub_23E801C04);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258, MEMORY[0x277D83980]);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FBFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v21 = a3;
  v22 = a6;
  v8 = type metadata accessor for AvailableShortcutAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for AVSCommandShortcutActionView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E80007C(a2, v14, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E80007C(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailableShortcutAction);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_23E8000FC(v14, v17 + v15, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E8000FC(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AvailableShortcutAction);
  v25 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A548, &qword_23E8303D0);
  sub_23E7F5640(&qword_27E35A550, &qword_27E35A548, &qword_23E8303D0, MEMORY[0x277CE1138]);
  v18 = v22;
  sub_23E82E8BC();
  v19 = sub_23E82E84C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  *(v18 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_23E7FC230(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E80007C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  return sub_23E82E8BC();
}

uint64_t sub_23E7FC378(uint64_t a1)
{
  v1 = (*(a1 + 8) + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(v3);
}

uint64_t sub_23E7FC3E8(uint64_t a1)
{
  v45 = sub_23E82E9BC();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E82E9EC();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AVSCommandShortcutActionView(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23E82EA0C();
  v50 = *(v40 - 8);
  v7 = MEMORY[0x28223BE20](v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = sub_23E82DDDC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  sub_23E800170(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  v22 = v39;
  sub_23E82E88C();
  sub_23E7F55E0(v19, &qword_27E35A468, &qword_23E830290);
  v23 = *(v22 + 8);
  sub_23E80007C(a1, v13, type metadata accessor for AvailableShortcutAction);
  v24 = type metadata accessor for AvailableShortcutAction(0);
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  v25 = v23 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v26 = type metadata accessor for AdaptiveVoiceShortcut(0);
  sub_23E800310(v13, v25 + *(v26 + 28));
  swift_endAccess();
  sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
  v27 = sub_23E82EC0C();
  sub_23E82E9FC();
  sub_23E82EA1C();
  v28 = *(v50 + 8);
  v50 += 8;
  v29 = v40;
  v28(v9, v40);
  v30 = v41;
  sub_23E80007C(v22, v41, type metadata accessor for AVSCommandShortcutActionView);
  v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v32 = swift_allocObject();
  sub_23E8000FC(v30, v32 + v31, type metadata accessor for AVSCommandShortcutActionView);
  aBlock[4] = sub_23E800380;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor_0;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E7F9EEC(&qword_27E35A3D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410, MEMORY[0x277D83970]);
  v36 = v44;
  v35 = v45;
  sub_23E82ECAC();
  v37 = v49;
  MEMORY[0x23EF14C90](v49, v34, v36, v33);
  _Block_release(v33);

  (*(v48 + 8))(v36, v35);
  (*(v46 + 8))(v34, v47);
  return (v28)(v37, v29);
}

uint64_t sub_23E7FCAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23E82E3EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A558, &qword_23E8303D8);
  return sub_23E7FCB2C(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23E7FCB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A560, &unk_23E8303E0);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v54 - v5;
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A568, &unk_23E830B30);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A570, &qword_23E8303F0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v64 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v54 - v24;
  v25 = type metadata accessor for AvailableShortcutAction(0);
  v26 = (a1 + *(v25 + 20));
  v27 = v26[1];
  v68 = *v26;
  v69 = v27;
  sub_23E7F84B0(v25, v28, v29);

  v30 = sub_23E82E69C();
  v60 = v31;
  v61 = v30;
  v59 = v32;
  v62 = v33;
  type metadata accessor for AVSCommandShortcutActionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  sub_23E82E87C();
  (*(v7 + 16))(v18, a1, v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v34 = *(v10 + 56);
  sub_23E800170(v20, v12);
  sub_23E800170(v18, &v12[v34]);
  v35 = *(v7 + 48);
  if (v35(v12, 1, v6) == 1)
  {
    sub_23E7F55E0(v18, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v20, &qword_27E35A468, &qword_23E830290);
    if (v35(&v12[v34], 1, v6) == 1)
    {
      sub_23E7F55E0(v12, &qword_27E35A468, &qword_23E830290);
LABEL_9:
      v44 = sub_23E82E85C();
      v45 = sub_23E82E7FC();
      v68 = v44;
      v69 = v45;
      sub_23E82E64C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
      sub_23E800258();
      v46 = v56;
      sub_23E82E6CC();

      v38 = v65;
      v37 = v66;
      v39 = v63;
      (*(v65 + 32))(v63, v46, v66);
      v36 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_23E800170(v12, v58);
  if (v35(&v12[v34], 1, v6) == 1)
  {
    sub_23E7F55E0(v18, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v20, &qword_27E35A468, &qword_23E830290);
    (*(v7 + 8))(v58, v6);
LABEL_6:
    sub_23E7F55E0(v12, &qword_27E35A568, &unk_23E830B30);
    goto LABEL_7;
  }

  v40 = v55;
  (*(v7 + 32))(v55, &v12[v34], v6);
  sub_23E7F9EEC(&qword_27E35A590, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v41 = v58;
  v42 = sub_23E82EA4C();
  v43 = *(v7 + 8);
  v43(v40, v6);
  sub_23E7F55E0(v18, &qword_27E35A468, &qword_23E830290);
  sub_23E7F55E0(v20, &qword_27E35A468, &qword_23E830290);
  v43(v41, v6);
  sub_23E7F55E0(v12, &qword_27E35A468, &qword_23E830290);
  if (v42)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = 1;
  v38 = v65;
  v37 = v66;
  v39 = v63;
LABEL_10:
  (*(v38 + 56))(v39, v36, 1, v37);
  v47 = v64;
  sub_23E8001E0(v39, v64, &qword_27E35A570, &qword_23E8303F0);
  v48 = v67;
  v50 = v60;
  v49 = v61;
  *v67 = v61;
  v48[1] = v50;
  v51 = v59 & 1;
  *(v48 + 16) = v59 & 1;
  v48[3] = v62;
  v48[4] = 0;
  *(v48 + 40) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A578, &qword_23E8303F8);
  sub_23E8001E0(v47, v48 + *(v52 + 64), &qword_27E35A570, &qword_23E8303F0);
  sub_23E800248(v49, v50, v51);

  sub_23E7F55E0(v39, &qword_27E35A570, &qword_23E8303F0);
  sub_23E7F55E0(v47, &qword_27E35A570, &qword_23E8303F0);
  sub_23E7FFB78(v49, v50, v51);
}

uint64_t sub_23E7FD258(uint64_t a1)
{
  type metadata accessor for AVSCommandShortcutActionView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E87C();
  sub_23E82E88C();
}

__n128 sub_23E7FD304@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23E82E3EC();
  sub_23E7FD374(&v8);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_23E7FD374@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  v5 = sub_23E82E68C();
  v7 = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  v9 = v8 & 1;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_23E800248(v5, v6, v8 & 1);

  sub_23E7FFB78(v5, v7, v9);
}

uint64_t sub_23E7FD4D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5B0, &qword_23E830508);
  type metadata accessor for SiriRequestView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5B8, &qword_23E830510);
  sub_23E7F9EEC(&qword_27E35A5C0, type metadata accessor for SiriRequestView, &unk_23E830590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5C8, &qword_23E830518);
  sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23E82E2DC();
}

uint64_t sub_23E7FD64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_23E82DF7C();
  v33 = *(v3 - 8);
  v34 = v33;
  v4 = MEMORY[0x28223BE20](v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - v6;
  v7 = type metadata accessor for AVSCommandShortcutActionView(0);
  v8 = v7 - 8;
  v30 = *(v7 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SiriRequestView(0);
  MEMORY[0x28223BE20](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 40);
  v32 = a1;
  v14 = (a1 + v13);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v41) = v15;
  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  v17 = v39;
  v18 = v40;
  sub_23E80007C(a1, v10, type metadata accessor for AVSCommandShortcutActionView);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  sub_23E8000FC(v10, v20 + v19, type metadata accessor for AVSCommandShortcutActionView);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_23E82E86C();
  v21 = v40;
  *v12 = v39;
  *(v12 + 2) = v21;
  v12[24] = sub_23E82E13C() & 1;
  *(v12 + 4) = v22;
  v12[40] = v23 & 1;
  *(v12 + 3) = v17;
  v12[64] = v18;
  *(v12 + 9) = sub_23E800DB0;
  *(v12 + 10) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3F0, &unk_23E830520);
  v24 = v34;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23E830030;
  sub_23E82DF6C();
  *&v39 = v25;
  sub_23E7F9EEC(&qword_27E35A228, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0, MEMORY[0x277D83970]);
  v26 = v35;
  sub_23E82ECAC();
  (*(v24 + 16))(v36, v26, v3);
  sub_23E82E86C();
  (*(v24 + 8))(v26, v3);
  v38 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5B8, &qword_23E830510);
  sub_23E7F9EEC(&qword_27E35A5C0, type metadata accessor for SiriRequestView, &unk_23E830590);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5C8, &qword_23E830518);
  v28 = sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518, MEMORY[0x277CDD7A8]);
  *&v39 = v27;
  *(&v39 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_23E82E7AC();
  return sub_23E800E1C(v12, type metadata accessor for SiriRequestView);
}

uint64_t sub_23E7FDB64(uint64_t a1)
{
  v2 = sub_23E82E4FC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5C8, &qword_23E830518);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23E82E4EC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5D8, &qword_23E830530);
  sub_23E800E84();
  sub_23E82E1EC();
  v7 = sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EF145A0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23E7FDD1C(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5F0, &qword_23E830538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  sub_23E80007C(a1, &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AVSCommandShortcutActionView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23E8000FC(&v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E82E8BC();
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v11 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = v11;
  v14 = sub_23E82E68C();
  v16 = v15;
  v18 = v17;
  sub_23E7F5640(&qword_27E35A5E8, &qword_27E35A5F0, &qword_23E830538, MEMORY[0x277CDF028]);
  sub_23E82E72C();
  sub_23E7FFB78(v14, v16, v18 & 1);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23E7FE054(uint64_t a1)
{
  type metadata accessor for AVSCommandShortcutActionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  return sub_23E82E88C();
}

uint64_t sub_23E7FE0C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E85C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7FE0FC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AvailableShortcutAction(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_23E80007C(a3 + v15 + v16 * v13, v12, type metadata accessor for AvailableShortcutAction);
      v17 = a1(v12);
      if (v3)
      {
        sub_23E800E1C(v12, type metadata accessor for AvailableShortcutAction);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_23E8000FC(v12, v24, type metadata accessor for AvailableShortcutAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23E800950(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23E800950((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_23E8000FC(v24, v14 + v15 + v20 * v16, type metadata accessor for AvailableShortcutAction);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_23E800E1C(v12, type metadata accessor for AvailableShortcutAction);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_23E7FE388(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AvailableShortcutAction(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  v2 = sub_23E82E87C();
  sub_23E7F84B0(v2, v3, v4);
  v5 = sub_23E82EC8C();

  return v5 & 1;
}

uint64_t sub_23E7FE458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  sub_23E810118();
  v6 = sub_23E82DDDC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for AVSCommandShortcutActionView(0);
  sub_23E800170(v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  sub_23E82E88C();
  return sub_23E7F55E0(v5, &qword_27E35A468, &qword_23E830290);
}

uint64_t sub_23E7FE5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v2 = qword_27E35D0B8;
    v3 = qword_27E35D0B8;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v2 = 0;
  }

  v4 = v2;
  sub_23E82DCDC();

  if (!v1)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  type metadata accessor for SiriRequestView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
  v5 = sub_23E82E89C();
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A658, &qword_23E8305E8);
  sub_23E801580();
  return sub_23E82DF5C();
}

double sub_23E7FE894@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A670, &qword_23E8305F0);
  MEMORY[0x28223BE20](v109);
  v108 = &v88 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A680, &qword_23E8305F8);
  MEMORY[0x28223BE20](v106);
  v107 = &v88 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A690, &qword_23E830600);
  MEMORY[0x28223BE20](v104);
  v105 = &v88 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6A0, &qword_23E830608);
  MEMORY[0x28223BE20](v102);
  v103 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6E0, &unk_23E830640);
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v88 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A1F0, &qword_23E830610);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v11 = &v88 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6A8, &qword_23E830618);
  v95 = *(v96 - 1);
  MEMORY[0x28223BE20](v96);
  v94 = &v88 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6B0, &unk_23E830620);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A350, &qword_23E830150);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v88 - v16;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v111 = v11;
  v18 = qword_27E35D0B8;
  v99 = v9;
  if (qword_27E35D0B8)
  {
    v19 = qword_27E35D0B8;
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
    v18 = 0;
  }

  v20 = v18;
  v21 = sub_23E82DCDC();
  v23 = v22;

  v24 = *(v2 + 16);
  v115 = *v2;
  v116 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  v25 = sub_23E82E89C();
  v112 = v21;
  v113 = v23;
  sub_23E7F84B0(v25, v26, v27);
  sub_23E82E96C();
  v28 = v2;
  v29 = *(v2 + 24);
  v30 = *(v2 + 32);
  v31 = *(v2 + 40);
  v90 = v2;
  LOBYTE(v112) = v29;
  v113 = v30;
  LOBYTE(v114) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E12C();
  v32 = sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150, MEMORY[0x277CDF1A8]);
  v33 = v91;
  sub_23E82E79C();

  (*(v15 + 8))(v17, v14);
  v34 = sub_23E82E1DC();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82E1CC();
  v112 = v14;
  v113 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v94;
  v39 = v93;
  sub_23E82E6FC();
  (*(v35 + 8))(v37, v34);
  v92[1](v33, v39);
  v40 = type metadata accessor for SiriRequestView(0);
  v92 = &v88;
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v91 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = (&v88 - v91);
  sub_23E80007C(v28, &v88 - v91, type metadata accessor for SiriRequestView);
  v44 = *(v41 + 80);
  v45 = swift_allocObject();
  sub_23E8000FC(v43, v45 + ((v44 + 16) & ~v44), type metadata accessor for SiriRequestView);
  v46 = sub_23E82E28C();
  v88 = &v88;
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82E27C();
  v112 = v39;
  v113 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v50 = v96;
  sub_23E82E7DC();

  (*(v47 + 8))(v49, v46);
  v51 = (v95[1])(v38, v50);
  MEMORY[0x28223BE20](v51);
  v52 = (&v88 - v91);
  sub_23E80007C(v90, &v88 - v91, type metadata accessor for SiriRequestView);
  sub_23E82EB6C();
  v53 = sub_23E82EB5C();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  sub_23E8000FC(v52, v54 + ((v44 + 32) & ~v44), type metadata accessor for SiriRequestView);
  v56 = sub_23E82EB9C();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v88 - v59;
  sub_23E82EB7C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v94 = sub_23E82E2AC();
    v95 = &v88;
    v93 = *(v94 - 1);
    MEMORY[0x28223BE20](v94);
    v92 = (&v88 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_23E82ED2C();

    v112 = 0xD000000000000046;
    v113 = 0x800000023E832670;
    *&v115 = 296;
    v62 = sub_23E82EEFC();
    MEMORY[0x23EF14B60](v62);

    v96 = &v88;
    MEMORY[0x28223BE20](v63);
    (*(v57 + 16))(&v88 - v59, &v88 - v59, v56);
    v64 = v92;
    sub_23E82E29C();
    (*(v57 + 8))(v60, v56);
    v65 = v99;
    (*(v97 + 32))(v99, v111, v98);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A1F8, "tB");
    (*(v93 + 32))(&v65[*(v66 + 36)], v64, v94);
  }

  else
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A200, &qword_23E82FF18);
    v65 = v99;
    v68 = &v99[*(v67 + 36)];
    v69 = sub_23E82E22C();
    (*(v57 + 32))(&v68[*(v69 + 20)], &v88 - v59, v56);
    *v68 = &unk_23E830658;
    *(v68 + 1) = v54;
    (*(v97 + 32))(v65, v111, v98);
  }

  v70 = sub_23E82E5CC();
  v71 = v103;
  (*(v100 + 32))(v103, v65, v101);
  v72 = &v71[*(v102 + 36)];
  *v72 = v70;
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  v72[40] = 1;
  v73 = [objc_opt_self() tertiarySystemFillColor];
  v74 = sub_23E82E7EC();
  v75 = sub_23E82E5CC();
  v76 = v71;
  v77 = v105;
  sub_23E7F8764(v76, v105, &qword_27E35A6A0, &qword_23E830608);
  v78 = v77 + *(v104 + 36);
  *v78 = v74;
  *(v78 + 8) = v75;
  v79 = v107;
  sub_23E82DFCC();
  sub_23E7F8764(v77, v79, &qword_27E35A690, &qword_23E830600);
  KeyPath = swift_getKeyPath();
  v81 = v79;
  v82 = v108;
  sub_23E7F8764(v81, v108, &qword_27E35A680, &qword_23E8305F8);
  v83 = v82 + *(v109 + 36);
  *v83 = KeyPath;
  *(v83 + 8) = 1;
  LOBYTE(KeyPath) = sub_23E82E61C();
  v84 = v82;
  v85 = v110;
  sub_23E7F8764(v84, v110, &qword_27E35A670, &qword_23E8305F0);
  v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A658, &qword_23E8305E8) + 36);
  *v86 = KeyPath;
  result = 0.0;
  *(v86 + 8) = 0u;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 1;
  return result;
}

uint64_t sub_23E7FF7BC(uint64_t *a1)
{
  v2 = sub_23E82DDDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AvailableShortcutAction(0);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v30 = *a1;
  v31 = v8;
  v32 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();
  v11 = v28;
  v10 = v29;

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = a1[7];
    v15 = *(a1 + 64);
    v30 = a1[6];
    v31 = v14;
    LOBYTE(v32) = v15;
    LOBYTE(v28) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6E8, &qword_23E8306A0);
    sub_23E82E8DC();
    v30 = v7;
    v31 = v8;
    v32 = v9;
    sub_23E82E87C();
    v24 = v29;
    v25 = v28;
    v23 = v2;
    v30 = v7;
    v31 = v8;
    v32 = v9;
    sub_23E82E87C();
    v16 = v28;
    v17 = v29;
    v18 = v26;
    sub_23E82DDCC();
    sub_23E82DDCC();
    (*(v3 + 40))(v6, v18, v23);
    v19 = v27;
    v20 = &v6[*(v27 + 20)];
    v21 = v24;
    *v20 = v25;
    *(v20 + 1) = v21;
    v22 = &v6[*(v19 + 24)];
    *v22 = v16;
    *(v22 + 1) = v17;
    v22[16] = 2;
    (a1[9])(v6);
    v30 = v7;
    v31 = v8;
    v32 = v9;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_23E82E88C();
    return sub_23E800E1C(v6, type metadata accessor for AvailableShortcutAction);
  }

  return result;
}

uint64_t sub_23E7FFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_23E82EB6C();
  *(v3 + 48) = sub_23E82EB5C();
  v5 = sub_23E82EB4C();

  return MEMORY[0x2822009F8](sub_23E7FFACC, v5, v4);
}

uint64_t sub_23E7FFACC()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *(v0 + 16) = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E11C();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E7FFB78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23E7FFBBC()
{
  result = qword_27E35A4C8;
  if (!qword_27E35A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4C0, &qword_23E830370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4D0, &qword_23E830378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4D8, &qword_23E830380);
    sub_23E7F5640(&qword_27E35A4E0, &qword_27E35A4D0, &qword_23E830378, MEMORY[0x277CDF028]);
    sub_23E7F5640(&qword_27E35A4E8, &qword_27E35A4D8, &qword_23E830380, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A4C8);
  }

  return result;
}

unint64_t sub_23E7FFD4C()
{
  result = qword_27E35A510;
  if (!qword_27E35A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A510);
  }

  return result;
}

unint64_t sub_23E7FFDD0()
{
  result = qword_27E35A518;
  if (!qword_27E35A518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A520, &qword_23E8303A0);
    sub_23E7F5640(&qword_27E35A528, &qword_27E35A530, &qword_23E8303A8, MEMORY[0x277CDF028]);
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A518);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AVSCommandShortcutActionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_23E7F8354(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v0 + v3 + *(v1 + 28);
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E80007C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8000E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_23E8000FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E800170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8001E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E800248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23E800258()
{
  result = qword_27E35A588;
  if (!qword_27E35A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A580, &unk_23E830400);
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A588);
  }

  return result;
}

uint64_t sub_23E800310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8003AC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for AVSCommandShortcutActionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AvailableShortcutAction(0);
  v5 = *(*(v4 - 8) + 80);
  v13 = *(*(v4 - 8) + 64);

  sub_23E7F8354(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v6 = v0 + v3 + *(v1 + 28);
  v7 = sub_23E82DDDC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = v2 | v5;
  v10 = (v3 + v12 + v5) & ~v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);

  (*(v8 + 8))(v0 + v10, v7);

  sub_23E8000E4(*(v0 + v10 + *(v4 + 24)), *(v0 + v10 + *(v4 + 24) + 8), *(v0 + v10 + *(v4 + 24) + 16));

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v9 | 7);
}

uint64_t sub_23E800748()
{
  v1 = *(type metadata accessor for AVSCommandShortcutActionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AvailableShortcutAction(0) - 8);
  return sub_23E7FC3E8(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_23E80083C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  *a4 = v6;
  return result;
}

uint64_t sub_23E8008B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

char *sub_23E800930(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8009B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E800950(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E800ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E800970(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E800F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E800990(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8010CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E8009B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3E8, &qword_23E830220);
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

void *sub_23E800ABC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A598, &qword_23E830460);
  v10 = *(type metadata accessor for AvailableShortcutAction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AvailableShortcutAction(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23E800CE0()
{
  v1 = *(type metadata accessor for AVSCommandShortcutActionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23E7FD4D8(v2);
}

uint64_t sub_23E800D78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E800E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E800E84()
{
  result = qword_27E35A5E0;
  if (!qword_27E35A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5D8, &qword_23E830530);
    sub_23E7F5640(&qword_27E35A5E8, &qword_27E35A5F0, &qword_23E830538, MEMORY[0x277CDF028]);
    sub_23E7F9EEC(&qword_27E35A5F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A5E0);
  }

  return result;
}

void *sub_23E800F98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A628, &qword_23E830568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A630, &unk_23E830570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E8010CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A600, &qword_23E830540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23E8011D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23E801220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E801C00;

  return sub_23E7F9760(a1, v4, v5, v7, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

void sub_23E80138C(uint64_t a1)
{
  sub_23E8014A0(319, &qword_27E35A2E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_23E7F5C10();
    if (v2 <= 0x3F)
    {
      sub_23E8014A0(319, &qword_27E35A648, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_23E8014F0();
        if (v4 <= 0x3F)
        {
          sub_23E7F5CB4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23E8014A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23E8014F0()
{
  result = qword_27E35A650;
  if (!qword_27E35A650)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E35A650);
  }

  return result;
}

unint64_t sub_23E801580()
{
  result = qword_27E35A660;
  if (!qword_27E35A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A658, &qword_23E8305E8);
    sub_23E80160C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A660);
  }

  return result;
}

unint64_t sub_23E80160C()
{
  result = qword_27E35A668;
  if (!qword_27E35A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A670, &qword_23E8305F0);
    sub_23E8016C4();
    sub_23E7F5640(&qword_27E35A6D0, &qword_27E35A6D8, &qword_23E831B70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A668);
  }

  return result;
}

unint64_t sub_23E8016C4()
{
  result = qword_27E35A678;
  if (!qword_27E35A678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A680, &qword_23E8305F8);
    sub_23E801780();
    sub_23E7F9EEC(&qword_27E35A6C8, MEMORY[0x277CE7718], MEMORY[0x277CE7710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A678);
  }

  return result;
}

unint64_t sub_23E801780()
{
  result = qword_27E35A688;
  if (!qword_27E35A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A690, &qword_23E830600);
    sub_23E801838();
    sub_23E7F5640(&qword_27E35A6B8, &qword_27E35A6C0, &unk_23E830630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A688);
  }

  return result;
}

unint64_t sub_23E801838()
{
  result = qword_27E35A698;
  if (!qword_27E35A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6A0, &qword_23E830608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A1F0, &qword_23E830610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6A8, &qword_23E830618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6B0, &unk_23E830620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A350, &qword_23E830150);
    sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A698);
  }

  return result;
}

uint64_t sub_23E801A24()
{
  v2 = *(type metadata accessor for SiriRequestView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E801B00;

  return sub_23E7FFA34(v4, v5, v0 + v3);
}

uint64_t sub_23E801B00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_23E801C9C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_23E82EA5C();

  return v3;
}

uint64_t sub_23E801D20(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_23E801D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E82EA6C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_23E801DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_23E801E54(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_23E82EA6C();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_23E801F10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23E82EA5C();
  v2 = [v0 initWithSuiteName_];

  qword_2810C2530 = v2;
}

void sub_23E801F80()
{
  v0 = AXCPSharedResourcesDirectory();
  if (v0)
  {
    v1 = v0;
    v2 = sub_23E82EA6C();
    v4 = v3;

    qword_27E35A700 = v2;
    *algn_27E35A708 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E801FDC()
{
  sub_23E82ED2C();
  if (qword_27E35A1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A700;
  v0 = *algn_27E35A708;

  result = MEMORY[0x23EF14B60](0xD000000000000024, 0x800000023E8327F0);
  qword_27E35A710 = v1;
  *algn_27E35A718 = v0;
  return result;
}

uint64_t sub_23E8020A0()
{
  sub_23E82ED2C();
  if (qword_27E35A1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A700;
  v0 = *algn_27E35A708;

  result = MEMORY[0x23EF14B60](0xD000000000000025, 0x800000023E8327C0);
  qword_27E35A720 = v1;
  *algn_27E35A728 = v0;
  return result;
}

uint64_t AVSStore.save(avsShortcut:)(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E803FC0();
  sub_23E80A318(a1, v5, type metadata accessor for AdaptiveVoiceShortcut);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_23E8031D8(0, v6[2] + 1, 1, v6, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_23E8031D8((v7 > 1), v8 + 1, 1, v6, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
  }

  v6[2] = v8 + 1;
  sub_23E8057CC(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8);
  sub_23E805830(v6);
}

uint64_t AVSStore.retrieveShortcut(withIdentifier:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v21 = a2;
  v19 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E803FC0();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      sub_23E80A318(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v5, type metadata accessor for AdaptiveVoiceShortcut);
      v26 = sub_23E82DDBC();
      v27 = v10;
      v24 = 45;
      v25 = 0xE100000000000000;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_23E7F84B0(v26, v10, v11);
      sub_23E82EC7C();

      sub_23E82EA9C();

      v12 = sub_23E82EA5C();

      v13 = sub_23E82EA5C();
      v14 = [v12 isEqual_];

      if (v14)
      {

        v17 = v20;
        sub_23E8057CC(v5, v20);
        v16 = v17;
        v15 = 0;
        return (*(v3 + 56))(v16, v15, 1, v19);
      }

      ++v9;
      result = sub_23E80AB24(v5, type metadata accessor for AdaptiveVoiceShortcut);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v15 = 1;
    v16 = v20;
    return (*(v3 + 56))(v16, v15, 1, v19);
  }

  return result;
}

AVSStore __swiftcall AVSStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23E802764()
{
  v1 = *v0;
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](v1);
  return sub_23E82EF4C();
}

uint64_t sub_23E8027AC(uint64_t a1)
{
  v2 = *v1;
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](v2);
  return sub_23E82EF4C();
}

uint64_t sub_23E8027F0()
{
  v1 = 25705;
  v2 = 0x7479426F69647561;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 0x64726F7779656BLL;
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

uint64_t sub_23E802860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E80A7B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E8028A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E80A20C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23E8028DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E80A20C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AVSDebugEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A748, &qword_23E8306D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E80A20C(v9, v10, v11);
  sub_23E82EF6C();
  v17 = 0;
  sub_23E82DDDC();
  sub_23E80AADC(&qword_27E35A758, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_23E82EEDC();
  if (!v2)
  {
    v12 = type metadata accessor for AVSDebugEvent(0);
    v16 = 1;
    sub_23E82EEBC();
    v15 = *(v3 + *(v12 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A760, &qword_23E8306D8);
    sub_23E80A2AC(&qword_27E35A768, MEMORY[0x277D84960], MEMORY[0x277D83948]);
    sub_23E82EEAC();
    v14[14] = 3;
    sub_23E82EECC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AVSDebugEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_23E82DDDC();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A770, &qword_23E8306E0);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  v27 = type metadata accessor for AVSDebugEvent(0);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DDCC();
  v12 = a1[3];
  v29 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23E80A20C(v13, v14, v15);
  sub_23E82EF5C();
  if (v2)
  {
    v16 = v30;
    __swift_destroy_boxed_opaque_existential_0(v29);
    (*(v16 + 8))(v11, v4);
  }

  else
  {
    v25 = v7;
    v35 = 0;
    sub_23E80AADC(&qword_27E35A778, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_23E82EE6C();
    (*(v30 + 40))(v11, v6, v4);
    v34 = 1;
    v17 = sub_23E82EE4C();
    v18 = v27;
    v19 = &v11[*(v27 + 20)];
    *v19 = v17;
    v19[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A760, &qword_23E8306D8);
    v32 = 2;
    sub_23E80A2AC(&qword_27E35A780, MEMORY[0x277D84980], MEMORY[0x277D83978]);
    sub_23E82EE3C();
    *&v11[*(v18 + 24)] = v33;
    v31 = 3;
    sub_23E82EE5C();
    v23 = v22;
    (*(v25 + 8))(v9, v28);
    *&v11[*(v18 + 28)] = v23;
    sub_23E80A318(v11, v26, type metadata accessor for AVSDebugEvent);
    __swift_destroy_boxed_opaque_existential_0(v29);
    return sub_23E80AB24(v11, type metadata accessor for AVSDebugEvent);
  }
}

char *sub_23E80306C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7D0, &unk_23E830880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_23E8031D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_23E8033B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7C0, &unk_23E830868);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_23E8034B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
  v37 = v4;
  result = sub_23E82EDEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_23E82EF2C();
      sub_23E82EABC();
      result = sub_23E82EF4C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23E803778(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E82ECCC() + 1) & ~v5;
    do
    {
      sub_23E82EF2C();

      sub_23E82EABC();
      v9 = sub_23E82EF4C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_23E803928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
  v2 = *v0;
  v3 = sub_23E82EDDC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_23E803AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A830, &unk_23E8308B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - v6;
  v7 = sub_23E82DEEC();
  result = MEMORY[0x28223BE20](v7);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v59 = 0;
  v10 = 0;
  v47 = *(v11 + 80);
  v12 = MEMORY[0x277D84F90];
  v52 = (v47 + 32) & ~v47;
  v57 = MEMORY[0x277D84F90] + v52;
  v13 = (v11 + 56);
  v48 = v11 + 48;
  v49 = v11 + 16;
  v50 = v11;
  v55 = (v11 + 32);
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 != v16)
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_36;
        }

        if (v10 >= v18)
        {
          goto LABEL_42;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v13)(v5, 1, 1, v7);
        result = sub_23E7F55E0(v5, &qword_27E35A830, &unk_23E8308B0);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_43;
        }

        v19 = v12;
        v20 = v50;
        v21 = *(v50 + 72);
        v59 = v15;
        v54 = v21;
        (*(v50 + 16))(v5, v17 + v52 + v21 * v15, v7);
        (*(v20 + 56))(v5, 0, 1, v7);
        v22 = v53;
        sub_23E80AA6C(v5, v53);
        if ((*(v20 + 48))(v22, 1, v7) == 1)
        {
          v12 = v19;
          goto LABEL_37;
        }

        v51 = *v55;
        result = v51(v56, v22, v7);
        v23 = v19;
        v24 = v58;
        if (!v58)
        {
          break;
        }

LABEL_34:
        v40 = __OFSUB__(v24, 1);
        v41 = v24 - 1;
        if (v40)
        {
          goto LABEL_44;
        }

        v58 = v41;
        ++v59;
        v42 = v57;
        result = v51(v57, v56, v7);
        v57 = v42 + v54;
        v12 = v23;
        v14 = *(v17 + 16);
        v15 = v59;
        if (v59 == v14)
        {
          (*v13)(v5, 1, 1, v7);
          result = sub_23E7F55E0(v5, &qword_27E35A830, &unk_23E8308B0);
          goto LABEL_4;
        }
      }

      v25 = *(v19 + 3);
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7C8, &qword_23E830878);
      v28 = v52;
      v58 = v27;
      v23 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v23);
      v29 = v54;
      if (!v54)
      {
        goto LABEL_47;
      }

      v30 = result - v28;
      if ((result - v28) == 0x8000000000000000 && v54 == -1)
      {
        goto LABEL_48;
      }

      v32 = v28;
      v33 = v30 / v54;
      *(v23 + 2) = v58;
      *(v23 + 3) = 2 * (v30 / v29);
      v34 = &v23[v28];
      v35 = v19;
      v36 = *(v19 + 2);
      v37 = *(v19 + 3) >> 1;
      v38 = v37 * v29;
      if (!v36)
      {
LABEL_33:
        v57 = &v34[v38];
        v39 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v24 = v39;
        goto LABEL_34;
      }

      if (v23 < v35 || v34 >= &v35[v32 + v38])
      {
        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v23 == v35)
        {
LABEL_32:
          *(v35 + 2) = 0;
          goto LABEL_33;
        }

        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v46;
      v33 = v57;
      v34 = v58;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v22 = v53;
  (*v13)(v53, 1, 1, v7);
LABEL_37:

  result = sub_23E7F55E0(v22, &qword_27E35A830, &unk_23E8308B0);
  v43 = *(v12 + 3);
  if (v43 < 2)
  {
    return v12;
  }

  v44 = v43 >> 1;
  v40 = __OFSUB__(v44, v58);
  v45 = v44 - v58;
  if (!v40)
  {
    *(v12 + 2) = v45;
    return v12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_23E803FC0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v4 = v15 - v3;
  if (qword_2810C23E0 != -1)
  {
    swift_once();
  }

  if (qword_2810C2530)
  {
    v5 = qword_2810C2530;
    v6 = sub_23E82EA5C();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_23E82EC9C();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      if (swift_dynamicCast())
      {
        v12 = v15[2];
        v13 = v15[3];
        sub_23E82DC4C();
        swift_allocObject();
        sub_23E82DC3C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7F8, &qword_23E830898);
        sub_23E80A9D0(&qword_27E35A820, &qword_27E35A828, &protocol conformance descriptor for AdaptiveVoiceShortcut, MEMORY[0x277D83978]);
        sub_23E82DC2C();

        sub_23E80A918(v12, v13);

        return *&v18[0];
      }
    }

    else
    {

      sub_23E7F55E0(v18, &qword_27E35A818, &qword_23E8308A8);
    }
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v0, qword_27E35A958);
    swift_beginAccess();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_23E82DFEC();
    v10 = sub_23E82EBCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23E7EF000, v9, v10, "Failed to retrieve shortcuts. Unable to find user defaults for AVS", v11, 2u);
      MEMORY[0x23EF15860](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return MEMORY[0x277D84F90];
}

void *_sSo8AVSStoreC22AdaptiveVoiceShortcutsE24shortcutsNamesDictionarySDyS2SGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E80B274(MEMORY[0x277D84F90]);
  v5 = sub_23E803FC0();
  v6 = v5;
  v40 = *(v5 + 16);
  if (!v40)
  {
LABEL_22:

    return v4;
  }

  v7 = 0;
  v39 = &v3[*(v0 + 20)];
  v8 = *(v1 + 80);
  v37 = v5;
  v38 = v5 + ((v8 + 32) & ~v8);
  v36 = v3;
  while (v7 < *(v6 + 16))
  {
    sub_23E80A318(v38 + *(v1 + 72) * v7, v3, type metadata accessor for AdaptiveVoiceShortcut);
    v11 = sub_23E82DDBC();
    v13 = v12;
    v14 = *v39;
    v15 = *(v39 + 1);

    sub_23E80AB24(v3, type metadata accessor for AdaptiveVoiceShortcut);
    if (!v15)
    {
      v26 = sub_23E81DE40(v11, v13);
      v28 = v27;

      if (v28)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v4;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23E803928();
          v4 = v41;
        }

        sub_23E803778(v26, v4);
      }

      goto LABEL_5;
    }

    v16 = v1;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v4;
    v18 = sub_23E81DE40(v11, v13);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v4[3] < v23)
    {
      sub_23E8034B8(v23, v17);
      v18 = sub_23E81DE40(v11, v13);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_3;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    v34 = v18;
    sub_23E803928();
    v18 = v34;
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v4 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v4[6] + 16 * v18);
      *v30 = v11;
      v30[1] = v13;
      v31 = (v4[7] + 16 * v18);
      *v31 = v14;
      v31[1] = v15;
      v32 = v4[2];
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v4[2] = v33;
      goto LABEL_4;
    }

LABEL_3:
    v9 = v18;

    v4 = v41;
    v10 = (v41[7] + 16 * v9);
    *v10 = v14;
    v10[1] = v15;

LABEL_4:
    v1 = v16;
    v3 = v36;
    v6 = v37;
LABEL_5:
    if (v40 == ++v7)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_23E82EF1C();
  __break(1u);
  return result;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE9shortcutsSaySo0bC17ShortcutObjcClassCGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v7 = sub_23E803FC0();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v4 + 80);
    v21 = v7;
    v10 = v7 + ((v9 + 32) & ~v9);
    v11 = *(v4 + 72);
    do
    {
      sub_23E80A318(v10, v6, type metadata accessor for AdaptiveVoiceShortcut);
      v12 = objc_allocWithZone(AdaptiveVoiceShortcutObjcClass);
      v13 = [v12 init];

      v14 = sub_23E82EA5C();

      [v13 setName_];

      sub_23E82DDBC();
      v15 = sub_23E82EA5C();

      [v13 setIdentifier_];

      sub_23E7F537C(&v6[*(v3 + 28)], v2);
      v16 = type metadata accessor for AvailableShortcutAction(0);
      if ((*(*(v16 - 8) + 48))(v2, 1, v16) == 1)
      {
        sub_23E7F55E0(v2, &qword_27E35A210, &unk_23E82FFD0);
      }

      else
      {

        sub_23E80AB24(v2, type metadata accessor for AvailableShortcutAction);
      }

      v17 = sub_23E82EA5C();

      [v13 setAssociatedShortcutName_];

      v18 = v13;
      MEMORY[0x23EF14B80]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E82EB1C();
      }

      sub_23E82EB3C();

      sub_23E80AB24(v6, type metadata accessor for AdaptiveVoiceShortcut);
      v10 += v11;
      --v8;
    }

    while (v8);
    v19 = v22;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE29shortcutsFormattedIdentifiersSaySSGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E803FC0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v26 = MEMORY[0x277D84F90];
    sub_23E800930(0, v5, 0);
    v6 = v26;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v18[1] = v4;
    v19 = v8;
    do
    {
      sub_23E80A318(v7, v3, type metadata accessor for AdaptiveVoiceShortcut);
      v24 = sub_23E82DDBC();
      v25 = v9;
      v22 = 45;
      v23 = 0xE100000000000000;
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_23E7F84B0(v24, v9, v10);
      sub_23E82EC7C();

      v11 = sub_23E82EA9C();
      v13 = v12;

      sub_23E80AB24(v3, type metadata accessor for AdaptiveVoiceShortcut);
      v26 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E800930((v14 > 1), v15 + 1, 1);
        v6 = v26;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v7 += v19;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_23E804DEC(uint64_t a1, unsigned __int8 *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E82DEEC();
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v56 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = v42 - v10;
  v52 = sub_23E82DD3C();
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_23E82DC4C();
  swift_allocObject();
  v55 = sub_23E82DC3C();
  if (qword_27E35A1A8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v58 = qword_27E35A710;
    v59 = *algn_27E35A718;

    MEMORY[0x23EF14B60](a1, a2);
    v14 = v59;
    v50 = v58;
    v15 = sub_23E82EA5C();
    v58 = 0;
    v16 = [v13 contentsOfDirectoryAtPath:v15 error:&v58];

    a2 = v58;
    v44 = v13;
    if (!v16)
    {
      v27 = v58;

      v28 = sub_23E82DCEC();

      swift_willThrow();
      v29 = v28;
      v11 = MEMORY[0x277D84F90];
      v30 = v43;
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v4, qword_27E35A958);
      swift_beginAccess();
      (*(v5 + 16))(v30, v31, v4);
      v32 = v29;
      v33 = sub_23E82DFEC();
      v34 = sub_23E82EBCC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = v5;
        v37 = swift_slowAlloc();
        *v35 = 138412290;
        v38 = v29;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_23E7EF000, v33, v34, "Failed to read directory: %@", v35, 0xCu);
        sub_23E7F55E0(v37, &unk_27E35A870, &qword_23E8308E0);
        v40 = v37;
        v5 = v36;
        MEMORY[0x23EF15860](v40, -1, -1);
        MEMORY[0x23EF15860](v35, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v30, v4);
      return v11;
    }

    v54 = v14;
    v17 = sub_23E82EB0C();
    v18 = a2;

    v48 = *(v17 + 16);
    if (!v48)
    {
      break;
    }

    v42[1] = v5;
    v42[2] = v4;
    v4 = 0;
    a1 = 0;
    v49 = (v11 + 1);
    v46 = v53 + 8;
    v47 = (v53 + 16);
    v45 = v53 + 32;
    v5 = v17 + 40;
    v11 = MEMORY[0x277D84F90];
    while (v4 < *(v17 + 16))
    {
      v20 = *(v5 - 8);
      v19 = *v5;
      v58 = v50;
      v59 = v54;

      MEMORY[0x23EF14B60](47, 0xE100000000000000);
      MEMORY[0x23EF14B60](v20, v19);

      v21 = v51;
      sub_23E82DD0C();

      v22 = sub_23E82DD4C();
      v24 = v23;
      (*v49)(v21, v52);
      sub_23E80AADC(&qword_27E35A838, MEMORY[0x277D797D8], MEMORY[0x277D797E8]);
      v25 = v57;
      sub_23E82DC2C();
      (*v47)(v56, v25, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23E8031D8(0, v11[2] + 1, 1, v11, &qword_27E35A7C8, &qword_23E830878, MEMORY[0x277D797D8]);
      }

      v13 = v11[2];
      v26 = v11[3];
      if (v13 >= v26 >> 1)
      {
        v11 = sub_23E8031D8((v26 > 1), v13 + 1, 1, v11, &qword_27E35A7C8, &qword_23E830878, MEMORY[0x277D797D8]);
      }

      ++v4;
      sub_23E80A918(v22, v24);
      a2 = v53;
      (*(v53 + 8))(v57, v7);
      v11[2] = v13 + 1;
      (*(a2 + 4))(v11 + ((a2[80] + 32) & ~a2[80]) + *(a2 + 9) * v13, v56, v7);
      v5 += 16;
      if (v48 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_14:

  return v11;
}

void *_sSo8AVSStoreC22AdaptiveVoiceShortcutsE28retriveDataForAllEnrollmentsSay0C7Actions018VASingleEnrollmentF0VGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E803FC0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_23E800970(0, v5, 0);
    v6 = v17;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    do
    {
      sub_23E80A318(v7, v3, type metadata accessor for AdaptiveVoiceShortcut);
      v9 = sub_23E82DDBC();
      v11 = sub_23E804DEC(v9, v10);

      sub_23E80AB24(v3, type metadata accessor for AdaptiveVoiceShortcut);
      v17 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23E800970((v12 > 1), v13 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v14 = sub_23E803AA0(v6);

  return v14;
}

uint64_t sub_23E8057CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E805830(uint64_t a1)
{
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  sub_23E82DC7C();
  swift_allocObject();
  sub_23E82DC6C();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7F8, &qword_23E830898);
  sub_23E80A9D0(&qword_27E35A800, &qword_27E35A808, &protocol conformance descriptor for AdaptiveVoiceShortcut, MEMORY[0x277D83948]);
  v7 = sub_23E82DC5C();
  if (qword_2810C23E0 != -1)
  {
    v19 = v7;
    v20 = v8;
    swift_once();
    v7 = v19;
    v8 = v20;
  }

  v9 = v7;
  v10 = v8;
  if (qword_2810C2530)
  {
    v11 = qword_2810C2530;
    v12 = sub_23E82DD5C();
    v13 = sub_23E82EA5C();
    [v11 setObject:v12 forKey:v13];

    sub_23E80A918(v9, v10);
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_23E82DFEC();
    v17 = sub_23E82EBCC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23E7EF000, v16, v17, "Failed to save shortcuts. Unable to find user defaults for AVS", v18, 2u);
      MEMORY[0x23EF15860](v18, -1, -1);
    }

    sub_23E80A918(v9, v10);

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE09deleteAllD0yyF_0()
{
  v55[3] = *MEMORY[0x277D85DE8];
  v51 = sub_23E82E00C();
  v53 = *(v51 - 8);
  v0 = MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v49 = &v48 - v3;
  MEMORY[0x28223BE20](v2);
  v52 = &v48 - v4;
  v5 = sub_23E82DCFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_23E82DD3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    swift_once();
  }

  v17 = qword_27E35A710;
  v18 = *algn_27E35A718;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);

  v48 = v17;
  sub_23E82DD2C();
  v19 = sub_23E82DD1C();
  (*(v13 + 8))(v15, v12);
  v55[0] = 0;
  v20 = [v16 removeItemAtURL:v19 error:v55];

  if (v20)
  {
    v21 = v55[0];
    v22 = v52;
    v23 = v53;
    v24 = v51;
  }

  else
  {
    v25 = v55[0];
    v26 = sub_23E82DCEC();

    swift_willThrow();
    v23 = v53;
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v24 = v51;
    v27 = __swift_project_value_buffer(v51, qword_27E35A958);
    swift_beginAccess();
    v28 = v50;
    (*(v23 + 16))(v50, v27, v24);
    v29 = v26;
    v30 = sub_23E82DFEC();
    v31 = sub_23E82EBCC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54[0] = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_23E8257E0(v48, v18, v54);
      *(v32 + 12) = 2112;
      v35 = v26;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      _os_log_impl(&dword_23E7EF000, v30, v31, "Failed to delete all shortcuts. Unable to delete commands directory: %s error: %@", v32, 0x16u);
      sub_23E7F55E0(v33, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23EF15860](v34, -1, -1);
      MEMORY[0x23EF15860](v32, -1, -1);

      (*(v23 + 8))(v50, v24);
    }

    else
    {

      (*(v23 + 8))(v28, v24);
    }

    v22 = v52;
  }

  if (qword_2810C23E0 != -1)
  {
    swift_once();
  }

  if (qword_2810C2530)
  {
    v37 = qword_2810C2530;
    v38 = sub_23E82EA5C();
    [v37 removeObjectForKey:v38];

    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v24, qword_27E35A958);
    swift_beginAccess();
    (*(v23 + 16))(v22, v39, v24);
    v40 = sub_23E82DFEC();
    v41 = sub_23E82EBEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_23E7EF000, v40, v41, "Deleted all AVS shortcuts", v42, 2u);
      MEMORY[0x23EF15860](v42, -1, -1);
    }

    v43 = v16;
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v24, qword_27E35A958);
    swift_beginAccess();
    v22 = v49;
    (*(v23 + 16))(v49, v44, v24);
    v43 = sub_23E82DFEC();
    v45 = sub_23E82EBCC();
    if (os_log_type_enabled(v43, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_23E7EF000, v43, v45, "Failed to delete all shortcuts. Unable to find user defaults for AVS", v46, 2u);
      MEMORY[0x23EF15860](v46, -1, -1);
    }

    v37 = v16;
  }

  return (*(v23 + 8))(v22, v24);
}

uint64_t sub_23E806500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(type metadata accessor for AdaptiveVoiceShortcut(0) - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = *(v6 + 72);
  while (1)
  {
    sub_23E82DDBC();
    v9 = sub_23E82EA5C();

    v10 = sub_23E82EA5C();
    v11 = [v9 isEqual_];

    if (v11)
    {
      break;
    }

    ++v5;
    v7 += v8;
    if (v3 == v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_23E806634(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AdaptiveVoiceShortcut(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  v17 = *a1;
  result = sub_23E806500(*a1, a2, a3);
  if (!v3)
  {
    v43 = v16;
    v39 = v14;
    v37[1] = 0;
    if (v19)
    {
      return v17[2];
    }

    v40 = v11;
    v38 = a1;
    v42 = a2;
    v45 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v17 + 2;
      v21 = v17[2];
      v23 = v43;
      if (v20 == v21)
      {
        return v45;
      }

      v41 = v8;
      while (v20 < v21)
      {
        v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v46 = v17;
        v44 = v24;
        v25 = v17 + v24;
        v26 = *(v8 + 72);
        v27 = v26 * v20;
        sub_23E80A318(&v25[v26 * v20], v23, type metadata accessor for AdaptiveVoiceShortcut);
        sub_23E82DDBC();
        v28 = sub_23E82EA5C();

        v29 = a3;
        v30 = sub_23E82EA5C();
        v31 = [v28 isEqual_];

        v23 = v43;
        result = sub_23E80AB24(v43, type metadata accessor for AdaptiveVoiceShortcut);
        if (v31)
        {
          a3 = v29;
          v8 = v41;
          v17 = v46;
        }

        else
        {
          v32 = v45;
          if (v20 == v45)
          {
            a3 = v29;
            v17 = v46;
          }

          else
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v33 = *v22;
            if (v45 >= *v22)
            {
              goto LABEL_25;
            }

            a3 = v29;
            v34 = v26 * v45;
            v35 = v39;
            result = sub_23E80A318(&v25[v26 * v45], v39, type metadata accessor for AdaptiveVoiceShortcut);
            if (v20 >= v33)
            {
              goto LABEL_26;
            }

            sub_23E80A318(&v25[v27], v40, type metadata accessor for AdaptiveVoiceShortcut);
            v17 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_23E8182B8(v17);
            }

            v36 = v17 + v44;
            result = sub_23E80A96C(v40, v17 + v44 + v34);
            if (v20 >= v17[2])
            {
              goto LABEL_27;
            }

            result = sub_23E80A96C(v35, &v36[v27]);
            *v38 = v17;
            v32 = v45;
          }

          v45 = v32 + 1;
          v8 = v41;
        }

        ++v20;
        v22 = v17 + 2;
        v21 = v17[2];
        if (v20 == v21)
        {
          return v45;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE14deleteShortcut14withIdentifierySS_tF_0(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23E82DCFC();
  v6 = *(v47 - 1);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_23E82DD3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23E803FC0();

  v48 = a1;
  v16 = sub_23E806634(&v50, a1, a2);
  v49 = a2;

  v17 = v50;
  v18 = v50[2];
  if (v16 > v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v16 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFADD__(v18, v16 - v18))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v16 > v17[3] >> 1)
  {
    if (v18 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v18;
    }

    v17 = sub_23E8031D8(isUniquelyReferenced_nonNull_native, v20, 1, v17, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
    v50 = v17;
  }

  sub_23E8182E0(v16, v18, 0);
  v16 = [objc_opt_self() defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    goto LABEL_23;
  }

LABEL_11:
  v52 = qword_27E35A710;
  v53 = *algn_27E35A718;

  MEMORY[0x23EF14B60](v48, v49);
  v21 = v52;
  v22 = v53;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v47);

  v47 = v21;
  sub_23E82DD2C();
  v23 = sub_23E82DD1C();
  (*(v13 + 8))(v15, v12);
  v52 = 0;
  LODWORD(v21) = [v16 removeItemAtURL:v23 error:&v52];

  if (v21)
  {
    v24 = v52;
  }

  else
  {
    v43 = v16;
    v25 = v52;
    v26 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v27 = v46;
    v28 = __swift_project_value_buffer(v46, qword_27E35A958);
    swift_beginAccess();
    v30 = v44;
    v29 = v45;
    (*(v45 + 16))(v44, v28, v27);
    v31 = v49;

    v32 = v26;
    v33 = sub_23E82DFEC();
    v34 = sub_23E82EBCC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v51 = v37;
      *v35 = 136315650;
      *(v35 + 4) = sub_23E8257E0(v48, v31, &v51);
      *(v35 + 12) = 2080;
      v38 = v30;
      v39 = sub_23E8257E0(v47, v22, &v51);

      *(v35 + 14) = v39;
      *(v35 + 22) = 2112;
      v40 = v26;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 24) = v41;
      *v36 = v41;
      _os_log_impl(&dword_23E7EF000, v33, v34, "Failed to delete shortcut with identifier: %s. Unable to delete commands directory: %s error: %@", v35, 0x20u);
      sub_23E7F55E0(v36, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v36, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23EF15860](v37, -1, -1);
      MEMORY[0x23EF15860](v35, -1, -1);

      (*(v45 + 8))(v38, v46);
    }

    else
    {

      (*(v29 + 8))(v30, v27);
    }

    v16 = v43;
  }

  sub_23E805830(v17);
}

void *_sSo8AVSStoreC22AdaptiveVoiceShortcutsE33saveShortcutEnrollmentDataToFiles10shortcutId_SSSgSS_Say0C7Actions08VASinglegH0VGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v68 = sub_23E82E00C();
  v6 = *(v68 - 8);
  v7 = MEMORY[0x28223BE20](v68);
  v65 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - v9;
  v62 = sub_23E82DDDC();
  v10 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_23E82DEEC();
  v12 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = objc_opt_self();
  v64 = [v50 defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    swift_once();
  }

  v71 = qword_27E35A710;
  v72 = *algn_27E35A718;

  MEMORY[0x23EF14B60](a1, a2);
  v16 = v71;
  v17 = *(a3 + 16);
  if (v17)
  {
    v63 = v72;
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v58 = v19;
    v20 = a3 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v57 = (v10 + 8);
    v56 = *(v18 + 56);
    v54 = (v6 + 16);
    v53 = (v6 + 8);
    v60 = v18;
    v55 = (v18 - 8);
    *&v15 = 138412290;
    v51 = v15;
    v59 = v71;
    v19(v14, v20, v67);
    while (1)
    {
      v70[0] = v16;
      v70[1] = v63;

      MEMORY[0x23EF14B60](47, 0xE100000000000000);
      v21 = v61;
      sub_23E82DECC();
      sub_23E80AADC(&qword_27E35A7E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = v62;
      v23 = sub_23E82EEFC();
      MEMORY[0x23EF14B60](v23);

      (*v57)(v21, v22);
      MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
      v66 = v70[0];
      v69 = 1;
      v24 = sub_23E82EA5C();
      v25 = v64;
      LOBYTE(v22) = [v64 fileExistsAtPath:v24 isDirectory:&v69];

      if ((v22 & 1) == 0)
      {
        v26 = sub_23E82EA5C();
        v70[0] = 0;
        v27 = [v25 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:v70];

        if (v27)
        {
          v28 = v70[0];
        }

        else
        {
          v29 = v70[0];
          v30 = sub_23E82DCEC();

          swift_willThrow();
          if (qword_27E35A1C0 != -1)
          {
            swift_once();
          }

          v31 = v68;
          v32 = __swift_project_value_buffer(v68, qword_27E35A958);
          swift_beginAccess();
          (*v54)(v52, v32, v31);
          v33 = v30;
          v34 = sub_23E82DFEC();
          v35 = sub_23E82EBCC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v51;
            v38 = v30;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_23E7EF000, v34, v35, "Failed to create directory for shortcut: %@", v36, 0xCu);
            sub_23E7F55E0(v37, &unk_27E35A870, &qword_23E8308E0);
            MEMORY[0x23EF15860](v37, -1, -1);
            MEMORY[0x23EF15860](v36, -1, -1);
          }

          else
          {
          }

          (*v53)(v52, v68);
        }
      }

      sub_23E82DC7C();
      swift_allocObject();
      sub_23E82DC6C();
      sub_23E80AADC(&qword_27E35A7F0, MEMORY[0x277D797D8], MEMORY[0x277D797E0]);
      v40 = sub_23E82DC5C();
      v42 = v41;
      v43 = [v50 defaultManager];
      v44 = sub_23E82EA5C();

      v45 = sub_23E82DD5C();
      [v43 createFileAtPath:v44 contents:v45 attributes:0];
      v46 = v40;
      v47 = v67;
      sub_23E80A918(v46, v42);

      v16 = v59;
      (*v55)(v14, v47);
      v20 += v56;
      if (!--v17)
      {
        break;
      }

      v58(v14, v20, v47);
    }
  }

  return v16;
}

void sub_23E80799C(char *a1, char *a2, char *a3, char *a4, void *a5)
{
  v63 = a5;
  v62 = sub_23E82DDAC();
  v9 = MEMORY[0x28223BE20](v62);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v59 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v16;
  v19 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v19 = a2 - a1;
  }

  v20 = v19 >> 4;
  v21 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v21 = a3 - a2;
  }

  v22 = v21 >> 4;
  if (v20 >= v21 >> 4)
  {
    if (a4 != a2 || &a2[16 * v22] <= a4)
    {
      v39 = v17;
      memmove(a4, a2, 16 * v22);
      v17 = v39;
    }

    v66 = &a4[16 * v22];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v58 = v13;
      v59 = (v17 + 8);
      v61 = a1;
      v64 = a4;
LABEL_28:
      v65 = a2;
      v57 = a2 - 16;
      a3 -= 16;
      v40 = v66;
      v41 = &off_278C5C000;
      while (1)
      {
        v40 -= 16;

        v42 = sub_23E82EA5C();
        v43 = v63;
        v44 = [v63 *(v41 + 170)];

        if (!v44)
        {
          goto LABEL_47;
        }

        v45 = v41;
        v46 = v58;
        sub_23E82DD8C();

        v47 = sub_23E82EA5C();
        v48 = [v43 v45 + 2009];

        if (!v48)
        {
          goto LABEL_48;
        }

        v49 = v60;
        sub_23E82DD8C();

        v50 = sub_23E82DD7C();
        v51 = *v59;
        v52 = v49;
        v53 = v62;
        (*v59)(v52, v62);
        v51(v46, v53);

        a4 = v64;
        v54 = a3 + 16;
        if (v50)
        {
          v55 = v57;
          if (v54 != v65)
          {
            *a3 = *v57;
          }

          if (v66 <= a4 || (a2 = v55, v55 <= v61))
          {
            a2 = v55;
            break;
          }

          goto LABEL_28;
        }

        v41 = &off_278C5C000;
        if (v54 != v66)
        {
          *a3 = *v40;
        }

        a3 -= 16;
        v66 = v40;
        if (v40 <= a4)
        {
          v66 = v40;
          a2 = v65;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= &a4[(v66 - a4 + (v66 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(a2, a4, 16 * ((v66 - a4) / 16));
    }

    return;
  }

  if (a4 != a1 || &a1[16 * v20] <= a4)
  {
    v23 = &v56 - v16;
    v24 = v17;
    memmove(a4, a1, 16 * v20);
    v17 = v24;
    v18 = v23;
  }

  v66 = &a4[16 * v20];
  if (a2 - a1 < 16 || a2 >= a3)
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v60 = v18;
  v57 = a3;
  v58 = (v17 + 8);
  while (1)
  {
    v61 = a1;
    v64 = a4;
    v65 = a2;

    v25 = sub_23E82EA5C();
    v26 = v63;
    v27 = [v63 dateFromString_];

    if (!v27)
    {
      break;
    }

    v28 = v60;
    sub_23E82DD8C();

    v29 = sub_23E82EA5C();
    v30 = [v26 &selRef_int16ChannelData + 1];

    if (!v30)
    {
      goto LABEL_46;
    }

    v31 = v59;
    sub_23E82DD8C();

    v32 = sub_23E82DD7C();
    v33 = *v58;
    v34 = v31;
    v35 = v62;
    (*v58)(v34, v62);
    v33(v28, v35);

    if (v32)
    {
      a4 = v64;
      v36 = v65;
      v37 = v65;
      a2 = v65 + 16;
    }

    else
    {
      v36 = v64;
      a2 = v65;
      v37 = v64;
      a4 = v64 + 16;
    }

    v38 = v61;
    if (v61 != v36)
    {
      *v61 = *v37;
    }

    a1 = v38 + 16;
    if (a4 >= v66 || a2 >= v57)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_23E807F18(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_23E82684C(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 16 * *v10);
      v23 = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_23E80799C(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_23E8080B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v145 = a4;
  v146 = a1;
  v159 = sub_23E82DDAC();
  v7 = MEMORY[0x28223BE20](v159);
  v156 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v150 = &v140 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v151 = &v140 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v141 = &v140 - v15;
  MEMORY[0x28223BE20](v14);
  v163 = MEMORY[0x277D84F90];
  v152 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v140 = &v140 - v17;
    v155 = v18;
    v158 = (v16 + 8);
    v20 = a5;
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v144 = a5;
    v160 = v20;
    while (1)
    {
      if (v21 + 1 >= v19)
      {
        v37 = v21 + 1;
        v49 = v145;
      }

      else
      {
        v154 = v19;
        v143 = v22;
        v23 = *v152;
        v24 = *v152 + 16 * v21;
        a5 = *v24;
        v25 = *(v24 + 8);

        v157 = v25;

        v26 = sub_23E82EA5C();
        v27 = v160;
        v28 = [v160 dateFromString_];

        if (!v28)
        {
          goto LABEL_130;
        }

        v29 = v140;
        sub_23E82DD8C();

        v30 = sub_23E82EA5C();
        v31 = [v27 dateFromString_];

        if (!v31)
        {
          goto LABEL_131;
        }

        v32 = v141;
        sub_23E82DD8C();

        LODWORD(v162) = sub_23E82DD7C();
        a5 = v158;
        v33 = v159;
        v34 = *v158;
        (*v158)(v32, v159);
        v161 = v34;
        (v34)(v29, v33);

        v35 = v21 + 2;
        v142 = v21;
        v157 = 16 * v21;
        v36 = v23 + 16 * v21 + 40;
        while (1)
        {
          v37 = v154;
          if (v154 == v35)
          {
            break;
          }

          a5 = sub_23E82EA5C();
          v38 = v160;
          v39 = [v160 dateFromString_];

          if (!v39)
          {
            goto LABEL_126;
          }

          a5 = v151;
          sub_23E82DD8C();

          v41 = sub_23E82EA5C();
          v42 = [v38 dateFromString_];

          if (!v42)
          {
            goto LABEL_125;
          }

          v43 = v150;
          sub_23E82DD8C();

          v44 = sub_23E82DD7C();
          v45 = v43;
          v46 = v159;
          v47 = a5;
          a5 = v158;
          v48 = v161;
          (v161)(v45, v159);
          (v48)(v47, v46);

          ++v35;
          v36 += 16;
          if ((v162 ^ v44))
          {
            v37 = v35 - 1;
            break;
          }
        }

        v49 = v145;
        v21 = v142;
        v22 = v143;
        v50 = v157;
        if (v162)
        {
          if (v37 < v142)
          {
            goto LABEL_119;
          }

          if (v142 < v37)
          {
            v51 = 0;
            v52 = 16 * v37;
            v53 = v142;
            do
            {
              if (v53 != v37 + v51 - 1)
              {
                v54 = *v152;
                if (!*v152)
                {
                  goto LABEL_128;
                }

                v55 = (v54 + v50);
                v56 = v54 + v52;
                v57 = *v55;
                v58 = v55[1];
                *v55 = *(v56 - 16);
                *(v56 - 16) = v57;
                *(v56 - 8) = v58;
              }

              ++v53;
              --v51;
              v52 -= 16;
              v50 += 16;
            }

            while (v53 < v37 + v51);
          }
        }
      }

      v59 = v152[1];
      if (v37 < v59)
      {
        if (__OFSUB__(v37, v21))
        {
          goto LABEL_118;
        }

        if (v37 - v21 < v49)
        {
          if (__OFADD__(v21, v49))
          {
            goto LABEL_120;
          }

          if (v21 + v49 < v59)
          {
            v59 = v21 + v49;
          }

          if (v59 < v21)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v136 = v160;

            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            v137 = v40;

            __break(1u);
LABEL_128:
            v138 = v160;

            __break(1u);
LABEL_129:
            v139 = v40;

            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (v37 != v59)
          {
            v147 = v59;
            v142 = v21;
            v143 = v22;
            v157 = *v152;
            v60 = (v157 + 16 * v37);
            v61 = (v21 - v37);
            v62 = &off_278C5C000;
            do
            {
              v154 = v37;
              a5 = *(v157 + 16 * v37 + 8);
              v148 = v61;
              v149 = v60;
              v63 = v61;
              do
              {

                v162 = a5;
                v64 = sub_23E82EA5C();
                v65 = v160;
                a5 = v62;
                v66 = [v160 *(v62 + 170)];

                if (!v66)
                {
                  goto LABEL_122;
                }

                v161 = v63;
                v67 = v155;
                sub_23E82DD8C();

                v68 = sub_23E82EA5C();
                v69 = [v65 a5 + 2009];

                if (!v69)
                {
                  goto LABEL_123;
                }

                v70 = v156;
                sub_23E82DD8C();

                v71 = sub_23E82DD7C();
                v72 = *v158;
                v73 = v70;
                v74 = v159;
                (*v158)(v73, v159);
                (v72)(v67, v74);

                v62 = &off_278C5C000;
                if ((v71 & 1) == 0)
                {
                  break;
                }

                v75 = v161;
                if (!v157)
                {
                  goto LABEL_124;
                }

                v76 = *v60;
                a5 = v60[1];
                *v60 = *(v60 - 1);
                *(v60 - 1) = a5;
                *(v60 - 2) = v76;
                v60 -= 2;
                v77 = __CFADD__(v75, 1);
                v63 = v75 + 1;
              }

              while (!v77);
              v37 = v154 + 1;
              v60 = v149 + 2;
              v61 = v148 - 1;
            }

            while (v154 + 1 != v147);
            v21 = v142;
            v22 = v143;
            v37 = v147;
          }
        }
      }

      if (v37 < v21)
      {
        goto LABEL_117;
      }

      v147 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_23E8033B4(0, *(v22 + 2) + 1, 1, v22);
      }

      v79 = *(v22 + 2);
      v78 = *(v22 + 3);
      v80 = v79 + 1;
      v40 = v160;
      if (v79 >= v78 >> 1)
      {
        v22 = sub_23E8033B4((v78 > 1), v79 + 1, 1, v22);
        v40 = v160;
      }

      *(v22 + 2) = v80;
      v81 = v22 + 32;
      v82 = &v22[16 * v79 + 32];
      v83 = v147;
      *v82 = v21;
      *(v82 + 1) = v83;
      v161 = *v146;
      if (!v161)
      {
        goto LABEL_129;
      }

      if (v79)
      {
        v157 = (v22 + 32);
        while (1)
        {
          v84 = v80 - 1;
          if (v80 >= 4)
          {
            break;
          }

          if (v80 == 3)
          {
            v85 = *(v22 + 4);
            v86 = *(v22 + 5);
            v95 = __OFSUB__(v86, v85);
            v87 = v86 - v85;
            v88 = v95;
LABEL_62:
            if (v88)
            {
              goto LABEL_107;
            }

            v101 = &v22[16 * v80];
            v103 = *v101;
            v102 = *(v101 + 1);
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v104;
            if (v104)
            {
              goto LABEL_109;
            }

            v107 = &v81[16 * v84];
            v109 = *v107;
            v108 = *(v107 + 1);
            v95 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v95)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v105, v110))
            {
              goto LABEL_114;
            }

            if (v105 + v110 >= v87)
            {
              if (v87 < v110)
              {
                v84 = v80 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v80 < 2)
          {
            goto LABEL_115;
          }

          v111 = &v22[16 * v80];
          v113 = *v111;
          v112 = *(v111 + 1);
          v95 = __OFSUB__(v112, v113);
          v105 = v112 - v113;
          v106 = v95;
LABEL_77:
          if (v106)
          {
            goto LABEL_111;
          }

          v114 = &v81[16 * v84];
          v116 = *v114;
          v115 = *(v114 + 1);
          v95 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v95)
          {
            goto LABEL_113;
          }

          if (v117 < v105)
          {
            goto LABEL_3;
          }

LABEL_84:
          if (v84 - 1 >= v80)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v122 = *v152;
          if (!*v152)
          {
            goto LABEL_127;
          }

          v123 = &v81[16 * v84 - 16];
          v124 = *v123;
          a5 = v84;
          v125 = &v81[16 * v84];
          v126 = *(v125 + 1);
          v127 = (v122 + 16 * *v123);
          v128 = (v122 + 16 * *v125);
          v162 = (v122 + 16 * v126);
          v129 = v40;
          v130 = v153;
          sub_23E80799C(v127, v128, v162, v161, v129);
          v153 = v130;
          if (v130)
          {

            v163 = v22;
            a5 = v144;
            goto LABEL_97;
          }

          if (v126 < v124)
          {
            goto LABEL_102;
          }

          v131 = *(v22 + 2);
          if (a5 > v131)
          {
            goto LABEL_103;
          }

          *v123 = v124;
          *(v123 + 1) = v126;
          if (a5 >= v131)
          {
            goto LABEL_104;
          }

          v80 = v131 - 1;
          memmove(v125, v125 + 16, 16 * (v131 - 1 - a5));
          *(v22 + 2) = v131 - 1;
          v40 = v160;
          v81 = v157;
          if (v131 <= 2)
          {
            goto LABEL_3;
          }
        }

        v89 = &v81[16 * v80];
        v90 = *(v89 - 8);
        v91 = *(v89 - 7);
        v95 = __OFSUB__(v91, v90);
        v92 = v91 - v90;
        if (v95)
        {
          goto LABEL_105;
        }

        v94 = *(v89 - 6);
        v93 = *(v89 - 5);
        v95 = __OFSUB__(v93, v94);
        v87 = v93 - v94;
        v88 = v95;
        if (v95)
        {
          goto LABEL_106;
        }

        v96 = &v22[16 * v80];
        v98 = *v96;
        v97 = *(v96 + 1);
        v95 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v95)
        {
          goto LABEL_108;
        }

        v95 = __OFADD__(v87, v99);
        v100 = v87 + v99;
        if (v95)
        {
          goto LABEL_110;
        }

        if (v100 >= v92)
        {
          v118 = &v81[16 * v84];
          v120 = *v118;
          v119 = *(v118 + 1);
          v95 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v95)
          {
            goto LABEL_116;
          }

          if (v87 < v121)
          {
            v84 = v80 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_3:
      v19 = v152[1];
      v21 = v147;
      a5 = v144;
      if (v147 >= v19)
      {
        v163 = v22;
        goto LABEL_94;
      }
    }
  }

  v132 = a5;
LABEL_94:
  v133 = *v146;
  if (*v146)
  {
    v134 = a5;
    v135 = v153;
    sub_23E807F18(&v163, v133, v152, v134);
    v153 = v135;
    if (v135)
    {

LABEL_97:
    }

    else
    {
    }
  }

  else
  {
LABEL_132:

    __break(1u);
  }
}

void sub_23E808B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v44 = a5;
  v42 = sub_23E82DDAC();
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v35 - v12;
  v36 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v40 = (v11 + 8);
    v45 = v13;
    v14 = (v13 + 16 * a3);
    v15 = a1 - a3;
    v16 = &off_278C5C000;
LABEL_5:
    v38 = v14;
    v39 = a3;
    v17 = *(v45 + 16 * a3 + 8);
    v37 = v15;
    v18 = v15;
    while (1)
    {
      v19 = *(v14 - 1);

      v48 = v19;

      v20 = sub_23E82EA5C();
      v21 = v44;
      v22 = [v44 *(v16 + 170)];

      if (!v22)
      {
        break;
      }

      v46 = v17;
      v47 = v18;
      v23 = v16;
      v24 = v43;
      sub_23E82DD8C();

      v25 = sub_23E82EA5C();
      v26 = [v21 v23 + 2009];

      if (!v26)
      {
        goto LABEL_14;
      }

      v27 = v41;
      sub_23E82DD8C();

      v28 = sub_23E82DD7C();
      v29 = *v40;
      v30 = v27;
      v31 = v42;
      (*v40)(v30, v42);
      v29(v24, v31);

      v16 = v23;
      v32 = v47;
      if (v28)
      {
        if (!v45)
        {
          goto LABEL_15;
        }

        v33 = *v14;
        v17 = v14[1];
        *v14 = *(v14 - 1);
        *(v14 - 1) = v17;
        *(v14 - 2) = v33;
        v14 -= 2;
        v34 = __CFADD__(v32, 1);
        v18 = v32 + 1;
        if (!v34)
        {
          continue;
        }
      }

      a3 = v39 + 1;
      v14 = v38 + 2;
      v15 = v37 - 1;
      if (v39 + 1 == v36)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23E808DC8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_23E82EEEC();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_23E82EB2C();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_23E8080B8(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_23E808B18(0, v3, 1, a1, v4);
  }
}

void sub_23E808EF8(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23E826860(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_23E808DC8(v7, v6);

  *a1 = v3;
}

void sub_23E808F90(void *a1)
{
  v86 = a1;
  v93 = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v87 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - v5;
  v7 = sub_23E82DCFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v73 - v12;
  v84 = sub_23E82DD3C();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  if (qword_27E35A1B0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E35A720;
  v16 = *algn_27E35A728;

  v85 = v15;
  v17 = sub_23E82EA5C();
  v91 = 0;
  v18 = [v14 contentsOfDirectoryAtPath:v17 error:&v91];

  v19 = v91;
  if (v18)
  {
    v80 = v16;
    v20 = sub_23E82EB0C();
    v21 = v19;

    v22 = *(v20 + 16);
    if (v22 < 0x1F5)
    {

      return;
    }

    v76 = v10;
    v77 = v8;
    v78 = v7;
    v73 = v4;
    v79 = v14;
    v74 = v1;
    v90 = MEMORY[0x277D84F90];
    v23 = sub_23E800930(0, v22, 0);
    v24 = v90;
    sub_23E7F84B0(v23, v25, v26);
    v75 = v20;
    v27 = (v20 + 40);
    do
    {
      v28 = *v27;
      v91 = *(v27 - 1);
      v92 = v28;
      v88 = 46;
      v89 = 0xE100000000000000;

      v29 = sub_23E82EC5C();
      if (v29[2])
      {
        v30 = v29[4];
        v31 = v29[5];
      }

      else
      {
        v30 = 0;
        v31 = 0xE000000000000000;
      }

      v90 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_23E800930((v32 > 1), v33 + 1, 1);
        v24 = v90;
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v27 += 2;
      --v22;
    }

    while (v22);
    v91 = v24;
    v46 = v86;

    sub_23E808EF8(&v91, v46);

    v47 = v80;

    v48 = v91;
    v91 = v85;
    v92 = v47;
    v49 = v87;
    v50 = v78;
    v51 = v79;
    v53 = v76;
    v52 = v77;
    if (*(v48 + 2))
    {
      v54 = *(v48 + 4);
      v55 = *(v48 + 5);

      MEMORY[0x23EF14B60](v54, v55);

      MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
      v56 = v82;
      v57 = v84;
      (*(v82 + 56))(v83, 1, 1, v84);
      (*(v52 + 104))(v53, *MEMORY[0x277CC91D8], v50);
      v58 = v81;
      sub_23E82DD2C();
      v59 = sub_23E82DD1C();
      (*(v56 + 8))(v58, v57);
      v91 = 0;
      v60 = [v51 removeItemAtURL:v59 error:&v91];

      if (v60)
      {
        v61 = v91;

        return;
      }

      v62 = v91;
      v27 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 == -1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_24:
    v63 = v74;
    v64 = __swift_project_value_buffer(v74, qword_27E35A958);
    swift_beginAccess();
    v65 = v73;
    (*(v49 + 16))(v73, v64, v63);
    v66 = v27;
    v67 = sub_23E82DFEC();
    v68 = sub_23E82EBCC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      v71 = v27;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v72;
      *v70 = v72;
      _os_log_impl(&dword_23E7EF000, v67, v68, "Failed to delete old file error: %@", v69, 0xCu);
      sub_23E7F55E0(v70, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v70, -1, -1);
      MEMORY[0x23EF15860](v69, -1, -1);
    }

    else
    {
    }

    (*(v49 + 8))(v65, v63);
    return;
  }

  v35 = v91;

  v36 = sub_23E82DCEC();

  swift_willThrow();
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v1, qword_27E35A958);
  swift_beginAccess();
  v38 = v87;
  (*(v87 + 16))(v6, v37, v1);
  v39 = v36;
  v40 = sub_23E82DFEC();
  v41 = sub_23E82EBCC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = v36;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v45;
    *v43 = v45;
    _os_log_impl(&dword_23E7EF000, v40, v41, "Failed to read directory: %@", v42, 0xCu);
    sub_23E7F55E0(v43, &unk_27E35A870, &qword_23E8308E0);
    MEMORY[0x23EF15860](v43, -1, -1);
    MEMORY[0x23EF15860](v42, -1, -1);
  }

  else
  {
  }

  (*(v38 + 8))(v6, v1);
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE22storeEventForDebugging5eventyAC08AVSDebugF0V_tF_0(uint64_t a1)
{
  v65 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v58 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v9 = sub_23E82DDAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = objc_opt_self();
  v68 = [v59 defaultManager];
  if (qword_27E35A1B0 != -1)
  {
    swift_once();
  }

  v13 = qword_27E35A720;
  v14 = *algn_27E35A728;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = sub_23E82EA5C();
  [v15 setDateFormat_];

  v71 = v13;
  v72 = v14;

  sub_23E82DD9C();
  v17 = sub_23E82DD6C();
  (*(v10 + 8))(v12, v9);
  v66 = v15;
  v18 = [v15 stringFromDate_];

  v19 = sub_23E82EA6C();
  v21 = v20;

  MEMORY[0x23EF14B60](v19, v21);

  MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
  v22 = v72;
  v63 = v71;
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v1, qword_27E35A958);
  swift_beginAccess();
  v61 = *(v2 + 16);
  v62 = v23;
  v61(v8, v23, v1);

  v24 = sub_23E82DFEC();
  v25 = sub_23E82EBEC();

  v26 = os_log_type_enabled(v24, v25);
  v64 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v58 = v2;
    v28 = v1;
    v29 = v27;
    v30 = swift_slowAlloc();
    v70 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_23E8257E0(v63, v22, &v70);
    _os_log_impl(&dword_23E7EF000, v24, v25, "Will attempt to store event for debugging file: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23EF15860](v30, -1, -1);
    v31 = v29;
    v1 = v28;
    v2 = v58;
    MEMORY[0x23EF15860](v31, -1, -1);
  }

  v32 = *(v2 + 8);
  v32(v8, v1);
  v33 = v68;
  v69 = 1;
  v34 = sub_23E82EA5C();
  v35 = [v33 fileExistsAtPath:v34 isDirectory:&v69];

  if ((v35 & 1) == 0)
  {
    v36 = sub_23E82EA5C();
    v70 = 0;
    v37 = [v33 createDirectoryAtPath:v36 withIntermediateDirectories:1 attributes:0 error:&v70];

    if (v37)
    {
      v38 = v70;
    }

    else
    {
      v39 = v70;
      v40 = sub_23E82DCEC();

      swift_willThrow();
      v61(v60, v62, v1);
      v41 = v40;
      v42 = sub_23E82DFEC();
      v43 = sub_23E82EBCC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = v1;
        v46 = swift_slowAlloc();
        *v44 = 138412290;
        v47 = v40;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_23E7EF000, v42, v43, "Failed to create directory for debugging events: %@", v44, 0xCu);
        sub_23E7F55E0(v46, &unk_27E35A870, &qword_23E8308E0);
        v49 = v46;
        v1 = v45;
        v33 = v68;
        MEMORY[0x23EF15860](v49, -1, -1);
        MEMORY[0x23EF15860](v44, -1, -1);
      }

      else
      {
      }

      v32(v60, v1);
    }
  }

  sub_23E82DC7C();
  swift_allocObject();
  sub_23E82DC6C();
  type metadata accessor for AVSDebugEvent(0);
  sub_23E80AADC(&qword_27E35A7D8, type metadata accessor for AVSDebugEvent, &protocol conformance descriptor for AVSDebugEvent);
  v50 = sub_23E82DC5C();
  v52 = v51;
  v53 = [v59 defaultManager];
  v54 = sub_23E82EA5C();

  v55 = sub_23E82DD5C();
  [v53 createFileAtPath:v54 contents:v55 attributes:0];

  v56 = v66;
  sub_23E808F90(v66);

  sub_23E80A918(v50, v52);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23E80A20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A750;
  if (!qword_27E35A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A750);
  }

  return result;
}

uint64_t type metadata accessor for AVSDebugEvent(uint64_t a1)
{
  result = qword_27E35A790;
  if (!qword_27E35A790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E80A2AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A760, &qword_23E8306D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E80A318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void keypath_setTm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_23E82EA5C();
  [v6 *a5];
}

void sub_23E80A458(uint64_t a1)
{
  sub_23E82DDDC();
  if (v1 <= 0x3F)
  {
    sub_23E80A4EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E80A4EC(uint64_t a1)
{
  if (!qword_27E35A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A760, &qword_23E8306D8);
    v1 = sub_23E82EC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35A7A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AVSDebugEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVSDebugEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E80A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A7A8;
  if (!qword_27E35A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7A8);
  }

  return result;
}

unint64_t sub_23E80A70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A7B0;
  if (!qword_27E35A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7B0);
  }

  return result;
}

unint64_t sub_23E80A764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E35A7B8;
  if (!qword_27E35A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7B8);
  }

  return result;
}

uint64_t sub_23E80A7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7479426F69647561 && a2 == 0xEA00000000007365 || (sub_23E82EF0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23E80A918(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23E80A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E80A9D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A7F8, &qword_23E830898);
    sub_23E80AADC(a2, type metadata accessor for AdaptiveVoiceShortcut, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E80AA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A830, &unk_23E8308B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E80AADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E80AB24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23E80AB84()
{
  result = [objc_allocWithZone(type metadata accessor for AVSAutomationSupport()) init];
  qword_27E35A850 = result;
  return result;
}

id AVSAutomationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AVSAutomationSupport.shared.getter()
{
  if (qword_27E35A1B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A850;

  return v1;
}

id AVSAutomationSupport.init()()
{
  *&v0[OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSAutomationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_23E80ACF4()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client;
  v2 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v4 = sub_23E82EA5C();
  v5 = sub_23E82EA5C();
  v6 = [v3 initWithIdentifier:v4 serviceBundleName:v5];

  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setDelegate_];
  }

  v9 = *(v0 + v1);
  if (v9)
  {
    v9;
    v2 = 0;
LABEL_6:
    v10 = v2;
    return;
  }

  __break(1u);
}

void sub_23E80AE00(uint64_t a1, uint64_t a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXIsInternalInstall())
  {
    sub_23E80ACF4();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A860, &qword_23E8308D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E830030;
    v26[0] = 5001813;
    v26[1] = 0xE300000000000000;
    v11 = MEMORY[0x277D837D0];
    sub_23E82ED0C();
    *(inited + 96) = v11;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    sub_23E80B388(inited);
    swift_setDeallocating();
    sub_23E7F55E0(inited + 32, &qword_27E35A868, &qword_23E8308D8);
    v12 = sub_23E82EA2C();

    v26[0] = 0;
    v13 = [v9 sendSynchronousMessage:v12 withIdentifier:10001 error:v26];

    if (v13)
    {
      v14 = v26[0];
    }

    else
    {
      v15 = v26[0];
      v16 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, qword_27E35A958);
      swift_beginAccess();
      (*(v5 + 16))(v7, v17, v4);
      v18 = v16;
      v19 = sub_23E82DFEC();
      v20 = sub_23E82EBCC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_23E7EF000, v19, v20, "Error piping audio file into AVS: %@", v21, 0xCu);
        sub_23E7F55E0(v22, &unk_27E35A870, &qword_23E8308E0);
        MEMORY[0x23EF15860](v22, -1, -1);
        MEMORY[0x23EF15860](v21, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }
}

id AVSAutomationSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSAutomationSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AVSAutomationSupport.userInterfaceClient(_:accessQueueForProcessingMessageWithIdentifier:)()
{
  v0 = [objc_opt_self() mainAccessQueue];

  return v0;
}

unint64_t sub_23E80B274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
    v3 = sub_23E82EDFC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E81DE40(v5, v6);
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

unint64_t sub_23E80B388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A8E0, &qword_23E830938);
    v3 = sub_23E82EDFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E80B694(v4, v13);
      result = sub_23E81DEB8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23E80B704(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t _s22AdaptiveVoiceShortcuts20AVSAutomationSupportC35connectionWithServiceWasInterrupted22forUserInterfaceClientySo10AXUIClientCSg_tF_0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_23E82DFEC();
  v6 = sub_23E82EBCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23E7EF000, v5, v6, "Connection to the AVS Service was interrupted", v7, 2u);
    MEMORY[0x23EF15860](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23E80B694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A868, &qword_23E8308D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23E80B704(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id static AVSSettings.avsFeatureEnabled.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isAdaptiveVoiceShortcutsEnabled];

  return v1;
}

void static AVSSettings.avsFeatureEnabled.setter(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAdaptiveVoiceShortcutsEnabled:a1 & 1 source:*MEMORY[0x277CE7CE0]];
}

void static AVSSettings.setVocalShortcutsEnabled(_:source:)(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 setAdaptiveVoiceShortcutsEnabled:a1 & 1 source:a2];
}

id static AVSSettings.shouldHideAudioDonationPrompt.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23E82EA5C();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void static AVSSettings.shouldHideAudioDonationPrompt.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_23E82EA5C();
  [v2 setBool:a1 & 1 forKey:v3];
}

AVSSettings __swiftcall AVSSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id keypath_getTm@<X0>(SEL *a1@<X3>, _BYTE *a2@<X8>)
{
  result = [swift_getObjCClassFromMetadata() *a1];
  *a2 = result;
  return result;
}

id keypath_setTm_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *a5;

  return [ObjCClassFromMetadata v8];
}

unint64_t type metadata accessor for AVSSettings()
{
  result = qword_27E35A950;
  if (!qword_27E35A950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35A950);
  }

  return result;
}

uint64_t sub_23E80BDA0()
{
  v0 = sub_23E82E00C();
  __swift_allocate_value_buffer(v0, qword_27E35A958);
  __swift_project_value_buffer(v0, qword_27E35A958);
  return sub_23E82DFFC();
}

uint64_t AVSLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E82E00C();
  v3 = __swift_project_value_buffer(v2, qword_27E35A958);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t AVSLogger.setter(uint64_t a1)
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E82E00C();
  v3 = __swift_project_value_buffer(v2, qword_27E35A958);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*AVSLogger.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v1 = sub_23E82E00C();
  __swift_project_value_buffer(v1, qword_27E35A958);
  swift_beginAccess();
  return j__swift_endAccess;
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

uint64_t sub_23E80C0C0(uint64_t a1)
{
  v50 = sub_23E82DDDC();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AvailableShortcutAction(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v46 = v7;
  v39 = v1;
  v53 = MEMORY[0x277D84F90];
  sub_23E800950(0, v8, 0);
  v9 = v53;
  v10 = a1 + 64;
  result = sub_23E82ECBC();
  v12 = result;
  v13 = 0;
  v14 = *(a1 + 36);
  v44 = a1;
  v45 = (v3 + 40);
  v40 = a1 + 72;
  v41 = v8;
  v42 = v14;
  v43 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v51 = v13;
    v17 = *(a1 + 56);
    v18 = (*(a1 + 48) + 16 * v12);
    v19 = v18[1];
    v52 = *v18;
    v20 = (v17 + 16 * v12);
    v21 = *v20;
    v22 = v20[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v23 = v9;
    v24 = v49;
    sub_23E82DDCC();
    v25 = v46;
    sub_23E82DDCC();
    v26 = v24;
    v9 = v23;
    (*v45)(v25, v26, v50);

    v27 = v48;
    v28 = (v25 + *(v48 + 20));
    *v28 = v21;
    v28[1] = v22;
    v29 = v25 + *(v27 + 24);
    *v29 = v52;
    *(v29 + 8) = v19;
    *(v29 + 16) = 1;
    v53 = v23;
    v31 = *(v23 + 16);
    v30 = *(v23 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_23E800950((v30 > 1), v31 + 1, 1);
      v25 = v46;
      v9 = v53;
    }

    *(v9 + 16) = v31 + 1;
    result = sub_23E818C8C(v25, v9 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, type metadata accessor for AvailableShortcutAction);
    a1 = v44;
    v15 = 1 << *(v44 + 32);
    if (v12 >= v15)
    {
      goto LABEL_24;
    }

    v10 = v43;
    v32 = *(v43 + 8 * v16);
    if ((v32 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v14) = v42;
    if (v42 != *(v44 + 36))
    {
      goto LABEL_26;
    }

    v33 = v32 & (-2 << (v12 & 0x3F));
    if (v33)
    {
      v15 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v16 << 6;
      v35 = v16 + 1;
      v36 = (v40 + 8 * v16);
      while (v35 < (v15 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_23E818CF4(v12, v42, 0);
          v15 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_23E818CF4(v12, v42, 0);
    }

LABEL_4:
    v13 = v51 + 1;
    v12 = v15;
    if (v51 + 1 == v41)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}